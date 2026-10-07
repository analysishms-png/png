"""Charge Master CRUD — VB6 `FrmChargeMast` (Main Setup -> POS/FO -> Charge
Master, MDIForm1.frm:7256 `var_CA = 7`).

AUDIT-20261005 P2-K FIX (Batch C):
  Isse pehle Python me koi charge-specific RevMast writer nahi tha aur
  `ui/shell.py` ka "Charge Master" leaf galti se `p2.open_fixcharge`
  (FixedCharge table) kholta tha. VB6 index 7 = FrmChargeMast,
  index 8 = frmFixedChargeMast (alag masters).

VB6 evidence (FODER/FrmChargeMast.frm):
  load   loc_10D4110 : WHERE (LogSite_Code='<site>' OR 'HO')
                       AND ISNULL(FlagType,'')='FOM'
                       AND ISNULL(FieldType,'')='C' ORDER BY Name
  code   loc_14B2B46 : Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1
                       From RevMast Where SITE_CODE='<site>'
                       AND IsNumeric(substring(Code,3,4))=1
  insert loc_14B2E61 : 24-col INSERT (SysYN='N', AppMode='Percent',
                       FlagType='FOM', FlagAMR='Detail', DeskCode=<site>+'FOM',
                       FieldType='C')
  update loc_14B3242 : 18-col UPDATE ... FieldType='C' WHERE Code
  delete loc_1228B8F : Delete From RevMast Where Code='<code>'

Live RevMast (INFORMATION_SCHEMA 2026-10-06): 34 cols, FieldType='C' -> 67 rows.
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()
# VB6 insert literals (loc_14B2E61)
SYN = "N"
APP_MODE = "Percent"
FLAG_TYPE = "FOM"
FLAG_AMR = "Detail"
FIELD_TYPE = "C"
DESK_CODE = (SITE_CODE + "FOM")[:6]
# VB6 load filter (loc_10D4110)
SITE_FILTER = "(LogSite_Code = ? OR LogSite_Code = 'HO')"
LIMITS = {
    "code": 6, "name": 50, "short": 5, "accode": 8, "taxstru": 6,
    "appmode": 8, "deskcode": 6, "acposting": 10, "nature": 20,
    "active": 3, "taxinc": 3, "hsncode": 30, "type": 2,
}
SELECT_COLS = (
    "Code, Name, ShortName, ACCode, TaxStru, SaleRate, Cost, "
    "Type, AppMode, DeskCode, ACPosting, Nature, Active, TaxInc, HSNCode, "
    "FieldType, FlagType, FlagAMR, U_Name, U_EntDt, U_AE"
)


def _f(v) -> float:
    try:
        return float(v or 0)
    except (TypeError, ValueError):
        return 0.0


def _map(r) -> dict:
    def _s(v):
        return (v.strip() if isinstance(v, str) else str(v or ""))
    return {
        "code": _s(r.Code), "name": _s(r.Name), "short": _s(r.ShortName),
        "accode": _s(r.ACCode), "taxstru": _s(r.TaxStru),
        "salerate": _f(r.SaleRate), "cost": _f(r.Cost),
        "type": _s(r.Type), "appmode": _s(getattr(r, "AppMode", "")),
        "deskcode": _s(getattr(r, "DeskCode", "")),
        "acposting": _s(r.ACPosting), "nature": _s(r.Nature),
        "active": _s(getattr(r, "Active", "")),
        "taxinc": _s(getattr(r, "TaxInc", "")),
        "hsncode": _s(getattr(r, "HSNCode", "")),
        "fieldtype": _s(getattr(r, "FieldType", "")),
        "flagtype": _s(getattr(r, "FlagType", "")),
        "flagamr": _s(getattr(r, "FlagAMR", "")),
        "u_name": _s(r.U_Name), "u_ae": _s(r.U_AE),
    }


def _validate(rec: dict):
    if not (rec.get("code") or "").strip():
        raise ValueError("Code zaroori hai")
    for key, label in (("code", "Code"), ("name", "Name"),
                       ("short", "ShortName"), ("accode", "ACCode"),
                       ("taxstru", "TaxStru"), ("appmode", "AppMode"),
                       ("deskcode", "DeskCode"), ("acposting", "ACPosting"),
                       ("nature", "Nature"), ("active", "Active"),
                       ("taxinc", "TaxInc"), ("hsncode", "HSNCode"),
                       ("type", "Type")):
        if len(rec.get(key) or "") > LIMITS[key]:
            raise ValueError(f"{label} max {LIMITS[key]} chars")


def list_all(cn=None) -> list[dict]:
    """VB6 Form_Load (loc_10D4110): FOM + FieldType='C' + site scope."""
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM RevMast "
        f"WHERE ISNULL(FlagType, '') = 'FOM' AND ISNULL(FieldType, '') = 'C' "
        f"AND {SITE_FILTER} ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [_map(r) for r in rows]


def get(code: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM RevMast "
        f"WHERE Code = ? AND ISNULL(FlagType, '') = 'FOM' "
        f"AND ISNULL(FieldType, '') = 'C' AND {SITE_FILTER}",
        (code, SITE_CODE), cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, cn=None) -> bool:
    return bool(db.query(
        "SELECT 1 FROM RevMast WHERE Code = ? AND ISNULL(FieldType, '') = 'C' "
        "AND ISNULL(FlagType, '') = 'FOM'", (code,), cn=cn))


def next_code(cn=None) -> str:
    """VB6 loc_14B2B46: IsNull(Max(...),1)+1 (default 1, TaxMast jaisa nahi).
    prefix = Left$(site, 2) (Proc_6_45)."""
    rows = db.query(
        "SELECT ISNULL(MAX(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode "
        "FROM RevMast WHERE SITE_CODE = ? AND IsNumeric(SUBSTRING(Code,3,4))=1",
        (SITE_CODE,), cn=cn)
    n = int(rows[0][0]) if rows else 2
    return f"{SITE_CODE[:2]}{n:04d}"


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    """VB6 FrmChargeMast loc_14B2E61 ka 24-col column-set.

    Literals: SysYN='N', AppMode='Percent', FlagType='FOM', FlagAMR='Detail',
    DeskCode=<site>+'FOM', FieldType='C', U_AE='A'.
    """
    record = dict(rec)
    if not (record.get("code") or "").strip():
        record["code"] = next_code(cn=cn)
    _validate(record)
    db.require_absent("RevMast", "Code", record["code"], "Charge Code")
    return db.execute(
        "INSERT INTO RevMast (Code, Name, ShortName, ACCode, TaxStru, "
        "SaleRate, Cost, Site_Code, SysYN, Type, AppMode, FlagType, FlagAMR, "
        "DeskCode, U_Name, U_EntDt, U_AE, FieldType, LogSite_Code, ACPosting, "
        "Nature, Active, TaxInc, HSNCode) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, 'N', ?, 'Percent', 'FOM', 'Detail', "
        "?, ?, getdate(), 'A', 'C', ?, ?, ?, ?, ?, ?)",
        (record["code"], record.get("name", ""), record.get("short", ""),
         record.get("accode", ""), record.get("taxstru", ""),
         _f(record.get("salerate")), _f(record.get("cost")),
         SITE_CODE, record.get("type") or "Cr", DESK_CODE, USER, SITE_CODE,
         record.get("acposting", ""), record.get("nature", ""),
         record.get("active", ""), record.get("taxinc", ""),
         record.get("hsncode", "")),
        cn=cn, commit=commit)


def update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    """VB6 FrmChargeMast loc_14B3242 ka 18-col UPDATE (FieldType='C').

    VB6 update me ShortName/ACCode/ACPosting/Nature/TaxStru/SaleRate/Cost/
    Type/AppMode/HSNCode + Active/TaxInc + audit + FieldType aate hain;
    SysYN/FlagType/FlagAMR/DeskCode/LogSite_Code touch NAHI hote.
    """
    record = {**rec, "code": (rec.get("code") or "").strip() or code}
    _validate(record)
    return db.execute(
        "UPDATE RevMast SET Active = ?, TaxInc = ?, Name = ?, ShortName = ?, "
        "ACCode = ?, ACPosting = ?, Nature = ?, TaxStru = ?, SaleRate = ?, "
        "Cost = ?, Type = ?, AppMode = ?, HSNCode = ?, SITE_CODE = ?, "
        "U_name = ?, U_EntDt = getdate(), U_AE = 'E', FieldType = 'C' "
        "WHERE Code = ?",
        (record.get("active", ""), record.get("taxinc", ""),
         record.get("name", ""), record.get("short", ""),
         record.get("accode", ""), record.get("acposting", ""),
         record.get("nature", ""), record.get("taxstru", ""),
         _f(record.get("salerate")), _f(record.get("cost")),
         record.get("type") or "Cr", record.get("appmode", ""),
         record.get("hsncode", ""), SITE_CODE, USER, code),
        cn=cn, commit=commit)


def delete(code: str, cn=None, commit: bool = True) -> int:
    """VB6 loc_1228B8F: Delete From RevMast Where Code='<code>'."""
    return db.execute("DELETE FROM RevMast WHERE Code = ?", (code,),
                      cn=cn, commit=commit)


class _ChargeAPI:
    LIMITS = LIMITS
    @staticmethod
    def list_all(cn=None): return list_all(cn)
    @staticmethod
    def get(code, cn=None): return get(code, cn)
    @staticmethod
    def exists(code, cn=None): return exists(code, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return insert(rec, cn, commit)
    @staticmethod
    def update(code, rec, cn=None, commit=True): return update(code, rec, cn, commit)
    @staticmethod
    def delete(code, cn=None, commit=True): return delete(code, cn, commit)

ChargeAPI = _ChargeAPI()
