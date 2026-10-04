"""Member Facility Billing (memfacilitybilling) core module — VB6 memfacilitybilling table access.

VB6 Evidence: MemberModule.bas, MemFacilityBilling.frm reference memfacilitybilling.
Live DB: 0 rows (empty but schema exists) - member facility billing transactions.

This module provides read/write access to member facility billing.
"""

from __future__ import annotations

from HMS_py.core import db


def _map_memfacilitybilling(r) -> dict:
    """Map memfacilitybilling row to dict."""
    return {
        "bill_no": getattr(r, "BillNo", getattr(r, "Bill_No", "")) or "",
        "mem_code": getattr(r, "MemCode", getattr(r, "Mem_Code", "")) or "",
        "cat_code": getattr(r, "CatCode", getattr(r, "Cat_Code", "")) or "",
        "facility_code": getattr(r, "FacilityCode", getattr(r, "Fac_Code", "")) or "",
        "facility_name": getattr(r, "FacilityName", getattr(r, "Fac_Name", "")) or "",
        "bill_date": getattr(r, "BillDate", getattr(r, "Bill_Date", None)),
        "period_from": getattr(r, "PeriodFrom", getattr(r, "Period_From", None)),
        "period_to": getattr(r, "PeriodTo", getattr(r, "Period_To", None)),
        "qty": float(getattr(r, "Qty", 0) or 0),
        "rate": float(getattr(r, "Rate", 0) or 0),
        "amount": float(getattr(r, "Amount", getattr(r, "Amt", 0)) or 0),
        "paid_amt": float(getattr(r, "PaidAmt", getattr(r, "Paid_Amt", 0)) or 0),
        "balance": float(getattr(r, "Balance", getattr(r, "Bal", 0)) or 0),
        "status": getattr(r, "Status", "") or "",  # PND, PAID, PART
        "remarks": getattr(r, "Remarks", getattr(r, "Remark", "")) or "",
        "comp_code": getattr(r, "CompCode", "") or "",
        "site_code": getattr(r, "SiteCode", "") or "",
    }


def memfacilitybilling_list(
    mem_code: str = "", cat_code: str = "", status: str = "",
    date_from: str = "", date_to: str = "", limit: int = 500, cn=None
) -> list[dict]:
    """List member facility billing records.
    
    Args:
        mem_code: Filter by member code
        cat_code: Filter by category code
        status: Filter by status (PND, PAID, PART)
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
    if cat_code:
        where.append("CatCode = ?")
        params.append(cat_code)
    if status:
        where.append("Status = ?")
        params.append(status)
    if date_from:
        where.append("BillDate >= ?")
        params.append(date_from)
    if date_to:
        where.append("BillDate <= ?")
        params.append(date_to)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} BillNo, MemCode, CatCode, FacilityCode, FacilityName, BillDate, PeriodFrom, PeriodTo, Qty, Rate, Amount, PaidAmt, Balance, Status, Remarks, CompCode, SiteCode FROM memfacilitybilling{where_clause} ORDER BY BillDate DESC, BillNo DESC"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_memfacilitybilling(r) for r in rows]


def memfacilitybilling_by_member(mem_code: str, cn=None) -> list[dict]:
    """Get all facility billing for a member."""
    return memfacilitybilling_list(mem_code=mem_code, cn=cn)


def memfacilitybilling_by_category(cat_code: str, cn=None) -> list[dict]:
    """Get facility billing for a category."""
    return memfacilitybilling_list(cat_code=cat_code, cn=cn)


def memfacilitybilling_pending(mem_code: str = "", cn=None) -> list[dict]:
    """Get pending facility billing."""
    return memfacilitybilling_list(mem_code=mem_code, status="PND", cn=cn)


def memfacilitybilling_summary(mem_code: str, cn=None) -> dict:
    """Get facility billing summary for a member."""
    rows = db.query(
        "SELECT SUM(Amount) as TotalAmt, SUM(PaidAmt) as TotalPaid, SUM(Balance) as TotalBal, COUNT(*) as BillCount FROM memfacilitybilling WHERE MemCode = ?",
        (mem_code,), cn=cn)
    if rows:
        r = rows[0]
        return {
            "total_amount": float(r.TotalAmt or 0),
            "total_paid": float(r.TotalPaid or 0),
            "total_balance": float(r.TotalBal or 0),
            "bill_count": int(r.BillCount or 0),
        }
    return {"total_amount": 0.0, "total_paid": 0.0, "total_balance": 0.0, "bill_count": 0}


# Alias for compatibility with VB6 naming
mem_fac_billing_list = memfacilitybilling_list
mem_fac_billing_by_member = memfacilitybilling_by_member
mem_fac_billing_by_category = memfacilitybilling_by_category
mem_fac_billing_pending = memfacilitybilling_pending
mem_fac_billing_summary = memfacilitybilling_summary