"""Hall Item Group Master core module — VB6 HallItemGroupMast.frm port.

VB6 Form: HallItemGroupMast (Caption="Item Group Entry")
- Simple master: Code (PK), Name, Status (Active/Non Active)
- References ItemMast for delete validation (Proc_6_108_101061C)
- TopCtrl1 navigation: ADD, EDIT, DELETE, CANCEL, FIND, etc.
"""

from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

LIMITS = {"code": 10, "name": 50}
COLS = "Code, Name, Status, U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code"


def _map_hall_item_group(r) -> dict:
    try:
        return {
            "code": r.Code or "",
            "name": (r.Name or "").strip(),
            "status": r.Status or "Active",
            "u_name": r.U_Name or "",
            "u_ae": r.U_AE or "",
        }
    except AttributeError:
        c, n, st, un, _, uae = r
        return {
            "code": c or "",
            "name": (n or "").strip(),
            "status": st or "Active",
            "u_name": un or "",
            "u_ae": uae or "",
        }


def hall_item_group_list(cn=None, active_only: bool = False) -> list[dict]:
    where = ""
    if active_only:
        where = "WHERE Status = 'Active' "
    rows = db.query(
        f"SELECT {COLS} FROM HallItemGroupMast {where}ORDER BY Code", cn=cn)
    return [_map_hall_item_group(r) for r in rows]


def hall_item_group_get(code: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {COLS} FROM HallItemGroupMast WHERE Code = ?", (code,), cn=cn)
    return _map_hall_item_group(rows[0]) if rows else None


def hall_item_group_exists(code: str, cn=None) -> bool:
    return bool(db.query(
        "SELECT 1 FROM HallItemGroupMast WHERE Code = ?", (code,), cn=cn))


def hall_item_group_referenced_in_itemmast(code: str, cn=None) -> bool:
    """Check if this group is referenced in ItemMast (VB6 delete validation)."""
    return bool(db.query(
        "SELECT 1 FROM ItemMast WHERE ItemGroup = ? AND Site_Code = ?",
        (code, SITE_CODE), cn=cn))


def hall_item_group_insert(rec: dict, cn=None, commit=True) -> int:
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    status = rec.get("status", "Active")
    if status not in ("Active", "Non Active"):
        status = "Active"
    return db.execute(
        "INSERT INTO HallItemGroupMast (Code, Name, Status, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["code"], rec["name"], status, SITE_CODE, USER, SITE_CODE),
        cn=cn, commit=commit)


def hall_item_group_update(code: str, rec: dict, cn=None, commit=True) -> int:
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    status = rec.get("status", "Active")
    if status not in ("Active", "Non Active"):
        status = "Active"
    return db.execute(
        "UPDATE HallItemGroupMast SET Name = ?, Status = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE Code = ?",
        (rec["name"], status, USER, code), cn=cn, commit=commit)


def hall_item_group_delete(code: str, cn=None, commit=True) -> int:
    """Delete with VB6 parity: check ItemMast reference first."""
    if hall_item_group_referenced_in_itemmast(code, cn=cn):
        raise ValueError("Item Group is referenced in ItemMast - cannot delete")
    return db.execute(
        "DELETE FROM HallItemGroupMast WHERE Code = ?", (code,), cn=cn, commit=commit)


class _HallItemGroupAPI:
    LIMITS = LIMITS
    pk_key = "code"

    @staticmethod
    def list_all(cn=None): return hall_item_group_list(cn)
    @staticmethod
    def get(code, cn=None): return hall_item_group_get(code, cn)
    @staticmethod
    def exists(code, cn=None): return hall_item_group_exists(code, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return hall_item_group_insert(rec, cn, commit)
    @staticmethod
    def update(code, rec, cn=None, commit=True): return hall_item_group_update(code, rec, cn, commit)
    @staticmethod
    def delete(code, cn=None, commit=True): return hall_item_group_delete(code, cn, commit)

HallItemGroupAPI = _HallItemGroupAPI()