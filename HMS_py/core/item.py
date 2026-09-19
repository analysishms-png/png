"""ItemMast CRUD (F&B items - 2161 live rows; VB6: DepOpStk/Catering aadi).
Schema evidence: Code varchar(8), Name varchar(35) NULL, Unit varchar(6) NULL,
Type varchar(12) NULL, ItemGroup varchar(6) NULL, SaleRate float NULL.
DB NOT NULL: Code, RestCode (restaurant FK - hum default KKA001, jaise
existing rows). App-level: Code+Name required.
Audit pattern VB6 jaisa: U_Name + U_EntDt(getdate()) + U_AE ('A'/'E').
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = "KK"
USER = "PYADMIN"
DEFAULT_REST = "KKA001"   # existing rows ka common RestCode
LIMITS = {"code": 8, "name": 35, "unit": 6, "type": 12, "group": 6}
SELECT_COLS = ("Code, Name, Unit, Type, ItemGroup, SaleRate, RestCode, "
               "U_Name, U_EntDt, U_AE")


def _map(r) -> dict:
    return {"code": r.Code, "name": r.Name or "", "unit": r.Unit or "",
            "type": r.Type or "", "group": r.ItemGroup or "",
            "rate": float(r.SaleRate or 0), "rest": r.RestCode or "",
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
    for k, lbl in (("unit", "Unit"), ("type", "Type"), ("group", "Group")):
        if len(rec.get(k, "")) > LIMITS[k]:
            raise ValueError(f"{lbl} max {LIMITS[k]} chars")


def list_all(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {int(limit)} {SELECT_COLS} FROM ItemMast ORDER BY Code",
        cn=cn)
    return [_map(r) for r in rows]


def search(name_part: str, cn=None, limit: int = 100) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {int(limit)} {SELECT_COLS} FROM ItemMast "
        "WHERE Name LIKE ? ORDER BY Code",
        (f"%{name_part}%",), cn=cn)
    return [_map(r) for r in rows]


def get(code: str, cn=None) -> dict | None:
    rows = db.query(f"SELECT {SELECT_COLS} FROM ItemMast WHERE Code = ?",
                    (code,), cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, cn=None) -> bool:
    return bool(db.query("SELECT 1 FROM ItemMast WHERE Code = ?", (code,),
                         cn=cn))


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    return db.execute(
        "INSERT INTO ItemMast (Code, Name, Unit, Type, ItemGroup, SaleRate, "
        "RestCode, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["code"], rec["name"], rec.get("unit", ""),
         rec.get("type", ""), rec.get("group", ""),
         float(rec.get("rate") or 0), rec.get("rest") or DEFAULT_REST,
         SITE_CODE, USER, SITE_CODE), cn=cn, commit=commit)


def update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    return db.execute(
        "UPDATE ItemMast SET Name = ?, Unit = ?, Type = ?, ItemGroup = ?, "
        "SaleRate = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
        "WHERE Code = ?",
        (rec["name"], rec.get("unit", ""), rec.get("type", ""),
         rec.get("group", ""), float(rec.get("rate") or 0), USER, code),
        cn=cn, commit=commit)


def delete(code: str, cn=None, commit: bool = True) -> int:
    return db.execute("DELETE FROM ItemMast WHERE Code = ?", (code,),
                      cn=cn, commit=commit)
