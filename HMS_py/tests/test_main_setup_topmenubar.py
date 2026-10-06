"""UI-MS-TOPMENU: persistent 9-item top menubar self-check.

VB6 MDIForm1.frm:494 "&Main Setup" ke 9 direct sub-menus ek hamesha-visible
top menubar me, DB se (_menu_registry stub) — module click usse destroy nahi
karta. DB-free: menu source instance-attr patch hota hai.
"""

from __future__ import annotations

import os
import sys

sys.path.insert(
    0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", ".."))
)
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

import pytest

from HMS_py.ui import shell
from HMS_py.ui.shell import MainWindow

_QAPP = None


def _qapp():
    global _QAPP
    if _QAPP is None:
        from PyQt6.QtWidgets import QApplication

        _QAPP = QApplication.instance() or QApplication([])
    return _QAPP


def _leaf(cap):
    return {"name": cap, "children": []}


# menuHelp + User_Module dono mila ke 11 groups dete hain; top bar sirf 9
# rakhta hai (EPABX / Smart Card sidebar pe rahenge — screenshot parity).
def _source_groups():
    out = [{"name": n, "items": [_leaf(f"{n} leaf")]} for n in shell._TOP_MENU_ORDER]
    out.append({"name": "EPABX", "items": [_leaf("Call Type Master")]})
    out.reverse()  # DB order alag ho to bhi top bar ka order fixed rahe
    return out


@pytest.fixture()
def win(monkeypatch):
    _qapp()
    monkeypatch.setattr(shell.mh, "menubar_for", lambda module, user: _source_groups())
    w = MainWindow(
        "SA", {"name": "Moon and Mars Resorts", "short": "MMR", "year": "2026-27"}
    )
    yield w
    w.close()


def _titles(w):
    return [a.text().strip() for a in w.menuBar().actions()]


def test_top_menubar_has_nine_modules_in_order(win):
    assert _titles(win) == list(shell._TOP_MENU_ORDER)


def test_window_title_matches_screenshot(win):
    assert win.windowTitle() == "Moon and Mars Resorts { 2026-27 } - main setup"


def test_top_menubar_survives_module_click(win):
    before = _titles(win)
    win._on_module({"name": "Reservation", "srno": 3}, None)
    assert _titles(win) == before, "module click top bar ko destroy kar diya"


def test_leaf_without_opener_is_disabled_not_crashing(win):
    """_form_registry miss -> disabled action, click pe kuch nahi hota."""
    from PyQt6.QtWidgets import QMenu

    menu = next(m for m in win.menuBar().findChildren(QMenu) if m.title() == "Banquet")
    acts = {a.text(): a for a in menu.actions()}
    assert "Banquet leaf" in acts
    assert acts["Banquet leaf"].isEnabled() is False
    acts["Banquet leaf"].trigger()  # must not raise
