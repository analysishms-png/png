"""S1 UI sweep: registry ke har leaf opener ko offscreen probe karo.

- LIVE opener -> call karo; QDialog bana = OK
- coming_soon -> QMessageBox information dialog bana (crash-proof check)
- Captures: opener raise kare, ya dialog na bane
"""
import os
import sys

os.environ["QT_QPA_PLATFORM"] = "offscreen"
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, ROOT)

from PyQt6.QtWidgets import (QApplication, QDialog, QMessageBox,
                             QMainWindow)
from PyQt6.QtCore import QTimer

app = QApplication([])

# Auto-close sweep: har 150ms sab top-level windows band
def clos():
    for w in QApplication.topLevelWidgets():
        w.close()

t = QTimer()
t.setInterval(150)
t.timeout.connect(clos)
t.start()

from HMS_py.ui import shell

reg = shell._form_registry()
ok = broken = none = 0
broken_list = []

for leaf, fn in sorted(reg.items()):
    if fn is None:
        none += 1
        continue
    try:
        fn(None)
        for _ in range(6):
            app.processEvents()
        opened = any(isinstance(w, (QDialog, QMainWindow, QMessageBox))
                     for w in QApplication.topLevelWidgets())
        if opened:
            ok += 1
        else:
            broken += 1
            broken_list.append((leaf, "no dialog"))
    except Exception as e:
        broken += 1
        broken_list.append((leaf, type(e).__name__ + ": " + str(e)[:90]))

print("LIVE-OK:", ok, " BROKEN:", broken, " NONE:", none)
for leaf, err in broken_list:
    print("BROKEN:", repr(leaf), "->", err)
print("SWEEP-DONE")
