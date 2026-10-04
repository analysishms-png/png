"""POS Recycle core ops (VB6 FrmPOSRecycleData "Recycle Outlet Data").

DESTRUCTIVE/restore-oriented port: VB6 is form ka "Recycle" matlab outlet
ka POS data ek date-range (financial year) se PURA DELETE karna + voucher
serial reset karna (koi undo nahi).

VB6 flow (FrmPOSRecycleData.frm):
  Form_Load (loc_E997EC)
    -> Proc_230_12_118B9F8 grid setup (loc_118B616; 5 cols:
       [tick] RestCode / Outlet / RestType / LogSite_Code)
    -> Proc_230_13_110EF8C candidate fill (loc_110EC76/110EC86, Depart
       outlets query — list_outlets() iska parameterized port).
  CmdDelete (loc_F34AD0): MsgBox "R U Sure To Delete Data?" & vbCrLf &
    "It Will Not Recover Again." (&H24 = vbYesNo+vbCritical, 7 = vbNo ->
    Exit Sub) -> Label1 "Deleting..." -> BeginTrans ->
    Proc_230_15_11F1468 (loc_11F0FDA: All-branch saare grid rows, warna
    ticked rows global_60) -> per outlet Proc_230_14_13C71F8 (loc_13C6971
    .. loc_13C71CE = 14 statements: 11 DELETE + 3 UPDATE VOUCHER_PREFIX)
    -> CommitTrans (loc_F34B91) -> Label1 "Deletion Completed." ;
    error par RollbackTrans (loc_F34BD2). Kuch select na ho ->
    MsgBox "Select Outlet" (loc_11F13F3, &H40 vbInformation).

Date range globals: MemVar_1F920F4 (from) / MemVar_1F920FC (to) = FY
dates frmCompany.frm loc_195A183 se aate hain (Company.Start_Dt/End_Dt) —
default_date_range() wahi padhta hai.

Tables: Depart, KOT, PayCharge, POS_SBill, Sale1, Sale2, SplitedSunTran,
SplitSale1, SplitSale2, SplitStock, Stock, SunTran, VOUCHER_PREFIX
(sab live SQL Server me verified).

Rules: sirf parameterized SQL ('?' placeholders — VB6 string-concat ka
safe equivalent); multi-statement writes ek hi cn par + ek hi commit
(db.transaction = VB6 BeginTrans/CommitTrans/RollbackTrans). VB6 is form
me koi U_Name/U_EntDt audit column NAHI likhta (pure DELETE/UPDATE) —
port bhi nahi jodta.
"""
from __future__ import annotations

import datetime

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

# VB6 GridSel tick glyph: CellFontName="WINGDINGS", Chr(252) checkmark
# (loc_FDB26F/loc_102811E me IIf(TextMatrix="ü", " ", "ü") toggle).
TICK = "\u00fc"


def is_supervisor(user: str, cn=None):
    """Dispatch supervisor gate (ModuleAdd.bas loc_1E43E0E).

    VB6: If (MemVar_1F920B8 = 1) Then New FrmPOSRecycleData ... Else
    MsgBox "Only Supervisor is Authorised." (loc_1E43E5A). MemVar_1F920B8
    login par UserMast.Label se bharta hai (frmCompany.frm loc_19589B6:
    `MemVar_1F920B8 = CInt(Fields.Item("Label").Value)`).

    Returns True/False; None = user ka row hi nahi mila (headless
    identity jaise PYADMIN — gate me allow, documented deviation).
    """
    rows = db.query(
        "SELECT LABEL FROM UserMast WHERE User_Name = ?",
        ((user or "").strip(),), cn=cn)
    if not rows:
        return None
    try:
        return int(rows[0].LABEL or 0) == 1
    except (TypeError, ValueError):
        return str(rows[0].LABEL).strip().upper() in ("Y", "YES", "TRUE")


def _as_date(v) -> datetime.date:
    """date/datetime/ISO-str -> date (Company Start_Dt datetime aata hai)."""
    if isinstance(v, datetime.datetime):
        return v.date()
    if isinstance(v, datetime.date):
        return v
    return datetime.date.fromisoformat(str(v)[:10])


def default_date_range(cn=None) -> tuple[datetime.date, datetime.date]:
    """VB6 MemVar_1F920F4 (from) / MemVar_1F920FC (to) = FY dates.

    frmCompany.frm loc_195A183: MemVar_1F920F4 = CDate(Format(
    Fields("Start_Dt"), "dd/MMM/yyyy")) — Company table se aata hai.
    Live verified: Company Start_Dt=2026-04-01, End_Dt=2027-03-31.
    Company khali ho to Apr-Mar FY fallback (core.year_end).
    """
    rows = db.query("SELECT Start_Dt, End_Dt FROM Company", cn=cn)
    if rows and rows[0].Start_Dt and rows[0].End_Dt:
        return _as_date(rows[0].Start_Dt), _as_date(rows[0].End_Dt)
    from HMS_py.core import year_end
    fy = year_end.get_fy_dates()
    return fy["start"], fy["end"]


def list_outlets(cn=None) -> list[dict]:
    """Candidate outlets — VB6 Proc_230_13_110EF8C ka Form_Load query.

    VB6 verbatim (loc_110EC76 + loc_110EC86, & concat do line me):
      SELECT Code,Name,RestType,LOGSITE_CODE FROM Depart
      Where Code<>'<MemVar_1F92078>RS' And (LOGSITE_CODE='<site>'
      or LOGSITE_CODE='HO') AND OutletYN='Y' and RestType='Outlet'
      ORDER BY Name
    Params: <site> = db.get_site_code() (MemVar_1F92078 = LogSite_Code).
    """
    rows = db.query(
        "SELECT Code, Name, RestType, LOGSITE_CODE FROM Depart "
        "Where Code <> ? And (LOGSITE_CODE = ? or LOGSITE_CODE = 'HO') "
        "AND OutletYN = 'Y' and RestType = 'Outlet' ORDER BY Name",
        (SITE_CODE + "RS", SITE_CODE), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip(),
             "resttype": (r.RestType or "").strip(),
             "logsite": (r.LOGSITE_CODE or "").strip()} for r in rows]


def outlet_shortname(rest_code: str, logsite: str, cn=None) -> str:
    """Outlet ka ShortName = VType prefix (VB6 var_88).

    VB6 Proc_230_14 (loc_13C68E9):
      SELECT SHORTNAME FROM DEPART WHERE CODE='<arg_C>' And Logsite_Code='<arg_10>'
    isi se VType ban-ta hai: 'K<sn>'/'N<sn>' (KOT) aur 'B<sn>' (baki sab).
    """
    rows = db.query(
        "SELECT SHORTNAME FROM DEPART WHERE CODE = ? And Logsite_Code = ?",
        (rest_code, logsite), cn=cn)
    return (rows[0].SHORTNAME or "").strip() if rows else ""


def _del_pair(table: str, where: str, params: tuple, label: str):
    """DELETE statement + uska SELECT COUNT twin (confirm preview ke liye)."""
    return (label,
            f"DELETE FROM {table} WHERE {where}",
            f"SELECT COUNT(1) FROM {table} WHERE {where}",
            params)


def _statements(short: str, logsite: str, d1, d2) -> list[tuple]:
    """VB6 Proc_230_14_13C71F8 ke 14 statements (exact order).

    Har tuple: (label, delete_or_update_sql, count_sql, params). VB6
    string concat ('K' & var_88 etc.) ko params me bind kiya hai; date
    range = MemVar_1F920F4 (d1) .. MemVar_1F920FC (d2) (VB6
    Proc_6_7_F25D88 date-appender ka parameterized equivalent).
    """
    k, n, b = f"K{short}", f"N{short}", f"B{short}"
    vwhere = "VType = ? AND LogSite_Code = ? AND VDate BETWEEN ? AND ?"
    bparams = (b, logsite, d1, d2)
    stmts = [
        # loc_13C6971: Delete From KOT Where VType In('K<sn>','N<sn>')
        #   And LogSite_Code='<site>' And VDate Between d1 AND d2
        _del_pair("KOT",
                  "VType IN (?, ?) AND LogSite_Code = ? "
                  "AND VDate BETWEEN ? AND ?",
                  (k, n, logsite, d1, d2), "KOT"),
        # loc_13C6A1F: Delete From Sale1 Where VType='B<sn>' ...
        _del_pair("Sale1", vwhere, bparams, "Sale1"),
        # loc_13C6AB9: Delete From Sale2 ...
        _del_pair("Sale2", vwhere, bparams, "Sale2"),
        # loc_13C6B53: Delete From Stock ...
        _del_pair("Stock", vwhere, bparams, "Stock"),
        # loc_13C6BED: Delete From SunTran ...
        _del_pair("SunTran", vwhere, bparams, "SunTran"),
        # loc_13C6C87: Delete From Paycharge ...
        _del_pair("PayCharge", vwhere, bparams, "PayCharge"),
        # loc_13C6D0C: Delete From POS_SBill Where DocID In
        #   (Select DocId From SplitSale1 Where VType='B<sn>' ...)
        _del_pair("POS_SBill",
                  "DocID IN (SELECT DocId FROM SplitSale1 WHERE "
                  "VType = ? AND LogSite_Code = ? AND VDate BETWEEN ? AND ?)",
                  bparams, "POS_SBill"),
        # loc_13C6DB8: Delete From SplitSale1 ...
        _del_pair("SplitSale1", vwhere, bparams, "SplitSale1"),
        # loc_13C6E52: Delete From SplitSale2 ...
        _del_pair("SplitSale2", vwhere, bparams, "SplitSale2"),
        # loc_13C6EEC: Delete From SplitStock ...
        _del_pair("SplitStock", vwhere, bparams, "SplitStock"),
        # loc_13C6F86: Delete From SplitedSunTran ...
        _del_pair("SplitedSunTran", vwhere, bparams, "SplitedSunTran"),
    ]
    # loc_13C700D / loc_13C70B9 / loc_13C7165:
    #   UPDATE VOUCHER_PREFIX SET START_SRL_NO=0 WHERE DATE_FROM=<d1>
    #   AND DATE_TO=<d2> AND V_TYPE='K|N|B<sn>' And Logsite_Code='<site>'
    upwhere = ("DATE_FROM = ? AND DATE_TO = ? AND V_TYPE = ? "
               "AND Logsite_Code = ?")
    for vt, label in ((k, "VOUCHER_PREFIX/K"), (n, "VOUCHER_PREFIX/N"),
                      (b, "VOUCHER_PREFIX/B")):
        stmts.append((
            label,
            "UPDATE VOUCHER_PREFIX SET START_SRL_NO=0 WHERE " + upwhere,
            "SELECT COUNT(1) FROM VOUCHER_PREFIX WHERE " + upwhere,
            (d1, d2, vt, logsite)))
    return stmts


def _normalize(outlets) -> list[dict]:
    """[{code, logsite}] (ya (code, logsite) tuples) me normalise.

    VB6 Proc_230_15 (loc_11F1091): row tabhi process hoti hai jab
    TextMatrix(row,1) (RestCode) aur TextMatrix(row,4) (LogSite_Code)
    dono non-empty ho — khali rows skip.
    """
    recs = []
    for rec in outlets or []:
        if isinstance(rec, dict):
            code = str(rec.get("code") or "").strip()
            logsite = str(rec.get("logsite") or "").strip()
        else:
            code = str(rec[0] or "").strip()
            logsite = str(rec[1] or "").strip()
        if not code or not logsite:
            continue
        recs.append({"code": code, "logsite": logsite})
    return recs


def count_pending(outlets, date_from, date_to, cn=None) -> dict[str, int]:
    """Per-table rows jo delete/update hone WALE hain (read-only preview).

    VB6 me yeh nahi hai — confirmation dialog ke liye safety add
    (sirf SELECT COUNT(1); kuch write nahi). Same predicates/params
    _statements() se, isliye execute ke saath count diverge nahi hoga.
    """
    recs = _normalize(outlets)
    counts: dict[str, int] = {}
    d1, d2 = _as_date(date_from), _as_date(date_to)
    if d1 > d2:
        raise ValueError("Date From > Date To")
    for rec in recs:
        short = outlet_shortname(rec["code"], rec["logsite"], cn=cn)
        if not short:
            raise ValueError(
                f"{rec['code']}/{rec['logsite']}: Depart.ShortName khali hai "
                "— VType prefix ('K'/'N'/'B' + sn) nahi ban sakta")
        for label, _dsql, csql, params in _statements(
                short, rec["logsite"], d1, d2):
            rows = db.query(csql, params, cn=cn)
            counts[label] = counts.get(label, 0) + int(rows[0][0] or 0)
    return counts


def perform_recycle(outlets, date_from, date_to, user: str = USER,
                    cn=None) -> dict:
    """DESTRUCTIVE recycle: selected outlets ka POS data range me delete.

    VB6: CmdDelete_UnknownEvent_9 (loc_F34AD0) BeginTrans ->
    Proc_230_15_11F1468 (loc_11F0FDA selection/All loop) -> per outlet
    Proc_230_14_13C71F8 (14 statements) -> CommitTrans; koi bhi step
    fail ho to RollbackTrans (loc_F34BD2). Yahan: ek hi cn + ek hi
    commit (db.transaction = BeginTrans/CommitTrans/RollbackTrans).

    Returns {"outlets", "counts": {label: rows}, "total", "date_from",
    "date_to", "user"}. Audit columns: VB6 is form me koi
    U_Name/U_EntDt nahi likhta — port bhi nahi likhta.
    """
    recs = _normalize(outlets)
    if not recs:
        raise ValueError("Koi outlet select nahi hua (VB6: 'Select Outlet')")
    d1, d2 = _as_date(date_from), _as_date(date_to)
    if d1 > d2:
        raise ValueError("Date From > Date To")
    counts: dict[str, int] = {}
    with db.transaction(cn) as cnx:
        for rec in recs:
            short = outlet_shortname(rec["code"], rec["logsite"], cn=cnx)
            if not short:
                raise ValueError(
                    f"{rec['code']}/{rec['logsite']}: Depart.ShortName khali "
                    "hai — VType prefix nahi ban sakta")
            for label, dsql, _csql, params in _statements(
                    short, rec["logsite"], d1, d2):
                n = db.execute(dsql, params, cn=cnx, commit=False)
                counts[label] = counts.get(label, 0) + max(int(n or 0), 0)
    return {"outlets": len(recs), "counts": counts,
            "total": sum(counts.values()),
            "date_from": d1, "date_to": d2, "user": user}
