"""Test individual openers"""
import os
os.environ["QT_QPA_PLATFORM"] = "offscreen"

from HMS_py.ui import partial_forms_ui as pf

# Test openers
openers = [
    ("TdsCategoryWindow", "open_tds_category"),
    ("GroupAccountsWindow", "open_group_accounts"),
    ("LedgerAccountsWindow", "open_ledger_accounts"),
    ("GlobalNarrationWindow", "open_global_narration"),
    ("LocationOpeningStockWindow", "open_location_opening_stock"),
    ("MagicWindow", "open_magic"),
    ("FaReportsWindow", "open_fa_reports"),
    ("DepartmentMasterWindow", "open_department_master"),
    ("ChequeDDClearingWindow", "open_cheque_dd_clearing"),
    ("AdjustmentDeleteWindow", "open_adjustment_delete"),
]

for wname, fname in openers:
    try:
        fn = getattr(pf, fname)
        w = fn(None)
        print(f"{wname}: OK - title={w.windowTitle()}")
        w.close()
    except Exception as e:
        print(f"{wname}: FAIL - {e}")