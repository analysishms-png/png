"""Travel Agency Posting (VB6: TravelAgencyPost, menu leaf "Travel Agency Posting").

VB6 refs (FODER\\TravelAgencyPost.frm, dispatcher ModuleAdd.bas:3186):
  loc_11340D4  global_60 = "PRAP"  (VType - form ka apna voucher type)
  loc_1134036  agency list  (SubGroup CompanyType LIKE 'Travel Agency')
  loc_1441116  fill SQL     (GuestFolio -> GuestProf / SubGroup -> RoomOcc)
  loc_14417xx  grid fill    (col5 Total = NoDays*RoomRate, col6 Comm.% =
                             SubGroup.Commission, col7 Commission =
                             Total*Comm%/100, col8 Post = '' - user 'Y'
                             type kare)
  loc_10A3E39  validation   ("Duplicate Serial No." / "Commission% is Zero"
                             / "No Posting to Save.")
  loc_15CB38F  delete       (Travel1/Travel2/Ledger by DocID, pehle)
  loc_15CB4B4  Enviro.CommissionAc check -> "Please Set CommissionAC in Enviro"
  loc_15CB59F  INSERT Travel1
  loc_15CBAE4  INSERT Travel2 (sirf Post='Y' rows, SNo = grid Sr.No)
  loc_15CBE34  INSERT INTO LEDGER V_SNo=1 (Travel Agency Cr)
  loc_15CC0AA  INSERT INTO LEDGER V_SNo=2 (CommissionAc Dr)
  loc_15CC396  UPDATE Voucher_Prefix SET Start_Srl_No = <naya VNo>
  loc_EC7992   search SQL (Travel1 INNER JOIN SubGroup)
  loc_137CEAC  load-by-docid (Travel1 + Travel2 rows)
  loc_1250ED8  TopCtrl Delete (3 DELETEs + CommitTrans)
  TravPost.frm grid: 9 cols = Sr.No | Guest(hidden) | Name | No.Days |
  Room Rate | Total | Comm.% | Commission | Post

Notes / deviations:
  * [SAFE-FIX] VB6 `B.VDate >= d1 AND B.VDate <= d2` (d2 midnight) same-day
    evening check-ins miss karta tha -> din-bhar range
    `B.VDate >= d1 AND B.VDate < DATEADD(day,1,d2)`. Same safe-fix jo
    pehle ke ports me document hai.
  * [DECOMPILE-UNCERTAIN] VB6 helper Proc_6_122_14E77A8 ka return value
    recover nahi hua; uske baad Type='C' rows par `nights - 1` adjustment
    source me dikhata hai (loc_144158C) -> wahi rakha, 0-clamp ke saath.
    Type='O' (normal) me koi adjustment nahi.
  * [DECOMPILE-AMBIGUOUS] Ledger amount literals decompile me dono taraf
    `0` dikhe the; structure (row1 AmtCr slot / row2 AmtDr slot, aur
    `var_A0` = sum of grid col7 commission jo warna unused rehta) se
    agency Cr + CommissionAc Dr final mana. Standard "commission payable
    to travel agency" convention.
  * VB6 seedha `INSERT INTO LEDGER` karta hai - LedgerM / CurrBal /
    LedgerLog update NAHI (FaVrEnt.frm wale POST se alag). Faithful yahan
    bhi sirf 2 LEDGER rows.
"""
from __future__ import annotations

import datetime

from HMS_py.core import db
from HMS_py.core import fa_voucher as fv

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven
USER = db.get_user()

VTYPE = "PRAP"  # Voucher_Type.Description = 'Travel Agency Posting'
VTYPE_DESC = "Travel Agency Posting"

TBL1 = "Travel1"
TBL2 = "Travel2"

# TravPost.frm grid (loc_1167E9B .. loc_116819C)
GRID_COLS = ("Sr.No", "Guest", "Name", "No.Days", "Room Rate", "Total",
             "Comm.%", "Commission", "Post")
COL_SNO, COL_GUEST, COL_NAME, COL_NDAYS, COL_RATE, COL_TOTAL, COL_PER, \
    COL_AMT, COL_POST = range(9)

# FILL SQL (loc_1441116) - VB6 ka SQL literal, date-range safe-fix ke saath
FILL_SQL = (
    "SELECT SG.Commission, B.TravelAgent, B.NoDays, RoomOcc.RoomRate, "
    "B.GuestProf, GF.Name AS GuestName, RoomOcc.ChkInDate, RoomOcc.ChkInTime, "
    "RoomOcc.DepDate, RoomOcc.DepTime, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, "
    "RoomOcc.Type "
    "FROM ((GuestFolio AS B LEFT JOIN GuestProf AS GF "
    "ON B.GuestProf = GF.Code) LEFT JOIN SubGroup AS SG "
    "ON B.TravelAgent = SG.SubCode) RIGHT JOIN RoomOcc "
    "ON B.DocId = RoomOcc.DocId "
    "WHERE B.TravelAgent = ? AND B.VDate >= ? AND B.VDate < "
    "DATEADD(day, 1, ?)"
)

AGENCY_SQL = (
    "SELECT SubCode AS Code, Name FROM Subgroup WHERE ActiveYN = 1 "
    "AND (LOGSITE_CODE = ? OR LOGSITE_CODE = 'HO') "
    "AND CompanyType LIKE 'Travel Agency' ORDER BY Name"
)

COMMISSION_AC_SQL = (
    "SELECT CommissionAc FROM Enviro WHERE CommissionAc IS NOT NULL "
    "AND CommissionAc <> '' AND LOGSITE_CODE = ?"
)

SEARCH_SQL = (
    "SELECT T1.DocID AS SearchCode, T1.VNo, T1.VDate, "
    "SG.NAME AS TRAVELAGENCY, T1.FromDate, T1.ToDate "
    "FROM Travel1 T1 INNER JOIN SubGroup SG ON T1.TRAVELAGENCY = SG.SUBCODE "
    "WHERE (T1.LOGSITE_CODE = ? OR T1.LOGSITE_CODE = 'HO') "
    "ORDER BY T1.DocID, T1.VNo"
)


# ============================================================
# masters / pickers
# ============================================================
def agency_list(cn=None) -> list[dict]:
    """VB6 loc_1134036: active Travel Agency subgroups (DataGrid DGTravel)."""
    return [{"code": str(r[0] or ""), "name": str(r[1] or "")}
            for r in db.query(AGENCY_SQL, (SITE_CODE,), cn=cn)]


def commission_ac(cn=None) -> str:
    """VB6 loc_15CB4B4: Enviro.CommissionAc (site-filtered)."""
    rows = db.query(COMMISSION_AC_SQL, (SITE_CODE,), cn=cn)
    return str(rows[0][0] or "") if rows else ""


# ============================================================
# fill (CmdFill_Click -> Proc_78_36_1441A70)
# ============================================================
def _as_date(v):
    if v is None:
        return None
    if isinstance(v, datetime.datetime):
        return v.date()
    if isinstance(v, datetime.date):
        return v
    return datetime.date.fromisoformat(str(v)[:10])


def _nights(chk_in, chk_out, typ, dep) -> int:
    """Grid col3 (No.Days) - VB6 loc_1441361-14416A2.

    Type='O' (normal)  -> DATEDIFF(day, ChkIn, ChkOut)
    Type='C'           -> wahi - 1   [DECOMPILE-UNCERTAIN, 0-clamp]
    Type='' / otherwise-> DATEDIFF(day, ChkIn, DepDate)
    """
    chk_in = _as_date(chk_in)
    t = str(typ or "").strip().upper()
    out = _as_date(chk_out) if t in ("C", "O") else _as_date(dep)
    if chk_in is None or out is None:
        return 0
    n = (out - chk_in).days
    if t == "C":
        n -= 1
    return n if n > 0 else 0


def fill_guests(agency_code: str, date_from, date_to, cn=None) -> list[dict]:
    """CmdFill_Click: agency + date range ke GuestFolio/RoomOcc rows.

    Return list of grid rows (Post='' - VB6 bhi khali deta hai, user
    'Y' type kare; validation wahi maangta hai).
    """
    agency_code = str(agency_code or "").strip()
    if not agency_code:
        raise ValueError("Travel Agency zaroori hai")
    d1, d2 = _as_date(date_from), _as_date(date_to)
    if d1 is None or d2 is None:
        raise ValueError("From Date / To Date zaroori hai")
    if d2 < d1:
        raise ValueError("To Date From Date se pehle nahi ho sakti")

    rows = db.query(FILL_SQL, (agency_code, d1, d2), cn=cn)
    out: list[dict] = []
    for r in rows:
        v = list(r)
        # FILL_SQL col order: Commission, TravelAgent, NoDays, RoomRate,
        # GuestProf, GuestName, ChkInDate, ChkInTime, DepDate, DepTime,
        # ChkOutDate, ChkOutTime, Type
        comm_per = float(v[0] or 0)
        nodays = _nights(v[6], v[10], v[12], v[8])
        rate = float(v[3] or 0)
        total = round(nodays * rate, 2)
        out.append({
            "sno": len(out) + 1,
            "guest": str(v[4] or ""),
            "guest_name": str(v[5] or ""),
            "nodays": nodays,
            "roomrate": rate,
            "total": total,
            "commper": comm_per,
            "commamt": round(total * comm_per / 100.0, 2),
            "post": "",
            "chkindate": v[6], "chkoutdate": v[10], "type": str(v[12] or ""),
        })
    return out


def recompute(row: dict) -> dict:
    """Grid edit: Comm.% (col6) badalne par col7 = Total*Comm%/100
    (VB6 loc_FFCF0C)."""
    total = float(row.get("total") or 0)
    per = float(row.get("commper") or 0)
    row["commamt"] = round(total * per / 100.0, 2)
    return row


# ============================================================
# validation (Proc_78_44_10A40E4, loc_10A3E39)
# ============================================================
def validate_rows(rows) -> list[dict]:
    """VB6 save-guard: Post='Y' rows + Comm.% != 0 + kam se kam 1 row.

    Messages exact VB6 strings.
    """
    rows = list(rows or [])
    flagged = [r for r in rows if str(r.get("post") or "").strip().upper()
               == "Y"]
    for r in flagged:
        if float(r.get("commper") or 0) == 0:
            raise ValueError("Commission% is Zero")
    if not flagged:
        raise ValueError("No Posting to Save.")
    return flagged


# ============================================================
# numbering (Proc_78_45_115D0B8 -> Voucher_Prefix)
# ============================================================
def _number_window(vdate, cn=None):
    """VB6: Voucher_Prefix + Voucher_Type join, Date_From <= vdate,
    Order By Date_From DESC -> (prefix, start_srl_no, date_from)."""
    d = _as_date(vdate) or datetime.date.today()
    rows = db.query(
        "SELECT VP.Prefix, ISNULL(VP.Start_Srl_No, 0), VP.Date_From, "
        "ISNULL(VT.Number_Method, '') "
        "FROM Voucher_Type VT INNER JOIN Voucher_Prefix VP "
        "ON (VT.V_Type = VP.V_Type AND VT.SITE_CODE = VP.SITE_CODE "
        "AND VT.LOGSITE_CODE = VP.LOGSITE_CODE) "
        "WHERE VP.SITE_CODE = ? AND VP.LOGSITE_CODE = ? AND VP.V_Type = ? "
        "AND VP.Date_From <= ? ORDER BY VP.Date_From DESC",
        (SITE_CODE, SITE_CODE, VTYPE, d), cn=cn)
    if not rows:
        raise ValueError(f"Voucher_Prefix me V_Type '{VTYPE}' nahi mila - "
                         "parameter settings check karo")
    prefix = str(rows[0][0] or "")
    start = int(rows[0][1] or 0)
    date_from = _as_date(rows[0][2])
    method = str(rows[0][3] or "")
    return prefix, start, date_from, method


def next_number(vdate, cn=None, manual_vno=None) -> dict:
    """Next serial: Automatic -> Start_Srl_No+1, Manual -> user VNo
    (VB6 loc_15CE9B). Returns {prefix, vno, date_from, method}."""
    prefix, start, date_from, method = _number_window(vdate, cn=cn)
    if method.strip().lower() == "manual":
        if manual_vno in (None, "", 0, "0"):
            raise ValueError("Manual numbering me Vr No. zaroori hai")
        vno = int(manual_vno)
    else:
        vno = start + 1
    return {"prefix": prefix, "vno": vno, "date_from": date_from,
            "method": method, "docid": fv._make_docid(VTYPE, prefix, vno)}


def make_docid(prefix: str, vno: int) -> str:
    """21-char DocId: D + site(2) + type(5) + prefix(5) + vno(8)
    (fa_voucher._make_docid - VB6 pad arithmetic ke saath same)."""
    return fv._make_docid(VTYPE, prefix, vno)


# ============================================================
# save (CmdSave -> loc_15CB2D0)
# ============================================================
def save_post(agency_code: str, vdate, date_from, date_to, rows, *,
              cn=None, commit: bool = True, user: str = USER,
              site: str = SITE_CODE, docid: str | None = None,
              manual_vno=None) -> dict:
    """Travel1 + Travel2 + 2 LEDGER rows, ek transaction me.

    rows: fill_guests() ke grid rows (Post='Y' wahi save honge).
    Returns {docid, vno, prefix, lines, commission, ledger_sno}.
    """
    agency_code = str(agency_code or "").strip()
    if not agency_code:
        raise ValueError("Travel Agency zaroori hai")
    lines = validate_rows(rows)
    vdate = _as_date(vdate) or datetime.date.today()
    d1, d2 = _as_date(date_from), _as_date(date_to)
    if d1 is None or d2 is None:
        raise ValueError("From Date / To Date zaroori hai")

    own = cn is None
    cn = cn or db.connect()
    try:
        comm_ac = commission_ac(cn=cn)
        if not comm_ac:
            raise ValueError("Please Set CommissionAC in Enviro")

        num = None
        if not docid:
            num = next_number(vdate, cn=cn, manual_vno=manual_vno)
            docid = num["docid"]
            # VB6 loc_10A3E8A: duplicate serial guard
            dup = db.query(f"SELECT COUNT(*) FROM [{TBL1}] WHERE DocID = ?",
                           (docid,), cn=cn)
            if dup and int(dup[0][0] or 0) > 0:
                raise ValueError("Duplicate Serial No.")
        else:
            prefix, _, _, _ = _number_window(vdate, cn=cn)
            vno = _vno_for_docid(docid, cn=cn)
            num = {"prefix": prefix, "vno": vno, "date_from": d1,
                   "method": "", "docid": docid}

        cur = cn.cursor()
        # VB6 loc_15CB38F: delete-then-insert (edit mode safe)
        cur.execute(f"DELETE FROM [{TBL1}] WHERE DocID = ?", (docid,))
        cur.execute(f"DELETE FROM [{TBL2}] WHERE DocID = ?", (docid,))
        cur.execute("DELETE FROM Ledger WHERE DocID = ?", (docid,))

        # --- Travel1 header (loc_15CB59F) ---
        cur.execute(
            f"INSERT INTO [{TBL1}] (DocID, VType, VPrefix, Site_Code, VNo, "
            "VDate, FromDate, ToDate, TravelAgency, U_Name, U_EntDt, U_AE, "
            "LogSite_Code) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), "
            "'A', ?)",
            (docid, VTYPE, num["prefix"], site, int(num["vno"]), vdate,
             d1, d2, agency_code, user, site))

        # --- Travel2 lines (loc_15CBAE4) ---
        total_comm = 0.0
        for sno, r in enumerate(lines, start=1):  # grid Sr.No = 1..n
            total_comm += float(r.get("commamt") or 0)
            cur.execute(
                f"INSERT INTO [{TBL2}] (DocId, SNo, VType, VPrefix, "
                "Site_Code, VNo, VDate, Guest, NoDays, RoomRate, Total, "
                "Commission, CommPer, U_Name, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
                "getdate(), 'A', ?)",
                (docid, sno, VTYPE, num["prefix"], site, int(num["vno"]),
                 vdate, str(r.get("guest") or ""), int(r.get("nodays") or 0),
                 float(r.get("roomrate") or 0), float(r.get("total") or 0),
                 float(r.get("commamt") or 0), float(r.get("commper") or 0),
                 user, site))
        total_comm = round(total_comm, 2)

        narr = (f"Travel Agency Posting From Date {d1.strftime('%d/%m/%Y')} "
                f"To Date {d2.strftime('%d/%m/%Y')}")
        # --- LEDGER row 1: Travel Agency Cr (loc_15CBE34) ---
        cur.execute(
            "INSERT INTO LEDGER (DocId, V_SNo, V_Type, V_No, v_Prefix, "
            "Site_Code, V_Date, SubCode, AmtCr, AmtDr, ContraSub, Narration, "
            "U_Name, U_EntDt, U_AE, LogSite_COde) "
            "VALUES (?, 1, ?, ?, ?, ?, ?, ?, ?, 0, ?, ?, ?, getdate(), 'A', ?)",
            (docid, VTYPE, int(num["vno"]), num["prefix"], site, vdate,
             agency_code, total_comm, comm_ac, narr, user, site))
        # --- LEDGER row 2: CommissionAc Dr (loc_15CC0AA) ---
        cur.execute(
            "INSERT INTO LEDGER (DocId, V_SNo, V_Type, V_No, v_Prefix, "
            "Site_Code, V_Date, SubCode, AmtCr, AmtDr, ContraSub, Narration, "
            "U_Name, U_EntDt, U_AE, LogSIte_Code) "
            "VALUES (?, 2, ?, ?, ?, ?, ?, ?, 0, ?, ?, ?, ?, getdate(), 'A', ?)",
            (docid, VTYPE, int(num["vno"]), num["prefix"], site, vdate,
             comm_ac, total_comm, agency_code, narr, user, site))

        # --- Voucher_Prefix consume (loc_15CC396) ---
        if num.get("date_from"):
            cur.execute(
                "UPDATE Voucher_Prefix SET Start_Srl_No = ? WHERE "
                "SITE_CODE = ? AND LOGSITE_CODE = ? AND V_Type = ? "
                "AND Date_From = ?",
                (int(num["vno"]), site, site, VTYPE, num["date_from"]))
        if commit:
            cn.commit()
        return {"docid": docid, "vno": int(num["vno"]),
                "prefix": num["prefix"], "lines": len(lines),
                "commission": total_comm, "commission_ac": comm_ac,
                "ledger_sno": 2}
    except Exception:
        try:
            cn.rollback()
        except Exception:
            pass
        raise
    finally:
        if own:
            cn.close()


def _vno_for_docid(docid: str, cn=None) -> int:
    rows = db.query(f"SELECT ISNULL(VNo, 0) FROM [{TBL1}] WHERE DocID = ?",
                    (docid,), cn=cn)
    if rows and rows[0][0]:
        return int(rows[0][0])
    rows = db.query("SELECT ISNULL(V_No, 0) FROM Ledger WHERE DocID = ?",
                    (docid,), cn=cn)
    return int(rows[0][0]) if rows else 0


# ============================================================
# search / load / delete
# ============================================================
def search_list(cn=None) -> list[dict]:
    """VB6 loc_EC7992: search popup rows."""
    return [{
        "docid": str(r[0] or ""), "vno": int(r[1] or 0), "vdate": r[2],
        "agency": str(r[3] or ""), "fromdate": r[4], "todate": r[5],
    } for r in db.query(SEARCH_SQL, (SITE_CODE,), cn=cn)]


def load_post(docid: str, cn=None) -> dict:
    """VB6 loc_137CEAC (Travel1) + loc_137D2BE (Travel2 rows)."""
    h = db.query(
        "SELECT T1.DocID, T1.VNo, T1.VDate, T1.FromDate, T1.ToDate, "
        "T1.TravelAgency, T1.VPrefix, SG.Name AS TravelAgencyName "
        "FROM Travel1 T1 LEFT JOIN SubGroup SG ON T1.TravelAgency = SG.SUBCode "
        "WHERE T1.DocID = ?", (docid,), cn=cn)
    if not h:
        raise ValueError(f"Travel1 me DocID '{docid}' nahi mila")
    r = h[0]
    header = {
        "docid": str(r[0] or ""), "vno": int(r[1] or 0), "vdate": r[2],
        "fromdate": r[3], "todate": r[4],
        "agency": str(r[5] or ""), "prefix": str(r[6] or ""),
        "agency_name": str(r[7] or ""),
    }
    lines = []
    for x in db.query(
            "SELECT T2.SNo, T2.Guest, GF.Name, T2.NoDays, T2.RoomRate, "
            "T2.Total, T2.CommPer, T2.Commission "
            "FROM Travel2 T2 LEFT JOIN GuestProf GF ON T2.Guest = GF.Code "
            "WHERE T2.DocId = ? ORDER BY T2.SNo", (docid,), cn=cn):
        v = list(x)
        lines.append({
            "sno": int(v[0] or 0), "guest": str(v[1] or ""),
            "guest_name": str(v[2] or ""), "nodays": int(v[3] or 0),
            "roomrate": float(v[4] or 0), "total": float(v[5] or 0),
            "commper": float(v[6] or 0), "commamt": float(v[7] or 0),
            # VB6 load (loc_137D6B4) saved rows hamesha Post='Y'
            "post": "Y",
        })
    return {"header": header, "lines": lines}


def delete_post(docid: str, cn=None, commit: bool = True) -> int:
    """VB6 TopCtrl Delete (loc_1250ED8): Travel1/Travel2/Ledger by DocID."""
    docid = str(docid or "").strip()
    if not docid:
        raise ValueError("DocId zaroori hai")
    own = cn is None
    cn = cn or db.connect()
    try:
        cur = cn.cursor()
        n = 0
        for tbl in (TBL1, TBL2, "Ledger"):
            cur.execute(f"DELETE FROM [{tbl}] WHERE DocID = ?", (docid,))
            n += cur.rowcount if cur.rowcount and cur.rowcount > 0 else 0
        if commit:
            cn.commit()
        return n
    except Exception:
        try:
            cn.rollback()
        except Exception:
            pass
        raise
    finally:
        if own:
            cn.close()


def doc_exists(docid: str, cn=None) -> bool:
    rows = db.query(f"SELECT COUNT(*) FROM [{TBL1}] WHERE DocID = ?",
                    (docid,), cn=cn)
    return bool(rows and int(rows[0][0] or 0))
