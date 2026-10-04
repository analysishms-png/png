"""User Module Permissions (usermodule1) core module — VB6 usermodule1 table access.

VB6 Evidence: HMS.bas, rFomRepView.frm, DMTree.frm reference usermodule1 for user-module permissions.
Live DB: 617 rows - maps users to module access flags.

Actual columns: Code, Option, Param_Str, Flag, Opt1, Opt2, Opt3, Opt4, OutletCode
"""

from __future__ import annotations

from HMS_py.core import db


def _map_usermodule1(r) -> dict:
    """Map usermodule1 row to dict."""
    return {
        "code": getattr(r, "Code", 0) or 0,
        "option": getattr(r, "Option", "") or "",
        "param_str": getattr(r, "Param_Str", "") or "",
        "flag": getattr(r, "Flag", "") or "",
        "opt1": getattr(r, "Opt1", 0) or 0,
        "opt2": getattr(r, "Opt2", 0) or 0,
        "opt3": getattr(r, "Opt3", 0) or 0,
        "opt4": getattr(r, "Opt4", 0) or 0,
        "outlet_code": getattr(r, "OutletCode", "") or "",
    }


def usermodule1_list(option: str = "", flag: str = "", outlet_code: str = "", limit: int = 500, cn=None) -> list[dict]:
    """List user module permissions.
    
    Args:
        option: Filter by option
        flag: Filter by flag (E, R, N, V)
        outlet_code: Filter by outlet code
        limit: Maximum rows to return
        cn: Database connection (optional)
    """
    where = []
    params = []
    
    if option:
        where.append("Option = ?")
        params.append(option)
    if flag:
        where.append("Flag = ?")
        params.append(flag)
    if outlet_code:
        where.append("OutletCode = ?")
        params.append(outlet_code)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} Code, Option, Param_Str, Flag, Opt1, Opt2, Opt3, Opt4, OutletCode FROM usermodule1{where_clause} ORDER BY Code"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_usermodule1(r) for r in rows]


def usermodule1_get(code: int, cn=None) -> dict | None:
    """Get user module permission by code."""
    rows = db.query(
        "SELECT Code, Option, Param_Str, Flag, Opt1, Opt2, Opt3, Opt4, OutletCode FROM usermodule1 WHERE Code = ?",
        (code,), cn=cn)
    return _map_usermodule1(rows[0]) if rows else None


def usermodule1_by_option(option: str, cn=None) -> list[dict]:
    """Get all entries for a specific option."""
    return usermodule1_list(option=option, cn=cn)


def usermodule1_update_param_str(code: int, param_str: str, cn=None) -> int:
    """Update Param_Str for a code (VB6 DMTree parity)."""
    return db.execute(
        "UPDATE usermodule1 SET Param_Str = ? WHERE Code = ?",
        (param_str, code), cn=cn, commit=True)


def usermodule1_update_flag(code: int, flag: str, cn=None) -> int:
    """Update Flag for a code (VB6 DMTree parity)."""
    return db.execute(
        "UPDATE usermodule1 SET Flag = ? WHERE Code = ?",
        (flag, code), cn=cn, commit=True)


def usermodule1_update_both(code: int, param_str: str, flag: str, cn=None) -> int:
    """Update both Param_Str and Flag (VB6 DMTree does 2 UPDATEs)."""
    cn_inner = cn or db.connect()
    try:
        if not cn:
            cn_inner.autocommit = False
        db.execute("UPDATE usermodule1 SET Param_Str = ? WHERE Code = ?", (param_str, code), cn=cn_inner, commit=False)
        db.execute("UPDATE usermodule1 SET Flag = ? WHERE Code = ?", (flag, code), cn=cn_inner, commit=False)
        if not cn:
            cn_inner.commit()
        return 1
    except Exception:
        if not cn:
            try:
                cn_inner.rollback()
            except Exception:
                pass
        raise
    finally:
        if not cn:
            cn_inner.close()


# Alias for compatibility with VB6 naming
user_module_list = usermodule1_list
user_module_get = usermodule1_get
user_module_by_option = usermodule1_by_option
user_module_update_param = usermodule1_update_param_str
user_module_update_flag = usermodule1_update_flag
user_module_update_both = usermodule1_update_both