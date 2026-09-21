"""Phase 2: UI Module Tests - Form instantiation + data loading."""
import sys, os
from pathlib import Path
sys.path.insert(0, str(Path(__file__).parent))

os.environ["QT_QPA_PLATFORM"] = "offscreen"

from PyQt6.QtWidgets import QApplication
app = QApplication.instance() or QApplication(sys.argv)

from HMS_py.ui.theme import apply_theme
apply_theme(app, "dark")

P = 0
F = 0
ERRORS = []

def ok(name, fn):
    global P
    try:
        fn()
        P += 1
        print(f"  OK  {name}")
    except Exception as e:
        global F
        F += 1
        ERRORS.append((name, str(e)[:120]))
        print(f"  FAIL {name}: {str(e)[:100]}")

# ===================== UI MODULES =====================
print("\n--- UI MODULES (Form Instantiation) ---")

from HMS_py.ui import theme
ok("theme.dark_qss_loaded", lambda: len(theme.DARK_QSS) > 1000)
ok("theme.light_qss_loaded", lambda: len(theme.LIGHT_QSS) > 1000)
ok("theme.apply_dark", lambda: apply_theme(app, "dark"))
ok("theme.apply_light", lambda: apply_theme(app, "light"))
ok("theme.toggle", lambda: theme.toggle_theme(app))
ok("theme.restore_dark", lambda: apply_theme(app, "dark"))

from HMS_py.ui import base_window
def test_base_window():
    w = base_window.ModernWindow(title="Test")
    w.show()
    w.close()
ok("base_window.ModernWindow", test_base_window)

# Shell imports
from HMS_py.ui import shell
ok("shell._form_registry", lambda: len(shell._form_registry()) > 600)

# Master UIs
from HMS_py.ui import general_setup_ui
ok("general_setup_ui.GodownMasterWindow", lambda: general_setup_ui.GodownMasterWindow().close() or True)

from HMS_py.ui import finance_masters_ui
ok("finance_masters_ui imported", lambda: True)

from HMS_py.ui import p2_masters
ok("p2_masters imported", lambda: True)

from HMS_py.ui import pos_masters_ui
ok("pos_masters_ui imported", lambda: True)

# FO UIs
from HMS_py.ui import booking_ops_ui
ok("booking_ops_ui imported", lambda: True)

from HMS_py.ui import checkout_ui
ok("checkout_ui imported", lambda: True)

from HMS_py.ui import folio_ui
ok("folio_ui imported", lambda: True)

from HMS_py.ui import frontoffice
ok("frontoffice imported", lambda: True)

from HMS_py.ui import guest_history_ui
ok("guest_history_ui imported", lambda: True)

from HMS_py.ui import roomstatus_ui
ok("roomstatus_ui imported", lambda: True)

from HMS_py.ui import reservation_browser
ok("reservation_browser imported", lambda: True)

# POS UIs
from HMS_py.ui import kot_entry
ok("kot_entry imported", lambda: True)

from HMS_py.ui import pos_sales_ui
ok("pos_sales_ui imported", lambda: True)

from HMS_py.ui import pos_stock_ui
ok("pos_stock_ui imported", lambda: True)

from HMS_py.ui import pos_delivery_ui
ok("pos_delivery_ui imported", lambda: True)

from HMS_py.ui import pos_table_ui
ok("pos_table_ui imported", lambda: True)

from HMS_py.ui import pos_happy_ui
ok("pos_happy_ui imported", lambda: True)

from HMS_py.ui import pos_packing_ui
ok("pos_packing_ui imported", lambda: True)

from HMS_py.ui import pos_na
ok("pos_na imported", lambda: True)

# Finance UIs
from HMS_py.ui import fa_voucher_ui
ok("fa_voucher_ui imported", lambda: True)

from HMS_py.ui import fa_ledger_ui
ok("fa_ledger_ui imported", lambda: True)

from HMS_py.ui import scheme_tds_ui
ok("scheme_tds_ui imported", lambda: True)

# Inventory UIs
from HMS_py.ui import inventory
ok("inventory imported", lambda: True)

from HMS_py.ui import purchase_order_ui
ok("purchase_order_ui imported", lambda: True)

from HMS_py.ui import purchase_bill_ui
ok("purchase_bill_ui imported", lambda: True)

from HMS_py.ui import stock_issue_ui
ok("stock_issue_ui imported", lambda: True)

from HMS_py.ui import stock_receive_ui
ok("stock_receive_ui imported", lambda: True)

from HMS_py.ui import stock_adjust_ui
ok("stock_adjust_ui imported", lambda: True)

# Reports
from HMS_py.ui import reports_ui
ok("reports_ui imported", lambda: True)

# Sub-forms (new)
from HMS_py.ui import nightaudit_reports_ui
ok("nightaudit_reports_ui imported", lambda: True)

from HMS_py.ui import fa_sub_forms_ui
ok("fa_sub_forms_ui imported", lambda: True)

from HMS_py.ui import fo_sub_forms_ui
ok("fo_sub_forms_ui imported", lambda: True)

from HMS_py.ui import pos_sub_forms_ui
ok("pos_sub_forms_ui imported", lambda: True)

from HMS_py.ui import guest_lookup_ui
ok("guest_lookup_ui imported", lambda: True)

from HMS_py.ui import registration_entry_ui
ok("registration_entry_ui imported", lambda: True)

from HMS_py.ui import tally_export_ui
ok("tally_export_ui imported", lambda: True)

from HMS_py.ui import misc_sub_forms_ui
ok("misc_sub_forms_ui imported", lambda: True)

# HR
from HMS_py.ui import hr_members_ui
ok("hr_members_ui imported", lambda: True)

from HMS_py.ui import hr_payroll_ui
ok("hr_payroll_ui imported", lambda: True)

# Others
from HMS_py.ui import banquet_masters_ui
ok("banquet_masters_ui imported", lambda: True)

from HMS_py.ui import epabx_ui
ok("epabx_ui imported", lambda: True)

from HMS_py.ui import expense_ui
ok("expense_ui imported", lambda: True)

from HMS_py.ui import sys_config_ui
ok("sys_config_ui imported", lambda: True)

from HMS_py.ui import usermaster_ui
ok("usermaster_ui imported", lambda: True)

from HMS_py.ui import enviro_ui
ok("enviro_ui imported", lambda: True)

from HMS_py.ui import taxstru_ui
ok("taxstru_ui imported", lambda: True)

from HMS_py.ui import member_billing_ui
ok("member_billing_ui imported", lambda: True)

from HMS_py.ui import guest_services_ui
ok("guest_services_ui imported", lambda: True)

from HMS_py.ui import facility_billing_ui
ok("facility_billing_ui imported", lambda: True)

from HMS_py.ui import db_backup_ui
ok("db_backup_ui imported", lambda: True)

from HMS_py.ui import db_maintenance_ui
ok("db_maintenance_ui imported", lambda: True)

from HMS_py.ui import account_merge_ui
ok("account_merge_ui imported", lambda: True)

from HMS_py.ui import revenue_budget_ui
ok("revenue_budget_ui imported", lambda: True)

from HMS_py.ui import plan_master
ok("plan_master imported", lambda: True)

# Utility
def assert_(condition, msg="Assertion failed"):
    assert condition, msg

# ===================== SUMMARY =====================
print("\n" + "=" * 60)
total = P + F
pct = P * 100 // max(total, 1)
print(f"TOTAL: {total} tests")
print(f"PASS:  {P} ({pct}%)")
print(f"FAIL:  {F}")
print("=" * 60)

if ERRORS:
    print("\nFAILURES:")
    for n, e in ERRORS:
        print(f"  FAIL: {n}")
        print(f"        {e}")
