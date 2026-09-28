"""Sweep helper: open ONE registry caption in isolation (subprocess-safe).

Usage: python -u _qa/sweep_one_cap.py "<caption>"
Exit 0 = OK, 139/other = crash -> caller identifies the caption.
Same modal stubs as sweep_ui_bugs.py.
"""
import os
import sys

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from PyQt6.QtWidgets import (QApplication, QDialog, QFileDialog,
                             QInputDialog, QMessageBox)

QDialog.exec = lambda self, *a, **k: QDialog.DialogCode.Rejected
QMessageBox.information = staticmethod(
    lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.warning = staticmethod(
    lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.critical = staticmethod(
    lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.question = staticmethod(
    lambda *a, **k: QMessageBox.StandardButton.Yes)
QInputDialog.getText = staticmethod(lambda *a, **k: ("", False))
QInputDialog.getInt = staticmethod(lambda *a, **k: (0, False))
QInputDialog.getItem = staticmethod(lambda *a, **k: ("", 0, False))
QFileDialog.getOpenFileName = staticmethod(lambda *a, **k: ("", ""))
QFileDialog.getSaveFileName = staticmethod(lambda *a, **k: ("", ""))

from HMS_py.ui import shell  # noqa: E402

# NOTE: Qt-offscreen teardown pe RANDOM segfault aata hai (sweep_ui_bugs.py
# wahi os._exit guard use karta hai). Isliye results print karke
# Python finalization skip karke clean exit code return karte hain.

cap = sys.argv[1]
_rc = 0
try:
    app = QApplication(sys.argv)
    mw = shell.MainWindow("SA", {"name": "Moon and Mars Resorts",
                                 "short": "MMR", "year": "2026-27"})
    reg = shell._form_registry()
    fn = reg.get(cap)
    if fn is None:
        print(f"ABSENT: {cap}", flush=True)
        _rc = 3
    else:
        print(f"OPENING: {cap}", flush=True)
        w = fn(mw)
        if w is not None and hasattr(w, "show"):
            w.show()
            app.processEvents()
            w.close()
        print(f"OK: {cap}", flush=True)
except Exception as e:
    import traceback
    traceback.print_exc(limit=6)
    print(f"FAIL: {cap}: {type(e).__name__}: {e}", flush=True)
    _rc = 1
sys.stdout.flush()
sys.stderr.flush()
os._exit(_rc)
