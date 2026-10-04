"""Forex Receive Entry (VB6 FrmForExRec) - ForExTrans transactions.

VB6 refs (FrmForExRec.frm):
  browse   loc_EB336E
           "Select DocID as SearchCode, VNo, cast(VDate as Varchar(11)) as
            Vdate, ForExCode, cast(Qty as char(9)) As Qty, cast(Rate as
            char(9)) As Rate, Cast(Amount as char(12)) As Amount, Remarks
            From ForExTrans Order by DocID, VNo"
  detail   "SELECT ForEx.Name as ForCurrency, ForExTrans.* FROM ForExTrans
            LEFT JOIN ForEx ON ForExTrans.ForExCode = ForEx.Code Where DocID='..'"
  currencies "SELECT Code, Name, Rate FROM ForEx WHERE (LOGSITE_CODE='..')"
  insert   loc_14511FC
           "Insert Into ForExTrans (DocID,VType,VPrefix,Site_Code,VNo,VDate,
            ForExCode,Qty,Rate,Amount,PayMode,Remarks,U_Name,U_EntDt,U_AE,
            LogSite_Code) Values (...)"
  delete   "Delete From ForExTrans Where DocID='...'"
  voucher  loc_14515DF: Voucher_Type HTFEX ('Forex Receive Entry') inner
           join Voucher_Prefix -> Number_Method 'Automatic' (live DB
           verified) -> serial auto-allocate, prefix '2026'.

Live DB (Moondata2627): ForEx = 0 rows (currency master khali - Forex
Master screen se banega), ForExTrans = 0 rows, Voucher_Prefix HTFEX row
present (Start_Srl_No=0, FY 2026-27).
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

VTYPE = "HTFEX"          # Voucher_Type: 'Forex Receive Entry'
TRANS_COLS = ("DocId, VType, VPrefix, Site_Code, VNo, VDate, ForExCode, "
              "Qty, Rate, Amount, PayMode, Remarks, U_Name, U_EntDt, "
              "U_AE, LogSite_Code")


def _s(v) -> str:
    return ("" if v is None else str(v)).strip()


def _map(r, spec) -> dict:
    """spec = [(key, index, attr)] - index-first, attr fallback (mock rows)."""
    try:
        return {k: r[i] for k, i, _a in spec}
    except (IndexError, TypeError, KeyError):
        out = {}
        for k, _i, a in spec:
            try:
                out[k] = getattr(r, a)
            except AttributeError:
                out[k] = None
        return out


_BROWSE_SPEC = (("docid", 0, "DocId"), ("vno", 1, "VNo"),
                ("vdate", 2, "VDate"), ("forexcode", 3, "ForExCode"),
                ("qty", 4, "Qty"), ("rate", 5, "Rate"),
                ("amount", 6, "Amount"), ("remarks", 7, "Remarks"))


def currencies(cn=None) -> list[dict]:
    """VB6 FrmForExRec loc_1027E00: SELECT Code, Name, Rate FROM ForEx
    where (LOGSITE_CODE='<site>' or LOGSITE_CODE='HO') ORDER BY Name."""
    out = []
    for r in db.query("SELECT Code, Name, Rate FROM ForEx "
                      "WHERE LogSite_Code = ? OR LogSite_Code = 'HO' "
                      "ORDER BY Name",
                      (SITE_CODE,), cn=cn):
        try:
            out.append({"code": _s(r[0]), "name": _s(r[1]),
                        "rate": float(r[2] or 0)})
        except (IndexError, TypeError, ValueError):
            out.append({"code": _s(r.Code), "name": _s(r.Name),
                        "rate": float(r.Rate or 0)})
    return out


def txn_browse(limit: int = 500, cn=None) -> list[dict]:
    """VB6 loc_EB336E browse grid."""
    sql = (f"SELECT TOP {int(limit)} DocId, VNo, "
           "CONVERT(varchar(11), VDate, 103) AS VDate, ForExCode, Qty, "
           "Rate, Amount, Remarks FROM ForExTrans "
           "ORDER BY DocId, VNo")
    return [_map(r, _BROWSE_SPEC) for r in db.query(sql, cn=cn)]


def txn_lines(docid: str, cn=None) -> list[dict]:
    """VB6 detail query - ForExTrans + ForEx.Name (ForCurrency)."""
    sql = ("SELECT F.Name AS ForCurrency, T.DocId, T.VNo, T.VPrefix, "
           "T.VDate, T.ForExCode, T.Qty, T.Rate, T.Amount, T.PayMode, "
           "T.Remarks, T.U_Name, T.U_EntDt "
           "FROM ForExTrans T LEFT JOIN ForEx F ON T.ForExCode = F.Code "
           "WHERE T.DocId = ? ORDER BY T.VNo")
    out = []
    for r in db.query(sql, (docid,), cn=cn):
        try:
            out.append({"currency": _s(r[0]), "docid": _s(r[1]),
                        "vno": int(r[2] or 0), "vprefix": _s(r[3]),
                        "vdate": r[4], "forexcode": _s(r[5]),
                        "qty": float(r[6] or 0), "rate": float(r[7] or 0),
                        "amount": float(r[8] or 0), "paymode": _s(r[9]),
                        "remarks": _s(r[10]), "u_name": _s(r[11]),
                        "u_entdt": r[12]})
        except (IndexError, TypeError, ValueError):
            continue
    return out


def next_vno(cn=None) -> int:
    """VB6 loc_14515DF: Voucher_Type.Number_Method='Automatic' (live) ->
    Voucher_Prefix se serial reserve, warna MAX(VNo)+1."""
    rows = db.query(
        "SELECT ISNULL(VP.Prefix, ''), ISNULL(VP.Start_Srl_No, 0), "
        "ISNULL(VT.Number_Method, 'Automatic') "
        "FROM Voucher_Type VT LEFT JOIN Voucher_Prefix VP "
        "ON (VT.V_Type = VP.V_Type AND VT.Site_Code = VP.Site_Code "
        "AND VP.LogSite_Code = ?) WHERE VT.V_Type = ?",
        (SITE_CODE, VTYPE), cn=cn)
    if rows:
        try:
            prefix = _s(rows[0][0]) or db.get_vprefix()
            start = int(rows[0][1] or 0)
            method = _s(rows[0][2]) or "Automatic"
        except (IndexError, TypeError, ValueError):
            prefix, start, method = db.get_vprefix(), 0, "Automatic"
    else:
        prefix, start, method = db.get_vprefix(), 0, "Automatic"
    if method.lower().startswith("manual"):
        return start + 1
    # Automatic -> race-safe MAX(VNo)+1 (BUG-015 pattern)
    cur = db.query("SELECT ISNULL(MAX(VNo), 0) FROM ForExTrans "
                   "WHERE VType = ? AND VPrefix = ? AND Site_Code = ?",
                   (VTYPE, prefix, SITE_CODE), cn=cn)
    return int((cur[0][0] if cur else 0) or 0) + 1


def _docid(vprefix: str, vno: int) -> str:
    """21-char VB6 DocId: D + site(2) + type.ljust(6) + prefix(4) + vno.rjust(8)."""
    return ("D" + SITE_CODE + VTYPE.ljust(6) + str(vprefix).ljust(4)
            + str(vno).rjust(8))[:21]


def txn_validate(rec: dict):
    if not str(rec.get("forexcode", "")).strip():
        raise ValueError("Currency (ForExCode) zaroori hai")
    qty = float(rec.get("qty") or 0)
    rate = float(rec.get("rate") or 0)
    if qty <= 0:
        raise ValueError("Qty zero se badi honi chahiye")
    if rate <= 0:
        raise ValueError("Rate zero se bada hona chahiye")
    if len(str(rec.get("remarks", ""))) > 255:
        raise ValueError("Remarks max 255 chars")


def txn_insert(rec: dict, cn=None, commit: bool = True) -> dict:
    """VB6 loc_14511FC - ek line ka ForExTrans insert (Amount = Qty * Rate)."""
    txn_validate(rec)
    vprefix = str(rec.get("vprefix") or db.get_vprefix())
    vno = int(rec.get("vno") or 0) or next_vno(cn=cn)
    docid = rec.get("docid") or _docid(vprefix, vno)
    amount = round(float(rec.get("qty")) * float(rec.get("rate")), 2)
    db.execute(
        "INSERT INTO ForExTrans (DocId, VType, VPrefix, Site_Code, VNo, "
        "VDate, ForExCode, Qty, Rate, Amount, PayMode, Remarks, U_Name, "
        "U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (docid, VTYPE, vprefix, SITE_CODE, vno, rec.get("vdate"),
         rec["forexcode"], float(rec["qty"]), float(rec["rate"]), amount,
         str(rec.get("paymode", "") or "")[:10],
         str(rec.get("remarks", "") or "")[:255], USER, SITE_CODE),
        cn=cn, commit=commit)
    return {"docid": docid, "vno": vno, "vprefix": vprefix,
            "amount": amount}


def txn_delete(docid: str, cn=None, commit: bool = True) -> int:
    """VB6: Delete From ForExTrans Where DocId='...' (poora document)."""
    if not str(docid or "").strip():
        raise ValueError("DocId zaroori hai")
    return db.execute("DELETE FROM ForExTrans WHERE DocId = ?", (docid,),
                      cn=cn, commit=commit)
