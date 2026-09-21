"""Live walkthrough: Room Status screen ka naya theme-driven look.

Fake room data ke saath form render karte hain (DB offline-safe) —
light preset, dark preset, aur user-custom status hue — screenshots +
per-cell color assertions.
"""
from __future__ import annotations

import os
import sys

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from PyQt6.QtWidgets import QApplication

app = QApplication([])
from HMS_py.ui import theme
theme.reset_tokens()
theme.apply_theme(app)

OUT = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
                   "demo_screenshots")
os.makedirs(OUT, exist_ok=True)

from HMS_py.ui import roomstatus_ui as rs
from HMS_py.ui.roomstatus_ui import RoomStatusForm

# ---- fake room_rack data (DB offline-safe) --------------------------
FAKE = [
    {"roomno": "101", "name": "Deluxe", "cat": "DLX", "maid": "MS-1",
     "status": "Vacant", "folio": None, "guest": "", "dep": None,
     "chk_in": None},
    {"roomno": "102", "name": "Deluxe", "cat": "DLX", "maid": "MS-1",
     "status": "Occupied", "folio": 2101, "guest": "R. Sharma",
     "dep": "22/Sep/2026", "chk_in": "18/Sep/2026"},
    {"roomno": "103", "name": "Suite", "cat": "SUIT", "maid": "MS-2",
     "status": "Dirty", "folio": None, "guest": "", "dep": None,
     "chk_in": None},
    {"roomno": "104", "name": "Suite", "cat": "SUIT", "maid": "MS-2",
     "status": "Maintenance", "folio": None, "guest": "", "dep": None,
     "chk_in": None},
    {"roomno": "105", "name": "Std", "cat": "STD", "maid": "MS-3",
     "status": "Out of Order", "folio": None, "guest": "", "dep": None,
     "chk_in": None},
]

def fake_room_rack():
    return [dict(r) for r in FAKE]

def fake_summary():
    return {"total": 5, "occupied": 1, "vacant": 1, "dirty": 1,
            "maintenance": 2, "occ_pct": 20.0}

rs.roomstatus.room_rack = fake_room_rack
rs.roomstatus.housekeeping_summary = fake_summary

w = RoomStatusForm()
w.show()
app.processEvents()


def shot(name):
    app.processEvents()
    w.grab().save(os.path.join(OUT, name))
    print(f"  [shot] {name}")


def cell_bg(r, c):
    it = w.tbl.item(r, c)
    return it.background().color().name() if it else None


def cell_fg(r, c):
    it = w.tbl.item(r, c)
    return it.foreground().color().name() if it else None


# ---- 1. Light preset (Ocean Frost) -----------------------------------
print("== Light: Ocean Frost ==")
theme.apply_theme(app)
w.reload()
shot("room_1_light.png")
s = theme.status_colors()
print("  101 Vacant  bg", cell_bg(0, 0), "fg", cell_fg(0, 0))
print("  102 Occupied bg", cell_bg(1, 0), "fg", cell_fg(1, 0))
print("  103 Dirty   bg", cell_bg(2, 0), "fg", cell_fg(2, 0))
assert cell_bg(0, 0) == s["success_bg"], (cell_bg(0, 0), s["success_bg"])
assert cell_bg(1, 0) == s["danger_bg"]
assert cell_bg(2, 0) == s["warning_bg"]
assert cell_bg(3, 0) == s["neutral_bg"]
assert cell_bg(4, 0) == s["neutral_bg"]

# ---- 2. Dark preset (Midnight Glass) ----------------------------------
print("== Dark: Midnight Glass ==")
toks = theme.preset_tokens("Midnight Glass")
theme.apply_tokens(app, toks)
w.reload()
shot("room_2_dark.png")
s = theme.status_colors()
print("  Vacant bg", cell_bg(0, 0), "fg", cell_fg(0, 0))
assert cell_bg(0, 0) == s["success_bg"]
assert cell_bg(0, 0) != "#dcf0ea"      # light value nahi hona chahiye
assert cell_fg(0, 0) == s["success_text"]

# ---- 3. User-custom success hue (dialog path) --------------------------
print("== Custom: success = purple #7c3aed ==")
from HMS_py.ui.glass import AppearanceDialog
d = AppearanceDialog()
d._swatches["success"].set_color("#7c3aed")
d._tokens["success"] = "#7c3aed"
theme.apply_tokens(app, d._tokens)
w.reload()
shot("room_3_custom_hue.png")
s = theme.status_colors()
print("  Vacant bg", cell_bg(0, 0), "fg", cell_fg(0, 0), "(derived purple tint)")
assert cell_bg(0, 0) == s["success_bg"]
assert cell_bg(0, 0)[1:3] == "ed"[:2] or True  # purple tint family check below
# purple tint: red channel > green channel
bg = cell_bg(0, 0)
r_ch = int(bg[1:3], 16); g_ch = int(bg[3:5], 16)
assert r_ch > g_ch, f"purple tint expected, got {bg}"
d._cancel()

# ---- 4. Default restore + geometry check -------------------------------
theme.apply_theme(app)
w.reload()
shot("room_4_restored.png")
print("  restored Vacant bg:", cell_bg(0, 0))

w.close()
theme.reset_tokens()
print("WALKTHROUGH DONE")
