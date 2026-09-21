"""QA walkthrough: Appearance dialog ka live experience simulate karo.

Steps: login -> appearance dialog -> presets -> sliders -> accent change ->
main window preview -> cancel/restore -> save/persist. Har step pe screenshot
+ geometry sanity checks. Offscreen platform pe chalta hai.
"""
from __future__ import annotations

import os
import sys

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from PyQt6.QtWidgets import QApplication

app = QApplication([])
from HMS_py.ui import theme
theme.reset_tokens()                 # default Ocean Frost se start
theme.apply_theme(app)

OUT = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
                   "demo_screenshots")
os.makedirs(OUT, exist_ok=True)


def shot(widget, name):
    app.processEvents()
    path = os.path.join(OUT, name)
    widget.grab().save(path)
    print(f"  [shot] {name}")
    return path


print("== 1. Login dialog ==")
from HMS_py.ui.shell import LoginDialog, CompanyDialog, MainWindow
login = LoginDialog()
login.show()
shot(login, "glass_1_login.png")

print("== 2. Company dialog ==")
comp = CompanyDialog("SA")
comp.show()
shot(comp, "glass_2_company.png")

print("== 3. Appearance dialog (default Ocean Frost) ==")
from HMS_py.ui.glass import AppearanceDialog, AuroraCanvas
dlg = AppearanceDialog()
dlg.show()
shot(dlg, "glass_3_appearance.png")

# geometry sanity: koi child dialog se bahar to nahi?
dw, dh = dlg.width(), dlg.height()
overflow = []
for child in dlg.findChildren(object.__class__ and __import__(
        "PyQt6.QtWidgets", fromlist=["QWidget"]).QWidget) or []:
    r = child.geometry()
    if child is dlg or child.parent() is None:
        continue
    if r.right() > dw or r.bottom() > dh:
        overflow.append((child.objectName() or type(child).__name__,
                         r.right(), r.bottom()))
print("  dialog size:", dw, "x", dh,
      "| overflow children:", overflow if overflow else "none")
print("  preset combo width:", dlg.cmbPreset.width(),
      "| opacity slider width:", dlg.sldOpacity.width())

print("== 4. Presets (live preview) ==")
for preset in ("Midnight Glass", "Emerald Breeze", "Sunset Amber",
               "Rose Quartz", "Graphite Pro"):
    dlg.cmbPreset.setCurrentText(preset)
    dlg._apply_preset()
    shot(dlg, f"glass_4_preset_{preset.split()[0].lower()}.png")
    print(f"  applied: {preset} -> mode={theme.current_theme()}")

print("== 5. Sliders (opacity 0.85, radius 4) ==")
dlg.cmbPreset.setCurrentText("Ocean Frost (default)")
dlg._apply_preset()
dlg.sldOpacity.setValue(85)
dlg.sldRadius.setValue(4)
shot(dlg, "glass_5_sliders.png")
print("  opacity:", dlg._tokens["glass_opacity"],
      "radius:", dlg._tokens["radius"])

print("== 6. Accent color change (rose) ==")
dlg._swatches["accent"].set_color("#e11d48")
dlg._tokens["accent"] = "#e11d48"
theme.apply_tokens(app, dlg._tokens)
shot(dlg, "glass_6_accent_rose.png")

print("== 7. MainWindow preview (aurora + glass) ==")
dlg._cancel()                        # restore default first
win = MainWindow("SA", {"name": "Moon and Mars Resorts", "short": "MMR",
                        "year": "2025-26"})
win.show()
win._on_module({"name": "Main Setup", "srno": 41}, win._side_buttons[0])
shot(win, "glass_7_main_default.png")

win._open_appearance = lambda: None  # exec() block na ho
dlg2 = AppearanceDialog(win)
dlg2.appearanceChanged.connect(win.aurora.refresh)
dlg2.cmbPreset.setCurrentText("Midnight Glass")
dlg2._apply_preset()
shot(win, "glass_8_main_midnight.png")
print("  main window theme:", theme.current_theme())

print("== 8. Save + persistence ==")
dlg2._save()                         # persist Midnight Glass
saved = theme.load_tokens()
print("  saved tokens mode:", saved.get("mode"),
      "| accent:", saved.get("accent"))
print("  roundtrip:", "OK" if saved.get("mode") == "dark" else "FAIL")
theme.reset_tokens()
print("  reset -> default")

app.quit()
print("WALKTHROUGH DONE")
