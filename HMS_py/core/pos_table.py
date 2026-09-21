"""POS Table management - TableMast/DispColor CRUD.

Tables verified in DB KailashData2526:
  TableMast - DOES NOT EXIST (tables are managed via RoomMast with Type='TB')
  DispColor - table display colors (Index PK, Color, Detail)
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = "PYADMIN"


# ============================================================
# TableMast - Table Master (via RoomMast where Type='TB')
# VB6 stores tables in RoomMast with Type='TB' (not a separate TableMast)
# ============================================================
def _map_table(r) -> dict:
    try:
        return {
            "code": r.Code or "", "name": r.Name or "",
            "type": r.Type or "", "roomcat": r.RoomCat or "",
            "restcode": r.RestCode or "",
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        vals = list(r)
        return {
            "code": vals[1] or "", "name": vals[2] or "",
            "type": vals[0] or "", "roomcat": vals[3] if len(vals) > 3 else "",
            "restcode": vals[12] if len(vals) > 12 else "",
            "u_name": vals[16] if len(vals) > 16 else "",
            "u_ae": vals[18] if len(vals) > 18 else "",
        }


def table_list(cn=None, limit: int = 500) -> list[dict]:
    """List POS tables from RoomMast where Type='TB'."""
    rows = db.query(
        f"SELECT TOP {limit} Type, Code, Name, RoomCat, RestCode, "
        "U_Name, U_EntDt, U_AE FROM RoomMast "
        "WHERE Type = 'TB' ORDER BY Code",
        cn=cn)
    return [_map_table(r) for r in rows]


def table_get(code: str, cn=None) -> dict | None:
    rows = db.query(
        "SELECT Type, Code, Name, RoomCat, RestCode, U_Name, U_EntDt, U_AE "
        "FROM RoomMast WHERE Code = ? AND Type = 'TB'",
        (code,), cn=cn)
    return _map_table(rows[0]) if rows else None


def table_search(name_part: str, cn=None, limit: int = 100) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {limit} Type, Code, Name, RoomCat, RestCode, "
        "U_Name, U_EntDt, U_AE FROM RoomMast "
        "WHERE Type = 'TB' AND Name LIKE ? ORDER BY Code",
        (f"%{name_part}%",), cn=cn)
    return [_map_table(r) for r in rows]


class _TableMastAPI:
    """Tables are managed via RoomMast with Type='TB' (no separate TableMast table)."""
    LIMITS = {"code": 6, "name": 30}
    @staticmethod
    def list_all(cn=None, limit=500): return table_list(cn, limit)
    @staticmethod
    def get(code, cn=None): return table_get(code, cn)
    @staticmethod
    def search(name_part, cn=None, limit=100): return table_search(name_part, cn, limit)

TableMastAPI = _TableMastAPI()


# ============================================================
# DispColor - Table Display Colors
# ============================================================
_DISPCOLOR_COLS = "Index, Color, Detail, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code"


def _map_dispcolor(r) -> dict:
    try:
        return {
            "index": int(r.Index or 0), "color": r.Color or "",
            "detail": r.Detail or "",
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        vals = list(r)
        return {
            "index": int(vals[0] or 0), "color": vals[1] or "",
            "detail": vals[2] or "",
            "u_name": vals[4] or "", "u_ae": vals[6] or "",
        }


def _validate_dispcolor(rec: dict):
    if not rec.get("color", "").strip():
        raise ValueError("Color zaroori hai")


def dispcolor_list(cn=None, limit: int = 200) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {limit} {_DISPCOLOR_COLS} FROM DispColor ORDER BY [Index]",
        cn=cn)
    return [_map_dispcolor(r) for r in rows]


def dispcolor_get(index: int, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {_DISPCOLOR_COLS} FROM DispColor WHERE [Index] = ?",
        (index,), cn=cn)
    return _map_dispcolor(rows[0]) if rows else None


def dispcolor_insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate_dispcolor(rec)
    return db.execute(
        "INSERT INTO DispColor ([Index], Color, Detail, Site_Code, "
        "U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (int(rec.get("index") or 0), rec["color"], rec.get("detail", ""),
         SITE_CODE, USER, SITE_CODE),
        cn=cn, commit=commit)


def dispcolor_update(index: int, rec: dict, cn=None, commit: bool = True) -> int:
    _validate_dispcolor(rec)
    return db.execute(
        "UPDATE DispColor SET Color = ?, Detail = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE [Index] = ?",
        (rec["color"], rec.get("detail", ""), USER, index),
        cn=cn, commit=commit)


def dispcolor_delete(index: int, cn=None, commit: bool = True) -> int:
    return db.execute("DELETE FROM DispColor WHERE [Index] = ?", (index,),
                      cn=cn, commit=commit)


class _DispColorAPI:
    LIMITS = {"color": 20, "detail": 50}
    @staticmethod
    def list_all(cn=None, limit=200): return dispcolor_list(cn, limit)
    @staticmethod
    def get(index, cn=None): return dispcolor_get(index, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return dispcolor_insert(rec, cn, commit)
    @staticmethod
    def update(index, rec, cn=None, commit=True): return dispcolor_update(index, rec, cn, commit)
    @staticmethod
    def delete(index, cn=None, commit=True): return dispcolor_delete(index, cn, commit)

DispColorAPI = _DispColorAPI()
