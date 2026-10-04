"""Order Person Details (orderpersondetails) core module — VB6 orderpersondetails table access.

VB6 Evidence: Booking/banquet forms reference orderpersondetails for guest/person details per order.
Live DB: 6 rows - person details linked to orders/bookings.

This module provides read/write access to person details for bookings/orders.
"""

from __future__ import annotations

from HMS_py.core import db


def _map_orderpersondetails(r) -> dict:
    """Map orderpersondetails row to dict."""
    return {
        "doc_id": getattr(r, "DocId", getattr(r, "DocID", "")) or "",
        "sr_no": getattr(r, "SrNo", getattr(r, "Sr_No", 0)) or 0,
        "person_type": getattr(r, "PersonType", getattr(r, "Per_Type", "")) or "",  # GUEST, HOST, CONTACT, DRIVER
        "name": getattr(r, "Name", getattr(r, "PersonName", "")) or "",
        "phone": getattr(r, "Phone", getattr(r, "Mobile", "")) or "",
        "email": getattr(r, "Email", "") or "",
        "address": getattr(r, "Address", "") or "",
        "id_type": getattr(r, "IDType", getattr(r, "ID_Type", "")) or "",  # AADHAR, PAN, PASSPORT, DL
        "id_number": getattr(r, "IDNumber", getattr(r, "ID_No", "")) or "",
        "remarks": getattr(r, "Remarks", getattr(r, "Remark", "")) or "",
        "comp_code": getattr(r, "CompCode", "") or "",
        "site_code": getattr(r, "SiteCode", "") or "",
    }


def orderpersondetails_list(doc_id: str = "", person_type: str = "", limit: int = 200, cn=None) -> list[dict]:
    """List order person details.
    
    Args:
        doc_id: Filter by document/order ID
        person_type: Filter by person type (GUEST, HOST, CONTACT, DRIVER)
        limit: Maximum rows to return
        cn: Database connection (optional)
    """
    where = []
    params = []
    
    if doc_id:
        where.append("DocId = ?")
        params.append(doc_id)
    if person_type:
        where.append("PersonType = ?")
        params.append(person_type)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} DocId, SrNo, PersonType, Name, Phone, Email, Address, IDType, IDNumber, Remarks, CompCode, SiteCode FROM orderpersondetails{where_clause} ORDER BY DocId, SrNo"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_orderpersondetails(r) for r in rows]


def orderpersondetails_by_doc(doc_id: str, cn=None) -> list[dict]:
    """Get all person details for a document/order."""
    return orderpersondetails_list(doc_id=doc_id, cn=cn)


def orderpersondetails_guests(doc_id: str, cn=None) -> list[dict]:
    """Get guest persons for a document."""
    return orderpersondetails_list(doc_id=doc_id, person_type="GUEST", cn=cn)


def orderpersondetails_hosts(doc_id: str, cn=None) -> list[dict]:
    """Get host persons for a document."""
    return orderpersondetails_list(doc_id=doc_id, person_type="HOST", cn=cn)


# Alias for compatibility with VB6 naming
order_person_list = orderpersondetails_list
order_person_by_doc = orderpersondetails_by_doc
order_person_guests = orderpersondetails_guests
order_person_hosts = orderpersondetails_hosts