"""FOM Bill Reprint — Adjust (FrmAdjust) + Ctrl+A hotkey.

VB6: frmFomB.frm CMDSET_Click (RMCH rate → amount = rate*qty),
keyPress Ctrl+A opens FrmAdjust when BillAmendMode=Advanced.
Cover: _apply_rmch_rate pure grid update, keyPressEvent routes to _on_adjust.
"""

from __future__ import annotations

import os

import pytest

pytestmark = pytest.mark.unit

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

_QAPP = None


def _qapp():
    global _QAPP
    from PyQt6.QtWidgets import QApplication

    _QAPP = QApplication.instance() or QApplication([])
    return _QAPP


@pytest.fixture
def fsu():
    _qapp()
    from HMS_py.ui import fo_sub_forms_ui as m

    return m


@pytest.fixture
def win(fsu, monkeypatch):
    """FomBillReprintWindow with DB load and grid-edit persistence stubbed out."""
    monkeypatch.setattr(fsu.FomBillReprintWindow, "_load_folios", lambda self: None)
    monkeypatch.setattr(
        fsu.FomBillReprintWindow, "_check_einvoice_visibility", lambda self: None
    )
    # Stub grid-edit handler: setText on col 7 in _apply_rmch_rate fires itemChanged
    # which hits DB via docid key; out of scope for these unit tests.
    monkeypatch.setattr(
        fsu.FomBillReprintWindow, "_on_grid_item_changed", lambda self, item: None
    )
    w = fsu.FomBillReprintWindow()
    yield w
    w.close()


def _set_charges(win, charges):
    win._charges = charges
    win._original_amounts = {c["sno"]: c["amount"] for c in charges}
    win.grid.setRowCount(len(charges))
    from PyQt6.QtWidgets import QTableWidgetItem

    for row, c in enumerate(charges):
        win.grid.setItem(row, 0, QTableWidgetItem(str(c["sno"])))
        win.grid.setItem(row, 3, QTableWidgetItem(c["paycode"]))
        win.grid.setItem(row, 5, QTableWidgetItem(f"{c['rate']:.2f}"))
        win.grid.setItem(row, 6, QTableWidgetItem(f"{c['qty']:.2f}"))
        win.grid.setItem(row, 7, QTableWidgetItem(f"{c['amount']:.2f}"))


def test_apply_rmch_rate_updates_rate_amount_and_original(win):
    _set_charges(
        win,
        [
            {
                "sno": 1,
                "paycode": "RMCH",
                "item": "Room",
                "rate": 3000.0,
                "qty": 2,
                "amount": 6000.0,
            },
            {
                "sno": 2,
                "paycode": "F&B",
                "item": "Restaurant",
                "rate": 500.0,
                "qty": 1,
                "amount": 500.0,
            },
        ],
    )
    assert win._apply_rmch_rate(4000.0) is True
    assert win._charges[0]["rate"] == 4000.0
    assert win._charges[0]["amount"] == 8000.0  # 4000 * 2
    assert win._original_amounts[1] == 8000.0
    # non-RMCH row untouched
    assert win._charges[1]["rate"] == 500.0
    assert win._charges[1]["amount"] == 500.0


def test_apply_rmch_rate_no_rmch_row_returns_false(win):
    _set_charges(
        win,
        [
            {
                "sno": 1,
                "paycode": "F&B",
                "item": "Restaurant",
                "rate": 500.0,
                "qty": 1,
                "amount": 500.0,
            },
        ],
    )
    assert win._apply_rmch_rate(999.0) is False
    assert win._charges[0]["rate"] == 500.0


def test_apply_rmch_rate_qty_respected(win):
    _set_charges(
        win,
        [
            {
                "sno": 1,
                "paycode": "KRMCH",
                "item": "Room",
                "rate": 1000.0,
                "qty": 3,
                "amount": 3000.0,
            },
        ],
    )
    assert win._apply_rmch_rate(1500.0) is True
    assert win._charges[0]["amount"] == 4500.0


def test_keypress_ctrl_a_calls_on_adjust(win, monkeypatch):
    from PyQt6.QtCore import Qt
    from PyQt6.QtGui import QKeyEvent

    called = []
    monkeypatch.setattr(win, "_on_adjust", lambda: called.append(True))
    ev = QKeyEvent(
        QKeyEvent.Type.KeyPress,
        Qt.Key.Key_A,
        Qt.KeyboardModifier.ControlModifier,
    )
    win.keyPressEvent(ev)
    assert called == [True]


def test_keypress_other_key_does_not_call_on_adjust(win, monkeypatch):
    from PyQt6.QtCore import Qt
    from PyQt6.QtGui import QKeyEvent

    called = []
    monkeypatch.setattr(win, "_on_adjust", lambda: called.append(True))
    ev = QKeyEvent(
        QKeyEvent.Type.KeyPress, Qt.Key.Key_B, Qt.KeyboardModifier.NoModifier
    )
    win.keyPressEvent(ev)
    assert called == []
