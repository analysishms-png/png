"""VB6-style UI verify (headless offscreen):
  - centered blue company title
  - teal sidebar buttons (VB6 order)
  - Hotel.bmp tree canvas + hint strip
  - world-clock float panel (green boxes)
  - VB6 status bar (Hide Left/Right Menu, Full Screen)
Screenshots: _qa/vb6_ui/
"""
import os
import io
import sys

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8",
                              errors="replace")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtWidgets import (QApplication, QPushButton, QLabel,
                             QDialog)  # noqa: E402

app = QApplication.instance() or QApplication([])

# Modal auto-open (Reservation/Setup workbench) hang-safe: exec ko
# turant reject karo (headless verify ke liye)
_orig_exec = QDialog.exec
QDialog.exec = lambda self: QDialog.DialogCode.Rejected

from HMS_py.core import menu_help as mh  # noqa: E402
from HMS_py.ui import shell  # noqa: E402

OUT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\_qa\vb6_ui"
os.makedirs(OUT, exist_ok=True)

# user 'SA', comp dict login-flow jaisi
w = shell.MainWindow("SA", {"name": "Moon and Mars Resorts",
                            "year": "2026-27", "short": "Kanpur"})
w.resize(1400, 800)
w.show()
app.processEvents()

errs = []

# 1. Title
title = w.lblTitle.text()
if title != "Moon and Mars Resorts { 2026-27 }":
    errs.append(f"title={title!r}")
print(f"1. TITLE: {title!r}")

# 2. Sidebar: teal buttons + VB6 order
btn_texts = [b.text() for b in w._side_buttons]
print(f"2. SIDEBAR ({len(btn_texts)} buttons): {btn_texts}")
if len(btn_texts) < 12:
    errs.append(f"sidebar too small: {len(btn_texts)}")
# check teal gradient in stylesheet of first button (tokens-driven:
# VB6 teal endpoints + qlineargradient present)
qss = w._side_buttons[0].styleSheet() if w._side_buttons else ""
if "#2b8c9d" not in qss or "#0d4f60" not in qss or "qlineargradient" not in qss:
    errs.append("sidebar buttons not teal gradient")

# 3. Home = Front Office dashboard visible, canvas hidden
if not w.fo_dashboard.isVisible() or w.canvas.isVisible():
    errs.append("home view wrong")
print("3. HOME: fo_dashboard visible, canvas hidden OK")

# 4. Finance module -> canvas with tree pixmap + hint
fin_btn = next((b for b in w._side_buttons
                if b.text().lower().startswith("finance")), None)
if fin_btn:
    fin_btn.click()
    app.processEvents()
    if not w.canvas.isVisible():
        errs.append("canvas not visible on Finance")
    pm = w.canvas.pixmap()
    if pm is None or pm.isNull():
        errs.append("canvas pixmap missing (Hotel.bmp)")
    else:
        print(f"4. CANVAS: tree pixmap {pm.width()}x{pm.height()} OK")
    print(f"   HINT: {w.canvas_hint.text()!r}")
    if "finance" not in w.canvas_hint.text().lower():
        errs.append("hint text wrong")

# 5. World clock panel floating on workspace
if not w.right_sidebar.isVisible():
    errs.append("clock panel not visible")
else:
    geo = w.right_sidebar.geometry()
    print(f"5. CLOCKS: visible at x={geo.x()},y={geo.y()} "
          f"({geo.width()}x{geo.height()}), zones={list(w.clocks)}")
    if "India" not in w.clocks:
        errs.append("clock zones missing")
    if not w.lbl_date.text():
        errs.append("date label empty")
# green gradient check
if "qlineargradient" not in w.lbl_date.styleSheet():
    errs.append("date box not green gradient")

# 6. Status bar VB6 buttons
sb_texts = []
for act_lay_item in [w.statusBar()]:
    pass
for b in w.findChildren(QPushButton):
    if b.parent() is w.statusBar() or (b.parentWidget() is w.statusBar()):
        sb_texts.append(b.text())
print(f"6. STATUSBAR buttons: {sb_texts}")
for need in ("Hide Left Menu", "Hide Right Menu", "Full Screen"):
    if need not in sb_texts:
        errs.append(f"statusbar missing {need!r}")
if "S/w Dt.:" not in w._clock.text():
    errs.append(f"clock text wrong: {w._clock.text()!r}")

# 7. Toggle sidebar hide/show
w._toggle_sidebar()
app.processEvents()
if w.sidebar.isVisible():
    errs.append("sidebar hide failed")
w._toggle_sidebar()
app.processEvents()
if not w.sidebar.isVisible():
    errs.append("sidebar show failed")
print("7. TOGGLES: Hide Left Menu works OK")

# 8. Har module click -> canvas/dash koi crash nahi
mods = [b for b in w._side_buttons
        if not b.property("mod_target").startswith("__action_")]
crashed = []
for b in mods:
    try:
        b.click()
        app.processEvents()
    except Exception as e:
        crashed.append(f"{b.text()}: {e}")
if crashed:
    errs.append(f"module clicks crashed: {crashed}")
print(f"8. MODULE CLICKS: {len(mods)} OK, crashes={len(crashed)}")

# screenshots
w._load_module_menu("Finance")
app.processEvents()
w.grab().save(os.path.join(OUT, "vb6_finance.png"))
w._toggle_sidebar()
app.processEvents()
w._load_module_menu("Front Office")
app.processEvents()
w.grab().save(os.path.join(OUT, "vb6_home.png"))
w._toggle_sidebar()

if errs:
    print("\nFAILURES:")
    for e in errs:
        print(f"  - {e}")
    QDialog.exec = _orig_exec
    sys.exit(1)
print("\nVB6_UI_OK")
QDialog.exec = _orig_exec
