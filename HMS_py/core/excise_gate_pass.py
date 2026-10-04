"""Excise Invoice Cum Gate Pass (VB6 RsKitchenMaterial) helpers.

VB6 form kitchen material ka issue/receive voucher banata hai:
  global_68 = "KMREC"  (loc_1821)  -> Kitchen Material Receive
  global_72 = "KMISS"  (loc_1822)  -> Kitchen Material Issue
  Stock insert   "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,
                 VDate,Item,COntraDocId,ContraSno,DepartCode,GodownCode,
                 Rate,IssQty/RecdQty,IssueUnit/RecdUnit,Amount,ConvRatio,
                 U_Name,U_EntDt,U_AE,...)"
  Tax lines      "Insert Into TranTaxDetail(DocId,SNo,SNo1,VType,VPrefix,
                 Site_Code,VNo,VDate,DepartCode,TaxCode,BaseValue,TaxPer,
                 TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) ..."
  Sundry lines   "Insert Into TranSunDetail(Docid,Sno,vDate,vno,vprefix,
                 vtype,SunCode,SunAmt,U_AE,U_Name,U_EntDt,Site_Code,
                 LogSite_Code)"
  Tax structure  loc_1241E2F: "Select E.ExciseInvoiceTaxStru,
                 E.BarCodeFeatureInPurchase From Enviro E ... ForEx
                 taxstru yahan se aata hai"

Stock op khud `core/inventory.kitchen_material_issue/receive` (KMISS/KMREC)
karta hai - ye module sirf uske upar ke browse/tax helpers deta hai.

Live DB (Moondata2627): Enviro.ExciseInvoiceTaxStru = '' (tax structure
set nahi), TranTaxDetail = 0 rows, TranSunDetail = 0 rows -> tax/sundry
lines abhi inactive hain; screen sirf stock lines post karti hai.
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()

VTYPE_ISSUE = "KMISS"
VTYPE_RECEIVE = "KMREC"


def _s(v) -> str:
    return ("" if v is None else str(v)).strip()


def _f(v) -> float:
    try:
        return float(v or 0)
    except (TypeError, ValueError):
        return 0.0


def excise_tax_stru(cn=None) -> str:
    """VB6 loc_1241E2F - Enviro se excise tax structure code.

    Live DB: '' (set nahi) -> is screen par tax line banenge hi nahi.
    """
    rows = db.query("SELECT TOP 1 ISNULL(ExciseInvoiceTaxStru, '') "
                    "FROM Enviro WHERE LogSite_Code = ?",
                    (SITE_CODE,), cn=cn)
    return _s(rows[0][0]) if rows else ""


def barcode_feature(cn=None) -> bool:
    """VB6 loc_1241E2F second field - item code barcode se uthana hai."""
    rows = db.query("SELECT TOP 1 ISNULL(BarCodeFeatureInPurchase, 'No') "
                    "FROM Enviro WHERE LogSite_Code = ?",
                    (SITE_CODE,), cn=cn)
    return _s(rows[0][0]).lower().startswith("y") if rows else False


def godowns(cn=None) -> list[dict]:
    """VB6: Select G.Code, G.Name From GodownMast G INNER JOIN Depart D
    ON D.Code = G.Code (outlet godown list)."""
    out = []
    for r in db.query(
            "SELECT G.Code, G.Name FROM GodownMast G "
            "WHERE G.LogSite_Code = ? ORDER BY G.Name",
            (SITE_CODE,), cn=cn):
        try:
            out.append({"code": _s(r[0]), "name": _s(r[1])})
        except (IndexError, TypeError):
            out.append({"code": _s(r.Code), "name": _s(r.Name)})
    return out


def items(search: str = "", cn=None, limit: int = 500) -> list[dict]:
    """VB6 RsKitchenMaterial loc_1241F57: Select I.Code, I.BarCode, I.Name,
    I.Unit, I.IssueUnit, ... I.ConvRatio, I.RestCode From ItemMast I
    Where (LOGSITE_CODE='<site>' or LOGSITE_CODE='HO') ..."""
    sql = (f"SELECT TOP {int(limit)} Code, BarCode, Name, Unit, "
           "IssueUnit, PurchRate, ConvRatio, RestCode FROM ItemMast "
           "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO')")
    params: list = [SITE_CODE]
    if search:
        sql += " AND (Code LIKE ? OR Name LIKE ? OR BarCode LIKE ?)"
        params += [f"%{search}%"] * 3
    sql += " ORDER BY Name"
    out = []
    for r in db.query(sql, tuple(params), cn=cn):
        try:
            out.append({"code": _s(r[0]), "barcode": _s(r[1]),
                        "name": _s(r[2]), "unit": _s(r[3]),
                        "issueunit": _s(r[4]), "rate": _f(r[5]),
                        "convratio": _f(r[6]), "restcode": _s(r[7])})
        except (IndexError, TypeError):
            continue
    return out


def documents(vtype: str | None = None, cn=None, limit: int = 200) -> list[dict]:
    """VB6 browser: `Select Distinct S.Docid, S.Vno, S.VDate, S.VPrefix,
    D.NAME AS ToLocation From (Stock S left Join GodownMast D on
    S.GodownCode=D.Code) ...`"""
    vtype = vtype or VTYPE_RECEIVE
    sql = (f"SELECT DISTINCT TOP {int(limit)} S.DocId, S.VNo, "
           "CONVERT(varchar(11), S.VDate, 103) AS VDate, S.VPrefix, "
           "ISNULL(G.Name, '') AS Godown, COUNT(*) AS Lines, "
           "SUM(ISNULL(S.Amount, 0)) AS Amount "
           "FROM Stock S LEFT JOIN GodownMast G ON S.GodownCode = G.Code "
           "WHERE S.Vtype = ? AND S.LogSite_Code = ? "
           "GROUP BY S.DocId, S.VNo, S.VDate, S.VPrefix, G.Name "
           "ORDER BY S.VNo DESC")
    out = []
    for r in db.query(sql, (vtype, SITE_CODE), cn=cn):
        try:
            out.append({"docid": _s(r[0]), "vno": int(r[1] or 0),
                        "vdate": _s(r[2]), "vprefix": _s(r[3]),
                        "godown": _s(r[4]), "lines": int(r[5] or 0),
                        "amount": _f(r[6])})
        except (IndexError, TypeError, ValueError):
            continue
    return out


def document_lines(docid: str, cn=None) -> list[dict]:
    rows = db.query(
        "SELECT S.Sno, S.Item, ISNULL(I.Name, '') AS ItemName, S.QtyIss, "
        "S.QtyRec, S.Rate, S.Amount, S.GodownCode "
        "FROM Stock S LEFT JOIN ItemMast I ON S.Item = I.Code "
        "WHERE S.DocId = ? ORDER BY S.Sno", (docid,), cn=cn)
    out = []
    for r in rows:
        try:
            out.append({"sno": int(r[0] or 0), "item": _s(r[1]),
                        "itemname": _s(r[2]), "qtyiss": _f(r[3]),
                        "qtyrec": _f(r[4]), "rate": _f(r[5]),
                        "amount": _f(r[6]), "godown": _s(r[7])})
        except (IndexError, TypeError):
            continue
    return out


def tax_lines(docid: str, cn=None) -> list[dict]:
    """VB6 tax detail browser (TranTaxDetail) - abhi 0 rows (ExciseInvoiceTaxStru
    khali), par screen par dikhane ke liye rakha gaya."""
    rows = db.query(
        "SELECT TS.Sno, TS.TaxCode, ISNULL(R.Name, '') AS TaxName, "
        "TS.BaseValue, TS.TaxPer, TS.TaxAmt "
        "FROM TranTaxDetail TS LEFT JOIN TaxStru R ON TS.TaxCode = R.Code "
        "WHERE TS.DocId = ? ORDER BY TS.Sno", (docid,), cn=cn)
    out = []
    for r in rows:
        try:
            out.append({"sno": int(r[0] or 0), "taxcode": _s(r[1]),
                        "taxname": _s(r[2]), "basevalue": _f(r[3]),
                        "taxper": _f(r[4]), "taxamt": _f(r[5])})
        except (IndexError, TypeError):
            continue
    return out
