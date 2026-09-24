"""Offscreen smoke: Wave-6 posting_forms_ui 4 openers + registry wired check."""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtCore import QTimer
from PyQt6.QtWidgets import QApplication, QDialog, QMessageBox

# modal-hang guard
QDialog.exec = lambda self: QDialog.DialogCode.Rejected
QMessageBox.information = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.warning = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.critical = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.question = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Yes)

from HMS_py.ui import posting_forms_ui as pf  # noqa: E402

OPENERS = [
    ("open_post_chrg", "PostChrgWindow"),
    ("open_payment_charge", "PaymentChargeWindow"),
    ("open_re_settlement", "ReSettlementWindow"),
    ("open_rev_checkout", "RevCheckOutWindow"),
]
CAPTIONS = ["Post Charges /Payments", "Post Charges & Payment",
            "Post Charges/Payment", "Check Out Cancel"]

app = QApplication(sys.argv)

ok, fail = 0, []
for fn_name, cls_name in OPENERS:
    try:
        w = getattr(pf, fn_name)()
        assert w is not None and cls_name in type(w).__name__
        w.show(); app.processEvents(); w.close()
        ok += 1
        print(f"  OK    {fn_name}")
    except Exception as e:
        fail.append(fn_name)
        print(f"  ERR   {fn_name}: {type(e).__name__}: {e}")

reg_ok, reg_fail = 0, []
try:
    from HMS_py.ui import shell
    reg = shell._form_registry()
    for cap in CAPTIONS:
        fn = reg.get(cap)
        wired = fn is not None and "coming_soon" not in repr(fn)
        if wired:
            reg_ok += 1
            print(f"  WIRED '{cap}'")
        else:
            reg_fail.append(cap)
            print(f"  NOT-WIRED '{cap}'")
except Exception as e:
    print(f"  REGISTRY-SKIP: {type(e).__name__}: {e}")
    reg_fail = ["<registry-unavailable>"]

QTimer.singleShot(10000, app.quit)
app.exec()
print(f"\nOpeners: {ok}/{len(OPENERS)}; Registry: {reg_ok}/{len(CAPTIONS)}")
sys.exit(0 if (not fail and not reg_fail) else 1)
