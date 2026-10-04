"""Room Checkout Status (roomcheckoutstatus) core module — VB6 roomcheckoutstatus table access.

VB6 Evidence: HMS.bas, PrSalCreate.frm reference roomcheckoutstatus.
Live DB: 0 rows (empty but schema exists) - tracks room checkout status for audit.

This module provides read/write access to room checkout status tracking.
"""

from __future__ import annotations

from HMS_py.core import db


def _map_roomcheckoutstatus(r) -> dict:
    """Map roomcheckoutstatus row to dict."""
    return {
        "room_no": getattr(r, "RoomNo", getattr(r, "Room_No", "")) or "",
        "guest_code": getattr(r, "GuestCode", getattr(r, "Guest_Code", "")) or "",
        "guest_name": getattr(r, "GuestName", getattr(r, "Guest_Name", "")) or "",
        "checkin_date": getattr(r, "CheckInDate", getattr(r, "Check_In_Date", None)),
        "checkout_date": getattr(r, "CheckOutDate", getattr(r, "Check_Out_Date", None)),
        "expected_checkout": getattr(r, "ExpectedCheckOut", getattr(r, "Expected_CheckOut", None)),
        "actual_checkout": getattr(r, "ActualCheckOut", getattr(r, "Actual_CheckOut", None)),
        "status": getattr(r, "Status", "") or "",  # IN, OUT, EXPECTED, OVERDUE, EXTENDED
        "folio_no": getattr(r, "FolioNo", getattr(r, "Folio_No", "")) or "",
        "bill_amt": float(getattr(r, "BillAmt", getattr(r, "Bill_Amt", 0)) or 0),
        "paid_amt": float(getattr(r, "PaidAmt", getattr(r, "Paid_Amt", 0)) or 0),
        "balance": float(getattr(r, "Balance", getattr(r, "Bal", 0)) or 0),
        "remarks": getattr(r, "Remarks", getattr(r, "Remark", "")) or "",
        "comp_code": getattr(r, "CompCode", "") or "",
        "site_code": getattr(r, "SiteCode", "") or "",
    }


def roomcheckoutstatus_list(
    status: str = "", room_no: str = "", guest_code: str = "",
    date_from: str = "", date_to: str = "", limit: int = 500, cn=None
) -> list[dict]:
    """List room checkout statuses.
    
    Args:
        status: Filter by status (IN, OUT, EXPECTED, OVERDUE, EXTENDED)
        room_no: Filter by room number
        guest_code: Filter by guest code
        date_from: Filter by checkout date from
        date_to: Filter by checkout date to
        limit: Maximum rows to return
        cn: Database connection (optional)
    """
    where = []
    params = []
    
    if status:
        where.append("Status = ?")
        params.append(status)
    if room_no:
        where.append("RoomNo = ?")
        params.append(room_no)
    if guest_code:
        where.append("GuestCode = ?")
        params.append(guest_code)
    if date_from:
        where.append("CheckOutDate >= ?")
        params.append(date_from)
    if date_to:
        where.append("CheckOutDate <= ?")
        params.append(date_to)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} RoomNo, GuestCode, GuestName, CheckInDate, CheckOutDate, ExpectedCheckOut, ActualCheckOut, Status, FolioNo, BillAmt, PaidAmt, Balance, Remarks, CompCode, SiteCode FROM roomcheckoutstatus{where_clause} ORDER BY CheckOutDate DESC, RoomNo"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_roomcheckoutstatus(r) for r in rows]


def roomcheckoutstatus_by_room(room_no: str, cn=None) -> dict | None:
    """Get checkout status for a specific room."""
    rows = db.query(
        "SELECT RoomNo, GuestCode, GuestName, CheckInDate, CheckOutDate, ExpectedCheckOut, ActualCheckOut, Status, FolioNo, BillAmt, PaidAmt, Balance, Remarks, CompCode, SiteCode FROM roomcheckoutstatus WHERE RoomNo = ?",
        (room_no,), cn=cn)
    return _map_roomcheckoutstatus(rows[0]) if rows else None


def roomcheckoutstatus_expected_checkouts(cn=None) -> list[dict]:
    """Get rooms with expected checkouts today."""
    from datetime import date
    today = date.today().isoformat()
    return roomcheckoutstatus_list(status="EXPECTED", date_from=today, date_to=today, cn=cn)


def roomcheckoutstatus_overdue(cn=None) -> list[dict]:
    """Get overdue checkouts (expected checkout passed but not checked out)."""
    from datetime import date
    today = date.today().isoformat()
    return roomcheckoutstatus_list(status="OVERDUE", date_to=today, cn=cn)


def roomcheckoutstatus_in_house(cn=None) -> list[dict]:
    """Get all in-house rooms (status = IN)."""
    return roomcheckoutstatus_list(status="IN", cn=cn)


def roomcheckoutstatus_summary(cn=None) -> dict:
    """Get checkout status summary."""
    rows = db.query(
        "SELECT Status, COUNT(*) as Count FROM roomcheckoutstatus GROUP BY Status", cn=cn)
    summary = {"IN": 0, "OUT": 0, "EXPECTED": 0, "OVERDUE": 0, "EXTENDED": 0}
    for r in rows:
        status = (r.Status or "").upper()
        if status in summary:
            summary[status] = int(r.Count or 0)
    return summary


# Alias for compatibility with VB6 naming
room_checkout_status_list = roomcheckoutstatus_list
room_checkout_status_by_room = roomcheckoutstatus_by_room
room_checkout_expected = roomcheckoutstatus_expected_checkouts
room_checkout_overdue = roomcheckoutstatus_overdue
room_checkout_in_house = roomcheckoutstatus_in_house
room_checkout_summary = roomcheckoutstatus_summary