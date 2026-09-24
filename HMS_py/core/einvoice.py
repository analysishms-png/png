"""E-Invoice / GST Module.

Generates e-invoices with GST compliance for Indian tax requirements.
Supports 5% CGST + 5% SGST = 10% total.
"""
from __future__ import annotations

import hashlib
import json
from datetime import datetime
from typing import Optional


class EInvoiceGenerator:
    """Generates e-invoices with GST compliance."""

    GST_RATE_CGST = 0.05
    GST_RATE_SGST = 0.05
    GST_RATE_TOTAL = 0.10

    def __init__(self, site_code: str = "KK",
                 api_key: str = "",
                 mock: bool = True):
        self.site_code = site_code
        self.api_key = api_key
        self.mock = mock

    def generate_invoice(
        self, doc_id: str, guest_name: str,
        amount: float, gstin: str = "",
        address: str = "", state: str = ""
    ) -> dict:
        """Generate a complete e-invoice with GST."""
        cgst = round(amount * self.GST_RATE_CGST, 2)
        sgst = round(amount * self.GST_RATE_SGST, 2)
        total_gst = round(cgst + sgst, 2)
        total_amount = round(amount + total_gst, 2)

        invoice = {
            "invoice_no": doc_id,
            "guest_name": guest_name,
            "gstin": gstin, "address": address,
            "state": state, "base_amount": amount,
            "cgst_amount": cgst, "sgst_amount": sgst,
            "total_gst": total_gst,
            "total_amount": total_amount,
            "gst_rate": self.GST_RATE_TOTAL,
            "invoice_date": datetime.now().strftime("%Y-%m-%d"),
            "site_code": self.site_code,
        }
        invoice["irn"] = self._generate_irn(invoice)
        invoice["qr_data"] = self._generate_qr_data(invoice)
        invoice["hash"] = self._generate_hash(invoice)
        return invoice

    def _generate_irn(self, invoice: dict) -> str:
        data = f"{self.site_code}{invoice['invoice_no']}INV{datetime.now().year}"
        return hashlib.sha256(data.encode()).hexdigest()[:32].upper()

    def _generate_qr_data(self, invoice: dict) -> str:
        parts = [
            f"GSTIN:{self.site_code}",
            f"INV:{invoice['invoice_no']}",
            f"DATE:{invoice['invoice_date']}",
            f"VALUE:{invoice['total_amount']}",
            f"CGST:{invoice['cgst_amount']}",
            f"SGST:{invoice['sgst_amount']}",
        ]
        return "|".join(parts)

    def _generate_hash(self, invoice: dict) -> str:
        data = json.dumps(invoice, sort_keys=True)
        return hashlib.sha256(data.encode()).hexdigest()

    def validate_invoice(self, invoice: dict) -> dict:
        """Validate e-invoice before submission."""
        errors = []
        if not invoice.get("invoice_no"):
            errors.append("Invoice number required")
        if not invoice.get("guest_name"):
            errors.append("Guest name required")
        if invoice.get("base_amount", 0) <= 0:
            errors.append("Amount must be positive")
        if abs(invoice.get("total_gst", 0)) < 0.01:
            errors.append("GST amount must be positive")
        expected_cgst = round(
            invoice["base_amount"] * self.GST_RATE_CGST, 2
        )
        expected_sgst = round(
            invoice["base_amount"] * self.GST_RATE_SGST, 2
        )
        if abs(invoice.get("cgst_amount", 0) - expected_cgst) > 0.01:
            errors.append(f"CGST mismatch: expected {expected_cgst}")
        if abs(invoice.get("sgst_amount", 0) - expected_sgst) > 0.01:
            errors.append(f"SGST mismatch: expected {expected_sgst}")
        return {"valid": len(errors) == 0, "errors": errors}

    def submit_to_portal(self, invoice: dict) -> dict:
        """Submit e-invoice to GST portal."""
        if self.mock:
            return {
                "success": True, "irn": invoice["irn"],
                "ack_number": f"ACK{datetime.now().strftime('%Y%m%d%H%M%S')}",
                "mock": True, "message": "Mock submission successful",
            }
        return {"success": False, "error": "Not in mock mode"}

    def cancel_invoice(self, irn: str) -> dict:
        """Cancel a previously submitted e-invoice."""
        if self.mock:
            return {"success": True, "irn": irn, "mock": True}
        return {"success": False, "error": "Not in mock mode"}


def generate_einvoice_report(invoices: list[dict]) -> str:
    """Generate e-invoice summary report."""
    lines = []
    ap = lines.append
    ap("=" * 70)
    ap(f"E-INVOICE REPORT — {datetime.now().strftime('%Y-%m-%d')}")
    ap("=" * 70)
    ap("")

    total_base = total_gst = total_amount = 0
    for inv in invoices:
        ap(f"  Invoice: {inv['invoice_no']}")
        ap(f"    Guest: {inv['guest_name']}")
        ap(f"    Base: {inv['base_amount']:>12,.2f}")
        ap(f"    CGST: {inv.get('cgst_amount', 0):>12,.2f}")
        ap(f"    SGST: {inv.get('sgst_amount', 0):>12,.2f}")
        ap(f"    Total: {inv['total_amount']:>12,.2f}")
        ap(f"    IRN: {inv.get('irn', 'N/A')[:16]}...")
        ap("")
        total_base += inv.get("base_amount", 0)
        total_gst += inv.get("total_gst", 0)
        total_amount += inv.get("total_amount", 0)

    ap("=" * 70)
    ap(f"  TOTAL Base:  {total_base:>15,.2f}")
    ap(f"  TOTAL GST:   {total_gst:>15,.2f}")
    ap(f"  TOTAL Amt:   {total_amount:>15,.2f}")
    ap("=" * 70)
    return "\n".join(lines)
