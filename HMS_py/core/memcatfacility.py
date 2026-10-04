"""Member Category Facility (memcatfacility) core module — VB6 memcatfacility table access.

VB6 Evidence: MemberModule.bas, MemFacilityBilling.frm reference memcatfacility.
Live DB: 0 rows (empty but schema exists) - member category facility mapping.

This module provides read/write access to member category facilities.
"""

from __future__ import annotations

from HMS_py.core import db


def _map_memcatfacility(r) -> dict:
    """Map memcatfacility row to dict."""
    return {
        "cat_code": getattr(r, "CatCode", getattr(r, "Cat_Code", "")) or "",
        "facility_code": getattr(r, "FacilityCode", getattr(r, "Fac_Code", "")) or "",
        "facility_name": getattr(r, "FacilityName", getattr(r, "Fac_Name", "")) or "",
        "rate": float(getattr(r, "Rate", 0) or 0),
        "unit": getattr(r, "Unit", "") or "",
        "is_included": bool(getattr(r, "IsIncluded", getattr(r, "Inc", 0)) or 0),
        "valid_from": getattr(r, "ValidFrom", getattr(r, "Valid_From", None)),
        "valid_to": getattr(r, "ValidTo", getattr(r, "Valid_To", None)),
        "comp_code": getattr(r, "CompCode", "") or "",
    }


def memcatfacility_list(cat_code: str = "", facility_code: str = "", limit: int = 500, cn=None) -> list[dict]:
    """List member category facilities.
    
    Args:
        cat_code: Filter by category code
        facility_code: Filter by facility code
        limit: Maximum rows to return
        cn: Database connection (optional)
    """
    where = []
    params = []
    
    if cat_code:
        where.append("CatCode = ?")
        params.append(cat_code)
    if facility_code:
        where.append("FacilityCode = ?")
        params.append(facility_code)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} CatCode, FacilityCode, FacilityName, Rate, Unit, IsIncluded, ValidFrom, ValidTo, CompCode FROM memcatfacility{where_clause} ORDER BY CatCode, FacilityCode"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_memcatfacility(r) for r in rows]


def memcatfacility_by_category(cat_code: str, cn=None) -> list[dict]:
    """Get all facilities for a member category."""
    return memcatfacility_list(cat_code=cat_code, cn=cn)


def memcatfacility_included(cat_code: str, cn=None) -> list[dict]:
    """Get included facilities for a category."""
    rows = db.query(
        "SELECT CatCode, FacilityCode, FacilityName, Rate, Unit, IsIncluded, ValidFrom, ValidTo, CompCode FROM memcatfacility WHERE CatCode = ? AND IsIncluded = 1",
        (cat_code,), cn=cn)
    return [_map_memcatfacility(r) for r in rows]


# Alias for compatibility with VB6 naming
mem_cat_facility_list = memcatfacility_list
mem_cat_facility_by_category = memcatfacility_by_category
mem_cat_facility_included = memcatfacility_included