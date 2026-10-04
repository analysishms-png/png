"""POS Sales Log (sale2log) core module — VB6 sale2log table access.

VB6 Evidence: HMS.bas, RsTouchScreenBookingEntry.frm, RSTouchScreenSaleBill.frm reference sale2log.
Live DB: 510 rows - POS sales tax log (not detailed sales lines).

Actual columns: DocId, Sno, SNo1, Vtype, VNo, Site_Code, Vprefix, Vdate, RestCode, TaxCode, BaseValue, TaxPer, TaxAmt, U_Name, U_EntDt, U_AE, DelFlag, LogSite_Code, SeqNo
"""

from __future__ import annotations

from HMS_py.core import db


def _map_sale2log(r) -> dict:
    """Map sale2log row to dict."""
    return {
        "doc_id": getattr(r, "DocId", "") or "",
        "sno": getattr(r, "Sno", 0) or 0,
        "sno1": getattr(r, "SNo1", 0) or 0,
        "vtype": getattr(r, "Vtype", "") or "",
        "vno": getattr(r, "VNo", 0) or 0,
        "site_code": getattr(r, "Site_Code", "") or "",
        "vprefix": getattr(r, "Vprefix", "") or "",
        "vdate": getattr(r, "Vdate", None),
        "rest_code": getattr(r, "RestCode", "") or "",
        "tax_code": getattr(r, "TaxCode", "") or "",
        "base_value": float(getattr(r, "BaseValue", 0) or 0),
        "tax_per": float(getattr(r, "TaxPer", 0) or 0),
        "tax_amt": float(getattr(r, "TaxAmt", 0) or 0),
        "u_name": getattr(r, "U_Name", "") or "",
        "u_ent_dt": getattr(r, "U_EntDt", None),
        "u_ae": getattr(r, "U_AE", "") or "",
        "del_flag": getattr(r, "DelFlag", "") or "",
        "log_site_code": getattr(r, "LogSite_Code", "") or "",
        "seq_no": getattr(r, "SeqNo", 0) or 0,
    }


def sale2log_list(
    vdate_from: str = "", vdate_to: str = "",
    rest_code: str = "", tax_code: str = "",
    vtype: str = "", limit: int = 500, cn=None
) -> list[dict]:
    """List POS sales tax log entries.
    
    Args:
        vdate_from: Start date (YYYY-MM-DD)
        vdate_to: End date (YYYY-MM-DD)
        rest_code: Filter by restaurant/outlet code
        tax_code: Filter by tax code
        vtype: Filter by voucher type
        limit: Maximum rows to return
        cn: Database connection (optional)
    """
    where = []
    params = []
    
    if vdate_from:
        where.append("Vdate >= ?")
        params.append(vdate_from)
    if vdate_to:
        where.append("Vdate <= ?")
        params.append(vdate_to)
    if rest_code:
        where.append("RestCode = ?")
        params.append(rest_code)
    if tax_code:
        where.append("TaxCode = ?")
        params.append(tax_code)
    if vtype:
        where.append("Vtype = ?")
        params.append(vtype)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} DocId, Sno, SNo1, Vtype, VNo, Site_Code, Vprefix, Vdate, RestCode, TaxCode, BaseValue, TaxPer, TaxAmt, U_Name, U_EntDt, U_AE, DelFlag, LogSite_Code, SeqNo FROM sale2log{where_clause} ORDER BY Vdate DESC, DocId, Sno"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_sale2log(r) for r in rows]


def sale2log_by_doc(doc_id: str, cn=None) -> list[dict]:
    """Get all tax lines for a sales document."""
    rows = db.query(
        "SELECT DocId, Sno, SNo1, Vtype, VNo, Site_Code, Vprefix, Vdate, RestCode, TaxCode, BaseValue, TaxPer, TaxAmt, U_Name, U_EntDt, U_AE, DelFlag, LogSite_Code, SeqNo FROM sale2log WHERE DocId = ? ORDER BY Sno",
        (doc_id,), cn=cn)
    return [_map_sale2log(r) for r in rows]


def sale2log_tax_summary(vdate_from: str, vdate_to: str, rest_code: str = "", cn=None) -> list[dict]:
    """Get tax summary by tax code."""
    where = ["Vdate >= ?", "Vdate <= ?"]
    params = [vdate_from, vdate_to]
    
    if rest_code:
        where.append("RestCode = ?")
        params.append(rest_code)
    
    where_clause = " AND ".join(where)
    rows = db.query(
        f"SELECT TaxCode, SUM(BaseValue) as TotalBase, SUM(TaxAmt) as TotalTax, COUNT(*) as LineCount FROM sale2log WHERE {where_clause} GROUP BY TaxCode ORDER BY TotalTax DESC",
        tuple(params), cn=cn)
    return [
        {
            "tax_code": r.TaxCode or "",
            "total_base": float(r.TotalBase or 0),
            "total_tax": float(r.TotalTax or 0),
            "line_count": int(r.LineCount or 0),
        }
        for r in rows
    ]


# Alias for compatibility with VB6 naming
pos_sales_tax_log = sale2log_list
pos_sales_tax_by_doc = sale2log_by_doc
pos_sales_tax_summary = sale2log_tax_summary