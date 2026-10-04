"""Member Bill (membill1) core module — VB6 membill1 table access.

VB6 Evidence: MemberModule.bas, MemFacilityBilling.frm, InHouseGuestFolio.frm reference membill1.
Live DB: 0 rows (empty but schema exists) - member billing records.

This module provides read/write access to member billing data.
"""

from __future__ import annotations

from HMS_py.core import db


def _map_membill1(r) -> dict:
    """Map membill1 row to dict."""
    return {
        "bill_no": getattr(r, "BillNo", getattr(r, "Bill_No", "")) or "",
        "mem_code": getattr(r, "MemCode", getattr(r, "Mem_Code", "")) or "",
        "bill_date": getattr(r, "BillDate", getattr(r, "Bill_Date", None)),
        "period_from": getattr(r, "PeriodFrom", getattr(r, "Period_From", None)),
        "period_to": getattr(r, "PeriodTo", getattr(r, "Period_To", None)),
        "bill_amt": float(getattr(r, "BillAmt", getattr(r, "Bill_Amt", 0)) or 0),
        "paid_amt": float(getattr(r, "PaidAmt", getattr(r, "Paid_Amt", 0)) or 0),
        "balance": float(getattr(r, "Balance", getattr(r, "Bal", 0)) or 0),
        "due_date": getattr(r, "DueDate", getattr(r, "Due_Date", None)),
        "status": getattr(r, "Status", "") or "",  # PND, PAID, PART, OVERDUE
        "bill_type": getattr(r, "BillType", getattr(r, "Bill_Type", "")) or "",  # MEM, FAC, REV
        "remarks": getattr(r, "Remarks", getattr(r, "Remark", "")) or "",
        "comp_code": getattr(r, "CompCode", "") or "",
        "site_code": getattr(r, "SiteCode", "") or "",
    }


def membill1_list(
    mem_code: str = "", status: str = "", bill_type: str = "",
    date_from: str = "", date_to: str = "", limit: int = 500, cn=None
) -> list[dict]:
    """List member bills.
    
    Args:
        mem_code: Filter by member code
        status: Filter by status (PND, PAID, PART, OVERDUE)
        bill_type: Filter by bill type (MEM, FAC, REV)
        date_from: Filter by bill date from
        date_to: Filter by bill date to
        limit: Maximum rows to return
        cn: Database connection (optional)
    """
    where = []
    params = []
    
    if mem_code:
        where.append("MemCode = ?")
        params.append(mem_code)
    if status:
        where.append("Status = ?")
        params.append(status)
    if bill_type:
        where.append("BillType = ?")
        params.append(bill_type)
    if date_from:
        where.append("BillDate >= ?")
        params.append(date_from)
    if date_to:
        where.append("BillDate <= ?")
        params.append(date_to)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} BillNo, MemCode, BillDate, PeriodFrom, PeriodTo, BillAmt, PaidAmt, Balance, DueDate, Status, BillType, Remarks, CompCode, SiteCode FROM membill1{where_clause} ORDER BY BillDate DESC, BillNo DESC"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_membill1(r) for r in rows]


def membill1_get(bill_no: str, cn=None) -> dict | None:
    """Get member bill by bill number."""
    rows = db.query(
        "SELECT BillNo, MemCode, BillDate, PeriodFrom, PeriodTo, BillAmt, PaidAmt, Balance, DueDate, Status, BillType, Remarks, CompCode, SiteCode FROM membill1 WHERE BillNo = ?",
        (bill_no,), cn=cn)
    return _map_membill1(rows[0]) if rows else None


def membill1_by_member(mem_code: str, cn=None) -> list[dict]:
    """Get all bills for a member."""
    return membill1_list(mem_code=mem_code, cn=cn)


def membill1_pending(mem_code: str = "", cn=None) -> list[dict]:
    """Get pending member bills."""
    return membill1_list(mem_code=mem_code, status="PND", cn=cn)


def membill1_overdue(cn=None) -> list[dict]:
    """Get overdue member bills."""
    from datetime import date
    today = date.today().isoformat()
    rows = db.query(
        "SELECT BillNo, MemCode, BillDate, PeriodFrom, PeriodTo, BillAmt, PaidAmt, Balance, DueDate, Status, BillType, Remarks, CompCode, SiteCode FROM membill1 WHERE Status IN ('PND', 'PART') AND DueDate < ? ORDER BY DueDate",
        (today,), cn=cn)
    return [_map_membill1(r) for r in rows]


def membill1_summary(mem_code: str, cn=None) -> dict:
    """Get billing summary for a member."""
    rows = db.query(
        "SELECT SUM(BillAmt) as TotalBilled, SUM(PaidAmt) as TotalPaid, SUM(Balance) as TotalBal, COUNT(*) as BillCount FROM membill1 WHERE MemCode = ?",
        (mem_code,), cn=cn)
    if rows:
        r = rows[0]
        return {
            "total_billed": float(r.TotalBilled or 0),
            "total_paid": float(r.TotalPaid or 0),
            "total_balance": float(r.TotalBal or 0),
            "bill_count": int(r.BillCount or 0),
        }
    return {"total_billed": 0.0, "total_paid": 0.0, "total_balance": 0.0, "bill_count": 0}


# Alias for compatibility with VB6 naming
member_bill_list = membill1_list
member_bill_get = membill1_get
member_bill_by_member = membill1_by_member
member_bill_pending = membill1_pending
member_bill_overdue = membill1_overdue
member_bill_summary = membill1_summary