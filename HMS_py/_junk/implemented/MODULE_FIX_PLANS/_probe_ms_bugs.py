"""Probe suspected Main Setup bugs (offscreen, no screenshots)."""
import os, sys
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from PyQt6.QtWidgets import QApplication, QMessageBox, QDialog
CAP = {"w": None}
def _exec(self, *a, **k):
    CAP["w"] = self
    return QDialog.DialogCode.Rejected
QDialog.exec = _exec
for m in ("information", "warning", "critical"):
    setattr(QMessageBox, m, staticmethod(lambda *a, **k: QMessageBox.StandardButton.Ok))
QMessageBox.question = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Yes)

app = QApplication(sys.argv)
from HMS_py.ui import shell
from PyQt6.QtWidgets import QTableWidget, QLabel

mw = shell.MainWindow("SA", {"name": "Moon and Mars Resorts", "short": "MMR", "year": "2026-27"})

def probe(caption):
    op = mw._opener(caption)
    if op is None:
        print(f"{caption:35s} -> NO OPENER")
        return
    CAP["w"] = None
    try:
        w = op(mw)
    except Exception as e:
        print(f"{caption:35s} -> ERR {type(e).__name__}: {e}")
        return
    if not hasattr(w, "findChildren") and CAP["w"] is not None:
        w = CAP["w"]
    if not isinstance(w, QDialog) and not hasattr(w, "findChildren"):
        print(f"{caption:35s} -> non-widget {type(w).__name__}")
        return
    # exec-patched dialogs never shown: describe what's constructed
    tables = w.findChildren(QTableWidget)
    browses = [l.text() for l in w.findChildren(QLabel) if "Browse" in l.text()]
    info = []
    for t in tables:
        info.append(f"rows={t.rowCount()}")
    print(f"{caption:35s} -> {type(w).__name__} tables[{', '.join(info)}] browse={browses}")
    try:
        w.close()
    except Exception:
        pass

for cap in ("Menu Item Copy", "Call Control Master",
            "Group Accounts", "User Master", "Plan Master", "Opening Stock",
            "Holiday Master", "Guest Status", "Room Features", "Combo Pack",
            "Delivery Boy", "Call Type Master", "Extension Master",
            "Call Codes Master", "Smart Card", "Guest Parameters Setting",
            "Environment Settings", "Catalog Master", "Venue Features",
            "Guest LookUp", "MemEnviro"):
    probe(cap)

# DB raw counts for suspected-empty tables
from HMS_py.core import db
print("\n--- raw table counts ---")
for t in ("AcGroup", "UserMast", "HolidayMast", "GuestStatus", "RoomFeat",
          "ComboPack", "DeliveryBoy", "TelCallType", "Extension", "SmartCardMast",
          "VenueFeat", "HappyHours", "MemEnviro"):
    try:
        n = db.query(f"SELECT COUNT(*) FROM {t}")
        print(f"{t:15s} {n[0][0]}")
    except Exception as e:
        print(f"{t:15s} ERR {str(e)[:80]}")
os._exit(0)
