"""Expense Sheet (expsheet) core module — VB6 expsheet table access.

VB6 Evidence: fdWalkInEntry.frm, InHouseGuestFolio.frm, rFomRepView.frm reference expsheet.
Live DB: 0 rows (empty but schema exists) - expense tracking for guests/folios.

This module provides read/write access to expense sheet data.
"""

from __future__ import annotations

from HMS_py.core import db


def _map_expsheet(r) -> dict:
    """Map expsheet row to dict."""
    return {
        "folio_no": getattr(r, "FolioNo", getattr(r, "Folio_No", "")) or "",
        "sr_no": getattr(r, "SrNo", getattr(r, "Sr_No", 0)) or 0,
        "exp_date": getattr(r, "ExpDate", getattr(r, "Exp_Date", None)),
        "exp_code": getattr(r, "ExpCode", getattr(r, "Exp_Code", "")) or "",
        "exp_name": getattr(r, "ExpName", getattr(r, "Exp_Name", "")) or "",
        "amount": float(getattr(r, "Amount", getattr(r, "Amt", 0)) or 0),
        "paid_amt": float(getattr(r, "PaidAmt", getattr(r, "Paid_Amt", 0)) or 0),
        "balance": float(getattr(r, "Balance", getattr(r, "Bal", 0)) or 0),
        "voucher_no": getattr(r, "VoucherNo", getattr(r, "Voucher_No", "")) or "",
        "voucher_date": getattr(r, "VoucherDate", getattr(r, "Voucher_Date", None)),
        "status": getattr(r, "Status", "") or "",  # PND, PAID, PART
        "remarks": getattr(r, "Remarks", getattr(r, "Remark", "")) or "",
        "comp_code": getattr(r, "CompCode", "") or "",
        "site_code": getattr(r, "SiteCode", "") or "",
    }


def expsheet_list(folio_no: str = "", status: str = "", limit: int = 500, cn=None) -> list[dict]:
    """List expense sheet entries.
    
    Args:
        folio_no: Filter by folio number
        status: Filter by status (PND, PAID, PART)
        limit: Maximum rows to return
        cn: Database connection (optional)
    """
    where = []
    params = []
    
    if folio_no:
        where.append("FolioNo = ?")
        params.append(folio_no)
    if status:
        where.append("Status = ?")
        params.append(status)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} FolioNo, SrNo, ExpDate, ExpCode, ExpName, Amount, PaidAmt, Balance, VoucherNo, VoucherDate, Status, Remarks, CompCode, SiteCode FROM expsheet{where_clause} ORDER BY ExpDate, SrNo"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_expsheet(r) for r in rows]


def expsheet_by_folio(folio_no: str, cn=None) -> list[dict]:
    """Get all expenses for a folio."""
    return expsheet_list(folio_no=folio_no, cn=cn)


def expsheet_pending(folio_no: str = "", cn=None) -> list[dict]:
    """Get pending expenses."""
    return expsheet_list(folio_no=folio_no, status="PND", cn=cn)


def expsheet_summary(folio_no: str, cn=None) -> dict:
    """Get expense summary for a folio."""
    rows = db.query(
        "SELECT SUM(Amount) as TotalExp, SUM(PaidAmt) as TotalPaid, SUM(Balance) as TotalBal, COUNT(*) as ExpCount FROM expsheet WHERE FolioNo = ?",
        (folio_no,), cn=cn)
    if rows:
        r = rows[0]
        return {
            "total_expense": float(r.TotalExp or 0),
            "total_paid": float(r.TotalPaid or 0),
            "total_balance": float(r.TotalBal or 0),
            "expense_count": int(r.ExpCount or 0),
        }
    return {"total_expense": 0.0, "total_paid": 0.0, "total_balance": 0.0, "expense_count": 0}


# Alias for compatibility with VB6 naming
exp_sheet_list = expsheet_list
exp_sheet_by_folio = expsheet_by_folio
exp_sheet_pending = expsheet_pending
exp_sheet_summary = expsheet_summary