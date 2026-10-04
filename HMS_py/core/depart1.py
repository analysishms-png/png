"""Department Master (depart1) core module — VB6 depart1 table access.

VB6 Evidence: HMS.bas and multiple forms reference depart1 for department master.
Live DB: 0 rows (empty but schema exists) - department master (alternative to DepartmentMaster).

This module provides CRUD access to department master data.
"""

from __future__ import annotations

from HMS_py.core import db


LIMITS = {"code": 10, "name": 50, "short": 10}
SELECT_COLS = "Code, Name, ShortName, SysYn, U_Name, U_EntDt, U_AE"


def _map_depart1(r) -> dict:
    """Map depart1 row to dict."""
    return {
        "code": getattr(r, "Code", "") or "",
        "name": getattr(r, "Name", "") or "",
        "short_name": getattr(r, "ShortName", getattr(r, "Short_Name", "")) or "",
        "sysyn": getattr(r, "SysYn", "Y") or "Y",
        "u_name": getattr(r, "U_Name", "") or "",
        "u_ae": getattr(r, "U_AE", "") or "",
    }


def _validate_depart1(rec: dict):
    if not rec.get("code", "").strip():
        raise ValueError("Department code zaroori hai")
    if len(rec["code"]) > LIMITS["code"]:
        raise ValueError(f"Code max {LIMITS['code']} chars")
    if not rec.get("name", "").strip():
        raise ValueError("Department name zaroori hai")
    if len(rec["name"]) > LIMITS["name"]:
        raise ValueError(f"Name max {LIMITS['name']} chars")
    if len(rec.get("short_name", "")) > LIMITS["short"]:
        raise ValueError(f"Short name max {LIMITS['short']} chars")


def depart1_list(active_only: bool = True, limit: int = 500, cn=None) -> list[dict]:
    """List departments.
    
    Args:
        active_only: Only return active departments
        limit: Maximum rows to return
        cn: Database connection (optional)
    """
    where = []
    if active_only:
        where.append("(SysYn = 'Y' OR SysYn = '1')")
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} {SELECT_COLS} FROM depart1{where_clause} ORDER BY Code"
    
    rows = db.query(sql, cn=cn)
    return [_map_depart1(r) for r in rows]


def depart1_get(code: str, cn=None) -> dict | None:
    """Get department by code."""
    rows = db.query(f"SELECT {SELECT_COLS} FROM depart1 WHERE Code = ?", (code,), cn=cn)
    return _map_depart1(rows[0]) if rows else None


def depart1_exists(code: str, cn=None) -> bool:
    """Check if department exists."""
    rows = db.query("SELECT Code FROM depart1 WHERE Code = ?", (code,), cn=cn)
    return len(rows) > 0


def depart1_create(rec: dict, cn=None) -> int:
    """Create new department."""
    _validate_depart1(rec)
    cols = "Code, Name, ShortName, SysYn, U_Name, U_EntDt, U_AE"
    vals = (rec["code"], rec["name"], rec.get("short_name", ""), rec.get("sysyn", "Y"),
            db.get_user() or "SYSTEM", db.get_server_date(), db.get_server_time())
    db.execute(f"INSERT INTO depart1 ({cols}) VALUES (?,?,?,?,?,?,?)", vals, cn=cn, commit=True)
    return 1


def depart1_update(code: str, rec: dict, cn=None) -> int:
    """Update department."""
    _validate_depart1(rec)
    db.execute(
        "UPDATE depart1 SET Name = ?, ShortName = ?, SysYn = ?, U_Name = ?, U_AE = ? WHERE Code = ?",
        (rec["name"], rec.get("short_name", ""), rec.get("sysyn", "Y"),
         db.get_user() or "SYSTEM", db.get_server_time(), code),
        cn=cn, commit=True)
    return 1


def depart1_delete(code: str, cn=None) -> int:
    """Delete department."""
    db.execute("DELETE FROM depart1 WHERE Code = ?", (code,), cn=cn, commit=True)
    return 1


# Alias for compatibility with VB6 naming
depart1_list_mst = depart1_list
depart1_get_mst = depart1_get
depart1_create_mst = depart1_create
depart1_update_mst = depart1_update
depart1_delete_mst = depart1_delete