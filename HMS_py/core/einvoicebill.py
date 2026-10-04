"""E-Invoice Bills (einvoicebill1, einvoicebill2) core module — VB6 e-invoice tables access.

VB6 Evidence: HMS.bas, various POS/booking forms reference einvoicebill1/2.
Live DB: einvoicebill1 (67 rows), einvoicebill2 (189 rows).

Actual columns (einvoicebill1): UserGSTIN, DocId, TranDtls_TaxSch, TranDtls_SupTyp, TranDtls_RegRev, TranDtls_EcmGstin, TranDtls_IgstOnIntra, DocDtls_Typ, DocDtls_No, DocDtls_Dt, SellerDtls_Gstin, SellerDtls_LglNm, SellerDtls_TrdNm, SellerDtls_Addr1, SellerDtls_Addr2, SellerDtls_Loc, SellerDtls_Pin, SellerDtls_Stcd, SellerDtls_Ph, SellerDtls_Em...
Actual columns (einvoicebill2): DocId, SlNo, PrdDesc, IsServc, HsnCd, Barcde, Qty, FreeQty, Unit, UnitPrice, TotAmt, Discount, PreTaxVal, AssAmt, GstRt, IgstAmt, CgstAmt, SgstAmt, CesRt, CesAmt...
"""

from __future__ import annotations

from HMS_py.core import db


def _map_einvoicebill1(r) -> dict:
    """Map einvoicebill1 (header) row to dict."""
    return {
        "user_gstin": getattr(r, "UserGSTIN", "") or "",
        "doc_id": getattr(r, "DocId", "") or "",
        "tax_scheme": getattr(r, "TranDtls_TaxSch", "") or "",
        "sup_type": getattr(r, "TranDtls_SupTyp", "") or "",
        "reg_rev": getattr(r, "TranDtls_RegRev", "") or "",
        "ecm_gstin": getattr(r, "TranDtls_EcmGstin", "") or "",
        "igst_on_intra": getattr(r, "TranDtls_IgstOnIntra", "") or "",
        "doc_type": getattr(r, "DocDtls_Typ", "") or "",
        "doc_no": getattr(r, "DocDtls_No", "") or "",
        "doc_dt": getattr(r, "DocDtls_Dt", None),
        "seller_gstin": getattr(r, "SellerDtls_Gstin", "") or "",
        "seller_legal_name": getattr(r, "SellerDtls_LglNm", "") or "",
        "seller_trade_name": getattr(r, "SellerDtls_TrdNm", "") or "",
        "seller_addr1": getattr(r, "SellerDtls_Addr1", "") or "",
        "seller_addr2": getattr(r, "SellerDtls_Addr2", "") or "",
        "seller_loc": getattr(r, "SellerDtls_Loc", "") or "",
        "seller_pin": getattr(r, "SellerDtls_Pin", "") or "",
        "seller_stcd": getattr(r, "SellerDtls_Stcd", "") or "",
        "seller_ph": getattr(r, "SellerDtls_Ph", "") or "",
        "seller_em": getattr(r, "SellerDtls_Em", "") or "",
    }


def _map_einvoicebill2(r) -> dict:
    """Map einvoicebill2 (line items) row to dict."""
    return {
        "doc_id": getattr(r, "DocId", "") or "",
        "sl_no": getattr(r, "SlNo", 0) or 0,
        "prd_desc": getattr(r, "PrdDesc", "") or "",
        "is_servc": getattr(r, "IsServc", "") or "",
        "hsn_cd": getattr(r, "HsnCd", "") or "",
        "barcde": getattr(r, "Barcde", "") or "",
        "qty": float(getattr(r, "Qty", 0) or 0),
        "free_qty": float(getattr(r, "FreeQty", 0) or 0),
        "unit": getattr(r, "Unit", "") or "",
        "unit_price": float(getattr(r, "UnitPrice", 0) or 0),
        "tot_amt": float(getattr(r, "TotAmt", 0) or 0),
        "discount": float(getattr(r, "Discount", 0) or 0),
        "pre_tax_val": float(getattr(r, "PreTaxVal", 0) or 0),
        "ass_amt": float(getattr(r, "AssAmt", 0) or 0),
        "gst_rt": float(getattr(r, "GstRt", 0) or 0),
        "igst_amt": float(getattr(r, "IgstAmt", 0) or 0),
        "cgst_amt": float(getattr(r, "CgstAmt", 0) or 0),
        "sgst_amt": float(getattr(r, "SgstAmt", 0) or 0),
        "ces_rt": float(getattr(r, "CesRt", 0) or 0),
        "ces_amt": float(getattr(r, "CesAmt", 0) or 0),
    }


def einvoice_list(limit: int = 200, cn=None) -> list[dict]:
    """List e-invoice headers."""
    rows = db.query(
        f"SELECT TOP {limit} UserGSTIN, DocId, TranDtls_TaxSch, TranDtls_SupTyp, TranDtls_RegRev, TranDtls_EcmGstin, TranDtls_IgstOnIntra, DocDtls_Typ, DocDtls_No, DocDtls_Dt, SellerDtls_Gstin, SellerDtls_LglNm, SellerDtls_TrdNm, SellerDtls_Addr1, SellerDtls_Addr2, SellerDtls_Loc, SellerDtls_Pin, SellerDtls_Stcd, SellerDtls_Ph, SellerDtls_Em FROM einvoicebill1 ORDER BY DocDtls_Dt DESC",
        cn=cn)
    return [_map_einvoicebill1(r) for r in rows]


def einvoice_get(doc_id: str, cn=None) -> dict | None:
    """Get e-invoice header by document ID."""
    rows = db.query(
        "SELECT UserGSTIN, DocId, TranDtls_TaxSch, TranDtls_SupTyp, TranDtls_RegRev, TranDtls_EcmGstin, TranDtls_IgstOnIntra, DocDtls_Typ, DocDtls_No, DocDtls_Dt, SellerDtls_Gstin, SellerDtls_LglNm, SellerDtls_TrdNm, SellerDtls_Addr1, SellerDtls_Addr2, SellerDtls_Loc, SellerDtls_Pin, SellerDtls_Stcd, SellerDtls_Ph, SellerDtls_Em FROM einvoicebill1 WHERE DocId = ?",
        (doc_id,), cn=cn)
    return _map_einvoicebill1(rows[0]) if rows else None


def einvoice_lines(doc_id: str, cn=None) -> list[dict]:
    """Get e-invoice line items for a document."""
    rows = db.query(
        "SELECT DocId, SlNo, PrdDesc, IsServc, HsnCd, Barcde, Qty, FreeQty, Unit, UnitPrice, TotAmt, Discount, PreTaxVal, AssAmt, GstRt, IgstAmt, CgstAmt, SgstAmt, CesRt, CesAmt FROM einvoicebill2 WHERE DocId = ? ORDER BY SlNo",
        (doc_id,), cn=cn)
    return [_map_einvoicebill2(r) for r in rows]


def einvoice_full(doc_id: str, cn=None) -> dict | None:
    """Get complete e-invoice (header + lines)."""
    header = einvoice_get(doc_id, cn=cn)
    if not header:
        return None
    header["lines"] = einvoice_lines(doc_id, cn=cn)
    return header


# Alias for compatibility with VB6 naming
e_invoice_list = einvoice_list
e_invoice_get = einvoice_get
e_invoice_lines = einvoice_lines
e_invoice_full = einvoice_full