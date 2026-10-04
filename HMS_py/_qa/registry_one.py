"""Open ONE registry caption in isolation and print the outcome.

Usage: python _qa/registry_one.py "Ledger Adjustment"
Used for crash triage (some captions hard-abort the process).
"""
import os
import sys

PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
sys.path.insert(0, PROJECT)
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtWidgets import (QApplication, QDialog, QFileDialog, QInputDialog,
                             QMessageBox)  # noqa: E402

app = QApplication.instance() or QApplication(["one"])
cap = sys.argv[1]

QFileDialog.getOpenFileName = staticmethod(lambda *a, **k: ("", ""))
QFileDialog.getSaveFileName = staticmethod(lambda *a, **k: ("", ""))
QFileDialog.getExistingDirectory = staticmethod(lambda *a, **k: "")
QInputDialog.getText = staticmethod(lambda *a, **k: ("", False))
QInputDialog.getItem = staticmethod(lambda *a, **k: ("", False))
QInputDialog.getInt = staticmethod(lambda *a, **k: (0, False))
QInputDialog.getDouble = staticmethod(lambda *a, **k: (0.0, False))

for lvl in ("critical", "warning", "information", "about", "question"):
    def mk(lvl):
        def call(self, *a, **k):
            parts = []
            for x in list(a) + [v for v in k.values() if isinstance(v, str)]:
                if hasattr(x, "text") and callable(x.text):
                    try:
                        parts.append(str(x.text()))
                    except Exception:
                        pass
                elif isinstance(x, str) and x.strip():
                    parts.append(x)
            if not parts and hasattr(self, "text"):
                try:
                    parts.append(str(self.text()))
                except Exception:
                    pass
            print(f"  MSG[{lvl}] {' | '.join(parts)[:300]}", flush=True)
            return QMessageBox.StandardButton.Yes if lvl == "question" \
                else QMessageBox.StandardButton.Ok
        return call
    setattr(QMessageBox, lvl, mk(lvl))


def _dlg_exec(self, *a, **k):
    print(f"  DIALOG {self.windowTitle()!r}", flush=True)
    return QDialog.DialogCode.Accepted


QDialog.exec = _dlg_exec
QDialog.exec_ = _dlg_exec

from HMS_py.ui import shell as sh  # noqa: E402
from HMS_py.ui.shell import MainWindow  # noqa: E402

win = MainWindow("SA", {"name": "One", "short": "ONE", "year": "2026-27"})
app.processEvents()
reg = sh._form_registry()
fn = reg.get(cap)
if fn is None:
    print("NOT_IN_REGISTRY")
    raise SystemExit(2)
print(f"OPENING {cap!r}", flush=True)
try:
    w = fn(win)
    app.processEvents()
    print("WINDOW:", getattr(w, "windowTitle", lambda: repr(w))(), flush=True)
except Exception as e:  # noqa: BLE001
    import traceback
    print(f"EXCEPTION {type(e).__name__}: {e}", flush=True)
    traceback.print_exc()
print("DONE", flush=True)