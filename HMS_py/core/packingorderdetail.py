"""Packing Order Details (packingorderdetail1, packingorderdetail2) core module — VB6 packing order tables access.

VB6 Evidence: HMS.bas, RsTouchScreenBookingEntry.frm, RSTouchScreenSaleBill.frm reference packingorderdetail1/2.
Live DB: packingorderdetail1 (12 rows), packingorderdetail2 (42 rows).

Actual columns (packingorderdetail1): DocId, Sno, SNo1, Vtype, VNo, Site_Code, Vprefix, Vdate, RestCode, TaxCode, BaseValue, TaxPer, TaxAmt, U_Name, U_EntDt, U_AE, DelFlag, LogSite_Code, SeqNo, ItemRestCode
Actual columns (packingorderdetail2): DocId, Sno, Vtype, VNo, Vdate, PartyCode, SunCode, Limit, DispName, ROff, CalcFormula, SValue, Amount, BaseAmount, U_Name, U_EntDt, U_AE, SunAppDate, RevCode, RestCode
"""

from __future__ import annotations

from HMS_py.core import db


def _map_packingorderdetail1(r) -> dict:
    """Map packingorderdetail1 (header) row to dict."""
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
        "item_rest_code": getattr(r, "ItemRestCode", "") or "",
    }


def _map_packingorderdetail2(r) -> dict:
    """Map packingorderdetail2 (lines) row to dict."""
    return {
        "doc_id": getattr(r, "DocId", "") or "",
        "sno": getattr(r, "Sno", 0) or 0,
        "vtype": getattr(r, "Vtype", "") or "",
        "vno": getattr(r, "VNo", 0) or 0,
        "vdate": getattr(r, "Vdate", None),
        "party_code": getattr(r, "PartyCode", "") or "",
        "sun_code": getattr(r, "SunCode", "") or "",
        "limit": float(getattr(r, "Limit", 0) or 0),
        "disp_name": getattr(r, "DispName", "") or "",
        "r_off": float(getattr(r, "ROff", 0) or 0),
        "calc_formula": getattr(r, "CalcFormula", "") or "",
        "s_value": float(getattr(r, "SValue", 0) or 0),
        "amount": float(getattr(r, "Amount", 0) or 0),
        "base_amount": float(getattr(r, "BaseAmount", 0) or 0),
        "u_name": getattr(r, "U_Name", "") or "",
        "u_ent_dt": getattr(r, "U_EntDt", None),
        "u_ae": getattr(r, "U_AE", "") or "",
        "sun_app_date": getattr(r, "SunAppDate", None),
        "rev_code": getattr(r, "RevCode", "") or "",
        "rest_code": getattr(r, "RestCode", "") or "",
    }


def packing_order_list(limit: int = 200, cn=None) -> list[dict]:
    """List packing order headers."""
    rows = db.query(
        f"SELECT TOP {limit} DocId, Sno, SNo1, Vtype, VNo, Site_Code, Vprefix, Vdate, RestCode, TaxCode, BaseValue, TaxPer, TaxAmt, U_Name, U_EntDt, U_AE, DelFlag, LogSite_Code, SeqNo, ItemRestCode FROM packingorderdetail1 ORDER BY Vdate DESC, DocId, Sno",
        cn=cn)
    return [_map_packingorderdetail1(r) for r in rows]


def packing_order_get(doc_id: str, cn=None) -> dict | None:
    """Get packing order header by document ID."""
    rows = db.query(
        "SELECT DocId, Sno, SNo1, Vtype, VNo, Site_Code, Vprefix, Vdate, RestCode, TaxCode, BaseValue, TaxPer, TaxAmt, U_Name, U_EntDt, U_AE, DelFlag, LogSite_Code, SeqNo, ItemRestCode FROM packingorderdetail1 WHERE DocId = ?",
        (doc_id,), cn=cn)
    return _map_packingorderdetail1(rows[0]) if rows else None


def packing_order_lines(doc_id: str, cn=None) -> list[dict]:
    """Get packing order lines for a document."""
    rows = db.query(
        "SELECT DocId, Sno, Vtype, VNo, Vdate, PartyCode, SunCode, Limit, DispName, ROff, CalcFormula, SValue, Amount, BaseAmount, U_Name, U_EntDt, U_AE, SunAppDate, RevCode, RestCode FROM packingorderdetail2 WHERE DocId = ? ORDER BY Sno",
        (doc_id,), cn=cn)
    return [_map_packingorderdetail2(r) for r in rows]


def packing_order_full(doc_id: str, cn=None) -> dict | None:
    """Get complete packing order (header + lines)."""
    header = packing_order_get(doc_id, cn=cn)
    if not header:
        return None
    header["lines"] = packing_order_lines(doc_id, cn=cn)
    return header


# Alias for compatibility with VB6 naming
packing_order_list_hdr = packing_order_list
packing_order_get_hdr = packing_order_get
packing_order_lines_dtl = packing_order_lines
packing_order_full_doc = packing_order_full