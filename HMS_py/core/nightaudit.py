"""Night Audit core (P5): NA log + occupancy + revenue summary + POSTING.

EVIDENCE (live + VB6 decompiled):
- NightAuditLog: Id, DateChngFrom, DateChngTo, StartNightAudit, EndNightAudit,
  Site_Code, U_AE, U_Name, U_EntDt, LogSite_Code.
- HMS.bas:90-115 (NightAuditoR_Click): Enviro KOTAtNightAudit/POSBillAtNightAudit flags
- Proc_96_46_10187AC: Check pending KOTs (KOT table, NC='N', VOID='N', Pending='Y', KOTAtNightAudit<>'No')
- Proc_96_45_11033E4: Check unsettled bills (Sale1/POS + HallSale1/Banquet, unpaid)
- Proc_96_14_1F70BE8: Daily bill-wise posting (room charges + POS revenue)
- Proc_96_16_1F369E4: Summary posting (similar but aggregated)
- fdNDAcPostChrg.TopCtrl1_UnknownEvent_16: PostingType from Enviro drives mode
- Room charges: PayCharge Vtype='RC', PayCode='KKRMCH' + 2.5% CGST +
  2.5% SGST tax rows (BUG-AUD-10 evidence: live TaxPer=2.5, tax/base=0.025
  across 400+ VB6-era rows; old Python rows wrote 5% per leg = double tax)
- POS revenue: PayCharge Vtype='PPOS', grouped by RevCode/RestCode
- Voucher numbering: Voucher_Type + Voucher_Prefix for Vtype='PPOS'
- RoomChrgPostingType in Enviro: 'Daily' = per room, else summary
- RoomChrgDueAc in Enviro: GL account for room charge posting

PYT-guard: Production NA runs from VB6 EXE; Python implements logic for testing/automation.

Laravel parity (analysishms-master CompanyController@submitnightaudit):
- uncharged_rooms(): in-house (Type IS NULL) folios jinke liye is date ka RC
  PayCharge exist nahi karta -> hard stop ("Please Charge Posting For Rooms").
- cancel_tentative_no_shows(): fomparameter.tentativedays expiry par tentative
  bookings cancel (Cancel='Y', U_Name='NOSHOW').
Live DB: RoomOcc/GuestFolio/Booking tables live; Complimentary filter
GuestFolio.Comp='' sab rows (dead filter here, still faithful)."""

from __future__ import annotations

import datetime
from typing import Optional

from HMS_py.core import db
from HMS_py.core import folio as folio_mod
from datetime import datetime as _dt

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()
VYEAR = str(_dt.now().year)
VTYPE_RC = "RC"
VTYPE_PPOS = "PPOS"
PAY_CODE_RC = "KKRMCH"


class PostingBlockedError(RuntimeError):
    """Engine-level whole-posting abort (VB6 MsgBox + Exit Sub parity).

    Raised with zero inserts when billed folios exist (G1) or the room-disc
    account is missing while separate posting needs it (G3/G6). The UI maps
    this to the VB6 MsgBox-equivalent notice.
    """


# ============================================================
# Pre-checks (VB6 Proc_96_46, Proc_96_45)
# ============================================================


def get_night_audit_flags(cn=None) -> dict:
    """Read Enviro flags for NA behavior.
    Returns: {'kot_at_na': 'Yes'/'No', 'pos_bill_at_na': 'Yes'/'No',
              'posting_type': 'Daily Bill wise Posting'/'Summary',
              'room_chrg_type': 'Daily'/'Monthly', 'room_chrg_due_ac': ac_code}
    """
    rows = db.query(
        "SELECT KOTAtNightAudit, POSBillAtNightAudit, PostingType, "
        "RoomChrgPostingType, RoomChrgDueAc FROM Enviro WHERE LogSite_Code = ? "
        "OR LogSite_Code = 'HO'",
        (SITE_CODE,),
        cn=cn,
    )
    if not rows:
        return {
            "kot_at_na": "No",
            "pos_bill_at_na": "No",
            "posting_type": "Summary",
            "room_chrg_type": "Daily",
            "room_chrg_due_ac": "",
        }
    r = rows[0]
    return {
        "kot_at_na": r[0] or "No",
        "pos_bill_at_na": r[1] or "No",
        "posting_type": r[2] or "Summary",
        "room_chrg_type": r[3] or "Daily",
        "room_chrg_due_ac": r[4] or "",
    }


def check_pending_kots(vdate, cn=None) -> tuple[bool, list[str]]:
    """VB6 Proc_96_46_10187AC: Check pending KOTs for a date.
    Returns (has_pending, list_of_outlets_with_pending).
    KOT criteria: NCKOT<>'Y', VOIDYN<>'Y', VDate=date, NCAT='RSKOT',
    Pending='Y', DELFLAG NOT IN('Y'), Depart.KOTAtNightAudit<>'No'
    """
    rows = db.query(
        "SELECT DISTINCT D.Name FROM KOT K "
        "INNER JOIN Depart D ON K.RestCode = D.Code "
        "WHERE K.NCKOT <> 'Y' AND K.VOIDYN <> 'Y' AND K.VDate = ? "
        "AND K.Vtype = 'BMM' AND K.Pending = 'Y' AND K.DELFLAG NOT IN ('Y') "
        "AND D.KOTAtNightAudit <> 'No' AND D.LogSite_Code = ?",
        (vdate, SITE_CODE),
        cn=cn,
    )
    outlets = [r[0] for r in rows]
    return len(outlets) > 0, outlets


def check_unsettled_bills(vdate, cn=None) -> tuple[bool, list[str]]:
    """VB6 Proc_96_45_11033E4: Check unsettled POS + Banquet bills.
    Returns (has_unsettled, list_of_outlets_with_unsettled).
    POS: Sale1 with PayCharge AmtCr < NetAmt
    Banquet: HallSale1 with PayChargeH AmtCr < NetAmt-Advance
    """
    outlets = []

    # POS unsettled bills (Sale1)
    rows = db.query(
        "SELECT DISTINCT D.Name FROM Sale1 S "
        "LEFT JOIN PayCharge P ON S.DocId = P.DocId "
        "INNER JOIN Depart D ON S.RestCode = D.Code "
        "WHERE S.VDate = ? AND S.Vtype = 'BMM' AND D.RestType <> 'Production' "
        "AND S.LogSite_Code = ? AND (P.DocId IS NULL OR S.NetAmt > ISNULL(P.AmtCr, 0)) "
        "AND (S.DelFlag = '' OR S.DelFlag = 'N')",
        (vdate, SITE_CODE),
        cn=cn,
    )
    outlets.extend([r[0] for r in rows])

    # Banquet unsettled bills (HallSale1)
    rows = db.query(
        "SELECT DISTINCT D.Name FROM HallSale1 H "
        "LEFT JOIN (SELECT DocId, SUM(AmtCr) AS AmtCr FROM PayChargeH GROUP BY DocId) PH "
        "ON H.DocId = PH.DocId "
        "INNER JOIN Depart D ON H.RestCode = D.Code "
        "WHERE H.VDate = ? AND H.LogSite_Code = ? "
        "AND (ISNULL(H.NetAmt, 0) - ISNULL(H.Advance, 0)) <> ISNULL(PH.AmtCr, 0)",
        (vdate, SITE_CODE),
        cn=cn,
    )
    outlets.extend([r[0] for r in rows])

    return len(outlets) > 0, list(set(outlets))


# ============================================================
# Posting Helpers
# ============================================================


def _next_vno(vtype: str, vprefix: str, cn=None) -> int:
    # BUG-015: race-safe VNo (UPDLOCK/HOLDLOCK) - db.py central helper.
    return db.next_vno("PayCharge", vtype, vprefix, site=SITE_CODE, cn=cn)


def _next_sno(foliono: int, cn=None) -> int:
    # BUG-003/004: race-safe SNo (UPDLOCK/HOLDLOCK) - db.py central helper.
    return db.next_serial(
        "PayCharge", "SNo", "FolioNo = ? AND Site_Code = ?", (foliono, SITE_CODE), cn=cn
    )


def _make_rc_docid(vprefix: str, vno: int) -> str:
    """'D' + site(2) + 'RC'.ljust(6) + vprefix(4) + VNo.rjust(8) = 21 char"""
    return "D" + SITE_CODE + "RC".ljust(6) + vprefix.ljust(4) + str(vno).rjust(8)


def _make_ppos_docid(vprefix: str, vno: int) -> str:
    return "D" + SITE_CODE + "PPOS".ljust(6) + vprefix.ljust(4) + str(vno).rjust(8)


def _log_night_audit(
    date_from, date_to, start_dt, end_dt, user, cn=None, commit=True
) -> int:
    """Insert NightAuditLog entry (like BookingLog pattern)."""
    return db.execute(
        "INSERT INTO NightAuditLog (DateChngFrom, DateChngTo, StartNightAudit, "
        "EndNightAudit, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (date_from, date_to, start_dt, end_dt, SITE_CODE, user, SITE_CODE),
        cn=cn,
        commit=commit,
    )


# ============================================================
# Room Charge Posting (VB6 Proc_96_14 daily bill-wise)
# ============================================================


def uncharged_rooms(vdate, vprefix: str = VYEAR, cn=None) -> list[dict]:
    """Laravel parity (submitnightaudit 'Please Charge Posting For Rooms'):
    in-house rooms (RoomOcc.Type IS NULL, ChkOutDate IS NULL, ChkInDate <= vdate)
    jinke liye us date ka RC charge PayCharge me nahi hai.
    Returns: [{docid, folio, roomno, mfolio}] — khali list = NA allowed.
    """
    rows = db.query(
        "SELECT RO.DocId, RO.FolioNo, RTRIM(RO.RoomNo), ISNULL(GF.MFOlioNO, 0) "
        "FROM RoomOcc RO LEFT JOIN GuestFolio GF ON GF.DocId = RO.DocId "
        "WHERE RO.ChkOutDate IS NULL AND RO.Type IS NULL "
        "AND RO.ChkInDate IS NOT NULL AND RO.ChkInDate <= ? "
        "AND RO.Site_Code = ? AND RO.Vprefix = ? "
        "AND NOT EXISTS (SELECT 1 FROM PayCharge PC WHERE PC.Vtype = ? "
        "AND PC.Vdate = ? AND PC.FolioNo = RO.FolioNo "
        "AND PC.Site_Code = RO.Site_Code)",
        (vdate, SITE_CODE, vprefix, VTYPE_RC, vdate),
        cn=cn,
    )
    return [
        {
            "docid": r[0] or "",
            "folio": r[1] or 0,
            "roomno": (r[2] or "").strip(),
            "mfolio": r[3] or 0,
        }
        for r in rows
    ]


def cancel_tentative_no_shows(
    na_date, user: str = USER, cn=None, commit: bool = True
) -> list[int]:
    """Laravel parity (fomparameter()->tentativedays): tentative bookings
    jinki expiry (U_EntDt + TentativeDays) aaj (na_date) hai -> auto-cancel.
    Booking.Cancel='Y', CancelUName='NOSHOW', ResStatus='No Show'
    (Laravel: U_Name='NOSHOW' pattern; VB6 ResStatus flow).
    Returns: cancelled booking docids.
    """
    # TentativeDays Enviro setting (live: koi dedicated FOM param table nahi;
    # Laravel fomparameter() == Enviro/FomParam — live DB me Enviro hi hai)
    try:
        from HMS_py.core import enviro

        days = int(enviro.get_setting("TentativeDays", 0, cn=cn) or 0)
    except Exception:
        days = 0
    if days <= 0:
        return []
    rows = db.query(
        "SELECT DocId, CONVERT(date, U_EntDt) FROM Booking "
        "WHERE Cancel = 'N' AND ResStatus = 'Tentative' AND Site_Code = ?",
        (SITE_CODE,),
        cn=cn,
    )
    to_cancel = []
    for docid, ent_dt in rows:
        if ent_dt is None:
            continue
        expiry = ent_dt + datetime.timedelta(days=days)
        if expiry == na_date or expiry < na_date:
            to_cancel.append(docid)
    for docid in to_cancel:
        db.execute(
            "UPDATE Booking SET Cancel = 'Y', CancelDate = ?, "
            "CancelUName = 'NOSHOW', ResStatus = 'No Show', "
            "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE DocId = ?",
            (na_date, user, docid),
            cn=cn,
            commit=False,
        )
    if to_cancel and commit:
        cn.commit()
    return to_cancel


def get_inhouse_rooms(vdate, vprefix: str = VYEAR, cn=None) -> list[dict]:
    """Get occupied rooms for a date (RoomOcc ChkOutDate IS NULL, ChkInDate <= date).
    Comp='Y' (complimentary) rooms excluded (VB6 fdPostChrg eligibility).
    RoomCat -> RevMast join supplies RoomChargeAc/PayCode/TaxStru (DB-001
    script 1a shape); GuestFolio supplies RODISC; RoomOcc supplies the
    tax-derivation fields (RoomTaxStru/RRServiceChrg/RoomTarrif/RackRate).
    Returns list of {folio, docid, roomno, roomrate, guest_name, mfolio,
    guestprof, roomcat, roomtype, plancode, rodisc, charge_ac, pay_code,
    rev_taxstru, room_tax_stru, rr_service_chrg, room_tarrif, rack_rate,
    ratecode}
    """
    rows = db.query(
        "SELECT RO.DocId, RO.FolioNo, RO.RoomNo, RO.RoomRate, GF.Name, "
        "ISNULL(GF.MFOlioNO, 0) AS MFOlioNO, ISNULL(GF.GuestProf, '') AS GuestProf, "
        "ISNULL(RO.RoomCat, '') AS RoomCat, ISNULL(RO.RoomType, '') AS RoomType, "
        "ISNULL(RO.PlanCode, '') AS PlanCode, "
        "ISNULL(GF.RODISC, 0) AS RODISC, "
        "ISNULL(RM.ACCode, '') AS RoomChargeAc, ISNULL(RM.Code, '') AS PayCode, "
        "ISNULL(RM.TaxStru, '') AS RevTaxStru, "
        "ISNULL(RO.RoomTaxStru, '') AS RoomTaxStru, "
        "ISNULL(RO.RRServiceChrg, '') AS RRServiceChrg, "
        "ISNULL(RO.RoomTarrif, 0) AS RoomTarrif, ISNULL(RO.RackRate, 0) AS RackRate, "
        "ISNULL(RO.RateCode, '') AS RateCode "
        "FROM RoomOcc RO LEFT JOIN GuestFolio GF ON GF.DocId = RO.DocId "
        "LEFT JOIN RoomCat RC ON RO.RoomCat = RC.Code "
        "LEFT JOIN RevMast RM ON RC.RevCode = RM.Code "
        "WHERE RO.ChkOutDate IS NULL AND RO.Site_Code = ? AND RO.Vprefix = ? "
        "AND RO.ChkInDate <= ? AND RO.ChkInDate IS NOT NULL "
        "AND ISNULL(GF.Comp, '') <> 'Y'",
        (SITE_CODE, vprefix, vdate),
        cn=cn,
    )
    out = []
    for r in rows:
        out.append(
            {
                "docid": r[0] or "",
                "folio": r[1] or 0,
                "roomno": (r[2] or "").strip(),
                "roomrate": float(r[3] or 0),
                "guest": (r[4] or "").strip(),
                "mfolio": r[5] or 0,
                "guestprof": (r[6] or "").strip(),
                "roomcat": (r[7] or "").strip(),
                "roomtype": (r[8] or "").strip(),
                "plancode": (r[9] or "").strip(),
                "rodisc": float(r[10] or 0),
                "charge_ac": (r[11] or "").strip(),
                "pay_code": (r[12] or "").strip(),
                "rev_taxstru": (r[13] or "").strip(),
                "room_tax_stru": (r[14] or "").strip(),
                "rr_service_chrg": (r[15] or "").strip(),
                "room_tarrif": float(r[16] or 0),
                "rack_rate": float(r[17] or 0),
                "ratecode": (r[18] or "").strip(),
            }
        )
    return out


def billed_folios_for_date(vdate, vprefix: str = VYEAR, cn=None) -> list[dict]:
    """fdPostChrg pre-flight guard (VB6 Proc_62_23): in-house rooms whose
    folio has settled/billed PayCharge rows (Bill_No <> '') for any date.
    Returns: [{'folio': int, 'roomno': str}] -- posting must be blocked
    until these bills are settled ("There is some unsettled guest bill").
    """
    rows = db.query(
        "SELECT DISTINCT RO.FolioNo, RTRIM(RO.RoomNo) AS RoomNo "
        "FROM RoomOcc RO JOIN GuestFolio GF ON GF.DocId = RO.DocId "
        "JOIN PayCharge PC ON PC.Site_Code = RO.Site_Code "
        "AND ((PC.FolioNoDocid <> '' AND (PC.FolioNoDocid = GF.DocId "
        "OR PC.FolioNoDocid = GF.MFolioNoDocid)) OR PC.FolioNo = RO.FolioNo) "
        "WHERE RO.ChkOutDate IS NULL AND RO.Site_Code = ? AND RO.Vprefix = ? "
        "AND RO.ChkInDate <= ? AND RO.ChkInDate IS NOT NULL "
        "AND ISNULL(PC.Bill_No, '') <> ''",
        (SITE_CODE, vprefix, vdate),
        cn=cn,
    )
    return [{"folio": r[0] or 0, "roomno": (r[1] or "").strip()} for r in rows]


def _posted_docids_for_date(vdate, cn=None) -> set:
    """Already-posted exclusion set (DB-001 script 1b, VB6 NOT IN subquery).

    Built ONCE per run and matched against ROOMOCC.DocId — never FolioNo
    (G2: live rooms 455/456/458/459 carry MfolionoDocid pointing at a
    different DocId, so FolioNo-keying double-posts).
    """
    rows = db.query(
        "SELECT DISTINCT FOLIONODOCID FROM PAYCHARGE WHERE VTYPE = 'RC' AND VDATE = ?",
        (vdate,),
        cn=cn,
    )
    return {(r[0] or "").strip() for r in rows if (r[0] or "").strip()}


def _disc_account(site: str, cn=None):
    """{Site}DISC lookup (DB-001 script 3, Hotlib.bas 617).

    Returns {name, paycode, accode} or None when RevMast holds no row.
    """
    rows = db.query(
        "Select Name, Code PayCode, AcCode From RevMast Where Code = ?",
        (site + "DISC",),
        cn=cn,
    )
    if not rows:
        return None
    return {
        "name": (rows[0][0] or "").strip(),
        "paycode": (rows[0][1] or "").strip(),
        "accode": (rows[0][2] or "").strip(),
    }


def _room_tax_rows(room_tax_stru: str, pay_code: str, cn=None) -> list:
    """TaxStru derivation rows (DB-001 script 2, Hotlib.bas 675-706).

    RevMast -> TaxStru -> RevMast-as-TaxMast self-join (no TaxMast table
    exists). RoomTaxStru set -> join on it (2A); empty -> join via
    RevMast.TaxStru (2C). The SCH CASE is always applied (2B/2D differ
    only by omitting it; RRServiceChrg gating is PY-007).
    """
    if (room_tax_stru or "").strip():
        rows = db.query(
            "SELECT RevMast.TaxStru, RevMast.Name AS RevName, "
            "TaxMast.Name AS TaxName, TaxMast.ACCode AS RoomTaxAc, "
            "TaxMast.Code as TaxCode, "
            "Case When TaxMast.Sundry='SCH' Then 0 Else TaxStru.Rate End Rate, "
            "TaxStru.Limit, TaxStru.Limit1, TaxStru.Nature, "
            "TaxStru.CondApp, TaxStru.CompOperator "
            "FROM (RevMast LEFT JOIN TaxStru ON TaxStru.Code = ?) "
            "LEFT JOIN REVMAST TaxMast ON TaxStru.TaxCode = TaxMast.Code "
            "Where TaxMast.FIELDTYPE = 'T' AND REVMAST.FIELDTYPE = 'C' "
            "AND RevMast.Code = ? ORDER BY TaxStru.Sno",
            (room_tax_stru, pay_code),
            cn=cn,
        )
    else:
        rows = db.query(
            "SELECT RevMast.TaxStru, RevMast.Name AS RevName, "
            "TaxMast.Name AS TaxName, TaxMast.ACCode AS RoomTaxAc, "
            "TaxMast.Code as TaxCode, "
            "Case When TaxMast.Sundry='SCH' Then 0 Else TaxStru.Rate End Rate, "
            "TaxStru.Limit, TaxStru.Limit1, TaxStru.Nature, "
            "TaxStru.CondApp, TaxStru.CompOperator "
            "FROM (RevMast LEFT JOIN TaxStru ON RevMast.TaxStru = TaxStru.Code) "
            "LEFT JOIN REVMAST TaxMast ON TaxStru.TaxCode = TaxMast.Code "
            "Where TaxMast.FIELDTYPE = 'T' AND REVMAST.FIELDTYPE = 'C' "
            "AND RevMast.Code = ? ORDER BY TaxStru.Sno",
            (pay_code,),
            cn=cn,
        )
    return [
        {
            "taxstru": (r[0] or "").strip(),
            "revname": (r[1] or "").strip(),
            "taxname": (r[2] or "").strip(),
            "roomtaxac": (r[3] or "").strip(),
            "taxcode": (r[4] or "").strip(),
            "rate": float(r[5] or 0),
            "limit": float(r[6] or 0),
            "limit1": float(r[7] or 0),
            "nature": (r[8] or "").strip(),
            "condapp": (r[9] or "").strip(),
            "compop": (r[10] or "").strip(),
        }
        for r in rows
    ]


def _nature_calc_amount(
    nature: str, base: float, running: float, prev_tax: float
) -> float:
    """Proc_96_5 Nature dispatch (Hotlib.bas 841/864/884 + default 904)."""
    if nature == "On Running Total":
        return running
    if nature == "On Prev. Tax Amt":
        return prev_tax
    return base  # "On Base Amt" + default


def _condapp_gate_amount(
    condapp: str, rack: float, tariff: float, fallback: float
) -> float:
    """Proc_96_5 CondApp dispatch (Hotlib.bas 842/847/851/859)."""
    if condapp == "Rack Rate":
        return rack
    if condapp == "Room Tariff":
        return tariff
    if condapp == "Declared Tariff":
        return max(rack, tariff)
    return fallback


def _comp_gate_ok(compop: str, amount: float, limit: float, limit1: float) -> bool:
    """Proc_96_6 CompOperator x Limit(/Limit1) gate (Hotlib.bas 911-973).

    VB6 compares Limit AGAINST the amount (``Limit <op> Amount``), not the
    reverse: ``If CDbl(Val(Limit)) <= arg_20`` fires the 9%-slab row
    (Limit=7500) only when the tariff is >= 7500. Between =
    ``Limit1 >= amt AND Limit <= amt``.
    """
    op = (compop or "").strip()
    if op == "Between":
        return limit1 >= amount and limit <= amount
    if op == "<=":
        return limit <= amount
    if op == "<":
        return limit < amount
    if op == "=":
        return limit == amount
    if op == ">":
        return limit > amount
    if op == ">=":
        return limit >= amount
    return True  # unknown operator: VB6 default branch computes


def _keep_tax_row(dr: float) -> bool:
    """Per-tax-row drop decision (Hotlib.bas 745-758 CancelUpdate parity).

    Today: zero-tax rows drop. PY-005 hook: `or PostNilLT == "Yes"` posts
    the nil row instead of dropping (Enviro column, already modelled).
    """
    return dr != 0


def post_room_charges_for_date(
    vdate,
    vprefix: str = VYEAR,
    user: str = USER,
    cn=None,
    commit: bool = True,
    progress=None,
) -> dict:
    """Post room charges for all in-house guests on a date.
    VB6 fdPostChrg Cmd(1) -> TopCtrl posting: for each in-house room, if not
    already posted (PayCharge Vtype='RC' for that ROOMOCC.DocId/date), insert
    RC base row (RODISC netted or separate CR row) + TaxStru-derived tax
    rows (PayCode=TaxCode, BillAmount=calc amount, TaxCondAmt=tested amount,
    TaxPer=rate) with VB6 row shape (GuestProf/RoomCat/RoomType/FolioNoDocid/
    PlanCode/Comments/OnAmt).
    Guards: RoomChrgPostingType='While Printing Bill' -> early return with
    notice, zero rows (G12, fdPostChrg.frm:238-241); billed folios present ->
    PostingBlockedError, zero inserts (G1).
    progress: optional cb(done, total, roomno) called before each room
    (VB6 lblDisplay "Posting Charges For Room : <RoomNo>").
    Returns: {'posted': count, 'skipped': count, 'eligible': count,
    'errors': list, 'notice': str or None}
    """
    own = cn is None
    cn = cn or db.connect()
    try:
        from HMS_py.core import enviro as enviro_mod

        # G12: RoomChrgPostingType gate (VB6 Exit Sub before anything posts)
        if (enviro_mod.get_setting("RoomChrgPostingType", "", cn=cn) or "") == (
            "While Printing Bill"
        ):
            return {
                "posted": 0,
                "skipped": 0,
                "eligible": 0,
                "errors": [],
                "notice": (
                    "RoomChrgPostingType = 'While Printing Bill' — "
                    "room charges post at bill-printing, not here"
                ),
            }

        # G1: engine-level billed-folio hard stop (zero inserts)
        billed = billed_folios_for_date(vdate, vprefix, cn=cn)
        if billed:
            rooms_txt = ", ".join(str(b["roomno"]) for b in billed[:10])
            raise PostingBlockedError(
                "There is some unsettled guest bill,\n"
                "First Settle it then Process this operation\n\n"
                f"Re-Check Room No : {rooms_txt}"
            )

        rooms = get_inhouse_rooms(vdate, vprefix, cn=cn)
        excl = _posted_docids_for_date(vdate, cn=cn)  # G2: built ONCE

        separate = (
            enviro_mod.get_setting("PostRoomDiscSeparately", "", cn=cn) or ""
        ) == "Yes"

        # Eligible work list (G2 key = ROOMOCC.DocId, never FolioNo)
        todo = []
        for room in rooms:
            if (room["docid"] or "").strip() in excl:
                continue
            if float(room["roomrate"] or 0) <= 0:
                continue
            todo.append(room)

        # G3/G6: separate-disc account resolved BEFORE any INSERT so a
        # missing DISC AcCode aborts the whole posting with zero inserts
        disc_acct = None
        if separate and any(float(r.get("rodisc") or 0) > 0 for r in todo):
            disc_acct = _disc_account(SITE_CODE, cn=cn)
            if not disc_acct or not disc_acct["accode"]:
                raise PostingBlockedError("Room Disc. A/c Not Defined in Charge Master")

        posted = 0
        skipped = len(rooms) - len(todo)
        errors = []

        # Get next VNo for RC series
        vno = _next_vno(VTYPE_RC, vprefix, cn=cn)

        # Pre-compute max sno per folio to avoid N+1 queries
        folios = [r["folio"] for r in todo]
        sno_map = {}
        if folios:
            placeholders = ",".join("?" for _ in folios)
            rows = db.query(
                f"SELECT FolioNo, MAX(SNo) FROM PayCharge WHERE FolioNo IN ({placeholders}) AND Site_Code = ? AND VPrefix = ? GROUP BY FolioNo",
                tuple(folios + [SITE_CODE, vprefix]),
                cn=cn,
            )
            for r in rows:
                sno_map[r[0]] = r[1] or 0

        total = len(todo)
        done = 0
        for room in todo:
            if progress is not None:
                progress(done, total, room["roomno"])
                done += 1

            rate = float(room["roomrate"] or 0)
            disc = float(room.get("rodisc") or 0)
            pay_code = room.get("pay_code") or PAY_CODE_RC
            # G3: netted DR unless separate-posting mode
            dr = rate if (separate or disc <= 0) else rate - rate * disc / 100

            docid = _make_rc_docid(vprefix, vno)
            sno = sno_map.get(room["folio"], 0) + 1
            sno_map[room["folio"]] = sno

            # Room charge row (Dr) -- VB6 shape: OnAmt=dr, TaxPer=0,
            # BillAmount=dr, Comments='Room Charge (Room No : <no>)'
            db.execute(
                "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, VPrefix, Vdate, "
                "GuestProf, Comments, PayCode, FolioNo, FolioNoDocid, RoomNo, RoomCat, RoomType, "
                "PlanCode, AmtDr, TaxPer, OnAmt, BillAmount, U_Name, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, ?, 'RC', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0, ?, ?, ?, getdate(), 'A', ?)",
                (
                    docid,
                    sno,
                    vno,
                    SITE_CODE,
                    vprefix,
                    vdate,
                    room["guestprof"],
                    f"Room Charge (Room No : {room['roomno']})",
                    pay_code,
                    room["folio"],
                    room["docid"],
                    room["roomno"] or "",
                    room["roomcat"],
                    room["roomtype"],
                    room["plancode"],
                    dr,
                    dr,
                    dr,
                    user,
                    SITE_CODE,
                ),
                cn=cn,
                commit=False,
            )

            # G3: separate CR discount row (DR=0, BillAmount=0, RoomType RO)
            if separate and disc > 0:
                disc_amt = round(rate * disc / 100, 2)
                sno += 1
                sno_map[room["folio"]] = sno
                db.execute(
                    "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, VPrefix, Vdate, "
                    "GuestProf, Comments, PayCode, FolioNo, FolioNoDocid, RoomNo, RoomCat, RoomType, "
                    "PlanCode, AmtDr, AmtCr, BillAmount, U_Name, U_EntDt, U_AE, LogSite_Code) "
                    "VALUES (?, ?, 'RC', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'RO', ?, 0, ?, 0, ?, getdate(), 'A', ?)",
                    (
                        docid,
                        sno,
                        vno,
                        SITE_CODE,
                        vprefix,
                        vdate,
                        room["guestprof"],
                        f"Room Disc. (Room No : {room['roomno']})",
                        disc_acct["paycode"],
                        room["folio"],
                        room["docid"],
                        room["roomno"] or "",
                        room["roomcat"],
                        room["plancode"],
                        disc_amt,
                        user,
                        SITE_CODE,
                    ),
                    cn=cn,
                    commit=False,
                )

            # G4: TaxStru-driven tax rows (Proc_96_5/96_6 parity).
            # Test-seeded rooms carry RoomTarrif/RackRate 0 (create_checkin
            # defaults); VB6 live rooms always have tariffs, so fall back to
            # the posted base when unset (else live KKTR gates never match).
            tariff = float(room.get("room_tarrif") or 0) or dr
            rack = float(room.get("rack_rate") or 0) or dr
            running = dr
            prev_tax = 0.0
            for tax in _room_tax_rows(room.get("room_tax_stru") or "", pay_code, cn=cn):
                calc = _nature_calc_amount(tax["nature"], dr, running, prev_tax)
                gate_amt = _condapp_gate_amount(tax["condapp"], rack, tariff, calc)
                if _comp_gate_ok(tax["compop"], gate_amt, tax["limit"], tax["limit1"]):
                    amt = round(calc * tax["rate"] / 100, 2)
                else:
                    amt = 0.0
                if not _keep_tax_row(amt):
                    continue
                sno += 1
                sno_map[room["folio"]] = sno
                db.execute(
                    "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, VPrefix, Vdate, "
                    "GuestProf, Comments, PayCode, FolioNo, FolioNoDocid, RoomNo, RoomCat, RoomType, "
                    "PlanCode, AmtDr, TaxPer, OnAmt, BillAmount, TaxCondAmt, TaxStru, U_Name, U_EntDt, U_AE, LogSite_Code) "
                    "VALUES (?, ?, 'RC', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
                    (
                        docid,
                        sno,
                        vno,
                        SITE_CODE,
                        vprefix,
                        vdate,
                        room["guestprof"],
                        f"{tax['taxname']}(Room No : {room['roomno']})",
                        tax["taxcode"],
                        room["folio"],
                        room["docid"],
                        room["roomno"] or "",
                        room["roomcat"],
                        room["roomtype"],
                        room["plancode"],
                        amt,
                        tax["rate"],
                        dr,
                        calc,
                        gate_amt,
                        tax["taxstru"],
                        user,
                        SITE_CODE,
                    ),
                    cn=cn,
                    commit=False,
                )
                running += amt
                prev_tax = amt

            # FolioLog for room charge post (use GuestFolio DocId, not PayCharge DocId)
            folio_mod._log(room["docid"], "P", user, cn, SITE_CODE)

            posted += 1
            vno += 1

        if commit:
            cn.commit()
        return {
            "posted": posted,
            "skipped": skipped,
            "eligible": len(rooms),
            "errors": errors,
            "notice": None,
        }
    except Exception:
        if own:
            cn.rollback()
        raise
    finally:
        if own:
            cn.close()


# ============================================================
# POS Revenue Posting (VB6 Proc_96_14/16 - PPOS)
# ============================================================


def get_pos_revenue(vdate, cn=None) -> list[dict]:
    """Get POS revenue for a date (VB6 SunTran aggregation).
    Returns: list of {revcode, restcode, revname, outlet, dshortname, amount, sundrycode}
    """
    rows = db.query(
        "SELECT SUM(SunTran.Amount) AS RevAmt, SunTran.RevCode, SunTran.RestCode, "
        "SunTran.Vdate, MAX(Depart.Name) AS Outlet, MAX(Depart.ShortName) AS DShortName, "
        "MAX(RevMast.Name) AS RevenueName, MAX(SunTran.SunCode) AS SundryCode "
        "FROM SunTran LEFT JOIN RevMast ON SunTran.RevCode = RevMast.Code "
        "LEFT JOIN Depart ON SunTran.RestCode = Depart.Code "
        "WHERE SunTran.Vdate = ? AND SunTran.RevCode IS NOT NULL AND SunTran.RevCode <> '' "
        "AND SunTran.SunCode <> 'SNET' AND SunTran.LogSite_Code = ? "
        "AND Depart.RestType IN ('Outlet', 'Room Service') AND SunTran.DelFlag <> 'D' "
        "GROUP BY SunTran.RestCode, SunTran.RevCode, SunTran.Vdate ORDER BY SunTran.RestCode",
        (vdate, SITE_CODE),
        cn=cn,
    )
    out = []
    for r in rows:
        amt = float(r[0] or 0)
        if amt != 0:
            out.append(
                {
                    "revcode": r[1] or "",
                    "restcode": r[2] or "",
                    "vdate": r[3],
                    "outlet": (r[4] or "").strip(),
                    "dshortname": (r[5] or "").strip(),
                    "revname": (r[6] or "").strip(),
                    "sundrycode": r[7] or "",
                    "amount": amt,
                }
            )
    return out


def _get_voucher_prefix(vtype: str, vdate, cn=None) -> tuple[str, int]:
    """Get voucher prefix and start serial for a Vtype/date.
    Returns (vprefix, start_srl)"""
    rows = db.query(
        "SELECT VP.Prefix, VP.Start_Srl_No FROM Voucher_Type VT "
        "INNER JOIN Voucher_Prefix VP ON VT.V_Type = VP.V_Type "
        "AND VT.Site_Code = VP.Site_Code AND VT.LogSite_Code = VP.LogSite_Code "
        "WHERE VT.Site_Code = ? AND VP.V_Type = ? "
        "AND VP.Date_From <= ? ORDER BY VP.Date_From DESC",
        (SITE_CODE, vtype, vdate),
        cn=cn,
    )
    if not rows:
        return str(vdate.year), 1
    return rows[0][0] or str(vdate.year), int(rows[0][1] or 1)


def post_pos_revenue_for_date(
    vdate, vprefix: str = VYEAR, user: str = USER, cn=None, commit: bool = True
) -> dict:
    """Post POS revenue (SunTran) to PayCharge as Vtype='PPOS'.
    VB6 Proc_96_14: Groups by RevCode/RestCode, creates PPOS entries.
    Returns: {'posted': count, 'skipped': count}
    """
    revenues = get_pos_revenue(vdate, cn=cn)
    if not revenues:
        return {"posted": 0, "skipped": 0}

    vno = _next_vno(VTYPE_PPOS, vprefix, cn=cn)
    pp, start_srl = _get_voucher_prefix(VTYPE_PPOS, vdate, cn=cn)

    posted = 0
    skipped = 0
    own = cn is None
    cn = cn or db.connect()
    try:
        for rev in revenues:
            # Check if already posted
            existing = db.query(
                "SELECT 1 FROM PayCharge WHERE Vtype = ? AND Vdate = ? AND RestCode = ? "
                "AND RevCode = ? AND Site_Code = ? AND VPrefix = ?",
                (
                    VTYPE_PPOS,
                    vdate,
                    rev["restcode"],
                    rev["revcode"],
                    SITE_CODE,
                    vprefix,
                ),
                cn=cn,
            )
            if existing:
                skipped += 1
                continue

            amount = rev["amount"]
            if amount == 0:
                skipped += 1
                continue

            docid = _make_ppos_docid(vprefix, vno)
            # For PPOS, FolioNo=0 (not linked to specific folio)

            db.execute(
                "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, VPrefix, Vdate, "
                "GuestProf, Comments, PayCode, FolioNo, RoomNo, AmtDr, U_Name, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, ?, 'PPOS', ?, ?, ?, ?, '', '', ?, 0, '', ?, ?, getdate(), 'A', ?)",
                (
                    docid,
                    1,
                    vno,
                    SITE_CODE,
                    vprefix,
                    vdate,
                    rev["revcode"],
                    amount,
                    user,
                    SITE_CODE,
                ),
                cn=cn,
                commit=False,
            )

            posted += 1
            vno += 1

        if commit:
            cn.commit()
        return {"posted": posted, "skipped": skipped}
    finally:
        if own:
            cn.close()


# ============================================================
# A/C Posting driver (VB6 fdNDAcPostChrg "Posting Utility")
# ============================================================


def _pos_revenue_range(date_from, date_to, cn=None) -> list[dict]:
    """VB6 Proc_96_16 (summary) source: SunTran grouped over a date range.

    get_pos_revenue ka range version - ek row per RestCode+RevCode poore
    window ke liye (aggregated), vs daily ke per-date rows.
    """
    rows = db.query(
        "SELECT SUM(SunTran.Amount) AS RevAmt, SunTran.RevCode, SunTran.RestCode, "
        "MAX(Depart.Name) AS Outlet, MAX(Depart.ShortName) AS DShortName, "
        "MAX(RevMast.Name) AS RevenueName, MAX(SunTran.SunCode) AS SundryCode "
        "FROM SunTran LEFT JOIN RevMast ON SunTran.RevCode = RevMast.Code "
        "LEFT JOIN Depart ON SunTran.RestCode = Depart.Code "
        "WHERE SunTran.Vdate BETWEEN ? AND ? AND SunTran.RevCode IS NOT NULL "
        "AND SunTran.RevCode <> '' AND SunTran.SunCode <> 'SNET' "
        "AND SunTran.LogSite_Code = ? "
        "AND Depart.RestType IN ('Outlet', 'Room Service') "
        "AND SunTran.DelFlag <> 'D' "
        "GROUP BY SunTran.RestCode, SunTran.RevCode "
        "ORDER BY SunTran.RestCode",
        (date_from, date_to, SITE_CODE),
        cn=cn,
    )
    out = []
    for r in rows:
        amt = float(r[0] or 0)
        if amt != 0:
            out.append(
                {
                    "revcode": r[1] or "",
                    "restcode": r[2] or "",
                    "vdate": date_to,
                    "outlet": (r[3] or "").strip(),
                    "dshortname": (r[4] or "").strip(),
                    "revname": (r[5] or "").strip(),
                    "sundrycode": r[6] or "",
                    "amount": amt,
                }
            )
    return out


def _post_pos_revenue_range(
    date_from,
    date_to,
    vprefix: str = VYEAR,
    user: str = USER,
    cn=None,
    commit: bool = True,
) -> dict:
    """Summary PPOS insert (VB6 Proc_96_16): poore range ka grouped amount
    ek Vdate (= date_to) par; pehle se posted combo skip."""
    revenues = _pos_revenue_range(date_from, date_to, cn=cn)
    if not revenues:
        return {"posted": 0, "skipped": 0}
    vno = _next_vno(VTYPE_PPOS, vprefix, cn=cn)
    own = cn is None
    cn = cn or db.connect()
    try:
        posted = skipped = 0
        for rev in revenues:
            existing = db.query(
                "SELECT 1 FROM PayCharge WHERE Vtype = ? AND Vdate = ? "
                "AND RestCode = ? AND RevCode = ? AND Site_Code = ? "
                "AND VPrefix = ?",
                (
                    VTYPE_PPOS,
                    date_to,
                    rev["restcode"],
                    rev["revcode"],
                    SITE_CODE,
                    vprefix,
                ),
                cn=cn,
            )
            if existing:
                skipped += 1
                continue
            docid = _make_ppos_docid(vprefix, vno)
            db.execute(
                "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, "
                "VPrefix, Vdate, GuestProf, Comments, PayCode, FolioNo, "
                "RoomNo, AmtDr, U_Name, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, ?, 'PPOS', ?, ?, ?, ?, '', '', ?, 0, '', ?, ?, "
                "getdate(), 'A', ?)",
                (
                    docid,
                    1,
                    vno,
                    SITE_CODE,
                    vprefix,
                    date_to,
                    rev["revcode"],
                    rev["amount"],
                    user,
                    SITE_CODE,
                ),
                cn=cn,
                commit=False,
            )
            posted += 1
            vno += 1
        if commit:
            cn.commit()
        return {"posted": posted, "skipped": skipped}
    finally:
        if own:
            cn.close()


def account_posting(
    date_from,
    date_to=None,
    mode: str | None = None,
    user: str = USER,
    cn=None,
    commit: bool = True,
    vprefix: str = VYEAR,
    progress=None,
) -> dict:
    """A/C Posting driver (VB6 fdNDAcPostChrg.TopCtrl1_UnknownEvent_16).

    VB6: Enviro.Postingtype = 'Daily Bill wise Posting' -> har date ke liye
    Proc_96_14 (room charges + POS revenue) with progress bar; warna ek baar
    Proc_96_16 (aggregated POS summary over the range).
    Python mapping:
      daily   -> per date: post_room_charges_for_date +
                 post_pos_revenue_for_date (grouped by RevCode/RestCode)
      summary -> per date room charges (folio-wise, kabhi per-date hi hai) +
                 ek hi grouped SunTran insert (_post_pos_revenue_range)
                 Vdate = date_to par.
    progress: optional callable(done, total, date) - VB6 lblDisplay
    ("A/C Posting For Date <d>") jaisa UI feedback.
    Returns: {mode, dates, room_posted, room_skipped, pos_posted,
              pos_skipped, errors}
    """
    if date_to is None:
        date_to = date_from
    d1, d2 = date_from, date_to
    if d1 > d2:
        raise ValueError("Please check Posting Dates (From > To)")
    if mode is None:
        try:
            mode = get_night_audit_flags(cn=cn).get("posting_type") or ""
        except Exception:
            mode = ""
    daily = str(mode).strip().lower() == "daily bill wise posting"
    n = (d2 - d1).days + 1
    res = {
        "mode": mode or ("Daily Bill wise Posting" if daily else "Summary"),
        "dates": n,
        "room_posted": 0,
        "room_skipped": 0,
        "pos_posted": 0,
        "pos_skipped": 0,
        "errors": [],
    }
    own = cn is None
    cn = cn or db.connect()
    try:
        for i in range(n):
            d = d1 + datetime.timedelta(days=i)
            if progress:
                progress(i + 1, n, d)
            r = post_room_charges_for_date(d, vprefix, user=user, cn=cn, commit=False)
            res["room_posted"] += int(r.get("posted") or 0)
            res["room_skipped"] += int(r.get("skipped") or 0)
            res["errors"].extend(r.get("errors") or [])
            p = (
                post_pos_revenue_for_date(d, vprefix, user=user, cn=cn, commit=False)
                if daily
                else {"posted": 0, "skipped": 0}
            )
            res["pos_posted"] += int(p.get("posted") or 0)
            res["pos_skipped"] += int(p.get("skipped") or 0)
        if not daily:
            p = _post_pos_revenue_range(d1, d2, vprefix, user=user, cn=cn, commit=False)
            res["pos_posted"] += int(p.get("posted") or 0)
            res["pos_skipped"] += int(p.get("skipped") or 0)
        if commit:
            cn.commit()
        return res
    except Exception:
        if own:
            try:
                cn.rollback()
            except Exception:
                pass
        raise
    finally:
        if own:
            cn.close()


def rename_bill_no(old_bill: str, new_bill: str, cn=None, commit: bool = True) -> int:
    """VB6 fdNDAcPostChrg Cmd index 3:
    Update PayCharge Set bill_no='<new>' where bill_no='<old>'.
    Returns rows updated."""
    old = str(old_bill or "").strip()
    new = str(new_bill or "").strip()
    if not old or not new:
        raise ValueError("Old aur New Bill No dono zaroori hain")
    own = cn is None
    cn = cn or db.connect()
    try:
        # PayCharge.Bill_No varchar(8) hai -> over-length VB6 me bhi
        # 8152 truncation deta; pehle hi saaf error do.
        rows = db.query(
            "SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS "
            "WHERE TABLE_NAME = 'PayCharge' AND COLUMN_NAME = 'Bill_No'",
            cn=cn,
        )
        maxlen = int(rows[0][0]) if rows and rows[0][0] else None
        if maxlen and len(new) > maxlen:
            raise ValueError(f"New Bill No {maxlen} character se chhota hona chahiye")
        cur = cn.cursor()
        cur.execute("UPDATE PayCharge SET bill_no = ? WHERE bill_no = ?", (new, old))
        n = cur.rowcount if cur.rowcount and cur.rowcount > 0 else 0
        if commit:
            cn.commit()
        return n
    except Exception:
        if own:
            try:
                cn.rollback()
            except Exception:
                pass
        raise
    finally:
        if own:
            cn.close()


# ============================================================
# Main Night Audit Process
# ============================================================


def run_night_audit(
    date_from,
    date_to=None,
    user: str = USER,
    cn=None,
    commit: bool = True,
    vprefix: str = VYEAR,
) -> dict:
    """Run full Night Audit for a date range (VB6 fdNDAcPostChrg pattern).

    Steps:
    1. Check Enviro flags (KOTAtNightAudit, POSBillAtNightAudit)
    2. For each date in range:
       a. If KOT flag -> check_pending_kots()
       b. If POS flag -> check_unsettled_bills()
       c. If both clear -> post_room_charges + post_pos_revenue
       d. Log NightAuditLog entry
    Returns summary dict.
    """
    if date_to is None:
        date_to = date_from

    start_time = datetime.datetime.now()
    total_posted = 0
    total_skipped = 0
    rc_posted = 0
    pos_posted = 0
    errors = []
    dates_processed = []

    own = cn is None
    cn = cn or db.connect()
    try:
        current = date_from
        while current <= date_to:
            # Pre-checks
            flags = get_night_audit_flags(cn=cn)

            # Laravel parity: tentative expiry -> auto NOSHOW cancel
            try:
                cancel_tentative_no_shows(current, user, cn=cn, commit=False)
            except Exception as e:
                errors.append(f"{current}: no-show cancel fail: {e}")

            # Laravel parity: uncharged rooms -> hard stop (RC missing)
            uncharged = uncharged_rooms(current, vprefix, cn=cn)
            if uncharged:
                rooms = ", ".join(u["roomno"] for u in uncharged[:10])
                errors.append(f"{current}: Please Charge Posting For Rooms: {rooms}")
                current += datetime.timedelta(days=1)
                continue

            # Check pending KOTs
            if flags.get("kot_at_na") == "Yes":
                has_pending, outlets = check_pending_kots(current, cn=cn)
                if has_pending:
                    errors.append(f"{current}: Pending KOTs in {', '.join(outlets)}")
                    current += datetime.timedelta(days=1)
                    continue

            # Check unsettled bills
            if flags.get("pos_bill_at_na") == "Yes":
                has_unsettled, outlets = check_unsettled_bills(current, cn=cn)
                if has_unsettled:
                    errors.append(f"{current}: Unsettled bills in {', '.join(outlets)}")
                    current += datetime.timedelta(days=1)
                    continue

            # Post room charges
            rc_result = post_room_charges_for_date(
                current, vprefix, user, cn=cn, commit=False
            )
            total_posted += rc_result["posted"]
            total_skipped += rc_result["skipped"]
            rc_posted += rc_result["posted"]

            # Post POS revenue
            pos_result = post_pos_revenue_for_date(
                current, vprefix, user, cn=cn, commit=False
            )
            total_posted += pos_result["posted"]
            total_skipped += pos_result["skipped"]
            pos_posted += pos_result["posted"]

            # VB6 NIGHT_AUDIT_FLOW.md §B: Room status roll (occupied -> Dirty)
            try:
                room_status_roll(current, user, cn=cn, commit=False)
            except Exception as e:
                errors.append(f"{current}: room status roll fail: {e}")

            # VB6 NIGHT_AUDIT_FLOW.md §C: Due-out extension
            try:
                due_out_extension(current, user, cn=cn, commit=False)
            except Exception as e:
                errors.append(f"{current}: due-out extension fail: {e}")

            # VB6 NIGHT_AUDIT_FLOW.md §D: Split-bill staging cleanup
            try:
                split_bill_cleanup(current, user, cn=cn, commit=False)
            except Exception as e:
                errors.append(f"{current}: split-bill cleanup fail: {e}")

            # VB6 NIGHT_AUDIT_FLOW.md §D: Voucher serial renumber
            try:
                voucher_serial_renumber(current, user, cn=cn, commit=False)
            except Exception as e:
                errors.append(f"{current}: voucher renumber fail: {e}")

            # Log NA entry
            end_time = datetime.datetime.now()
            _log_night_audit(
                current, current, start_time, end_time, user, cn=cn, commit=False
            )

            dates_processed.append(current)
            current += datetime.timedelta(days=1)

        # VB6 NIGHT_AUDIT_FLOW.md §D: Token reset (once after all dates)
        try:
            token_reset(user, cn=cn, commit=False)
        except Exception as e:
            errors.append(f"token reset fail: {e}")

        # VB6 NIGHT_AUDIT_FLOW.md §D: Business date roll (NCur + 1)
        try:
            roll_business_date(user, cn=cn, commit=False)
        except Exception as e:
            errors.append(f"business date roll fail: {e}")

        if commit:
            cn.commit()

        result = {
            "success": len(errors) == 0,
            "date_from": date_from,
            "date_to": date_to,
            "dates_processed": dates_processed,
            "room_charges_posted": rc_posted,
            "pos_revenue_posted": pos_posted,
            "total_skipped": total_skipped,
            "errors": errors,
            "start_time": start_time,
            "end_time": datetime.datetime.now(),
        }

        # Phase-3: channel auto-push (sirf AutoPushYN='Y' + live-ready par;
        # fail NA ko fail nahi karta — best-effort)
        if result["success"] and dates_processed:
            try:
                from HMS_py.core.channel import inventory as ch_inv

                push = ch_inv.maybe_auto_push_after_na(
                    dates_processed[-1], user=user, cn=cn
                )
                if push is not None:
                    result["channel_push"] = push
            except Exception as e:
                result["channel_push_error"] = str(e)
        return result
    except Exception as e:
        if own and cn:
            cn.rollback()
        return {
            "success": False,
            "error": str(e),
            "date_from": date_from,
            "date_to": date_to,
        }
    finally:
        if own:
            cn.close()


# ============================================================
# Read-only functions (existing)
# ============================================================

# ============================================================
# Reverse Night Audit (VB6 frmReNightAudit.frm:318-340)
# ============================================================


def reverse_night_audit(user: str = USER, cn=None, commit: bool = True) -> dict:
    """VB6 reverse night audit: sirf Enviro.NCur -1 day.

    Evidence (frmReNightAudit.frm:331-336):
      If Format(NCur, 'dd/MMM') <> '01/Apr' Then
        Update Enviro Set NCur = DateAdd('D', -1, NCur) Where LogSite_Code=...
      Else 'Reverse Night Audit Not Go Beyond F/A Year..'
    PayCharge delete VB6 me NAHI hota - sirf business-date rollback.

    Returns {from_date, to_date}. Raises ValueError on FY-start guard."""
    rows = db.query(
        "SELECT [NCur] FROM Enviro WHERE LogSite_Code = ? OR LogSite_Code = 'HO'",
        (SITE_CODE,),
        cn=cn,
    )
    if not rows:
        raise ValueError("Enviro NCur nahi mila")
    ncur = rows[0][0]
    if ncur is None:
        raise ValueError("Enviro NCur NULL hai (reverse possible nahi)")
    ncur_d = ncur.date() if isinstance(ncur, datetime.datetime) else ncur
    # VB6 guard: 01/Apr = FY start - usse pehle reverse nahi
    if ncur_d.month == 4 and ncur_d.day == 1:
        raise ValueError("Reverse Night Audit Not Go Beyond F/A Year..")
    new_d = ncur_d - datetime.timedelta(days=1)
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute(
            "UPDATE Enviro SET [NCur] = ?, U_Name = ?, "
            "U_EntDt = getdate(), U_AE = 'E' WHERE LogSite_Code = ?",
            (new_d, user, SITE_CODE),
            cn=cn,
            commit=False,
        )
        if commit:
            cn.commit()
        return {"from_date": ncur_d, "to_date": new_d, "user": user}
    finally:
        if own:
            cn.close()


def na_log(cn=None, top: int = 100) -> list:
    rows = db.query(
        f"SELECT TOP {int(top)} Id, DateChngFrom, DateChngTo, "
        "StartNightAudit, EndNightAudit, U_Name, U_AE "
        "FROM NightAuditLog WHERE Site_Code = ? ORDER BY Id DESC",
        (SITE_CODE,),
        cn=cn,
    )
    return [
        {
            "id": int(r.Id),
            "from": r.DateChngFrom,
            "to": r.DateChngTo,
            "start": r.StartNightAudit,
            "end": r.EndNightAudit,
            "user": r.U_Name or "",
            "ae": r.U_AE or "",
        }
        for r in rows
    ]


def occupancy(cn=None, vprefix: str = VYEAR, top: int = 30) -> list:
    rooms = db.query(
        "SELECT COUNT(*) FROM RoomMast WHERE Site_Code = ?", (SITE_CODE,), cn=cn
    )[0][0]
    rows = db.query(
        f"SELECT TOP {int(top)} Vdate, COUNT(*) AS ChkIns "
        "FROM GuestFolio WHERE Site_Code = ? AND Vprefix = ? AND "
        "Vtype = 'CHK' GROUP BY Vdate ORDER BY Vdate DESC",
        (SITE_CODE, vprefix),
        cn=cn,
    )
    total = rooms or 1
    return [
        {
            "date": r.Vdate,
            "checkins": r.ChkIns,
            "occ_pct": round((r.ChkIns or 0) * 100.0 / total, 1),
        }
        for r in rows
    ]


def revenue_summary(cn=None, vprefix: str = VYEAR, top: int = 30) -> list:
    rows = db.query(
        f"SELECT TOP {int(top)} Vdate, "
        "SUM(AmtDr) AS Dr, SUM(AmtCr) AS Cr, COUNT(*) AS Lines "
        "FROM PayCharge WHERE Site_Code = ? AND VPrefix = ? "
        "GROUP BY Vdate ORDER BY Vdate DESC",
        (SITE_CODE, vprefix),
        cn=cn,
    )
    return [
        {"date": r.Vdate, "dr": r.Dr or 0.0, "cr": r.Cr or 0.0, "lines": r.Lines or 0}
        for r in rows
    ]


def room_revenue(cn=None, vprefix: str = VYEAR, top: int = 30) -> list:
    rows = db.query(
        f"SELECT TOP {int(top)} Vdate, SUM(AmtDr - AmtCr) AS RoomRev "
        "FROM PayCharge WHERE Site_Code = ? AND VPrefix = ? AND "
        "Vtype = 'RC' GROUP BY Vdate ORDER BY Vdate DESC",
        (SITE_CODE, vprefix),
        cn=cn,
    )
    return [{"date": r.Vdate, "roomrev": r.RoomRev or 0.0} for r in rows]


def night_audit_rr(index: int, cn=None) -> dict | None:
    """VB6 NightAuditRR_Click logic ported to Python.

    Index mapping (VB6 evidence from HMS.bas:12FF954-12FF952):
      0  -> rFomRepView / DailyReport
      1  -> rFomRepView / DailyReport (Daily Report-II)
      2  -> rFomRepView / RevAnalysis
      3  -> rFomRepView / GuestTrialBalance
      4  -> rFomRepView / NightAuditReportI
      5  -> rFomRepView / OccAnalysis
      6  -> rFomRepView / MarketSegAnalysis
      7  -> rFomRepView / BusinessAnalysis
      8  -> rFomRepView / CompanyAnalysis
      9  -> rFomRepView / TravelAgentAnalysis
      &HA (10) -> rFomRepView / FOCC Report
      &HB (11) -> rFomRepView / FoodCost
      &HC (12) -> rFomRepView / FBCostStatement
      &HE (14) -> FaReports / AgingRepDr
      &HF (15) -> FaReports / AgingRepCr
    """

    reports_data = {
        0: ("rFomRepView", "DailyReport", "Daily Night Audit Report"),
        1: ("rFomRepView", "DailyReport", "Daily Report-II"),
        2: ("rFomRepView", "RevAnalysis", "Revenue Analysis"),
        3: ("rFomRepView", "GuestTrialBalance", "Guest Trial Balance"),
        4: ("rFomRepView", "NightAuditReportI", "Night Audit Report I"),
        5: ("rFomRepView", "OccAnalysis", "Occupancy Analysis"),
        6: ("rFomRepView", "MarketSegAnalysis", "Market Segment Analysis"),
        7: ("rFomRepView", "BusinessAnalysis", "Business Analysis"),
        8: ("rFomRepView", "CompanyAnalysis", "Company Analysis"),
        9: ("rFomRepView", "TravelAgentAnalysis", "Travel Agent Analysis"),
        10: ("rFomRepView", "FOCC Report", "FOCC Report (Front Office CC Analysis)"),
        11: ("rFomRepView", "FoodCost", "Food Cost Analysis"),
        12: ("rFomRepView", "FBCostStatement", "FBCost Statement"),
        13: ("rFomRepView", "GratuityReport", "Gratuity Report"),
        14: ("FaReports", "AgingRepDr", "Aging Report (Debtors)"),
        15: ("FaReports", "AgingRepCr", "Aging Report (Creditors)"),
        16: ("FaReports", "DetailedTrial", "Detailed Trial Balance"),
        17: ("FaReports", "DayBook", "Day Book"),
        18: ("FaReports", "BankBook", "Bank Book"),
        19: ("FaReports", "CashBook", "Cash Book"),
        20: ("FaReports", "JournalBook", "Journal Book"),
        21: ("FaReports", "LedCred", "Ledger (Creditors)"),
        22: ("FaReports", "LedDeb", "Ledger (Debtors)"),
        23: ("FaReports", "LedInt", "Ledger (Internal)"),
        24: ("FaReports", "GratuityReport", "Gratuity Report"),
        25: ("FaReports", "PFStatement", "PF Statement"),
        26: ("FaReports", "LoanAdvSumm", "Loan Advance Summary"),
        27: ("FaReports", "LoanReg", "Loan Register"),
        28: ("FaReports", "LoanLedg", "Loan Ledger"),
        29: ("FaReports", "PayrollReg", "Payroll Register"),
        30: ("FaReports", "PaySlip", "Pay Slip"),
        31: ("FaReports", "AcCheckList", "Account Check List"),
    }

    entry = reports_data.get(index)
    if not entry:
        return {
            "action": "night_audit_rr_unknown",
            "index": index,
            "message": f"NightAuditRR index {index} not in mapping (0-31)",
        }

    form, report_name, description = entry
    return {
        "action": report_name.lower(),
        "form": form,
        "report_name": report_name,
        "description": description,
        "index": index,
    }


# --------------------------------------------------------------------------
# POS Revenue Aggregation (idempotent posting)
# --------------------------------------------------------------------------


def aggregate_pos_revenue(date_from, date_to, cn=None) -> list[dict]:
    """Aggregate POS revenue by RestCode + RevCode for a date window."""
    rows = db.query(
        "SELECT RestCode, RevCode, SUM(NetAmt) AS TotalNet, "
        "SUM(Tax) AS TotalTax, COUNT(*) AS FolioCount "
        "FROM PayCharge WHERE Vdate BETWEEN ? AND ? "
        "AND Vtype = 'PPOS' GROUP BY RestCode, RevCode "
        "ORDER BY RestCode, RevCode",
        (date_from, date_to),
        cn=cn,
    )
    return [
        {
            "restcode": r.RestCode or "",
            "revcode": r.RevCode or "",
            "total_net": float(r.TotalNet or 0),
            "total_tax": float(r.TotalTax or 0),
            "folio_count": int(r.FolioCount or 0),
        }
        for r in rows
    ]


def is_already_posted(date_from, date_to, restcode, revcode, cn=None) -> bool:
    """Check if POS revenue already posted for this date/outlet/revenue combo."""
    rows = db.query(
        "SELECT 1 FROM PayCharge WHERE Vdate BETWEEN ? AND ? "
        "AND RestCode = ? AND RevCode = ? AND Vtype = 'PPOS' "
        "AND ContraDocId LIKE 'NA_%'",
        (date_from, date_to, restcode, revcode),
        cn=cn,
    )
    return bool(rows)


def post_pos_revenue(date_from, date_to, user=USER, cn=None) -> int:
    """Idempotent POS revenue posting. Skips already-posted combos.
    Returns count of new records posted."""
    posted = 0
    aggregates = aggregate_pos_revenue(date_from, date_to, cn)
    own = cn is None
    cn = cn or db.connect()
    try:
        for agg in aggregates:
            if is_already_posted(
                date_from, date_to, agg["restcode"], agg["revcode"], cn
            ):
                continue
            contra_docid = f"NA_{agg['restcode']}_{agg['revcode']}_{date_from}"
            db.execute(
                "INSERT INTO PayCharge (DocId, Vtype, Vdate, RestCode, RevCode, "
                "AmtDr, AmtCr, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, 'PPOS', ?, ?, ?, ?, 0, ?, ?, getdate(), 'A', ?)",
                (
                    contra_docid,
                    date_to,
                    agg["restcode"],
                    agg["revcode"],
                    agg["total_net"],
                    SITE_CODE,
                    user,
                    SITE_CODE,
                ),
                cn=cn,
                commit=False,
            )
            posted += 1
        if posted:
            cn.commit()
        return posted
    except Exception:
        if own:
            try:
                cn.rollback()
            except Exception:
                pass
        raise
    finally:
        if own:
            try:
                cn.close()
            except Exception:
                pass


# ============================================================
# Room Status Roll (VB6 NIGHT_AUDIT_FLOW.md §B)
# ============================================================


def room_status_roll(vdate, user: str = USER, cn=None, commit: bool = True) -> dict:
    """VB6 NIGHT_AUDIT_FLOW.md §B: Occupied rooms ko Dirty mark karo.

    VB6 SQL (mdlNightAudit, line ~228750):
      SELECT RoomMast.Code AS RoomNo FROM (((((RoomMast RIGHT JOIN RoomOcc
      ON RoomMast.Code=RoomOcc.RoomNo) LEFT JOIN GuestFolio ON
      RoomOcc.DocId=GuestFolio.DocId) LEFT JOIN GuestProf ON
      GuestFolio.GuestProf=GuestProf.Code) LEFT JOIN SubGroup ON
      GuestFolio.Company=SubGroup.SubCode) LEFT JOIN RoomCat ON
      RoomOcc.RoomCat=RoomCat.Code) LEFT JOIN GUESTSTAT ON
      GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS
      WHERE roomocc.type not in ('C','O') AND ROOMMAST.TYPE='RO'
      AND RoomMast.LogSite_Code='<site>'
      -> Update RoomMAst set roomStat='D' WHERE CODE='<room>'

    Returns: {'updated': count, 'rooms': [room_numbers]}
    """
    rows = db.query(
        "SELECT DISTINCT RTRIM(RoomMast.Code) FROM RoomMast "
        "INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo "
        "WHERE RoomOcc.Type NOT IN ('C', 'O') "
        "AND RoomMast.Type = 'RO' "
        "AND RoomOcc.ChkOutDate IS NULL "
        "AND (RoomMast.LogSite_Code = ? OR RoomMast.LogSite_Code = 'HO')",
        (SITE_CODE,),
        cn=cn,
    )
    rooms = [r[0] for r in rows]
    if not rooms:
        return {"updated": 0, "rooms": []}
    own = cn is None
    cn = cn or db.connect()
    try:
        for room in rooms:
            db.execute(
                "UPDATE RoomMast SET roomStat = 'D', U_Name = ?, "
                "U_EntDt = getdate(), U_AE = 'E' "
                "WHERE RTRIM(Code) = ? AND (LogSite_Code = ? OR LogSite_Code = 'HO')",
                (user, room, SITE_CODE),
                cn=cn,
                commit=False,
            )
        if commit:
            cn.commit()
        return {"updated": len(rooms), "rooms": rooms}
    finally:
        if own:
            cn.close()


# ============================================================
# Due-out Extension (VB6 NIGHT_AUDIT_FLOW.md §C)
# ============================================================


def due_out_extension(vdate, user: str = USER, cn=None, commit: bool = True) -> dict:
    """VB6 NIGHT_AUDIT_FLOW.md §C: Due-out folios ka departure date roll.

    VB6 SQL (mdlNightAudit, line ~228800):
      select DocId,Depdate,VDate as ChkInDate,NoDays from GuestFolio
      where Docid in (Select DocId from RoomOcc where chkoutdate is NULL)
      -> For each folio whose DepDate <= audit date:
         Update RoomOcc Set Depdate=<new>,U_EntDt=<now>,U_AE='E'
         Update GuestFolio Set nodays=<diff>,Depdate=<new>
         NoDays = DateDiff(d, ChkInDate, DepDate+1)

    Returns: {'extended': count, 'folios': [{folio, old_dep, new_dep}]}
    """
    rows = db.query(
        "SELECT GF.DocId, GF.FolioNo, GF.DepDate, GF.VDate, GF.NoDays "
        "FROM GuestFolio GF "
        "WHERE GF.DocId IN (SELECT DocId FROM RoomOcc WHERE ChkOutDate IS NULL) "
        "AND GF.Site_Code = ? AND GF.DepDate <= ?",
        (SITE_CODE, vdate),
        cn=cn,
    )
    if not rows:
        return {"extended": 0, "folios": []}
    own = cn is None
    cn = cn or db.connect()
    try:
        extended = []
        for r in rows:
            docid = r[0]
            folio = r[1]
            old_dep = r[2]
            vdate_chk = r[3]
            if isinstance(old_dep, datetime.datetime):
                old_dep = old_dep.date()
            if isinstance(vdate_chk, datetime.datetime):
                vdate_chk = vdate_chk.date()
            new_dep = vdate + datetime.timedelta(days=1)
            nodays = max((new_dep - vdate_chk).days, 1)
            db.execute(
                "UPDATE RoomOcc SET DepDate = ?, U_EntDt = getdate(), "
                "U_AE = 'E' WHERE DocId = ?",
                (new_dep, docid),
                cn=cn,
                commit=False,
            )
            db.execute(
                "UPDATE GuestFolio SET NoDays = ?, DepDate = ?, "
                "U_EntDt = getdate(), U_AE = 'E' WHERE DocId = ?",
                (nodays, new_dep, docid),
                cn=cn,
                commit=False,
            )
            extended.append({"folio": folio, "old_dep": old_dep, "new_dep": new_dep})
        if commit:
            cn.commit()
        return {"extended": len(extended), "folios": extended}
    finally:
        if own:
            cn.close()


# ============================================================
# Token Reset (VB6 NIGHT_AUDIT_FLOW.md §D)
# ============================================================


def token_reset(user: str = USER, cn=None, commit: bool = True) -> dict:
    """VB6 NIGHT_AUDIT_FLOW.md §D: Auto-reset token counters.

    VB6 SQL (mdlNightAudit, line ~228850):
      Update Depart Set CurTokenNo=0,CurTokenNoKOT=0
      where AutoResetToken='Yes' And Logsite_code='<site>'

    Returns: {'reset': count}
    """
    own = cn is None
    cn = cn or db.connect()
    try:
        n = db.execute(
            "UPDATE Depart SET CurTokenNo = 0, CurTokenNoKOT = 0, "
            "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
            "WHERE AutoResetToken = 'Yes' AND (LogSite_Code = ? OR LogSite_Code = 'HO')",
            (user, SITE_CODE),
            cn=cn,
            commit=False,
        )
        if commit:
            cn.commit()
        return {"reset": n}
    finally:
        if own:
            cn.close()


# ============================================================
# Split-bill Staging Cleanup (VB6 NIGHT_AUDIT_FLOW.md §D)
# ============================================================


def split_bill_cleanup(vdate, user: str = USER, cn=None, commit: bool = True) -> dict:
    """VB6 NIGHT_AUDIT_FLOW.md §D: Split-bill staging cleanup.

    VB6 SQL (mdlNightAudit, line ~228860):
      Delete From POS_SBill / SplitSale1 / SplitSale2 / SplitStock / SplitedSunTran
      Where VType='B<dept>' And LogSite_Code='<site>' And VDate=<audit date>

    Returns: {'deleted': {table: count}}
    """
    own = cn is None
    cn = cn or db.connect()
    try:
        deleted = {}
        tables = [
            "POS_SBill",
            "SplitSale1",
            "SplitSale2",
            "SplitStock",
            "SplitedSunTran",
        ]
        for table in tables:
            try:
                n = db.execute(
                    f"DELETE FROM {table} WHERE LogSite_Code = ? AND VDate = ?",
                    (SITE_CODE, vdate),
                    cn=cn,
                    commit=False,
                )
                deleted[table] = n
            except Exception:
                deleted[table] = 0
        if commit:
            cn.commit()
        return {"deleted": deleted}
    finally:
        if own:
            cn.close()


# ============================================================
# Voucher Serial Renumber (VB6 NIGHT_AUDIT_FLOW.md §D)
# ============================================================


def voucher_serial_renumber(
    vdate, user: str = USER, cn=None, commit: bool = True
) -> dict:
    """VB6 NIGHT_AUDIT_FLOW.md §D: Voucher serial renumber after split-bill cleanup.

    VB6 SQL (mdlNightAudit, line ~228870):
      UPDATE VOUCHER_PREFIX SET START_SRL_NO=(Select IsNull(Max(VNo),0)
      From SplitSale1 Where VType='B<dept>' ...)
      WHERE DATE_FROM=... AND DATE_TO=... AND V_TYPE='...'

    Returns: {'renumbered': count}
    """
    own = cn is None
    cn = cn or db.connect()
    try:
        n = db.execute(
            "UPDATE Voucher_Prefix SET START_SRL_NO = "
            "(SELECT ISNULL(MAX(VNo), 0) FROM SplitSale1 "
            "WHERE VType = Voucher_Prefix.V_Type "
            "AND LogSite_Code = Voucher_Prefix.LogSite_Code), "
            "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
            "WHERE LogSite_Code = ? AND ? BETWEEN Date_From AND Date_To",
            (user, SITE_CODE, vdate),
            cn=cn,
            commit=False,
        )
        if commit:
            cn.commit()
        return {"renumbered": n}
    finally:
        if own:
            cn.close()


# ============================================================
# Business Date Roll (VB6 NIGHT_AUDIT_FLOW.md §D)
# ============================================================


def roll_business_date(user: str = USER, cn=None, commit: bool = True) -> dict:
    """VB6 NIGHT_AUDIT_FLOW.md §D: Business date roll forward.

    VB6 SQL (mdlNightAudit, line ~228850):
      Update enviro set ncur=<next date>, ImprestAmount=0
      where Logsite_code='<site>'

    Returns: {'from_date': old_date, 'to_date': new_date}
    """
    rows = db.query(
        "SELECT [NCur] FROM Enviro WHERE LogSite_Code = ? OR LogSite_Code = 'HO'",
        (SITE_CODE,),
        cn=cn,
    )
    if not rows:
        raise ValueError("Enviro NCur nahi mila")
    ncur = rows[0][0]
    if ncur is None:
        raise ValueError("Enviro NCur NULL hai (roll possible nahi)")
    ncur_d = ncur.date() if isinstance(ncur, datetime.datetime) else ncur
    new_d = ncur_d + datetime.timedelta(days=1)
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute(
            "UPDATE Enviro SET [NCur] = ?, ImprestAmount = 0, "
            "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
            "WHERE LogSite_Code = ?",
            (new_d, user, SITE_CODE),
            cn=cn,
            commit=False,
        )
        if commit:
            cn.commit()
        return {"from_date": ncur_d, "to_date": new_d, "user": user}
    finally:
        if own:
            cn.close()
