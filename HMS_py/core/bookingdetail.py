"""Booking Detail (bookingdetail) core module — VB6 bookingdetail table access.

VB6 Evidence: Booking forms (RsBookingEntry.frm, RsTouchScreenBookingEntry.frm) reference bookingdetail.
Live DB: 0 rows (empty but schema exists) - booking line items.

This module provides read/write access to booking detail lines.
"""

from __future__ import annotations

from HMS_py.core import db


def _map_bookingdetail(r) -> dict:
    """Map bookingdetail row to dict."""
    return {
        "booking_id": getattr(r, "BookingId", getattr(r, "BookId", "")) or "",
        "sr_no": getattr(r, "SrNo", getattr(r, "Sr_No", 0)) or 0,
        "item_code": getattr(r, "Item", getattr(r, "ItemCode", "")) or "",
        "item_name": getattr(r, "ItemName", getattr(r, "IName", "")) or "",
        "qty": float(getattr(r, "Qty", 0) or 0),
        "unit": getattr(r, "Unit", "") or "",
        "rate": float(getattr(r, "Rate", 0) or 0),
        "amount": float(getattr(r, "Amount", getattr(r, "Amt", 0)) or 0),
        "depart_code": getattr(r, "DepartCode", getattr(r, "Dept", "")) or "",
        "tax_code": getattr(r, "TaxCode", getattr(r, "Tax", "")) or "",
        "discount": float(getattr(r, "Discount", getattr(r, "Disc", 0)) or 0),
        "remarks": getattr(r, "Remarks", getattr(r, "Remark", "")) or "",
        "status": getattr(r, "Status", "") or "",  # PND, CONF, CANC
    }


def bookingdetail_list(booking_id: str = "", limit: int = 500, cn=None) -> list[dict]:
    """List booking detail lines.
    
    Args:
        booking_id: Filter by booking ID
        limit: Maximum rows to return
        cn: Database connection (optional)
    """
    where = []
    params = []
    
    if booking_id:
        where.append("BookingId = ?")
        params.append(booking_id)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} BookingId, SrNo, Item, ItemName, Qty, Unit, Rate, Amount, DepartCode, TaxCode, Discount, Remarks, Status FROM bookingdetail{where_clause} ORDER BY BookingId, SrNo"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_bookingdetail(r) for r in rows]


def bookingdetail_by_booking(booking_id: str, cn=None) -> list[dict]:
    """Get all detail lines for a booking."""
    return bookingdetail_list(booking_id=booking_id, cn=cn)


def bookingdetail_summary(booking_id: str, cn=None) -> dict:
    """Get booking summary totals."""
    rows = db.query(
        "SELECT SUM(Qty) as TotalQty, SUM(Amount) as TotalAmt, COUNT(*) as LineCount FROM bookingdetail WHERE BookingId = ? AND Status <> 'CANC'",
        (booking_id,), cn=cn)
    if rows:
        r = rows[0]
        return {
            "total_qty": float(r.TotalQty or 0),
            "total_amount": float(r.TotalAmt or 0),
            "line_count": int(r.LineCount or 0),
        }
    return {"total_qty": 0.0, "total_amount": 0.0, "line_count": 0}


# Alias for compatibility with VB6 naming
booking_detail_list = bookingdetail_list
booking_detail_by_booking = bookingdetail_by_booking
booking_detail_summary = bookingdetail_summary