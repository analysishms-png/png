"""Unit tests for UI modules parity across Front Office, Finance, POS, Reservation, and Banquet."""
import pytest
from PyQt6.QtWidgets import QApplication

# Ensure offscreen Qt platform for headless GUI testing
import os
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

@pytest.fixture(scope="module")
def qapp():
    app = QApplication.instance()
    if app is None:
        app = QApplication([])
    return app


def test_walkin_rack_ui_instantiation(qapp):
    from HMS_py.ui.walkin_rack_ui import (
        RoomViewWindow, DisplayRackWindow, RoomOccLookupWindow, WalkInEntryWindow
    )
    rv = RoomViewWindow()
    assert rv.windowTitle() == "Room View"

    dr = DisplayRackWindow()
    assert dr.windowTitle() == "Display Rack"

    ro = RoomOccLookupWindow()
    assert "Reservation Look Up" in ro.windowTitle()

    wi = WalkInEntryWindow(user="TEST_ADMIN")
    assert wi.user == "TEST_ADMIN"
    assert "WalkIn CheckIn" in wi.windowTitle()


def test_frontoffice_ui_instantiation(qapp):
    from HMS_py.ui.frontoffice import CheckInBrowser, NewCheckInDialog
    browser = CheckInBrowser(user="TEST_USER")
    assert browser.user == "TEST_USER"
    assert "Check-In Browser" in browser.windowTitle()

    dialog = NewCheckInDialog()
    assert "New Check-In" in dialog.windowTitle()


def test_fa_voucher_ui_instantiation(qapp):
    from HMS_py.ui.fa_voucher_ui import VoucherEntryDialog, BankReconDialog
    ve = VoucherEntryDialog(user="FA_ADMIN")
    assert ve.user == "FA_ADMIN"
    assert "Voucher Entry" in ve.windowTitle()

    br = BankReconDialog()
    assert "Bank Reconciliation" in br.windowTitle()


def test_kot_entry_ui_instantiation(qapp):
    from HMS_py.ui.kot_entry import KOTEntryForm
    kot = KOTEntryForm(user="POS_USER")
    assert kot.user == "POS_USER"
    assert "KOT Entry" in kot.windowTitle()


def test_reservation_browser_ui_instantiation(qapp):
    from HMS_py.ui.reservation_browser import ReservationBrowser
    res = ReservationBrowser(user="RES_USER")
    assert res.user == "RES_USER"
    assert "Reservation Master" in res.windowTitle()
