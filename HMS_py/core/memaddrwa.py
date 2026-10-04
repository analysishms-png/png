"""Member Address/Warehouse (memaddrwa) core module — VB6 memaddrwa table access.

VB6 Evidence: Multiple member-related forms reference memaddrwa.
Live DB: 31 rows - member address/warehouse details.

This module provides read/write access to member address information.
"""

from __future__ import annotations

from HMS_py.core import db


def _map_memaddrwa(r) -> dict:
    """Map memaddrwa row to dict."""
    return {
        "mem_code": getattr(r, "MemCode", getattr(r, "Mem_Code", "")) or "",
        "addr_type": getattr(r, "AddrType", getattr(r, "Addr_Type", "")) or "",  # BILL, SHIP, WHSE
        "address1": getattr(r, "Address1", getattr(r, "Addr1", "")) or "",
        "address2": getattr(r, "Address2", getattr(r, "Addr2", "")) or "",
        "city": getattr(r, "City", "") or "",
        "state": getattr(r, "State", "") or "",
        "pin_code": getattr(r, "PinCode", getattr(r, "Pin_Code", "")) or "",
        "country": getattr(r, "Country", "") or "",
        "phone": getattr(r, "Phone", "") or "",
        "mobile": getattr(r, "Mobile", "") or "",
        "email": getattr(r, "Email", "") or "",
        "contact_person": getattr(r, "ContactPerson", getattr(r, "Contact", "")) or "",
        "gstin": getattr(r, "GSTIN", getattr(r, "GSTNo", "")) or "",
        "is_default": bool(getattr(r, "IsDefault", getattr(r, "Default", 0)) or 0),
        "comp_code": getattr(r, "CompCode", "") or "",
    }


def memaddrwa_list(mem_code: str = "", addr_type: str = "", limit: int = 200, cn=None) -> list[dict]:
    """List member addresses.
    
    Args:
        mem_code: Filter by member code
        addr_type: Filter by address type (BILL, SHIP, WHSE)
        limit: Maximum rows to return
        cn: Database connection (optional)
    """
    where = []
    params = []
    
    if mem_code:
        where.append("MemCode = ?")
        params.append(mem_code)
    if addr_type:
        where.append("AddrType = ?")
        params.append(addr_type)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} MemCode, AddrType, Address1, Address2, City, State, PinCode, Country, Phone, Mobile, Email, ContactPerson, GSTIN, IsDefault, CompCode FROM memaddrwa{where_clause} ORDER BY MemCode, AddrType"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_memaddrwa(r) for r in rows]


def memaddrwa_get(mem_code: str, addr_type: str, cn=None) -> dict | None:
    """Get member address by member code and address type."""
    rows = db.query(
        "SELECT MemCode, AddrType, Address1, Address2, City, State, PinCode, Country, Phone, Mobile, Email, ContactPerson, GSTIN, IsDefault, CompCode FROM memaddrwa WHERE MemCode = ? AND AddrType = ?",
        (mem_code, addr_type), cn=cn)
    return _map_memaddrwa(rows[0]) if rows else None


def memaddrwa_member_addresses(mem_code: str, cn=None) -> list[dict]:
    """Get all addresses for a member."""
    return memaddrwa_list(mem_code=mem_code, cn=cn)


def memaddrwa_default_billing(mem_code: str, cn=None) -> dict | None:
    """Get default billing address for a member."""
    rows = db.query(
        "SELECT MemCode, AddrType, Address1, Address2, City, State, PinCode, Country, Phone, Mobile, Email, ContactPerson, GSTIN, IsDefault, CompCode FROM memaddrwa WHERE MemCode = ? AND AddrType = 'BILL' AND IsDefault = 1",
        (mem_code,), cn=cn)
    if not rows:
        # Fallback to first billing address
        rows = db.query(
            "SELECT MemCode, AddrType, Address1, Address2, City, State, PinCode, Country, Phone, Mobile, Email, ContactPerson, GSTIN, IsDefault, CompCode FROM memaddrwa WHERE MemCode = ? AND AddrType = 'BILL'",
            (mem_code,), cn=cn)
    return _map_memaddrwa(rows[0]) if rows else None


def memaddrwa_default_shipping(mem_code: str, cn=None) -> dict | None:
    """Get default shipping address for a member."""
    rows = db.query(
        "SELECT MemCode, AddrType, Address1, Address2, City, State, PinCode, Country, Phone, Mobile, Email, ContactPerson, GSTIN, IsDefault, CompCode FROM memaddrwa WHERE MemCode = ? AND AddrType = 'SHIP' AND IsDefault = 1",
        (mem_code,), cn=cn)
    if not rows:
        rows = db.query(
            "SELECT MemCode, AddrType, Address1, Address2, City, State, PinCode, Country, Phone, Mobile, Email, ContactPerson, GSTIN, IsDefault, CompCode FROM memaddrwa WHERE MemCode = ? AND AddrType = 'SHIP'",
            (mem_code,), cn=cn)
    return _map_memaddrwa(rows[0]) if rows else None


# Alias for compatibility with VB6 naming
member_addr_list = memaddrwa_list
member_addr_get = memaddrwa_get
member_addr_addresses = memaddrwa_member_addresses
member_addr_default_billing = memaddrwa_default_billing
member_addr_default_shipping = memaddrwa_default_shipping