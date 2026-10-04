"""SundryMast CRUD (VB6: SundryMast.frm, FrmTaxMast.frm, DepartSundry.frm).

Schema evidence: Code varchar(6), Name varchar(20) NULL, Nature varchar(20)
NOT NULL, CalcSign varchar(1), SysYN varchar(1) + audit cols.
NOT NULL: Code, Nature.  Sample codes: KK0002, KKADD, KKADV (prefix KK).
Audit pattern VB6 jaisa: U_Name + U_EntDt(getdate()) + U_AE ('A'/'E').

BUG-001 FIX (2026-10-01):
  VB6 SundryMast.frm Form_Load / Find / Print ALL use:
    WHERE (LOGSITE_CODE='<site>' OR LOGSITE_CODE='HO')
  Python list_all/get me ye filter MISSING tha — fix kiya.

Duplicate name validation (VB6 Proc_77_28_10898F4):
  SELECT Count(*) FROM SundryMast WHERE (LOGSITE_CODE=.. OR ..'HO')
  AND Name='...' [AND Name<>'<old>']  — site-scoped, message "Duplicate Name".

SysYN protection (VB6 TopCtrl1_UnknownEvent_C/D):
  SysYN='Y' wale records delete/edit NAHI hote.
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()
LIMITS = {"code": 6, "name": 20, "nature": 20, "calc": 1}
# BUG-001 FIX: VB6 SundryMast.frm Form_Load (loc_EC6A6E) + Search + Print
# all filter with (LOGSITE_CODE='x' OR LOGSITE_CODE='HO').
SITE_FILTER = "(LogSite_Code = ? OR LogSite_Code = 'HO')"
SELECT_COLS = "Code, Name, Nature, CalcSign, SysYN, U_Name, U_EntDt, U_AE"

# VB6 SundryMast.frm Txt_GotFocus Index=1 — nature dropdown array (11 values)
NATURE_VALUES = (
    "Addition", "Deduction", "Discount", "Luxury Tax", "Round Off",
    "Service Charge", "Sale Tax", "Service Tax", "CGST", "SGST", "IGST",
)
# VB6 Txt_GotFocus Index=2 — CalcSign dropdown
CALCSIGN_VALUES = ("+", "-")


def _map(r) -> dict:
    return {"code": r.Code, "name": r.Name or "", "nature": r.Nature,
            "calc": r.CalcSign or "", "sysyn": r.SysYN or "",
            "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}


def _validate(rec: dict):
    if len(rec.get("code", "")) > LIMITS["code"]:
        raise ValueError(f"Code max {LIMITS['code']} chars")
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if len(rec.get("name", "")) > LIMITS["name"]:
        raise ValueError(f"Name max {LIMITS['name']} chars")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    if len(rec.get("nature", "")) > LIMITS["nature"]:
        raise ValueError(f"Nature max {LIMITS['nature']} chars")
    if not rec.get("nature", "").strip():
        raise ValueError("Nature zaroori hai (NOT NULL)")
    if len(rec.get("calc", "")) > LIMITS["calc"]:
        raise ValueError(f"CalcSign max {LIMITS['calc']} char")


def _dup_name_count(name: str, exclude_code: str | None = None,
                    cn=None) -> int:
    """VB6 Proc_77_28_10898F4: site-scoped name uniqueness check."""
    sql = f"SELECT COUNT(*) FROM SundryMast WHERE {SITE_FILTER} AND Name = ?"
    params = [SITE_CODE, name]
    if exclude_code is not None:
        sql += " AND Code <> ?"
        params.append(exclude_code)
    rows = db.query(sql, tuple(params), cn=cn)
    return int(rows[0][0]) if rows else 0


def list_all(cn=None) -> list[dict]:
    """BUG-001 FIX: VB6 Form_Load site filter added."""
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM SundryMast WHERE {SITE_FILTER} "
        "ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [_map(r) for r in rows]


def get(code: str, cn=None) -> dict | None:
    """BUG-001 FIX: VB6 SEARCHBACK + site filter added."""
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM SundryMast "
        f"WHERE Code = ? AND {SITE_FILTER}",
        (code, SITE_CODE), cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, cn=None) -> bool:
    return bool(db.query(
        f"SELECT 1 FROM SundryMast WHERE Code = ? AND {SITE_FILTER}",
        (code, SITE_CODE), cn=cn))


def _auto_next_code(cn=None) -> str:
    """VB6 SundryMast TopCtrl1_UnknownEvent_16 (loc_1253160):
      Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode
      From SundryMast Where SITE_CODE='<site>' AND SysYN<>'Y'
    prefix = Proc_6_45(site, 2) = Left$(site, 2).
    """
    rows = db.query(
        "SELECT ISNULL(MAX(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode "
        "FROM SundryMast WHERE Site_Code = ? AND SysYN <> 'Y'",
        (SITE_CODE,), cn=cn)
    n = int(rows[0][0]) if rows else 2
    return f"{SITE_CODE[:2]}{n:04d}"


def _check_sysyn(code: str, cn=None) -> None:
    """VB6 SysYN protection: System Defined records can not be deleted/edited."""
    rows = db.query("SELECT SysYN FROM SundryMast WHERE Code = ?", (code,),
                    cn=cn)
    if rows and (rows[0][0] or "").strip().upper() == "Y":
        raise ValueError("System Defined, Can not be Deleted")


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    """BUG-001 FIX: auto-code + duplicate Name check added (VB6 Proc_77_28)."""
    record = dict(rec)
    if not (record.get("code") or "").strip():
        record["code"] = _auto_next_code(cn=cn)
    _validate(record)
    db.require_absent("SundryMast", "Code", record["code"], "Sundry Code")
    # VB6 Proc_77_28_10898F4: duplicate Name in same site
    if _dup_name_count(record["name"], cn=cn):
        raise ValueError("Duplicate Name")
    return db.execute(
        "INSERT INTO SundryMast (Code, Name, Nature, CalcSign, SysYN, "
        "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (record["code"], record["name"], record["nature"],
         record.get("calc", ""), record.get("sysyn", "N"),
         SITE_CODE, USER, SITE_CODE),
        cn=cn, commit=commit)


def update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    """BUG-001 FIX: SysYN guard + duplicate Name (exclude self) added."""
    _check_sysyn(code, cn=cn)
    record = {**rec, "code": code}
    _validate(record)
    # VB6 duplicate check on edit (exclude current code's old name)
    if _dup_name_count(record["name"], exclude_code=code, cn=cn):
        raise ValueError("Duplicate Name")
    return db.execute(
        "UPDATE SundryMast SET Name = ?, Nature = ?, CalcSign = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
        "WHERE Code = ?",
        (record["name"], record["nature"], record.get("calc", ""),
         USER, code),
        cn=cn, commit=commit)


def delete(code: str, cn=None, commit: bool = True) -> int:
    """BUG-001 FIX: SysYN guard + RevMast.Sundry dependency check (VB6
    TopCtrl1_UnknownEvent_C loc_116B3EF: Proc_6_108_1010FEC RevMast/Sundry).
    """
    _check_sysyn(code, cn=cn)
    rows = db.query("SELECT COUNT(*) FROM RevMast WHERE Sundry = ?",
                    (code,), cn=cn)
    if rows and int(rows[0][0]) > 0:
        raise ValueError(
            "Related Record Exist in RevMast, Entry Can't Be Deleted")
    return db.execute("DELETE FROM SundryMast WHERE Code = ?", (code,),
                      cn=cn, commit=commit)
