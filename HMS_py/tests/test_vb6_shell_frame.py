"""VB6 shell frame geometry / rail projection / status toggles (DS-001).

DB-free: the module source list is monkeypatched, so every assertion here is
about the fixed frame the VB6 MDIForm1 measures, not about menu data.
Layout truth: specs/implementation-summary.md §1 (live EnumChildWindows probe).
"""

from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..")))
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

import pytest
from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import QLabel, QPushButton

from HMS_py.ui import shell
from HMS_py.ui.shell import MainWindow

_QAPP = None


def _qapp():
    global _QAPP
    if _QAPP is None:
        from PyQt6.QtWidgets import QApplication

        _QAPP = QApplication.instance() or QApplication([])
    return _QAPP


def _mod(name, srno):
    return {"name": name, "srno": srno, "opt1": 1}


# Deliberately hostile source list: legacy roots that VB6 never shows, a
# duplicate of an existing caption, and a caption outside the whitelist.
_SOURCES = [
    _mod("Front Office", 2),
    _mod("EPABX", 91),
    _mod("front office", 97),  # duplicate caption, different srno
    _mod("Main Setup", 41),
    _mod("Reservation", 3),
    _mod("Messaging", 92),
    _mod("Members Mgmt", 90),
    _mod("Banana Split", 99),  # not a VB6 caption
    _mod("Night Audit", 7),
]


@pytest.fixture()
def win(monkeypatch):
    _qapp()
    monkeypatch.setattr(shell.mh, "sidebar_sources", lambda user: list(_SOURCES))
    monkeypatch.setattr(shell.mh, "can_open", lambda user, cap: True)
    monkeypatch.setattr(shell.mh, "menubar_for", lambda module, user: [])
    monkeypatch.setattr(shell, "menu", shell.menu)
    w = MainWindow("SA", {"name": "Moon and Mars", "short": "MMR", "year": "2026-27"})
    yield w
    w.close()


# ----------------------------------------------------------------- rail order
def test_rail_captions_are_vb6_whitelist_only(win):
    captions = [b.text() for b in win._side_buttons]
    assert captions == [
        "Main Setup",
        "Reservation",
        "Front Office",
        "Night Audit",
    ], "rail must be the VB6 whitelist in _RAIL_ORDER sequence"


def test_rail_drops_legacy_roots_and_duplicate_caption(win):
    targets = [str(b.property("mod_target")) for b in win._side_buttons]
    for banned in ("EPABX", "Messaging", "Members Mgmt", "front office"):
        assert banned not in targets, f"{banned} must never build a rail button"
    assert targets.count("Front Office") == 1, "duplicate caption must collapse"


def test_rail_button_geometry_is_107x43(win):
    for b in win._side_buttons:
        assert (b.width(), b.height()) == (107, 43)


def test_no_module_or_sub_row_attributes(win):
    """VB6 MDIForm1 has no purple row bars — they must be gone for good."""
    for gone in ("mod_row", "sub_row", "_mod_lay", "_sub_lay", "_mod_buttons"):
        assert not hasattr(win, gone), f"{gone} should have been deleted"


# ------------------------------------------------------------- rail footer
def test_rail_footer_holds_inbox_and_property_status(win):
    assert [b.text() for b in win._rail_footer] == ["In Box", "Property Status"]


def test_rail_footer_uses_probe_measured_heights(win):
    # Live VB6: In Box 25px, Property Status 31px (spec §5.6 default decision).
    assert [b.height() for b in win._rail_footer] == [25, 31]
    assert {b.width() for b in win._rail_footer} == {107}


def test_rail_footer_is_focusable(win):
    for b in win._rail_footer:
        assert b.focusPolicy() == Qt.FocusPolicy.StrongFocus
        assert b.accessibleName(), "footer buttons need an accessible name"


# ----------------------------------------------------------- frame geometry
def test_band_rail_sidebar_status_are_fixed(win):
    band = win.rail.parentWidget().layout().itemAt(0).widget()
    assert band.minimumHeight() == band.maximumHeight() == 80
    assert win.rail.width() == win.rail.minimumWidth() == 107
    assert win.sidebar.width() == win.sidebar.minimumWidth() == 120
    assert win.statusBar().height() == 27


def test_top_menubar_lives_in_the_band(win):
    band = win.rail.parentWidget().layout().itemAt(0).widget()
    assert band.layout().indexOf(win.menuBar()) != -1
    assert win.menuBar().height() == 40


def test_minimum_size_allows_full_frame(win):
    assert win.minimumWidth() == 1180
    assert win.minimumHeight() == 666


# ------------------------------------------------------- right sidebar
def test_sidebar_has_date_six_clocks_and_bottom_row(win):
    assert win._date_btn.text() != "", "date button must be populated"
    assert list(win._clock_buttons) == list(shell._SIDEBAR_CLOCKS)
    assert len(win._clock_buttons) == 6
    assert (win.reload_btn.width(), win.reload_btn.height()) == (60, 32)
    assert (win.exit_btn.width(), win.exit_btn.height()) == (60, 32)


def test_clocks_are_display_only_but_date_is_focusable(win):
    assert win._date_btn.focusPolicy() == Qt.FocusPolicy.StrongFocus
    for cb in win._clock_buttons.values():
        assert cb.focusPolicy() == Qt.FocusPolicy.NoFocus


def test_clock_timer_drives_the_clock_text(win):
    import re

    before = win._clock_buttons["India"].text()
    assert before.startswith("India\n")
    # Must be a real 12-hour clock, not a stray strftime directive.
    assert re.fullmatch(r"India\n\d{2}:\d{2}:\d{2} (AM|PM)", before), before
    win._tick()
    assert re.fullmatch(
        r"India\n\d{2}:\d{2}:\d{2} (AM|PM)", win._clock_buttons["India"].text()
    )


# ---------------------------------------------------------- status bar
def _status_panels(win):
    return [
        w
        for w in win.statusBar().findChildren(QLabel)
        if w.property("vbRole") == "panel"
    ]


def test_status_bar_has_vb6_panels(win):
    panels = _status_panels(win)
    texts = [p.text() for p in panels]
    assert len(panels) == 6, "user, property site, S/W Dt, CAPS, NUM + DB widget"
    assert any(t.startswith("DB:") for t in texts)
    assert "CAPS" in texts and "NUM" in texts
    assert any(t.startswith("Property Site :") for t in texts)
    assert any(t.startswith("S/w Dt.:") for t in texts)


def test_status_toggles_are_named_checkable_and_focusable(win):
    caps = [b.text() for b in win._status_toggles]
    assert caps == ["Hide Left Menu", "Hide Right Menu", "Full Screen"]
    for b in win._status_toggles:
        assert b.isCheckable()
        assert b.focusPolicy() == Qt.FocusPolicy.StrongFocus
        assert b.accessibleName() == b.text()
        assert b.toolTip(), "toggles need a visible-focus affordance hint"


# ------------------------------------------------------------- behaviour
def test_hide_left_menu_only_hides_the_rail(win):
    win.show()
    win.toggle_left()
    assert win.rail.isVisible() is False
    assert win.sidebar.isVisible() is True
    win.toggle_left()
    assert win.rail.isVisible() is True


def test_hide_right_menu_only_hides_the_sidebar(win):
    win.show()
    win.toggle_right()
    assert win.sidebar.isVisible() is False
    assert win.rail.isVisible() is True
    win.toggle_right()
    assert win.sidebar.isVisible() is True


def test_full_screen_toggle_round_trips(win):
    win.show()
    win.toggle_fullscreen()
    assert win.isMaximized() is True
    win.toggle_fullscreen()
    assert win.isMaximized() is False


def test_reload_rebuilds_rail_and_keeps_selection(win):
    win.show()
    win._on_sidebar_click("Reservation")
    assert sum(b.isChecked() for b in win._side_buttons) == 1
    checked = next(b.text() for b in win._side_buttons if b.isChecked())
    win.reload_btn.click()
    assert checked == next(b.text() for b in win._side_buttons if b.isChecked()), (
        "reload must preserve the checked module"
    )


def test_rail_buttons_are_tooltipped_and_shortcut_ready(win):
    for i, b in enumerate(win._side_buttons):
        assert f"Alt+{i + 1}" in b.toolTip()
        assert b.accessibleName() == b.text()


def test_canvas_and_crumb_follow_module_click(win):
    win._on_module({"name": "Reservation", "srno": 3}, win._side_buttons[1])
    assert win.lblCrumb.text() == "Reservation"
    assert "Reservation" in win.canvas.text()
    assert win.windowTitle().endswith("- Reservation")


def test_footer_click_is_inert_not_crashing(win):
    before = [b.text() for b in win._side_buttons]
    win._rail_footer[0].click()
    assert [b.text() for b in win._side_buttons] == before
    assert isinstance(win.canvas, QLabel)


def test_band_button_still_themes(win):
    assert isinstance(win.theme_btn, QPushButton)
    win.theme_btn.click()
