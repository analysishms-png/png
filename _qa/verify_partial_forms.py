"""Headless smoke: PARTIAL bucket top-10 UI ports (partial_forms_ui)."""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtCore import QTimer
from PyQt6.QtWidgets import QApplication, QDialog, QMessageBox

# modal-hang guard: any exec() auto-rejects
QDialog.exec = lambda self: QDialog.DialogCode.Rejected
# static QMessageBox C++ modal bhi hang karta hai offscreen me — stub karo
QMessageBox.information = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.warning = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.critical = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.question = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Yes)

from HMS_py.ui import partial_forms_ui as pf  # noqa: E402

app = QApplication(sys.argv)

OPENERS = [
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

results = []
for wname, fname in OPENERS:
    try:
        fn = getattr(pf, fname)
        w = fn(None)
        assert w is not None, "opener returned None"
        assert w.windowTitle(), "empty title"
        # exercise the load/fill paths where present
        if hasattr(w, "_load"):
            try:
                w._load()
            except Exception as e:
                results.append((wname, "FAIL", f"_load: {e}"))
                w.close()
                continue
        if hasattr(w, "_fill"):
            try:
                w._fill()
            except Exception as e:
                results.append((wname, "FAIL", f"_fill: {e}"))
                w.close()
                continue
        w.close()
        results.append((wname, "OK", w.windowTitle()))
    except Exception as e:
        results.append((wname, "FAIL", repr(e)))

# core op probes (live DB reads)
from HMS_py.core import fa_masters_ops as fmo  # noqa: E402
core_probes = {
    "tdscat_list": len(fmo.tdscat_list()),
    "acgroup_list": len(fmo.acgroup_list()),
    "subgroup_list": len(fmo.subgroup_list(limit=50)),
    "narr_list": len(fmo.narr_list()),
    "dep_opstk_list": len(fmo.dep_opstk_list()),
    "budget_view": len(fmo.budget_view()),
    "tdscat_next_code": fmo.tdscat_next_code(),
    "acgroup_next_code": fmo.acgroup_next_code(),
}

print("=== UI openers ===")
fails = 0
for name, st, info in results:
    print(f"{st:4} {name}: {info}")
    if st == "FAIL":
        fails += 1
print("=== Core probes (live DB) ===")
for k, v in core_probes.items():
    print(f"    {k}: {v}")

print("RESULT:", "PARTIAL_FORMS_OK" if fails == 0 else f"{fails} FAILURES")

# hard exit guard: koi hidden modal/timer reh gaya ho to bhi nikal jao
QTimer.singleShot(3000, app.quit)
app.exec()
sys.exit(0 if fails == 0 else 1)
