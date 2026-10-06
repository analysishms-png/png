"""IMP-001 routing guards: P1-A (Item List / Menu Category) aur P1-B (Hall dispatch).

VB6 evidence:
- P1-A: MDIForm1.frm:636 / :9926-9927 -> 'Item List' = frmItem (p2.open_item).
- P1-B: MDIForm1.frm:2059 (HallEnt(5)) / :2063 (OdcEnt(5)) -> Banquet /
  Outdoor Banquet parent par HallM/HallEnt/OdcEnt openers; POS/Inventory
  subtrees status-quo.
"""

import os
from typing import ClassVar

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

pytestmark = pytest.mark.unit


# ---- P1-A: registry routing -------------------------------------------------


def test_item_list_routes_to_item_master(monkeypatch):
    from HMS_py.ui import p2_masters, shell

    calls = []
    monkeypatch.setattr(
        p2_masters, "open_item", lambda parent=None: calls.append(parent) or "item"
    )
    parent = object()
    assert shell._form_registry()["Item List"](parent) == "item"
    assert calls == [parent]


def test_menu_category_still_routes_to_pos_masters(monkeypatch):
    from HMS_py.ui import pos_masters_ui, shell

    calls = []
    monkeypatch.setattr(
        pos_masters_ui,
        "open_itemcat",
        lambda parent=None, user="SA": calls.append((parent, user)) or "cat",
    )
    parent = type("Parent", (), {"user": "LIMITED"})()
    assert shell._form_registry()["Menu Category"](parent) == "cat"
    assert calls == [(parent, "LIMITED")]


# ---- P1-B: MainWindow._opener Hall dispatch ---------------------------------


class _FakeWin:
    """_opener sirf self._reg_ci padhta hai - bina Qt window ke test."""

    _reg_ci: ClassVar[dict] = {
        "menu category": "pos-menu-category",
        "item group": "pos-item-group",
        "menu item": "pos-menu-item",
        "cashier report": "pos-cashier",
    }


def _opener(caption, *parents):
    from HMS_py.ui import shell

    return shell.MainWindow._opener(_FakeWin(), caption, *parents)


def test_banquet_parent_opens_hall_forms(monkeypatch):
    from HMS_py.ui import shell

    hall = {cap: (lambda _c=cap: _c) for cap in shell._HALL_CAPTIONS}
    monkeypatch.setattr(shell, "_HALL_OVERRIDES", dict(hall))

    for cap in ("Menu Category", "Item Group", "Menu Item"):
        fn = _opener(cap, "Banquet")
        assert callable(fn), f"Banquet/{cap} -> Hall opener nahi mila"
        assert fn() == cap.strip().lower()

    # nested parents (module > group > leaf) bhi trigger karte hain
    assert _opener("Menu Item", "Front Office", "Outdoor Banquet")() == "menu item"


def test_pos_parent_keeps_status_quo_opener(monkeypatch):
    from HMS_py.ui import shell

    hall = {cap: (lambda _c=cap: "hall") for cap in shell._HALL_CAPTIONS}
    monkeypatch.setattr(shell, "_HALL_OVERRIDES", dict(hall))

    assert _opener("Menu Category", "POS") == "pos-menu-category"
    assert _opener("Item Group", "Inventory & Reports") == "pos-item-group"


def test_banquet_parent_non_hall_caption_falls_back(monkeypatch):
    from HMS_py.ui import shell

    hall = {cap: (lambda _c=cap: "hall") for cap in shell._HALL_CAPTIONS}
    monkeypatch.setattr(shell, "_HALL_OVERRIDES", dict(hall))

    assert _opener("Cashier Report", "Banquet") == "pos-cashier"
    assert _opener("Unknown Caption", "Banquet") is None


def test_hall_opener_lazy_build_returns_callables():
    from HMS_py.ui import shell

    shell._HALL_OVERRIDES = None  # cache reset -> real lazy import path
    try:
        fn = shell._hall_opener("Menu Category")
        assert callable(fn), "hall import fail -> status-quo fallback chala"
    finally:
        shell._HALL_OVERRIDES = None


def test_hall_opener_ignores_non_hall_captions():
    from HMS_py.ui import shell

    shell._HALL_OVERRIDES = None
    try:
        assert shell._hall_opener("Cashier Report") is None
        assert shell._hall_opener("Cashier Report ") is None  # strip+lower
    finally:
        shell._HALL_OVERRIDES = None
