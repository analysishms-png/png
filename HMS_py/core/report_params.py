"""Report Parameter Service - VB6 report parameter handling (Analysis.ini + Enviro + Business Date).

VB6 Evidence:
- Reports use Analysis.ini keys: 1=Server, 2=ReportsPath, 3=TempPath, 4=Printer, 5=BackupPath, 6=Database, 7=CompanyCode, 8=Site
- Enviro flags: Bill_Header, Bill_Footer, KOTPrinting, KOTAtNightAudit, POSBillAtNightAudit, NoShowAtNightAudit, RcptPrinting, ReservationPrinting, etc.
- Business Date: Enviro.BusinessDate ya Analysis.ini key 5 fallback
- Company/Site context: MemVar_1F92078 (LogSite_Code), MemVar_1F92128 (CompCode), MemVar_1F920C8 (User)
- User permissions: menuHelp Opt1-Opt7

Parameter passing chain:
VB6 Form -> Report.Show -> Report.DataSource (parameterized SQL) -> Printer/Preview
Python: Form -> report_params.get_params() -> reports.run() -> print_preview/print
"""
from __future__ import annotations

from typing import Optional
from datetime import date, datetime

from HMS_py.core import db, enviro


def get_report_params(report_key: str, d_from: str = None, d_to: str = None, cn=None) -> dict:
    """Build complete parameter dict for a report (VB6 parity).

    Args:
        report_key: Report key from reports.REPORTS registry
        d_from: From date (YYYY-MM-DD) - required for daterange reports
        d_to: To date (YYYY-MM-DD) - required for daterange reports

    Returns:
        Dict with all report parameters including:
        - d_from, d_to: Date range
        - site, company, user, business_date: Context
        - enviro flags: All relevant Enviro settings
        - ini paths: Reports, Temp, Printer from Analysis.ini
    """
    # --- Context (site, company, user) ---
    site_code = db.get_site_code()
    company_code = db.get_comp_code()
    user = db.get_user()
    business_date = db.get_business_date()

    # --- Enviro operational flags (read-only for reports) ---
    # Get all Enviro settings that reports might need
    env_rows = db.query(
        "SELECT * FROM Enviro WHERE LogSite_Code = ? OR LogSite_Code = 'HO'",
        (site_code,), cn=cn)
    enviro_flags = {}
    if env_rows:
        r = env_rows[0]
        if hasattr(r, "keys"):
            enviro_flags = {k: r[k] for k in r.keys()}
        else:
            cols = [c[0] for c in db.query(
                "SELECT name FROM sys.columns WHERE object_id = OBJECT_ID('Enviro') ORDER BY column_id", cn=cn)]
            enviro_flags = dict(zip(cols, r))

    # --- Analysis.ini paths ---
    cfg = db.load_config()
    ini_paths = {
        "reports_path": cfg.get("reports") or "",
        "temp_path": cfg.get("temp") or "",
        "printer": cfg.get("printer") or "Prn",
        "backup_path": cfg.get("backup") or "",
        "image_path": cfg.get("image") or "",
    }

    # --- User permissions (for report access) ---
    # Could be extended to check menuHelp perms

    return {
        # Date range
        "d_from": d_from,
        "d_to": d_to,
        # Context
        "site_code": site_code,
        "company_code": company_code,
        "user": user,
        "business_date": business_date,
        # Enviro flags (all)
        "enviro": enviro_flags,
        # INI paths
        "ini": ini_paths,
        # Report specific
        "report_key": None,
    }


def get_report_specific_params(report_key: str, base_params: dict, cn=None) -> dict:
    """Add report-specific parameters based on report key.

    VB6: Each report form sets specific parameters before calling Report.Show
    """
    params = base_params.copy()
    params["report_key"] = None

    # Common Enviro flags used by specific reports
    env = base_params.get("enviro", {})

    # Map common report parameter needs
    if report_key in ("fom_sales_register", "guest_payments", "settlement_report"):
        params["cash_pay_type"] = env.get("CashPayType")
        params["room_pay_type"] = env.get("RoomPayType")

    if report_key in ("pos_sales_daybook", "cashier_sale", "cashier_collection"):
        params["pos_printing"] = env.get("RcptPrinting")
        params["kOT_printing"] = env.get("KOTPrinting")
        params["kOT_outlet_selection"] = env.get("KOTOutletSelection")

    if report_key in ("guest_bill_details", "guest_charges_mis"):
        params["bill_header"] = env.get("Bill_Header")
        params["bill_footer"] = env.get("Bill_Footer")
        params["rcpt_printing"] = env.get("RcptPrinting")

    if "aging" in report_key.lower():
        params["age1"] = env.get("Age1")
        params["age2"] = env.get("Age2")
        params["age3"] = env.get("Age3")
        params["age4"] = env.get("Age4")
        params["age5"] = env.get("Age5")
        params["age6"] = env.get("Age6")
        params["amt1"] = env.get("Amt1")
        params["amt2"] = env.get("Amt2")
        params["amt3"] = env.get("Amt3")
        params["amt4"] = env.get("Amt4")
        params["amt5"] = env.get("Amt5")
        params["amt6"] = env.get("Amt6")

    if report_key in ("fom_tax_detail",):
        params["tax_summary"] = env.get("TaxSummary")
        params["sale_tax_vat"] = env.get("SaleTaxVAT")
        params["purchase_tax_vat"] = env.get("PurchaseTaxVAT")

    # Bill printing settings
    if "bill" in report_key.lower() or "fom" in report_key.lower():
        params["bill_header"] = env.get("Bill_Header")
        params["bill_footer"] = env.get("Bill_Footer")
        params["fom_bill_copies"] = env.get("FomBillCopies")
        params["kOT_printing"] = env.get("KOTPrinting")
        params["kOT_print_edited"] = env.get("KOTPrintEdited")
        params["kOT_outlet_selection"] = env.get("KOTOutletSelection")
        params["tax_summary"] = env.get("TaxSummary")
        params["bill_printing_summerised"] = env.get("BillPrintingSummerised")

    return params


def get_print_params(cn=None) -> dict:
    """Get print-specific parameters (VB6 CommonDialog + Analysis.ini + Enviro).

    Returns dict with:
        - printer: Printer name
        - copies: Number of copies
        - paper_size: Paper size
        - orientation: Portrait/Landscape
        - margins: Margins
    """
    cfg = db.load_config()
    env = enviro.get(cn=cn) if cn is None else enviro.get()

    return {
        "printer": cfg.get("printer") or "Prn",
        "copies": env.get("FomBillCopies") or 1,
        "paper_size": "A4",  # Default
        "orientation": "Portrait",  # Default
        "margins": {"top": 10, "bottom": 10, "left": 10, "right": 10},
        "reports_path": env.get("reports") or "",
        "temp_path": env.get("temp") or "",
    }


def validate_report_params(params: dict, report_key: str) -> tuple:
    """Validate report parameters (VB6-style validation).

    Returns:
        (is_valid, error_message)
    """
    # Check required date range for daterange reports
    r = None
    from HMS_py.core import reports as rp
    if report_key in rp.by_key():
        r = rp.by_key()[report_key]
        sql = r["sql"]
        import re as _re
        n = len(_re.findall(r"\?", _re.sub(r"'(?:[^']|'')*'", "''", r["sql"].replace("{L}", "5000"))))
        if n:
            if not params.get("d_from") or not params.get("d_to"):
                return False, f"Report '{report_key}' requires From/To dates"

    # Business date validity
    bd = params.get("business_date")
    if not bd:
        return False, "Business date not available"

    return True, ""


class ReportParameterService:
    """Service class for managing report parameters (VB6-style)."""

    def __init__(self, cn=None):
        self.cn = cn
        self._params_cache = {}

    def get_params(self, report_key: str, d_from: str = None, d_to: str = None) -> dict:
        """Get complete parameters for a report."""
        base = get_report_params(report_key, d_from, d_to, cn=self.cn)
        params = get_report_specific_params(report_key, base, cn=self.cn)
        params["report_key"] = report_key
        return params

    def validate(self, params: dict, report_key: str) -> tuple:
        return validate_report_params(params, report_key)

    def get_print_params(self) -> dict:
        return get_print_params(cn=self.cn)

    def clear_cache(self):
        self._params_cache.clear()


# Default singleton instance
_report_param_service = None


def get_report_param_service(cn=None) -> ReportParameterService:
    global _report_param_service
    if _report_param_service is None or _report_param_service.cn != cn:
        _report_param_service = ReportParameterService(cn=cn)
    return _report_param_service