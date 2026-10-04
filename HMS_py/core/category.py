"""Category Master (category) core module — VB6 category table access.

VB6 Evidence: Multiple forms reference category for item/product categorization.
Live DB: 0 rows (empty but schema exists) - category master.

This module provides CRUD access to category master data.
"""

from __future__ import annotations

from HMS_py.core import db


LIMITS = {"code": 10, "name": 50, "short": 15}
SELECT_COLS = "Code, Name, ShortName, ParentCode, Level, Active, U_Name, U_EntDt, U_AE"


def _map_category(r) -> dict:
    """Map category row to dict."""
    return {
        "code": getattr(r, "Code", "") or "",
        "name": getattr(r, "Name", "") or "",
        "short_name": getattr(r, "ShortName", getattr(r, "Short_Name", "")) or "",
        "parent_code": getattr(r, "ParentCode", getattr(r, "Parent_Code", "")) or "",
        "level": int(getattr(r, "Level", 0) or 0),
        "active": getattr(r, "Active", getattr(r, "SysYn", "Y")) or "Y",
        "u_name": getattr(r, "U_Name", "") or "",
        "u_ae": getattr(r, "U_AE", "") or "",
    }


def _validate_category(rec: dict):
    if not rec.get("code", "").strip():
        raise ValueError("Category code zaroori hai")
    if len(rec["code"]) > LIMITS["code"]:
        raise ValueError(f"Code max {LIMITS['code']} chars")
    if not rec.get("name", "").strip():
        raise ValueError("Category name zaroori hai")
    if len(rec["name"]) > LIMITS["name"]:
        raise ValueError(f"Name max {LIMITS['name']} chars")
    if len(rec.get("short_name", "")) > LIMITS["short"]:
        raise ValueError(f"Short name max {LIMITS['short']} chars")


def category_list(active_only: bool = True, parent_code: str = "", limit: int = 500, cn=None) -> list[dict]:
    """List categories.
    
    Args:
        active_only: Only return active categories
        parent_code: Filter by parent code (for sub-categories)
        limit: Maximum rows to return
        cn: Database connection (optional)
    """
    where = []
    if active_only:
        where.append("(Active = 'Y' OR Active = '1' OR SysYn = 'Y')")
    if parent_code:
        where.append("ParentCode = ?")
    
    params = [parent_code] if parent_code else []
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} {SELECT_COLS} FROM category{where_clause} ORDER BY Level, Code"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_category(r) for r in rows]


def category_get(code: str, cn=None) -> dict | None:
    """Get category by code."""
    rows = db.query(f"SELECT {SELECT_COLS} FROM category WHERE Code = ?", (code,), cn=cn)
    return _map_category(rows[0]) if rows else None


def category_children(parent_code: str, cn=None) -> list[dict]:
    """Get direct children of a category."""
    return category_list(active_only=True, parent_code=parent_code, cn=cn)


def category_tree(cn=None) -> list[dict]:
    """Get full category hierarchy as flat list with level info."""
    return category_list(active_only=True, cn=cn)


def category_create(rec: dict, cn=None) -> int:
    """Create new category."""
    _validate_category(rec)
    cols = "Code, Name, ShortName, ParentCode, Level, Active, U_Name, U_EntDt, U_AE"
    vals = (rec["code"], rec["name"], rec.get("short_name", ""), rec.get("parent_code", ""),
            rec.get("level", 0), rec.get("active", "Y"), db.get_user() or "SYSTEM",
            db.get_server_date(), db.get_server_time())
    db.execute(f"INSERT INTO category ({cols}) VALUES (?,?,?,?,?,?,?,?,?)", vals, cn=cn, commit=True)
    return 1


def category_update(code: str, rec: dict, cn=None) -> int:
    """Update category."""
    _validate_category(rec)
    db.execute(
        "UPDATE category SET Name = ?, ShortName = ?, ParentCode = ?, Level = ?, Active = ?, U_Name = ?, U_AE = ? WHERE Code = ?",
        (rec["name"], rec.get("short_name", ""), rec.get("parent_code", ""), rec.get("level", 0),
         rec.get("active", "Y"), db.get_user() or "SYSTEM", db.get_server_time(), code),
        cn=cn, commit=True)
    return 1


def category_delete(code: str, cn=None) -> int:
    """Delete category (only if no children)."""
    children = category_children(code, cn=cn)
    if children:
        raise ValueError("Cannot delete category with sub-categories")
    db.execute("DELETE FROM category WHERE Code = ?", (code,), cn=cn, commit=True)
    return 1


# Alias for compatibility with VB6 naming
category_list_mst = category_list
category_get_mst = category_get
category_create_mst = category_create
category_update_mst = category_update
category_delete_mst = category_delete