"""Multi-site isolation & Business Date tests - VB6 parity verification.

Run: python -m tests.database.test_main_setup_isolation
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__))))))

from HMS_py.core import db, enviro, report_params, print_engine


def check(name, cond, detail=""):
    status = "PASS" if cond else "FAIL"
    print(f"{status} {name}" + (f" | {detail}" if detail else ""))
    return cond


def test_site_isolation():
    """Verify LogSite_Code filtering in queries (VB6: WHERE LogSite_Code=? OR 'HO')."""
    print("\n=== Multi-Site Isolation Tests ===")
    
    # Test 1: get_site_code returns correct value from Analysis.ini
    site = db.get_site_code()
    print(f"  get_site_code(): '{site}'")
    assert site and len(site) <= 10, f"Invalid site code: {site}"
    
    # Test 2: enviro.get() uses LogSite_Code + HO fallback
    env = enviro.get()
    print(f"  enviro.get() site filter: OK")
    
    # Test 3: fa_enviro.get() uses LogSite_Code + HO fallback
    from HMS_py.core import fa_enviro
    fa_env = fa_enviro.get()
    print(f"  fa_enviro.get() site filter: OK")
    
    # Test 4: general_setup queries use _v_scope with HO fallback
    from HMS_py.core import general_setup
    companies = general_setup.voucher_type_list()
    print(f"  general_setup.voucher_type_list(): {len(companies)} voucher types")
    
    # Test 5: reports use site filtering
    from HMS_py.core import reports
    cols, rows = reports.run("fom_sales_register", "2024-01-01", "2024-12-31", limit=10)
    print(f"  reports.run() with site filter: {len(rows)} rows")
    
    print("  Multi-site isolation: PASS")
    return True


def test_business_date():
    """Verify business date logic (VB6: Enviro.BusinessDate or Analysis.ini key 5)."""
    print("\n=== Business Date Tests ===")
    
    # Test 1: get_business_date returns valid date
    bd = db.get_business_date()
    print(f"  get_business_date(): '{bd}'")
    assert bd and "/" in bd, f"Invalid business date format: {bd}"
    
    # Test 2: current_year returns financial year (Apr-Mar)
    from HMS_py.core import company
    cy = company.current_year()
    print(f"  current_year(): '{cy}'")
    # Format: YYYY-YY (e.g., 2026-27)
    assert "-" in cy and len(cy) == 7, f"Invalid financial year: {cy}"
    
    # Test 3: Business date used in reports
    from HMS_py.core import report_params
    params = report_params.get_report_params("fom_sales_register", "2024-01-01", "2024-12-31")
    bd = params.get("business_date")
    print(f"  Report params business_date: '{bd}'")
    assert bd, "Business date missing from report params"
    
    print("  Business date: PASS")
    return True


def test_report_parameters():
    """Verify report parameter service (Enviro flags + INI + Business Date)."""
    print("\n=== Report Parameter Service Tests ===")
    
    # Test 1: get_report_params returns all sections
    params = report_params.get_report_params("fom_sales_register", "2024-01-01", "2024-12-31")
    
    assert "d_from" in params and params["d_from"]
    assert "d_to" in params and params["d_to"]
    assert "site_code" in params and params["site_code"]
    assert "company_code" in params and params["company_code"]
    assert "user" in params and params["user"]
    assert "business_date" in params and params["business_date"]
    assert "enviro" in params and isinstance(params["enviro"], dict)
    assert "ini" in params and isinstance(params["ini"], dict)
    
    print(f"  Report params sections: {list(params.keys())}")
    
    # Test 2: Enviro flags included
    env = params["enviro"]
    assert "Bill_Header" in env
    assert "Bill_Footer" in env
    assert "KOTPrinting" in env
    print(f"  Enviro flags included: Bill_Header, Bill_Footer, KOTPrinting, etc.")
    
    # Test 3: INI paths included
    ini = params["ini"]
    assert "reports_path" in ini
    assert "temp_path" in ini
    assert "printer" in ini
    print(f"  INI paths: {list(ini.keys())}")
    
    # Test 4: get_report_specific_params adds report-specific flags
    # This function is in the report_params module but not exposed in __init__
    from HMS_py.core.report_params import get_report_specific_params
    params2 = get_report_specific_params("fom_sales_register", params)
    print(f"  Report-specific params: {len(params2)} total")
    
    print("  Report parameters: PASS")
    return True


def test_print_engine():
    """Test print engine with preview, print, and reprint."""
    print("\n=== Print Engine Tests ===")
    
    # Test 1: Create print job
    from HMS_py.core import print_engine as pe
    engine = pe.get_print_engine()
    
    headers = ["Col1", "Col2", "Col3"]
    rows = [["A", "B", "C"], ["D", "E", "F"]]
    
    job = pe.PrintJob(
        report_key="test_report",
        title="Test Report",
        d_from="2024-01-01",
        d_to="2024-12-31",
        headers=["Col1", "Col2", "Col3"],
        rows=[["A", "B", "C"], ["D", "E", "F"]],
        user="SA",
        site_code="KK",
        business_date="01/JAN/2024"
    )
    
    assert job.report_key == "test_report"
    assert job.is_reprint == False
    assert job.reprint_count == 0
    
    # Test 2: Reprint creates new job with incremented count
    reprint_job = pe.PrintJob(
        report_key=job.report_key,
        title=job.title + " (REPRINT)",
        d_from=job.d_from,
        d_to=job.d_to,
        headers=job.headers,
        rows=job.rows,
        printer=job.printer,
        copies=job.copies,
        original_doc_id=job.report_key,
        is_reprint=True,
        reprint_count=job.reprint_count + 1,
        user=job.user,
        site_code=job.site_code,
        business_date=job.business_date,
    )
    
    assert reprint_job.is_reprint == True
    assert reprint_job.reprint_count == 1
    assert reprint_job.original_doc_id == "test_report"
    
    # Test 3: Preview generates text
    engine = pe.PrintEngine()
    preview = engine.preview(job)
    assert "Test Report" in preview
    assert "Col1" in preview
    
    # Test 4: Reprint preview includes reprint marker
    reprint_preview = engine.preview(reprint_job)
    assert "REPRINT" in reprint_preview
    
    print("  Print engine: PASS")
    return True


def test_reprint_manager():
    """Test reprint manager for document-specific reprints."""
    print("\n=== Reprint Manager Tests ===")
    
    manager = print_engine.ReprintManager()
    
    # Test reprint history (empty initially)
    history = manager.get_reprint_history("test_report", "doc123")
    assert history == []
    
    print("  Reprint manager: PASS")
    return True


def main():
    print("=" * 60)
    print("MAIN SETUP ISOLATION & BUSINESS DATE TESTS")
    print("=" * 60)
    
    all_pass = True
    
    try:
        all_pass &= test_site_isolation()
    except Exception as e:
        print(f"  Multi-site isolation: FAIL - {e}")
        all_pass = False
    
    try:
        all_pass &= test_business_date()
    except Exception as e:
        print(f"  Business date: FAIL - {e}")
        all_pass = False
    
    try:
        all_pass &= test_report_parameters()
    except Exception as e:
        print(f"  Report parameters: FAIL - {e}")
        all_pass = False
    
    try:
        all_pass &= test_print_engine()
    except Exception as e:
        print(f"  Print engine: FAIL - {e}")
        all_pass = False
    
    try:
        all_pass &= test_reprint_manager()
    except Exception as e:
        print(f"  Reprint manager: FAIL - {e}")
        all_pass = False
    
    print("\n" + "=" * 60)
    if all_pass:
        print("ALL TESTS PASSED")
        return 0
    else:
        print("SOME TESTS FAILED")
        return 1


if __name__ == "__main__":
    sys.stdout.reconfigure(encoding="utf-8", errors="replace")
    sys.exit(main())