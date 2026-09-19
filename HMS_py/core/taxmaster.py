"""Tax Master CRUD (VB6: 'Tax Master' - Main Setup -> General Setup).

Schema: TaxStru table (multi-line tax structure).
  Code varchar(6) PK, Name varchar(35), Sno smallint PK,
  TaxCode varchar(6), Nature varchar(25), Rate float, Limit float,
  CondApp varchar(25), CompOperator varchar(9),
  TaxBeforeDisc varchar(3), Limit1 float,
  Site_Code varchar(2), U_Name varchar(10), U_EntDt datetime,
  U_AE varchar(1), LogSite_Code varchar(2).
VB6 use: Tax structure building block (each tax slab = one TaxStru row).
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = "KK"
USER = "PYADMIN"
LIMITS = {"code": 6, "name": 35, "taxcode": 6, "nature": 25}


def _validate(rec: dict):
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if len(rec["code"]) > LIMITS["code"]:
        raise ValueError(f"Code max {LIMITS['code']} chars")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    if len(rec["name"]) > LIMITS["name"]:
        raise ValueError(f"Name max {LIMITS['name']} chars")


def list_all(cn=None) -> list[dict]:
    rows = db.query(
        "SELECT Code, Name, Sno, TaxCode, Nature, Rate, Limit, "
        "CondApp, CompOperator, TaxBeforeDisc, Limit1 "
        "FROM TaxStru ORDER BY Code, Sno", cn=cn)
    return [{"code": r.Code, "name": (r.Name or "").strip(),
             "sno": r.Sno, "taxcode": r.TaxCode or "",
             "nature": r.Nature or "", "rate": float(r.Rate or 0),
             "limit": float(r.Limit or 0),
             "cond_app": r.CondApp or "", "comp_op": r.CompOperator or "",
             "tax_before_disc": r.TaxBeforeDisc or "",
             "limit1": float(r.Limit1 or 0)}
            for r in rows]


def list_codes(cn=None) -> list[dict]:
    """List distinct tax structure codes."""
    rows = db.query(
        "SELECT Code, Name FROM TaxStru GROUP BY Code, Name ORDER BY Code",
        cn=cn)
    return [{"code": r[0], "name": (r[1] or "").strip()} for r in rows]


def get(code: str, cn=None) -> list[dict]:
    """Get all lines for a tax structure code."""
    rows = db.query(
        "SELECT Code, Name, Sno, TaxCode, Nature, Rate, Limit, "
        "CondApp, CompOperator, TaxBeforeDisc, Limit1, "
        "U_Name, U_EntDt, U_AE "
        "FROM TaxStru WHERE Code = ? ORDER BY Sno",
        (code,), cn=cn)
    return [{"code": r[0], "name": (r[1] or "").strip(),
             "sno": r[2], "taxcode": r[3] or "",
             "nature": r[4] or "", "rate": float(r[5] or 0),
             "limit": float(r[6] or 0),
             "cond_app": r[7] or "", "comp_op": r[8] or "",
             "tax_before_disc": r[9] or "",
             "limit1": float(r[10] or 0),
             "u_name": r[11] or "", "u_ae": r[13] or ""}
            for r in rows]


def exists(code: str, cn=None) -> bool:
    return bool(db.query(
        "SELECT 1 FROM TaxStru WHERE Code = ?", (code,), cn=cn))


def insert(code: str, name: str, lines: list[dict],
           cn=None, commit: bool = True) -> int:
    """Insert a tax structure with multiple lines."""
    _validate({"code": code, "name": name})
    total = 0
    for i, ln in enumerate(lines, 1):
        total += db.execute(
            "INSERT INTO TaxStru (Code, Name, Sno, TaxCode, Nature, Rate, "
            "Limit, CondApp, CompOperator, TaxBeforeDisc, Limit1, "
            "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
            (code, name, i, ln.get("taxcode", ""),
             ln.get("nature", ""), float(ln.get("rate") or 0),
             float(ln.get("limit") or 0), ln.get("cond_app", ""),
             ln.get("comp_op", ""), ln.get("tax_before_disc", ""),
             float(ln.get("limit1") or 0),
             SITE_CODE, USER, SITE_CODE),
            cn=cn, commit=False)
    if commit:
        cn.commit() if cn else None
    return total


def update(code: str, name: str, lines: list[dict],
           cn=None, commit: bool = True) -> int:
    """Update tax structure: delete old lines, insert new."""
    _validate({"code": code, "name": name})
    db.execute("DELETE FROM TaxStru WHERE Code = ?", (code,),
               cn=cn, commit=False)
    return insert(code, name, lines, cn=cn, commit=commit)


def delete(code: str, cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM TaxStru WHERE Code = ?", (code,),
        cn=cn, commit=commit)
