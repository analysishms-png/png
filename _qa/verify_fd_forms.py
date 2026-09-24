"""Offscreen smoke: fd_forms_ui 10 openers + shell registry wired check (Wave 5)."""
import os
import sys

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from PyQt6.QtCore import QTimer
from PyQt6.QtWidgets import QApplication, QDialog, QMessageBox

# Modal-hang QA fix (mandatory): hidden C++ modals 180s timeout hang karte hain
QDialog.exec = lambda self, *a, **k: QDialog.DialogCode.Rejected
for _name in ("information", "warning", "critical", "question"):
    setattr(QMessageBox, _name,
            staticmethod(lambda *a, _n=_name, **k: QMessageBox.StandardButton.Ok))

from HMS_py.ui import fd_forms_ui as fdui  # noqa: E402

OPENERS = [
    ("open_amend_stay", "AmendStayWindow"),
    ("open_lookup_reservation", "LookupReservationWindow"),
    ("open_room_checkout", "RoomCheckOutWindow"),
    ("open_guest_ledger", "GuestLedgerWindow"),
    ("open_guest_ledger_summ", "GuestLedgerSummWindow"),
    ("open_group_checkout", "GroupCheckOutWindow"),
    ("open_group_detail_checkout", "GroupDetailCheckOutWindow"),
    ("open_lookup_room", "LookupRoomWindow"),
    ("open_depart_sundry", "DepartSundryWindow"),
    ("open_facility_sundry", "FacilitySundryWindow"),
]

CAPTIONS = [
    "Amend Stay",
    "Look Up Reservation By Guest Name",
    "Room Check Out",
    "Guest Ledger",
    "Summerized Guest Ledger",
    "Room Check Out Entry",
    "Look Up Room",
    "Depart Sundry Setting",
]

app = QApplication(sys.argv)

ok, fail = 0, []
for fn_name, cls_name in OPENERS:
    try:
        w = getattr(fdui, fn_name)()
        assert w is not None, "opener returned None"
        assert cls_name in type(w).__name__, \
            f"got {type(w).__name__}, want {cls_name}"
        w.show()
        app.processEvents()
        w.close()
        ok += 1
        print(f"  OK  {fn_name} -> {cls_name}")
    except Exception as e:
        fail.append((fn_name, f"{type(e).__name__}: {e}"))
        print(f"  ERR {fn_name}: {type(e).__name__}: {e}")

# Registry wired check
reg_ok, reg_fail = 0, []
try:
    from HMS_py.ui import shell
    reg = shell._form_registry()
    for cap in CAPTIONS:
        fn = reg.get(cap)
        wired = fn is not None and "coming_soon" not in repr(fn)
        if wired:
            reg_ok += 1
            print(f"  WIRED  '{cap}'")
        else:
            reg_fail.append(cap)
            print(f"  NOT-WIRED  '{cap}' -> {type(fn).__name__ if fn else None}")
except Exception as e:
    print(f"  REGISTRY-SKIP: {type(e).__name__}: {e}")
    reg_fail = ["<registry-unavailable>"]

# QTimer quit guard
QTimer.singleShot(15000, app.quit)
app.exec()

print(f"\nOpeners: {ok}/{len(OPENERS)} OK; Registry: {reg_ok}/{len(CAPTIONS)} wired")
sys.exit(0 if (not fail and not reg_fail) else 1)
