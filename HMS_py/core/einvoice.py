"""e-Invoice Generation & GST Calculation (VB6: eInvoice.bas).

Implements:
- GST calculation (5% CGST + 5% SGST)
- e-Invoice formatting (JSON payload for IRP)
- HTTP client stub for future IRP integration
- Mock mode for testing without production server
- Error handling and validation

VB6 eInvoice.bas evidence:
- E-Invoice/GST API integration
- IRP (Invoice Registration Portal) communication
- GSTIN validation, invoice JSON generation
- HMAC-SHA256 signature generation

Schema (planned eInvoice table):
  InvoiceNo varchar(20) PK, GSTIN varchar(15), Date datetime,
  TotalAmt float, CGST float, SGST float, IGST float,
  Status varchar(10), IRN varchar(64), AckNo varchar(30),
  Site_Code, U_Name, U_EntDt, U_AE
"""
from __future__ import annotations

import hashlib
import hmac
import json
import logging
import random
import string
import time
from datetime import datetime, date
from typing import Any

import requests

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

logger = logging.getLogger(__name__)

# GST Rates
GST_RATES = {
    "5": {"cgst": 2.5, "sgst": 2.5, "igst": 5.0},
    "12": {"cgst": 6.0, "sgst": 6.0, "igst": 12.0},
    "18": {"cgst": 9.0, "sgst": 9.0, "igst": 18.0},
    "28": {"cgst": 14.0, "sgst": 14.0, "igst": 28.0},
}

DEFAULT_GST_RATE = "5"  # 5% CGST + 5% SGST as per spec

# Validation limits
LIMITS = {
    "invoice_no": 20,
    "gstin": 15,
    "irn": 64,
    "ack_no": 30,
    "customer_name": 100,
    "place_of_supply": 50,
    "document_type": 3,
}

# Mock IRP response templates
MOCK_IRN_PREFIX = "mockIRN"
MOCK_ACK_PREFIX = "mockACK"


def _map_invoice(r) -> dict:
    """Map database row to e-invoice dict."""
    try:
        return {
            "invoice_no": r.InvoiceNo or "",
            "gstin": r.GSTIN or "",
            "date": r.Date,
            "total_amt": float(r.TotalAmt or 0),
            "cgst": float(r.CGST or 0),
            "sgst": float(r.SGST or 0),
            "igst": float(r.IGST or 0),
            "status": r.Status or "Pending",
            "irn": r.IRN or "",
            "ack_no": r.AckNo or "",
            "site_code": r.Site_Code or SITE_CODE,
            "u_name": r.U_Name or USER,
        }
    except AttributeError:
        (invoice_no, gstin, dt, total, cgst, sgst, igst, status,
         irn, ack_no, site, uname) = r
        return {
            "invoice_no": invoice_no or "",
            "gstin": gstin or "",
            "date": dt,
            "total_amt": float(total or 0),
            "cgst": float(cgst or 0),
            "sgst": float(sgst or 0),
            "igst": float(igst or 0),
            "status": status or "Pending",
            "irn": irn or "",
            "ack_no": ack_no or "",
            "site_code": site or SITE_CODE,
            "u_name": uname or USER,
        }


def _validate_invoice(rec: dict):
    """Validate e-invoice record before generation/submission."""
    if not rec.get("invoice_no", "").strip():
        raise ValueError("Invoice Number zaroori hai")
    if len(rec["invoice_no"]) > LIMITS["invoice_no"]:
        raise ValueError(f"InvoiceNo max {LIMITS['invoice_no']} chars")
    if not rec.get("gstin", "").strip():
        raise ValueError("GSTIN zaroori hai")
    if len(rec["gstin"]) > LIMITS["gstin"]:
        raise ValueError(f"GSTIN max {LIMITS['gstin']} chars")
    if not rec.get("total_amt") or rec["total_amt"] <= 0:
        raise ValueError("Total Amount 0 se zyada hona chahiye")
    if not rec.get("customer_name", "").strip():
        raise ValueError("Customer Name zaroori hai")
    if len(rec.get("customer_name", "")) > LIMITS["customer_name"]:
        raise ValueError(f"Customer Name max {LIMITS['customer_name']} chars")


def _validate_gstin(gstin: str) -> bool:
    """Validate GSTIN format (15 chars: 2 digit state + PAN)."""
    if not gstin or len(gstin) != 15:
        return False
    if not gstin[:2].isdigit():
        return False
    pan_part = gstin[2:12]
    return pan_part.isalnum()


# ============================================================
# GST Calculation Engine
# ============================================================

def calculate_gst(amount: float, rate: str = DEFAULT_GST_RATE) -> dict:
    """Calculate CGST, SGST, IGST for a given amount and GST rate.
    
    Args:
        amount: Base amount (exclusive of GST)
        rate: GST rate as string key ("5", "12", "18", "28")
    
    Returns:
        dict with cgst, sgst, igst, total_gst, total_inclusive
    """
    rate_key = str(rate)
    if rate_key not in GST_RATES:
        raise ValueError(f"Invalid GST rate: {rate}. Must be one of {list(GST_RATES.keys())}")
    
    gst_info = GST_RATES[rate_key]
    cgst = round(amount * gst_info["cgst"] / 100, 2)
    sgst = round(amount * gst_info["sgst"] / 100, 2)
    igst = round(amount * gst_info["igst"] / 100, 2)
    total_gst = round(cgst + sgst, 2)
    total_inclusive = round(amount + total_gst, 2)
    
    return {
        "base_amount": amount,
        "cgst": cgst,
        "sgst": sgst,
        "igst": igst,
        "total_gst": total_gst,
        "total_inclusive": total_inclusive,
        "rate": rate_key,
        "cgst_rate": gst_info["cgst"],
        "sgst_rate": gst_info["sgst"],
        "igst_rate": gst_info["igst"],
    }


def calculate_gst_5_5(amount: float) -> dict:
    """Calculate 5% GST (2.5% CGST + 2.5% SGST) for a given amount.
    
    VB6 spec: 5% CGST + 5% SGST (interpreted as 2.5% each).
    """
    return calculate_gst(amount, "5")


def calculate_invoice_total(amount: float, gst_rate: str = DEFAULT_GST_RATE) -> dict:
    """Calculate complete invoice total with GST breakdown.
    
    Returns dict suitable for e-invoice JSON payload.
    """
    gst = calculate_gst(amount, gst_rate)
    return {
        "assessable_value": amount,
        "cgst_amount": gst["cgst"],
        "sgst_amount": gst["sgst"],
        "igst_amount": gst["igst"],
        "total_gst_amount": gst["total_gst"],
        "invoice_value": gst["total_inclusive"],
    }


# ============================================================
# e-Invoice JSON Payload Generation
# ============================================================

def generate_einvoice_json(
    invoice_no: str,
    gstin: str,
    customer_name: str,
    customer_gstin: str,
    place_of_supply: str,
    items: list[dict],
    total_amount: float,
    invoice_date: str | None = None,
    document_type: str = "INV",
) -> dict:
    """Generate e-invoice JSON payload for IRP submission.
    
    Args:
        invoice_no: Supplier invoice number
        gstin: Supplier GSTIN
        customer_name: Recipient name
        customer_gstin: Recipient GSTIN
        place_of_supply: Place of supply (state code)
        items: List of item dicts with name, qty, rate, gst_rate
        total_amount: Total invoice amount (exclusive of GST)
        invoice_date: Invoice date (YYYY-MM-DD), defaults to today
        document_type: Document type (INV/DN/CN), default INV
    
    Returns:
        dict representing e-invoice JSON payload
    """
    _validate_invoice({
        "invoice_no": invoice_no,
        "gstin": gstin,
        "total_amt": total_amount,
        "customer_name": customer_name,
    })
    if not _validate_gstin(gstin):
        raise ValueError(f"Invalid GSTIN format: {gstin}")
    if not _validate_gstin(customer_gstin):
        raise ValueError(f"Invalid customer GSTIN format: {customer_gstin}")
    if not place_of_supply or len(place_of_supply) > LIMITS["place_of_supply"]:
        raise ValueError(f"Place of Supply invalid or too long (max {LIMITS['place_of_supply']})")
    
    if invoice_date is None:
        invoice_date = datetime.now().strftime("%Y-%m-%d")
    
    # Calculate GST for each item and totals
    total_cgst = 0.0
    total_sgst = 0.0
    total_igst = 0.0
    total_assessable = 0.0
    
    processed_items = []
    for item in items:
        qty = float(item.get("qty", 1))
        rate = float(item.get("rate", 0))
        item_gst_rate = str(item.get("gst_rate", DEFAULT_GST_RATE))
        item_amount = round(qty * rate, 2)
        gst = calculate_gst(item_amount, item_gst_rate)
        
        total_cgst += gst["cgst"]
        total_sgst += gst["sgst"]
        total_igst += gst["igst"]
        total_assessable += item_amount
        
        processed_items.append({
            "item_name": item.get("name", ""),
            "qty": qty,
            "rate": rate,
            "assessable_value": item_amount,
            "cgst": gst["cgst"],
            "sgst": gst["sgst"],
            "igst": gst["igst"],
            "gst_rate": item_gst_rate,
            "hsn_code": item.get("hsn_code", ""),
            "unit": item.get("unit", "NOS"),
        })
    
    total_gst = round(total_cgst + total_sgst, 2)
    total_inclusive = round(total_assessable + total_gst, 2)
    
    # Determine if intra-state (CGST+SGST) or inter-state (IGST)
    is_intra_state = place_of_supply[:2] == gstin[:2]
    
    payload = {
        "Version": "1.1",
        "SupplierGSTIN": gstin,
        "SupplierBranch": gstin[-4:] if len(gstin) >= 4 else "",
        "PlaceOfSupply": place_of_supply,
        "DocumentType": document_type,
        "DocumentNo": invoice_no,
        "DocumentDate": invoice_date,
        "SupplierName": "",
        "ReceiverName": customer_name,
        "ReceiverGSTIN": customer_gstin,
        "TotalInvoiceValue": total_inclusive,
        "PrePenalty": 0,
        "PostPenalty": 0,
        "GrossTotal": total_inclusive,
        "CGSTAmount": round(total_cgst, 2) if is_intra_state else 0.0,
        "SGSTAmount": round(total_sgst, 2) if is_intra_state else 0.0,
        "IGSTAmount": round(total_igst, 2) if not is_intra_state else 0.0,
        "TotalTaxAmount": round(total_gst, 2),
        "Items": processed_items,
        "EwayBill": {
            "EnableEwayBill": "N",
            "EwayBillNo": "",
            "EwayBillDate": "",
        },
    }
    
    return payload


def generate_irn(
    supplier_gstin: str,
    invoice_no: str,
    invoice_date: str,
    doc_type: str = "INV",
) -> str:
    """Generate Invoice Reference Number (IRN) using SHA256 hash.
    
    IRN = SHA256(SupplierGSTIN | InvoiceNo | FinancialYear).
    FinancialYear format: YYYY-YY (e.g., 2026-27).
    """
    financial_year = f"{invoice_date[:4]}-{str(int(invoice_date[:4]) + 1)[-2:]}"
    payload_str = f"{supplier_gstin}|{invoice_no}|{financial_year}|{doc_type}"
    irn = hashlib.sha256(payload_str.encode()).hexdigest()[:64].upper()
    return irn


def generate_hmac_signature(payload: dict, secret_key: str) -> str:
    """Generate HMAC-SHA256 signature for IRP request.
    
    VB6 eInvoice.bas equivalent: HMAC-SHA256 signature generation.
    """
    payload_str = json.dumps(payload, separators=(",", ":"), sort_keys=True)
    signature = hmac.new(
        secret_key.encode(),
        payload_str.encode(),
        hashlib.sha256
    ).hexdigest()
    return signature


# ============================================================
# HTTP Client Stub for IRP Integration
# ============================================================

class eInvoiceHTTPClient:
    """HTTP client stub for IRP (Invoice Registration Portal) communication.
    
    Ready for future production integration. Uses requests library.
    Mock mode enabled by default for testing.
    
    VB6 equivalent: WinHTTP/WinInet calls in eInvoice.bas
    """
    
    def __init__(
        self,
        base_url: str = "https://api.einvoice.gov.in/ei-api/",
        api_key: str = "",
        sandbox: bool = True,
        mock_mode: bool = True,
    ):
        self.base_url = base_url.rstrip("/")
        self.api_key = api_key
        self.sandbox = sandbox
        self.mock_mode = mock_mode
        self.session = requests.Session()
        self.session.headers.update({
            "Content-Type": "application/json",
            "Accept": "application/json",
            "User-Agent": "HMS_py_eInvoice/1.0",
        })
        if api_key:
            self.session.headers["Authorization"] = f"Bearer {api_key}"
    
    def _get_url(self, endpoint: str) -> str:
        """Build full URL for an IRP endpoint."""
        return f"{self.base_url}{endpoint}"
    
    def _make_request(
        self,
        method: str,
        endpoint: str,
        data: dict | None = None,
        timeout: int = 30,
    ) -> dict:
        """Make HTTP request to IRP. Returns dict response.
        
        If mock_mode is True, returns mock response without actual HTTP call.
        """
        url = self._get_url(endpoint)
        
        if self.mock_mode:
            return self._mock_response(method, endpoint, data)
        
        try:
            response = self.session.request(
                method, url, json=data, timeout=timeout
            )
            response.raise_for_status()
            return response.json()
        except requests.exceptions.ConnectionError as e:
            logger.error(f"IRP connection error: {e}")
            raise ConnectionError(f"Cannot connect to IRP server: {e}")
        except requests.exceptions.Timeout:
            logger.error(f"IRP request timeout for {endpoint}")
            raise TimeoutError(f"IRP request timed out after {timeout}s")
        except requests.exceptions.HTTPError as e:
            logger.error(f"IRP HTTP error: {e}")
            raise RuntimeError(f"IRP HTTP error: {e}")
        except Exception as e:
            logger.error(f"IRP request error: {e}")
            raise RuntimeError(f"IRP request failed: {e}")
    
    def _mock_response(self, method: str, endpoint: str, data: dict | None) -> dict:
        """Generate mock IRP response for testing."""
        time.sleep(0.01)  # Simulate network latency
        
        if endpoint == "/generateIRN":
            return {
                "success": True,
                "data": {
                    "Irn": f"{MOCK_IRN_PREFIX}_{''.join(random.choices(string.ascii_uppercase + string.digits, k=12))}",
                    "AckNo": f"{MOCK_ACK_PREFIX}_{''.join(random.choices(string.digits, k=10))}",
                    "Date": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
                    "Status": "ACTIVE",
                },
                "message": "IRN generated successfully (mock)",
            }
        elif endpoint == "/getIRNDetails":
            return {
                "success": True,
                "data": {
                    "Irn": f"{MOCK_IRN_PREFIX}_DETAILS",
                    "Status": "ACTIVE",
                    "AckNo": f"{MOCK_ACK_PREFIX}_DETAILS",
                    "Date": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
                    "Gstin": data.get("gstin", "") if data else "",
                },
                "message": "IRN details retrieved (mock)",
            }
        elif endpoint == "/cancelIRN":
            return {
                "success": True,
                "data": {
                    "Irn": data.get("irn", "") if data else "",
                    "Status": "CANCELLED",
                    "Date": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
                },
                "message": "IRN cancelled successfully (mock)",
            }
        elif endpoint == "/health":
            return {
                "success": True,
                "status": "healthy",
                "mode": "mock",
            }
        else:
            return {
                "success": True,
                "data": {},
                "message": f"Mock response for {endpoint}",
            }
    
    def generate_irn(
        self,
        einvoice_payload: dict,
        secret_key: str = "",
    ) -> dict:
        """Submit e-invoice payload to IRP to generate IRN.
        
        Args:
            einvoice_payload: e-invoice JSON from generate_einvoice_json()
            secret_key: HMAC secret key for signature
        
        Returns:
            dict with IRN, AckNo, Status
        """
        if secret_key:
            signature = generate_hmac_signature(einvoice_payload, secret_key)
            einvoice_payload["Signature"] = signature
        
        response = self._make_request(
            "POST", "/generateIRN", data=einvoice_payload
        )
        
        if response.get("success") and "data" in response:
            irn_data = response["data"]
            return {
                "irn": irn_data.get("Irn", ""),
                "ack_no": irn_data.get("AckNo", ""),
                "date": irn_data.get("Date", ""),
                "status": irn_data.get("Status", "ACTIVE"),
                "raw_response": response,
            }
        return response
    
    def get_irn_details(self, irn: str, gstin: str) -> dict:
        """Get e-invoice details from IRN.
        
        Args:
            irn: Invoice Reference Number
            gstin: Supplier GSTIN
        
        Returns:
            dict with IRN details
        """
        data = {"irn": irn, "gstin": gstin}
        response = self._make_request("GET", "/getIRNDetails", data=data)
        return response
    
    def cancel_irn(self, irn: str, gstin: str, reason: str = "") -> dict:
        """Cancel an e-invoice IRN.
        
        Args:
            irn: Invoice Reference Number to cancel
            gstin: Supplier GSTIN
            reason: Cancellation reason
        
        Returns:
            dict with cancellation status
        """
        data = {"irn": irn, "gstin": gstin, "reason": reason}
        response = self._make_request("POST", "/cancelIRN", data=data)
        return response
    
    def health_check(self) -> dict:
        """Check IRP server health/status."""
        return self._make_request("GET", "/health")


# ============================================================
# e-Invoice Database Operations
# ============================================================

EINVOICE_COLS = (
    "InvoiceNo, GSTIN, Date, TotalAmt, CGST, SGST, IGST, "
    "Status, IRN, AckNo, CustomerName, PlaceOfSupply, "
    "Site_Code, U_Name, U_EntDt, U_AE"
)


def invoice_exists(invoice_no: str, cn=None) -> bool:
    """Check if an e-invoice already exists in the database."""
    return bool(db.query(
        "SELECT 1 FROM eInvoice WHERE InvoiceNo = ? AND Site_Code = ?",
        (invoice_no, SITE_CODE), cn=cn))


def get_invoice(invoice_no: str, cn=None) -> dict | None:
    """Get e-invoice by invoice number."""
    rows = db.query(
        f"SELECT {EINVOICE_COLS} FROM eInvoice "
        "WHERE InvoiceNo = ? AND Site_Code = ?",
        (invoice_no, SITE_CODE), cn=cn)
    return _map_invoice(rows[0]) if rows else None


def list_invoices(status: str | None = None, cn=None) -> list[dict]:
    """List e-invoices, optionally filtered by status."""
    sql = f"SELECT {EINVOICE_COLS} FROM eInvoice WHERE Site_Code = ?"
    params = [SITE_CODE]
    if status:
        sql += " AND Status = ?"
        params.append(status)
    sql += " ORDER BY Date DESC"
    rows = db.query(sql, tuple(params), cn=cn)
    return [_map_invoice(r) for r in rows]


def save_invoice(rec: dict, cn=None, commit: bool = True) -> int:
    """Save e-invoice record to database (insert or update)."""
    _validate_invoice(rec)
    
    gst = calculate_gst(rec.get("total_amount", 0), rec.get("gst_rate", DEFAULT_GST_RATE))
    
    if invoice_exists(rec["invoice_no"], cn=cn):
        return db.execute(
            "UPDATE eInvoice SET GSTIN = ?, Date = ?, TotalAmt = ?, "
            "CGST = ?, SGST = ?, IGST = ?, Status = ?, "
            "CustomerName = ?, PlaceOfSupply = ?, "
            "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
            "WHERE InvoiceNo = ? AND Site_Code = ?",
            (rec.get("gstin", ""), rec.get("invoice_date") or datetime.now(),
             rec.get("total_amount", 0),
             gst["cgst"], gst["sgst"], gst["igst"],
             rec.get("status", "Pending"),
             rec.get("customer_name", ""),
             rec.get("place_of_supply", ""),
             USER,
             rec["invoice_no"], SITE_CODE),
            cn=cn, commit=commit)
    else:
        irn = rec.get("irn", "")
        ack_no = rec.get("ack_no", "")
        return db.execute(
            f"INSERT INTO eInvoice ({EINVOICE_COLS}) "
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
            (rec["invoice_no"], rec.get("gstin", ""),
             rec.get("invoice_date") or datetime.now(),
             rec.get("total_amount", 0),
             gst["cgst"], gst["sgst"], gst["igst"],
             rec.get("status", "Pending"),
             irn, ack_no,
             rec.get("customer_name", ""),
             rec.get("place_of_supply", ""),
             SITE_CODE, USER, SITE_CODE),
            cn=cn, commit=commit)


def cancel_invoice(invoice_no: str, reason: str = "", cn=None, commit: bool = True) -> int:
    """Cancel an e-invoice (status -> 'Cancelled')."""
    return db.execute(
        "UPDATE eInvoice SET Status = 'Cancelled', U_AE = 'E', "
        "U_EntDt = getdate() "
        "WHERE InvoiceNo = ? AND Site_Code = ?",
        (invoice_no, SITE_CODE), cn=cn, commit=commit)


# ============================================================
# e-Invoice Generator (High-Level)
# ============================================================

class EInvoiceGenerator:
    """High-level e-invoice generator combining GST calc + IRN + HTTP client.
    
    Usage:
        gen = EInvoiceGenerator(gstin="27AAACR5055R1ZM", mock=True)
        payload = gen.create_payload(invoice_no="INV001", items=[...])
        result = gen.submit(payload)
    """
    
    def __init__(
        self,
        gstin: str,
        api_key: str = "",
        mock_mode: bool = True,
        http_client: eInvoiceHTTPClient | None = None,
    ):
        if not _validate_gstin(gstin):
            raise ValueError(f"Invalid GSTIN: {gstin}")
        self.gstin = gstin
        self.mock_mode = mock_mode
        self.http_client = http_client or eInvoiceHTTPClient(
            sandbox=True, mock_mode=mock_mode, api_key=api_key
        )
    
    def create_payload(
        self,
        invoice_no: str,
        customer_name: str,
        customer_gstin: str,
        place_of_supply: str,
        items: list[dict],
        total_amount: float,
        invoice_date: str | None = None,
        document_type: str = "INV",
    ) -> dict:
        """Create e-invoice JSON payload."""
        return generate_einvoice_json(
            invoice_no=invoice_no,
            gstin=self.gstin,
            customer_name=customer_name,
            customer_gstin=customer_gstin,
            place_of_supply=place_of_supply,
            items=items,
            total_amount=total_amount,
            invoice_date=invoice_date,
            document_type=document_type,
        )
    
    def submit(
        self,
        payload: dict,
        secret_key: str = "",
    ) -> dict:
        """Submit e-invoice payload to IRP and get IRN.
        
        Returns dict with irn, ack_no, status.
        """
        result = self.http_client.generate_irn(payload, secret_key)
        
        # Save to database
        try:
            save_invoice({
                "invoice_no": payload["DocumentNo"],
                "gstin": payload["SupplierGSTIN"],
                "total_amount": payload["TotalInvoiceValue"],
                "customer_name": payload["ReceiverName"],
                "place_of_supply": payload["PlaceOfSupply"],
                "status": result.get("status", "Submitted"),
                "irn": result.get("irn", ""),
                "ack_no": result.get("ack_no", ""),
                "invoice_date": payload.get("DocumentDate", ""),
                "gst_rate": DEFAULT_GST_RATE,
            })
        except Exception as e:
            logger.warning(f"Could not save invoice to DB: {e}")
        
        return result
    
    def generate_and_submit(
        self,
        invoice_no: str,
        customer_name: str,
        customer_gstin: str,
        place_of_supply: str,
        items: list[dict],
        total_amount: float,
        invoice_date: str | None = None,
        secret_key: str = "",
    ) -> dict:
        """Create payload and submit to IRP in one call."""
        payload = self.create_payload(
            invoice_no=invoice_no,
            customer_name=customer_name,
            customer_gstin=customer_gstin,
            place_of_supply=place_of_supply,
            items=items,
            total_amount=total_amount,
            invoice_date=invoice_date,
        )
        return self.submit(payload, secret_key)
