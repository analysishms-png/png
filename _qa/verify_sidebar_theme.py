"""Sidebar theme customization verify (headless):

1. AppearanceDialog me Sidebar section (4 swatches + VB6 teal btn)
2. Color change (sidebar_top/bottom) -> sidebar QSS live reflect
3. refresh_sidebar_style() -> buttons ka stylesheet update
4. Persist: save_tokens -> load_tokens me naye colors
5. VB6 teal reset -> defaults wapas
6. pytest-clean interplay (theme module state restore)
"""
import os
import io
import sys

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8",
                              errors="replace")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtWidgets import QApplication, QDialog  # noqa: E402

app = QApplication.instance() or QApplication([])
_orig_exec = QDialog.exec

from HMS_py.ui import theme  # noqa: E402
from HMS_py.ui.theme import palette, load_tokens, save_tokens, apply_theme  # noqa: E402
from HMS_py.ui.glass import AppearanceDialog, _SIDEBAR_EDITABLE, _VB6_SIDEBAR  # noqa: E402
from HMS_py.ui import shell  # noqa: E402

errs = []

# clean slate: saved tokens clear (test ke dauran jo bhi save ho,
# end me original wapas karenge)
_orig_saved = load_tokens()
import json
from PyQt6.QtCore import QSettings
_s = QSettings("HMS_py", "appearance")
_s.setValue("tokens", json.dumps({}))
_s.sync()

try:
    w = shell.MainWindow("SA", {"name": "T", "year": "2026-27", "short": "K"})
    w.show()
    app.processEvents()

    # 1. dialog has sidebar swatches (shell jaisa connect: aurora + sidebar)
    dlg = AppearanceDialog(w)
    dlg.appearanceChanged.connect(w.refresh_sidebar_style)
    dlg.show()
    for key, _lbl in _SIDEBAR_EDITABLE:
        if key not in dlg._swatches:
            errs.append(f"dialog missing swatch {key}")
        if hasattr(dlg, "btnVb6Teal") is False:
            errs.append("dialog missing btnVb6Teal")
    print(f"1. DIALOG: sidebar swatches = {[k for k, _ in _SIDEBAR_EDITABLE]}"
          f" + VB6-teal btn present={hasattr(dlg, 'btnVb6Teal')}")

    # 2. change sidebar colors via swatch callback -> live reflect
    dlg._make_color_cb("sidebar_top")("#ff0000")
    dlg._make_color_cb("sidebar_bottom")("#7a0000")
    app.processEvents()
    qss = w._side_buttons[0].styleSheet()
    if "#ff0000" not in qss or "#7a0000" not in qss:
        errs.append(f"sidebar QSS not reflecting: {qss[:120]}")
    else:
        print("2. LIVE-REFLECT: sidebar_top=#ff0000, bottom=#7a0000 -> button QSS updated")

    # 3. refresh_sidebar_style resets to palette (tokens already applied)
    w.refresh_sidebar_style()
    qss2 = w._side_buttons[0].styleSheet()
    if "#ff0000" not in qss2:
        errs.append("refresh_sidebar_style lost custom colors")
    else:
        print("3. REFRESH: refresh_sidebar_style keeps custom colors")

    # 4. persist: dialog Save path (Save btn _collect + prune + save karta hai)
    dlg._collect()
    dlg._tokens = dlg._prune_default_status(dlg._tokens)
    save_tokens(dlg._tokens)
    got = load_tokens()
    if got.get("sidebar_top") != "#ff0000" or got.get("sidebar_bottom") != "#7a0000":
        errs.append(f"persist failed: {got.get('sidebar_top')}, {got.get('sidebar_bottom')}")
    else:
        print("4. PERSIST: dialog Save -> load_tokens roundtrip OK")

    # 5. VB6 teal reset button
    dlg._reset_vb6_teal()
    if dlg._tokens.get("sidebar_top") != _VB6_SIDEBAR["sidebar_top"]:
        errs.append("VB6 teal reset failed")
    else:
        print(f"5. VB6-TEAL: reset -> top={dlg._tokens['sidebar_top']}, bottom={dlg._tokens['sidebar_bottom']}")
    w.refresh_sidebar_style()
    qss3 = w._side_buttons[0].styleSheet()
    if "#2b8c9d" not in qss3 or "#0d4f60" not in qss3:
        errs.append("sidebar QSS not back to VB6 teal")
    else:
        print("   sidebar QSS back to VB6 teal OK")

    dlg.close()
    # fresh MainWindow bhi teal dikhaye (rebuild path)
    qss4 = w._sidebar_btn_qss()
    assert "#2b8c9d" in qss4
    print("6. REBUILD-PATH: fresh _sidebar_btn_qss uses VB6 teal")

    # cleanup: original tokens restore + sidebar default
    _s.setValue("tokens", json.dumps(_orig_saved))
    _s.sync()
    apply_theme(app)
    w.refresh_sidebar_style()
finally:
    QDialog.exec = _orig_exec

if errs:
    print("\nFAILURES:")
    for e in errs:
        print(f"  - {e}")
    sys.exit(1)
print("\nSIDEBAR_THEME_OK")
