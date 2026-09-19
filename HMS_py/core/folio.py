"""Folio core (P4-b): settle/checkout + FolioLog viewer + amend (room-move).

EVIDENCE (live):
- FOMBillDetails 14 cols; Bill_No varchar but numeric ('99'..'330') ->
  next BillNo = MAX(Cast(Bill_No As Int)) + 1. FolioNoDocid = GuestFolio.DocId
  link. Sample: ('328', 2026-06-01, 463, 'SUMIT TOMAR', 0.0, ' ', 'SETTLE',...).
- SettMode sample ' ' (empty) — VB6 me cash/card type; hum '' default
  (evidence-first, guess nahi).
- FolioLog 8 cols (BookingLog pattern): Max(Id)+1 per LogSite_Code.
- GuestFolioAmend 12 cols: FolioNo, Site_Code, GuestProf, RoomNo,
  OldDepDate, OldDepTime, DepDate, DepTime, U_Name, U_EntDt, U_AE,
  LogSite_Code (sample row: OldDepDate -> DepDate shift by Deepak/SA).
- PYT-guard: sirf PYT* folio settle/delete honge UI/tests se.
"""
from __future__ import annotations

import datetime

from HMS_py.core import db
from HMS_py.core import checkin as checkin_mod

SITE_CODE = "KK"
USER = "PYADMIN"
VPREFIX = "2026"


def next_billno(cn=None) -> int:
    rows = db.query(
        "SELECT MAX(Cast(Bill_No As Int)) FROM FOMBillDetails "
        "WHERE LogSite_Code = ?", (SITE_CODE,), cn=cn)
    return (rows[0][0] or 0) + 1 if rows and rows[0][0] else 1


def folio_charges(folio: int, cn=None, vprefix: str = VPREFIX) -> list:
    """Ek folio ki charges (PayCharge, folio-linked)."""
    rows = db.query(
        "SELECT SNo, PayCode, PayType, Comments, AmtDr, AmtCr, Vdate "
        "FROM PayCharge WHERE Site_Code = ? AND VPrefix = ? AND FolioNo = ? "
        "ORDER BY SNo", (SITE_CODE, vprefix, folio), cn=cn)
    return [{"sno": r.SNo, "paycode": r.PayCode or "",
             "paytype": (r.PayType or "").strip(),
             "comments": (r.Comments or "").strip(),
             "dr": r.AmtDr or 0.0, "cr": r.AmtCr or 0.0,
             "vdate": r.Vdate} for r in rows]


def _resolve_folio(site: str, folio: int, vprefix: str, cn=None):
    """Exact FY match first, then same-site folio fallback across other years.
    This preserves the production safety check when a live folio exists under a
    different fiscal year but the default 2026 prefix is in use.
    """
    rows = db.query(
        "SELECT TOP 1 DocId, Name, GuestProf, Vprefix FROM GuestFolio WHERE "
        "Site_Code = ? AND Vprefix = ? AND FolioNo = ?",
        (site, vprefix, folio), cn=cn)
    if rows:
        return rows[0]
    rows = db.query(
        "SELECT TOP 1 DocId, Name, GuestProf, Vprefix FROM GuestFolio WHERE "
        "Site_Code = ? AND FolioNo = ? ORDER BY Vprefix DESC",
        (site, folio), cn=cn)
    return rows[0] if rows else None


def folio_balance(folio: int, cn=None, vprefix: str = VPREFIX) -> float:
    """Balance = SUM(Dr - Cr)."""
    rows = db.query(
        "SELECT SUM(AmtDr - AmtCr) FROM PayCharge WHERE Site_Code = ? AND "
        "VPrefix = ? AND FolioNo = ?", (SITE_CODE, vprefix, folio), cn=cn)
    return float(rows[0][0] or 0.0)


def settle_folio(folio: int, user: str = USER, cn=None, commit: bool = True,
                 site: str = SITE_CODE, vprefix: str = VPREFIX) -> int:
    """Check-out settle (VB6 FOMBillDetails INSERT pattern):
    Bill_No = MAX+1, Status='SETTLE', FolioNoDocid = GuestFolio.DocId."""
    rows = db.query(
        "SELECT DocId, Name FROM GuestFolio WHERE Site_Code = ? AND "
        "Vprefix = ? AND FolioNo = ?", (site, vprefix, folio), cn=cn)
    if not rows:
        raise ValueError(f"Folio #{folio} nahi mila")
    if not str(rows[0][1] or "").upper().startswith("PYT"):
        raise ValueError(
            "Safety: sirf PYT* folio settle honge (production VB6 EXE se)")
    already = db.query(
        "SELECT 1 FROM FOMBillDetails WHERE FolioNoDocid = ? AND "
        "Status = 'SETTLE'", (rows[0][0],), cn=cn)
    if already:
        raise ValueError(f"Folio #{folio} pehle se settled hai")
    own = cn is None
    cn = cn or db.connect()
    try:
        billno = next_billno(cn=cn)
        bal = folio_balance(folio, cn=cn, vprefix=vprefix)
        db.execute(
            "INSERT INTO FOMBillDetails (Bill_No, Bill_Date, FolioNo, "
            "Guestname, BillAmt, SettMode, Status, U_Name, SiteCode, "
            "U_EntDt, U_AE, FolioNoDocid, LogSite_Code) "
            "VALUES (?, getdate(), ?, ?, ?, ?, 'SETTLE', ?, ?, getdate(), "
            "'A', ?, ?)",
            (str(billno), folio, rows[0][1], bal, "", user, site,
             rows[0][0], site), cn=cn, commit=False)
        _log(rows[0][0], "S", user, cn, site)
        if commit:
            cn.commit()
        return billno
    finally:
        if own:
            cn.close()


def _log(docid: str, flag: str, user: str, cn, site: str = SITE_CODE):
    rows = db.query("SELECT MAX(Id) FROM FolioLog WHERE LogSite_Code = ?",
                    (site,), cn=cn)
    logid = (rows[0][0] or 0) + 1 if rows and rows[0][0] else 1
    db.execute(
        "INSERT INTO FolioLog (Id, FolionoDocid, Flag, Site_Code, "
        "U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, getdate(), ?, ?)",
        (logid, docid, flag, site, user, "A", site), cn=cn, commit=False)


# --------------------------------------------------------------- P4-c:
# VB6 missing logic #1: room-charge posting (folio pe charge lagana).
# EVIDENCE (HMS.bas:90023 31-col INSERT + live folio #462):
#   DocId 'DKKRC    2026  <VNo:8>'  (Vtype='RC') | VNo = MAX(VNo)+1 per
#   FY-RC series (live: 599 @ folio 462) | SNo = MAX(SNo)+1 us folio me |
#   KKRMCH=Room, KKCGSS=CGST5%, KKSGSS=SGST5% | AmtDr=charge, AmtCr=receipt.
PAY_CODE = "KKRMCH"
CGST_CODE = "KKCGSS"
SGST_CODE = "KKSGSS"
GST_RATE = 0.05  # live #462: 3000 -> 75 + 75
VTYPE_RC = "RC"  # live census: Vtype 'RC   ' 1350 rows, VNo max 602


def post_room_charge(folio: int, amount: float, roomno: str = "",
                     paycode: str = PAY_CODE, user: str = USER,
                     cn=None, commit: bool = True, site: str = SITE_CODE,
                     vprefix: str = VPREFIX,
                     with_gst: bool = True) -> int:
    """Room charge post (VB6 FoGuestFolio charge-entry, HMS.bas:90023
    31-col INSERT pattern): PayCharge row + FolioLog 'P'.
    GST: amount*5% CGST + amount*5% SGST (live #462 evidence) - sirf
    KKRMCH (room charge) pe, ek baar me teen rows banti hain."""
    rows = db.query(
        "SELECT DocId, Name FROM GuestFolio WHERE Site_Code = ? AND "
        "Vprefix = ? AND FolioNo = ?", (site, vprefix, folio), cn=cn)
    if not rows:
        raise ValueError(f"Folio #{folio} nahi mila")
    if not str(rows[0][1] or "").upper().startswith("PYT"):
        raise ValueError("Safety: sirf PYT* folio pe charge post hoga")
    if amount <= 0:
        raise ValueError("Amount > 0 hona chahiye")
    own = cn is None
    cn = cn or db.connect()
    try:
        vrows = db.query(
            "SELECT MAX(VNo) FROM PayCharge WHERE Vtype = 'RC' AND "
            "Site_Code = ? AND VPrefix = ?", (site, vprefix), cn=cn)
        vno = (vrows[0][0] or 0) + 1 if vrows and vrows[0][0] else 1
        srows = db.query(
            "SELECT MAX(SNo) FROM PayCharge WHERE FolioNo = ? AND "
            "Site_Code = ?", (folio, site), cn=cn)
        base_sno = (srows[0][0] or 0) if srows and srows[0][0] else 0
        today = datetime.date.today()

        def _pc(sno, paycode, amt):
            # FolioNoDocid = GuestFolio.DocId link (live pattern: production
            # RC/REC rows carry the folio link; VB6 fdPaymentCharge INSERT).
            db.execute(
                "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, "
                "VPrefix, Vdate, GuestProf, Comments, PayCode, FolioNo, "
                "FolioNoDocid, RoomNo, AmtDr, U_Name, U_EntDt, U_AE, "
                "LogSite_Code) "
                "VALUES (?, ?, 'RC', ?, ?, ?, ?, '', '', ?, ?, ?, ?, ?, ?, "
                "getdate(), 'A', ?)",
                (make_pc_docid(site, vprefix, vno), sno, vno, site,
                 vprefix, today, paycode, folio, rows[0][0], roomno or "",
                 amt, user, site), cn=cn, commit=False)

        _pc(base_sno + 1, paycode, float(amount))
        if with_gst and paycode == PAY_CODE:
            gst = round(float(amount) * GST_RATE, 2)
            if gst > 0:
                _pc(base_sno + 2, CGST_CODE, gst)
                _pc(base_sno + 3, SGST_CODE, gst)
        _log(rows[0][0], "P", user, cn, site)
        if commit:
            cn.commit()
        return vno
    finally:
        if own:
            cn.close()


def make_pc_docid(site: str, vprefix: str, vno: int) -> str:
    """'D'+site(2)+'RC'.ljust(6)+year(4).ljust(4)+VNo.rjust(8) = 21 char
    (live sample 'DKKRC    2026     599' byte-exact)."""
    return ("D" + site + "RC".ljust(6) + vprefix.ljust(4) +
            str(vno).rjust(8))


def charges_detail(folio: int, cn=None, site: str = SITE_CODE,
                   vprefix: str = VPREFIX) -> list:
    """Folio ki saari PayCharge rows (UI drill-down ke liye)."""
    rows = db.query(
        "SELECT SNo, RTRIM(PayCode), RTRIM(PayType), AmtDr, AmtCr, Vdate "
        "FROM PayCharge WHERE FolioNo = ? AND Site_Code = ? AND "
        "VPrefix = ? ORDER BY SNo", (folio, site, vprefix), cn=cn)
    # index-access (proven: named attr kisi driver state me fail hota hai)
    return [{"sno": r[0], "paycode": (r[1] or "").strip(),
             "paytype": (r[2] or "").strip(), "dr": r[3] or 0.0,
             "cr": r[4] or 0.0, "vdate": r[5]} for r in rows]


# --------------------------------------------------------------- P4-c:
# VB6 missing logic #2: booking -> check-in conversion (front-office
# 'Check In' from reservation). Live evidence: folio 2361 DocId
# 'DKKCHK   2025    2361' BookingDocId 'DKKRES   2025     103', name
# match, NoDays carry. VB6 flow: booking fields folio me copy hote
# hain aur check-in ban jaata hai (booking cancel NahiN hota).
def from_booking(booking_docid: str, user: str = USER, cn=None,
                 commit: bool = True, site: str = SITE_CODE,
                 vprefix: str = VPREFIX) -> int:
    """Active booking ko check-in folio me convert karo (VB6 front-desk
    conversion): GuestFolio INSERT with BookingDocId link + FolioLog 'A'.
    Guard: booking exist + cancelled nahi + pehle se convert nahi hua +
    PYT* guest (test-safety)."""
    brows = db.query(
        "SELECT DocId, RTRIM(GuestName), ArrDate, DepDate, "
        "RTRIM(RoomNo), RTRIM(Cancel) FROM Booking WHERE DocId = ?",
        (booking_docid,), cn=cn)
    if not brows:
        raise ValueError(f"Booking {booking_docid.strip()} nahi mili")
    b = brows[0]
    if (b[5] or "").strip().upper() == "Y":
        raise ValueError("Cancelled booking convert nahi ho sakti")
    already = db.query(
        "SELECT FolioNo FROM GuestFolio WHERE BookingDocId = ?",
        (booking_docid,), cn=cn)
    if already:
        raise ValueError(
            f"Booking pehle se folio #{already[0][0]} me convert ho chuki")
    name = (b[1] or "").strip()
    if not name.upper().startswith("PYT"):
        raise ValueError("Safety: sirf PYT* bookings convert hongi")
    arr = b[2] or datetime.date.today()
    dep = b[3] or (arr + datetime.timedelta(days=1))
    if hasattr(arr, "date"):
        arr = arr.date()
    if hasattr(dep, "date"):
        dep = dep.date()
    own = cn is None
    cn = cn or db.connect()
    try:
        # Ek hi transaction: checkin + FolioLog (create_checkin 'A' log
        # khud likhta hai) — atomic conversion.
        return checkin_mod.create_checkin(
            "", name, arr, dep, bookingdocid=(b[0] or "").strip(),
            user=user, cn=cn, commit=commit, site=site, vprefix=vprefix)
    finally:
        if own:
            cn.close()


def log_list(cn=None, top: int = 200) -> list:
    rows = db.query(
        f"SELECT TOP {int(top)} Id, FolionoDocid, Flag, U_Name, U_EntDt, "
        "U_AE FROM FolioLog WHERE Site_Code = ? ORDER BY Id DESC",
        (SITE_CODE,), cn=cn)
    return [{"id": int(r.Id), "docid": (r.FolionoDocid or "").strip(),
             "flag": r.Flag or "", "user": r.U_Name or "",
             "dt": r.U_EntDt, "ae": r.U_AE or ""} for r in rows]


def amend_departure(folio: int, new_dep, user: str = USER, cn=None,
                    commit: bool = True, site: str = SITE_CODE,
                    vprefix: str = VPREFIX) -> int:
    """Departure amend (VB6 GuestFolioAmend INSERT + GuestFolio update):
    OldDepDate save hota hai, phir naya DepDate."""
    rows = db.query(
        "SELECT DocId, Name, DepDate FROM GuestFolio WHERE Site_Code = ? AND "
        "Vprefix = ? AND FolioNo = ?", (site, vprefix, folio), cn=cn)
    if not rows:
        raise ValueError(f"Folio #{folio} nahi mila")
    if not str(rows[0][1] or "").upper().startswith("PYT"):
        raise ValueError("Safety: sirf PYT* folio amend honge")
    old_dep = rows[0][2]
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute(
            "INSERT INTO GuestFolioAmend (FolioNo, Site_Code, GuestProf, "
            "RoomNo, OldDepDate, OldDepTime, DepDate, DepTime, "
            "U_Name, U_EntDt, U_AE, LogSite_Code) "
            "VALUES (?, ?, '', '', ?, '10:00', ?, '10:00', ?, getdate(), "
            "'A', ?)",
            (folio, site, old_dep, new_dep, user, site), cn=cn, commit=False)
        n = db.execute(
            "UPDATE GuestFolio SET DepDate = ?, U_Name = ?, "
            "U_EntDt = getdate(), U_AE = 'E' WHERE DocId = ?",
            (new_dep, user, rows[0][0]), cn=cn, commit=False)
        _log(rows[0][0], "M", user, cn, site)
        if commit:
            cn.commit()
        return n
    finally:
        if own:
            cn.close()


PAY_TYPES = {  # live PayCharge REC census evidence (fdPaymentCharge combo)
    "KKCASH": "Cash", "KKCRED": "Company", "KKVISA": "Credit Card",
    "KK0006": "Other",
}


def receive_payment(folio: int, amount: float, paycode: str = "KKCASH",
                    comments: str = "CASH RECD.", user: str = USER,
                    cn=None, commit: bool = True, site: str = SITE_CODE,
                    vprefix: str = VPREFIX) -> int:
    """Payment receive (VB6 fdPaymentCharge.frm:3356 REC 35-col INSERT,
    live #1072 evidence: KKCASH 'CASH RECD.' 11000 + KK0002 'BY UPI' 434):
    AmtCr = payment (credit), FolioNoDocid = checkin DocId link, SNo=1,
    ModeSet='S', RestCode='KKFOM'. PYT-guard (safety)."""
    row = _resolve_folio(site, folio, vprefix, cn=cn)
    if not row:
        raise ValueError(f"Folio #{folio} nahi mila")
    if not str(row[1] or "").upper().startswith("PYT"):
        raise ValueError(
            "Safety: sirf PYT* folio pe payment receive hoga")
    if amount <= 0:
        raise ValueError("Amount > 0 hona chahiye")
    own = cn is None
    cn = cn or db.connect()
    try:
        vrows = db.query(
            "SELECT MAX(VNo) FROM PayCharge WHERE Vtype = 'REC' AND "
            "Site_Code = ? AND VPrefix = ?", (site, vprefix), cn=cn)
        vno = (vrows[0][0] or 0) + 1 if vrows and vrows[0][0] else 1
        # DocId 'D'+site+'REC'.ljust(6)+year(4).ljust(4)+VNo.rjust(8) = 21
        # char — live sample 'DKKREC   2025    1664' byte-exact:
        docid = ("D" + site + "REC".ljust(6) + vprefix.ljust(4) +
                 str(vno).rjust(8))
        # Context cols live-row evidence (#1072): RoomCat/RoomType/RoomNo
        # checkin ke RoomOcc se aate hain.
        orows = db.query(
            "SELECT TOP 1 RoomCat, RoomType, RoomNo FROM RoomOcc "
            "WHERE DocId = ?", (row[0],), cn=cn)
        roomcat = (orows[0][0] or "") if orows else ""
        roomtype = (orows[0][1] or "") if orows else ""
        roomno = (orows[0][2] or "") if orows else ""
        # PayType master-table se NAHI aata (PayTypeMast table DB me hai
        # hi nahi — live-caught). fdPaymentCharge.frm ke combo categories
        # hi source hain; live REC census: Cash(KKCASH)/Company(KKCRED)/
        # Credit Card(KKVISA)/Other(KK0006).
        paytype = PAY_TYPES.get(paycode)
        if paytype is None:
            raise ValueError(
                f"Unknown paycode '{paycode}' (known: " +
                ", ".join(sorted(PAY_TYPES)) + ")")
        today = datetime.date.today()
        db.execute(
            "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, "
            "VPrefix, Vdate, VTime, GuestProf, Comments, PayCode, PayType, "
            "AmtCr, TipAmt, RoomCat, RoomType, RoomNo, FolioNo, U_Name, "
            "U_EntDt, U_AE, RestCode, ModeSet, FolioNoDocid, LogSite_Code) "
            "VALUES (?, 1, 'REC', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0.0, ?, ?, "
            "?, ?, ?, getdate(), 'A', 'KKFOM', 'S', ?, ?)",
            (docid, vno, site, vprefix, today, datetime.datetime.now()
             .strftime("%H:%M"), (row[2] or ""),
             (comments or "CASH RECD."), paycode, paytype, float(amount),
             roomcat, roomtype, roomno, folio, user, row[0], site),
            cn=cn, commit=False)
        if commit:
            cn.commit()
        return vno
    finally:
        if own:
            cn.close()


def list_payments(cn=None, top: int = 200, site: str = SITE_CODE,
                  vprefix: str = VPREFIX) -> list:
    """Recent REC payments (VB6 fdPaymentCharge receipt register)."""
    rows = db.query(
        f"SELECT TOP {int(top)} DocId, VNo, Vdate, GuestProf, Comments, "
        "PayCode, PayType, AmtCr, FolioNo FROM PayCharge WHERE Vtype = 'REC' "
        "AND Site_Code = ? AND VPrefix = ? ORDER BY VNo DESC",
        (site, vprefix), cn=cn)
    return [{"docid": (r.DocId or "").strip(), "vno": int(r.VNo or 0),
             "vdate": r.Vdate, "guestprof": (r.GuestProf or "").strip(),
             "comments": (r.Comments or "").strip(),
             "paycode": (r.PayCode or "").strip(),
             "paytype": (r.PayType or "").strip(), "amt": r.AmtCr or 0.0,
             "folio": int(r.FolioNo or 0)} for r in rows]


def delete_payment(vno: int, user: str = USER, cn=None, commit: bool = True,
                   site: str = SITE_CODE, vprefix: str = VPREFIX) -> int:
    """PYT*-folio REC payment cleanup (test hygiene)."""
    rows = db.query(
        "SELECT pc.DocId, gf.Name FROM PayCharge pc LEFT JOIN GuestFolio "
        "gf ON gf.DocId = pc.FolioNoDocid WHERE pc.Vtype = 'REC' AND "
        "pc.VNo = ? AND pc.Site_Code = ? AND pc.VPrefix = ?",
        (vno, site, vprefix), cn=cn)
    if not rows:
        raise ValueError(f"REC payment #{vno} nahi mila")
    if not str(rows[0][1] or "").upper().startswith("PYT"):
        raise ValueError("Safety: sirf PYT folio ka payment delete hoga")
    own = cn is None
    cn = cn or db.connect()
    try:
        n = db.execute(
            "DELETE FROM PayCharge WHERE DocId = ?",
            (rows[0][0],), cn=cn, commit=False)
        if commit:
            cn.commit()
        return n
    finally:
        if own:
            cn.close()


def delete_settle(folio: int, user: str = USER,
                  cn=None, commit: bool = True, site: str = SITE_CODE) -> int:
    """PYT-guarded settle-row cleanup (test hygiene)."""
    rows = db.query(
        "SELECT FolioNoDocid FROM FOMBillDetails WHERE FolioNo = ? AND "
        "SiteCode = ?", (folio, site), cn=cn)
    if not rows:
        raise ValueError(f"Folio #{folio} ka settle-row nahi mila")
    own = cn is None
    cn = cn or db.connect()
    try:
        n = db.execute(
            "DELETE FROM FOMBillDetails WHERE FolioNo = ? AND SiteCode = ? "
            "AND FolioNoDocid = ?",
            (folio, site, rows[0][0]), cn=cn, commit=False)
        db.execute("DELETE FROM FolioLog WHERE FolionoDocid = ? AND "
                   "U_Name = ?", (rows[0][0], user), cn=cn, commit=False)
        if commit:
            cn.commit()
        return n
    finally:
        if own:
            cn.close()
