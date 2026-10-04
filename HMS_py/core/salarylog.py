"""Salary Log (salarylog) core module — VB6 salarylog table access.

VB6 Evidence: HMS.bas, PrSalCreate.frm reference salarylog.
Live DB: 0 rows (empty but schema exists) - salary processing log.

This module provides read/write access to salary processing logs.
"""

from __future__ import annotations

from HMS_py.core import db


def _map_salarylog(r) -> dict:
    """Map salarylog row to dict."""
    return {
        "log_id": getattr(r, "LogId", getattr(r, "ID", 0)) or 0,
        "emp_code": getattr(r, "EmpCode", getattr(r, "Emp_Code", "")) or "",
        "emp_name": getattr(r, "EmpName", getattr(r, "Emp_Name", "")) or "",
        "salary_month": getattr(r, "SalaryMonth", getattr(r, "Sal_Month", "")) or "",
        "salary_year": getattr(r, "SalaryYear", getattr(r, "Sal_Year", 0)) or 0,
        "basic_pay": float(getattr(r, "BasicPay", getattr(r, "Basic_Pay", 0)) or 0),
        "da": float(getattr(r, "DA", 0) or 0),
        "hra": float(getattr(r, "HRA", 0) or 0),
        "allowances": float(getattr(r, "Allowances", getattr(r, "Allow", 0)) or 0),
        "gross": float(getattr(r, "Gross", 0) or 0),
        "pf": float(getattr(r, "PF", 0) or 0),
        "esi": float(getattr(r, "ESI", 0) or 0),
        "ptax": float(getattr(r, "PTax", getattr(r, "P_Tax", 0)) or 0),
        "tds": float(getattr(r, "TDS", 0) or 0),
        "loan_ded": float(getattr(r, "LoanDed", getattr(r, "Loan_Ded", 0)) or 0),
        "other_ded": float(getattr(r, "OtherDed", getattr(r, "Other_Ded", 0)) or 0),
        "total_ded": float(getattr(r, "TotalDed", getattr(r, "Total_Ded", 0)) or 0),
        "net_pay": float(getattr(r, "NetPay", getattr(r, "Net_Pay", 0)) or 0),
        "status": getattr(r, "Status", "") or "",  # PROC, PAID, CANC, HOLD
        "paid_date": getattr(r, "PaidDate", getattr(r, "Paid_Date", None)),
        "paid_by": getattr(r, "PaidBy", getattr(r, "Paid_By", "")) or "",
        "remarks": getattr(r, "Remarks", getattr(r, "Remark", "")) or "",
        "comp_code": getattr(r, "CompCode", "") or "",
        "site_code": getattr(r, "SiteCode", "") or "",
    }


def salarylog_list(
    emp_code: str = "", month: str = "", year: int = 0,
    status: str = "", limit: int = 500, cn=None
) -> list[dict]:
    """List salary log entries.
    
    Args:
        emp_code: Filter by employee code
        month: Filter by salary month (e.g., 'JAN', 'FEB')
        year: Filter by salary year
        status: Filter by status (PROC, PAID, CANC, HOLD)
        limit: Maximum rows to return
        cn: Database connection (optional)
    """
    where = []
    params = []
    
    if emp_code:
        where.append("EmpCode = ?")
        params.append(emp_code)
    if month:
        where.append("SalaryMonth = ?")
        params.append(month)
    if year:
        where.append("SalaryYear = ?")
        params.append(year)
    if status:
        where.append("Status = ?")
        params.append(status)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} LogId, EmpCode, EmpName, SalaryMonth, SalaryYear, BasicPay, DA, HRA, Allowances, Gross, PF, ESI, PTax, TDS, LoanDed, OtherDed, TotalDed, NetPay, Status, PaidDate, PaidBy, Remarks, CompCode, SiteCode FROM salarylog{where_clause} ORDER BY SalaryYear DESC, SalaryMonth DESC, EmpCode"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_salarylog(r) for r in rows]


def salarylog_get(log_id: int, cn=None) -> dict | None:
    """Get salary log by log ID."""
    rows = db.query(
        "SELECT LogId, EmpCode, EmpName, SalaryMonth, SalaryYear, BasicPay, DA, HRA, Allowances, Gross, PF, ESI, PTax, TDS, LoanDed, OtherDed, TotalDed, NetPay, Status, PaidDate, PaidBy, Remarks, CompCode, SiteCode FROM salarylog WHERE LogId = ?",
        (log_id,), cn=cn)
    return _map_salarylog(rows[0]) if rows else None


def salarylog_by_employee(emp_code: str, cn=None) -> list[dict]:
    """Get all salary records for an employee."""
    return salarylog_list(emp_code=emp_code, cn=cn)


def salarylog_by_month(month: str, year: int, cn=None) -> list[dict]:
    """Get all salary records for a month/year."""
    return salarylog_list(month=month, year=year, cn=cn)


def salarylog_pending(month: str = "", year: int = 0, cn=None) -> list[dict]:
    """Get pending salary records."""
    return salarylog_list(month=month, year=year, status="PROC", cn=cn)


def salarylog_paid(month: str = "", year: int = 0, cn=None) -> list[dict]:
    """Get paid salary records."""
    return salarylog_list(month=month, year=year, status="PAID", cn=cn)


def salarylog_summary(month: str = "", year: int = 0, cn=None) -> dict:
    """Get salary summary for a period."""
    where = []
    params = []
    
    if month:
        where.append("SalaryMonth = ?")
        params.append(month)
    if year:
        where.append("SalaryYear = ?")
        params.append(year)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    rows = db.query(
        f"SELECT SUM(Gross) as TotalGross, SUM(TotalDed) as TotalDed, SUM(NetPay) as TotalNet, COUNT(*) as EmpCount, SUM(CASE WHEN Status = 'PAID' THEN 1 ELSE 0 END) as PaidCount FROM salarylog{where_clause}",
        tuple(params) if params else None, cn=cn)
    if rows:
        r = rows[0]
        return {
            "total_gross": float(r.TotalGross or 0),
            "total_deductions": float(r.TotalDed or 0),
            "total_net": float(r.TotalNet or 0),
            "employee_count": int(r.EmpCount or 0),
            "paid_count": int(r.PaidCount or 0),
        }
    return {"total_gross": 0.0, "total_deductions": 0.0, "total_net": 0.0, "employee_count": 0, "paid_count": 0}


# Alias for compatibility with VB6 naming
salary_log_list = salarylog_list
salary_log_get = salarylog_get
salary_log_by_employee = salarylog_by_employee
salary_log_by_month = salarylog_by_month
salary_log_pending = salarylog_pending
salary_log_paid = salarylog_paid
salary_log_summary = salarylog_summary