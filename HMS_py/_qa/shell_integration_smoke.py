"""Shell integration smoke (offscreen): MainWindow build + sidebar module
clicks + menubar leaf-open capture + naye wired forms ka direct open.

Run: python _qa/shell_integration_smoke.py
(verification script — pytest suite isko use nahi karta)
"""
import os
import sys

PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
sys.path.insert(0, PROJECT)
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtCore import QTimer
from PyQt6.QtWidgets import QApplication, QMainWindow, QDialog

app = QApplication.instance() or QApplication(["smoke"])

# Modal dialogs (e.g. Menu Item Copy dlg.exec()) smoke ko block na karein:
# exec() turant Accepted return karta hai aur dialog ka title record karta hai.
_DIALOG_SEEN = []
def _rec_exec(self, *a, **k):
    _DIALOG_SEEN.append(self.windowTitle())
    return QDialog.DialogCode.Accepted
QDialog.exec = _rec_exec

# ── 1. MainWindow build (live DB menu data ke saath) ──────────────
from HMS_py.ui.shell import MainWindow

win = MainWindow("SA", {"name": "Smoke Verify", "short": "SMK",
                        "year": "2026-27"})
app.processEvents()
print("BUILD_OK", win.windowTitle())

# ── 2. Sidebar modules: har click pe menubar populate hona chahiye ─
mods = list(getattr(win, "_side_buttons", []))
print("SIDEBAR_BUTTONS:", len(mods))

win._safe_open = lambda name: None      # modal hang-guard (menubar path same)
opened_modules = 0
empty_menubars = []
for b in mods:
    target = str(b.property("mod_target") or "")
    if not target:
        continue
    win._on_sidebar_click(target, b)
    app.processEvents()
    actions = win.menuBar().actions()
    if actions:
        opened_modules += 1
    else:
        empty_menubars.append(target)
print("MODULES_WITH_MENUBAR:", opened_modules)
if empty_menubars:
    print("EMPTY_MENUBARS:", empty_menubars[:8])

# ── 3. Naye wired forms: registry se DIRECT open (window banta hai?) ─
NEW_CAPS = ["Reverse Room Merge", "Inconsistency Check", "Menu Item Copy",
            "Gravy Item Entry", "Consumption Master", "Party Master"]
opened, failed = [], []
for cap in NEW_CAPS:
    fn = win._form_registry().get(cap) if hasattr(win, "_form_registry") \
        else __import__("HMS_py.ui.shell", fromlist=["x"])._form_registry().get(cap)
    if fn is None:
        failed.append(f"{cap}: registry None")
        continue
    try:
        before = len(_DIALOG_SEEN)
        w = fn(win)
        app.processEvents()
        if w is not None and hasattr(w, "windowTitle"):
            opened.append(f"{cap} -> {w.windowTitle()}")
            w.close()
        elif len(_DIALOG_SEEN) > before:
            opened.append(f"{cap} -> [dialog] {_DIALOG_SEEN[-1]}")
        else:
            failed.append(f"{cap}: no window/dialog")
    except Exception as e:
        failed.append(f"{cap}: {type(e).__name__}: {e}")
for o in opened:
    print("OPENED", o)
for f in failed:
    print("FAILED", f)

# ── 4. Verdict ────────────────────────────────────────────────────
ok = (opened_modules > 0 and len(opened) == len(NEW_CAPS) and not failed)
print("SHELL_SMOKE_VERDICT:", "PASS" if ok else "CHECK-ABOVE")
win.close()
