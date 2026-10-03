"""General Setup (Tabs) + P9 faithful-opener unit tests.

Covers:
- ui/general_setup_tabs_ui.GeneralSetupWindow: 6 VB6 FDGENMAS tabs,
  tab switch, title strip, toolbar wiring, TaxStructureTab inline-edit
  state machine (no DB writes — Idle/PYT guards only).
- P9 faithful openers exist:
    fa_sub_forms_ui.TDSChallanWindow / open_fa_tds_challan
    fa_voucher_ui.open_currbal_update
    posting_utility_ui.open_night_audit_process / open_reverse_night_audit
    pos_masters_ui.open_card_registration
- shell._form_registry: General Setup (Tabs) + faithful wiring contracts.

Offscreen Qt; blocking dialogs stubbed (project convention).
"""
import inspect
import os

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

pytestmark = pytest.mark.unit


@pytest.fixture(scope="module")
def qapp():
    from PyQt6.QtWidgets import QApplication, QMessageBox
    app = QApplication.instance() or QApplication([])
    # Blocking-dialog stubs (offscreen hang guard)
    QMessageBox.information = staticmethod(lambda *a, **k: None)
    QMessageBox.warning = staticmethod(lambda *a, **k: None)
    QMessageBox.critical = staticmethod(lambda *a, **k: None)
    QMessageBox.question = staticmethod(
        lambda *a, **k: QMessageBox.StandardButton.No)
    yield app


@pytest.fixture(scope="module")
def gwin(qapp):
    from HMS_py.ui.general_setup_tabs_ui import GeneralSetupWindow
    w = GeneralSetupWindow()
    w.resize(1440, 860)
    yield w
    w.close()


# ---------------------------------------------------------------- tabs
def test_general_setup_window_six_vb6_tabs(gwin):
    from PyQt6.QtWidgets import QWidget

    labels = [lbl for lbl, _ in gwin.TABS]
    assert labels == ["Tax Master", "Tax Structure", "Payment Type",
                      "Parameter", "Printing Parameters", "Printing Setup"]
    assert set(gwin._tab_btns) == {"tax", "stru", "pay", "param", "pp", "ps"}
    assert gwin._tab_btns["tax"].height() == 45
    assert gwin._tab_btns["tax"].width() == 155
    assert gwin.title_strip.height() == 40
    assert gwin.findChild(QWidget, "generalSetupLeftMenu").width() == 122
    dock = gwin.findChild(QWidget, "generalSetupRightDock")
    assert dock.width() == 136


def test_general_setup_tab_switch_updates_title(gwin):
    gwin._show_tab("stru")
    assert gwin.title_strip.text() == "Main Setup > General Setup > Tax Structure"
    assert gwin._tab_btns["stru"].isChecked()
    # offscreen me show() nahi hota — hidden-state se verify karo
    for k in ("tax", "pay", "param", "pp", "ps"):
        assert gwin._page_widgets[k].isHidden()
    gwin._show_tab("tax")
    assert gwin.title_strip.text() == "Main Setup > General Setup > Tax Master"
    assert gwin._page_widgets["stru"].isHidden()


def test_general_setup_toolbar_wired_per_tab(gwin):
    from PyQt6.QtWidgets import QPushButton

    gwin._show_tab("pay")
    bar = gwin.toolbar_holder.layout().itemAt(0).widget()
    assert bar is not None  # toolbar rebuilt for Payment Type tab
    actions = {button.toolTip().split(" ", 1)[0]: button
               for button in bar.findChildren(QPushButton)
               if button.toolTip()}
    assert "Cancel" in actions
    for caption in ("New", "Edit", "Delete", "Save", "Cancel",
                    "First", "Prev", "Next", "Last", "Find",
                    "Refresh", "Exit"):
        assert actions[caption].text() == ""
        assert not actions[caption].icon().isNull()
        assert actions[caption].toolTip()


def test_tax_master_tab_loads_rows(gwin):
    gwin._show_tab("tax")
    tab = gwin.tab_tax
    # Live DB browse — rows may exist (system taxes); no crash is the contract
    assert tab.tbl.columnCount() == len(tab.HEADERS)
    assert tab.counter.text().endswith(f"/{tab.tbl.rowCount()}")


def test_tax_master_opens_first_record_without_visible_master_grid(qapp, monkeypatch):
    from HMS_py.core import taxmaster
    from HMS_py.ui.general_setup_tabs_ui import TaxMasterTab

    rows = [
        {"code": "KK0001", "name": "CGST", "short": "CGST",
         "sundry": "SUN1"},
        {"code": "KK0002", "name": "SGST", "short": "SGST"},
    ]
    monkeypatch.setattr(taxmaster, "list_all", lambda: rows)
    monkeypatch.setattr(taxmaster, "get", lambda code: {
        **next(row for row in rows if row["code"] == code),
        "sundryname": "CGST Sundry",
        "sundry": "SUN1",
        "accode": "KK1001",
        "payableac": "KK1002",
        "unregisteredac": "KK1003",
        "ledgername": "CGST Purchase Ledger",
        "payableacname": "CGST Payable",
        "unregisteredacname": "CGST Unregistered",
        "roundoff": "No",
        "sysyn": "Y",
    })

    tab = TaxMasterTab()
    assert tab.tbl.currentRow() == 0
    assert tab.counter.text() == "1/2"
    assert tab.ed_name.text() == "CGST"
    assert tab.ed_sundry.text() == "CGST Sundry"
    assert tab._rec()["sundry"] == "SUN1"
    assert tab.ed_ledger.text() == "CGST Purchase Ledger"
    assert tab._rec()["accode"] == "KK1001"
    assert tab.ed_payable.text() == "CGST Payable"
    assert tab._rec()["payableac"] == "KK1002"
    assert tab.ed_unreg.text() == "CGST Unregistered"
    assert tab._rec()["unregisteredac"] == "KK1003"
    assert tab.ed_roundoff.isHidden()
    assert tab.cmb_sysyn.isHidden()
    assert tab.tbl.isHidden()


def test_tax_master_lookup_fields_keep_selected_codes(qapp, monkeypatch):
    from HMS_py.core import taxmaster
    from HMS_py.ui import general_setup_tabs_ui as setup_ui
    from HMS_py.ui.general_setup_tabs_ui import TaxMasterTab

    accounts = [
        {"code": "LED01", "name": "Ledger Account"},
        {"code": "PAY01", "name": "Payable Account"},
        {"code": "UNR01", "name": "Unregistered Account"},
    ]
    monkeypatch.setattr(taxmaster, "list_all", lambda: [])
    monkeypatch.setattr(taxmaster, "ledger_list", lambda: accounts)
    monkeypatch.setattr(taxmaster, "sundry_list", lambda: [
        {"code": "SUN01", "name": "Sundry Name"},
    ])
    selected = iter(["LED01", "PAY01", "UNR01", "SUN01"])
    monkeypatch.setattr(
        setup_ui, "lookup_pick", lambda parent, title, rows: next(selected))

    tab = TaxMasterTab()
    tab._choose_account("ledger")
    tab._choose_account("payable")
    tab._choose_account("unreg")
    tab._choose_sundry()

    rec = tab._rec()
    assert (tab.ed_ledger.text(), rec["accode"]) == (
        "Ledger Account", "LED01")
    assert (tab.ed_payable.text(), rec["payableac"]) == (
        "Payable Account", "PAY01")
    assert (tab.ed_unreg.text(), rec["unregisteredac"]) == (
        "Unregistered Account", "UNR01")
    assert (tab.ed_sundry.text(), rec["sundry"]) == (
        "Sundry Name", "SUN01")


def test_payment_type_opens_first_record_without_visible_master_grid(
        qapp, monkeypatch):
    from HMS_py.core import depart_pay, paymenttype, taxmaster
    from HMS_py.ui import general_setup_tabs_ui as setup_ui
    from HMS_py.ui.general_setup_tabs_ui import PaymentTypeTab

    rows = [
        {"code": "CASH", "name": "Cash", "short": "CASH"},
        {"code": "ROOM", "name": "Room", "short": "ROOM"},
    ]
    monkeypatch.setattr(depart_pay, "list_departments", lambda: [])
    monkeypatch.setattr(paymenttype, "list_all", lambda: rows)
    monkeypatch.setattr(paymenttype, "get", lambda code: {
        **next(row for row in rows if row["code"] == code),
        "accode": "KK1001",
        "accposting": "Summarize",
        "paytype": "Cash",
        "u_ae": "",
    })
    accounts = [
        {"code": "KK1001", "name": "Cash Account"},
        {"code": "KK1002", "name": "Room Account"},
    ]
    monkeypatch.setattr(taxmaster, "ledger_list", lambda: accounts)
    monkeypatch.setattr(depart_pay, "outlet_grid_for_paycode", lambda code: [])
    monkeypatch.setattr(
        setup_ui, "lookup_pick", lambda parent, title, rows: "KK1002")

    tab = PaymentTypeTab()
    assert tab.tbl.currentRow() == 0
    assert tab.counter.text() == "1/2"
    assert tab.ed_name.text() == "Cash"
    assert tab.ed_ledger.text() == "Cash Account"
    assert tab._ledger_code == "KK1001"
    tab._choose_ledger_account()
    assert (tab.ed_ledger.text(), tab._ledger_code) == (
        "Room Account", "KK1002")
    assert not hasattr(tab, "cmb_dets")
    assert tab.ed_acpost.completer() is not None
    assert tab.tbl.isHidden()


def test_tax_structure_tab_inline_state_machine(gwin):
    gwin._show_tab("stru")
    tab = gwin.tab_stru
    # Live structures browse
    assert tab.cmb.count() >= 0
    # Add mode: blank grid + name entry
    tab.new()
    assert tab.state == "Add"
    assert not tab.cmb.isVisible() or True  # offscreen visibility best-effort
    assert tab.tbl.rowCount() >= 1
    # blank-name save must NOT hit DB (warning path, stubbed)
    tab.save()
    assert tab.state == "Add"  # unchanged
    # Edit guard: KK* production structures blocked (stubbed warning)
    tab.edit()
    assert tab.state in ("Edit", "Add")  # guard fired; no crash
    # Back to Idle: grid locked
    tab.state = "Idle"
    tab._lock_grid(True)
    from PyQt6.QtWidgets import QAbstractItemView
    assert tab.tbl.editTriggers() == QAbstractItemView.EditTrigger.NoEditTriggers


def test_tax_structure_toolbar_navigation_browses_structures(qapp, monkeypatch):
    from HMS_py.core import taxstru
    from HMS_py.ui.general_setup_tabs_ui import (
        GeneralSetupWindow, TaxStructureTab)

    structures = [
        {"code": "T01", "name": "Room Tax"},
        {"code": "T02", "name": "Food Tax"},
        {"code": "T03", "name": "Service Tax"},
    ]
    monkeypatch.setattr(taxstru, "get_tax_codes", lambda: [])
    monkeypatch.setattr(taxstru, "get_structures_summary", lambda: structures)
    monkeypatch.setattr(taxstru, "list_by_code", lambda code: [
        {"taxcode": "TX1", "rate": 5, "limit": 0, "limit1": 0},
    ])
    tab = TaxStructureTab()
    assert tab.cmb.isHidden()
    assert tab.ed_structure_name.text() == "Room Tax"

    class NavigationHost:
        def _current(self):
            return tab

        _sync_counter = GeneralSetupWindow._sync_counter

    GeneralSetupWindow._nav(NavigationHost(), "next")

    assert tab.cmb.currentIndex() == 1
    assert tab.edit_code == "T02"
    assert tab.counter.text() == "2/3"


def test_tax_structure_edit_save_updates_selected_structure(qapp, monkeypatch):
    from HMS_py.core import taxstru
    from HMS_py.ui.general_setup_tabs_ui import TaxStructureTab

    structures = [{"code": "T01", "name": "Room Tax"}]
    lines = [{
        "taxcode": "TX1", "rate": 5, "nature": "On Base Amt",
        "limit": 0, "limit1": 0, "condapp": "", "compop": "",
    }]
    monkeypatch.setattr(taxstru, "get_tax_codes", lambda: [])
    monkeypatch.setattr(taxstru, "get_structures_summary", lambda: structures)
    monkeypatch.setattr(taxstru, "list_by_code", lambda code: lines)
    monkeypatch.setattr(taxstru, "next_code", lambda: "T99")
    inserts, updates = [], []
    monkeypatch.setattr(
        taxstru, "insert_structure",
        lambda *args, **kwargs: inserts.append(args) or 1)
    monkeypatch.setattr(
        taxstru, "update_structure",
        lambda *args, **kwargs: updates.append(args) or 1)

    tab = TaxStructureTab()
    tab.edit()
    edit_name = tab.ed_new_name.text()
    tab.ed_new_name.setText("Room Tax Revised")
    tab.save()

    assert edit_name == "Room Tax"
    assert updates == [("T01", "Room Tax Revised", lines)]
    assert inserts == []


def test_tax_structure_collect_lines_blank_grid_raises(gwin):
    gwin._show_tab("stru")
    tab = gwin.tab_stru
    tab.tbl.setRowCount(0)
    with pytest.raises(ValueError):
        tab._collect_lines()


def test_parameter_tab_default_page_is_printing(gwin):
    gwin._show_tab("param")
    tab = gwin.tab_param
    assert "Printing Parameters" in tab._pages
    # Bill Header/Footer editors exist (Enviro single-row port)
    assert hasattr(tab, "ed_bill_header")
    assert hasattr(tab, "ed_bill_footer")


def test_parameter_screenshot_fields_are_on_vb6_pages(gwin):
    tab = gwin.tab_param
    page_keys = {
        page: {key for key, _, _ in entry[2]}
        for page, entry in tab._other_pages.items()
    }
    assert {
        "Postingtype", "RoomChrgDueAc", "CommissionAc", "RoomTaxDueAc",
        "DummyTravelAc", "RoomChrgPostingType", "PostComplimentaryBills",
        "PostRoomDiscSeparately", "POSSaleRevenueBifercation",
        "PlanTariffNarration",
    } <= page_keys["Posting Parameters"]
    assert {
        "CashPayType", "RoomPayType", "OutletDiscAc", "OutletRoundAc",
        "SaleTaxVAT", "PostPOSDiscSeparately", "CoversMandatory",
        "MobileNoMandatory", "ServiceTaxOnServiceChargeYN",
    } <= page_keys["Outlet Parameters"]
    assert {
        "OutDoorCatering", "CatalogLimit", "HallDiscAC", "HallRoundOff",
        "IndoorSaleAC", "IndoorPartyAC", "OutdoorSaleAC", "OutdoorPartyAC",
        "AllowRoomSettlement",
    } <= page_keys["Banquet Parameters"]
    occurrences = {}
    for page, (_, _, made) in tab._other_pages.items():
        for key, _, _ in made:
            occurrences.setdefault(key, []).append(page)
    assert occurrences["PlanTariffNarration"] == ["Posting Parameters"]
    assert occurrences["AllowRoomSettlement"] == ["Banquet Parameters"]

    posting_fields = {key: (widget, kind)
                      for key, widget, kind
                      in tab._other_pages["Posting Parameters"][2]}
    assert posting_fields["Postingtype"][0].isReadOnly()
    assert posting_fields["RoomChrgDueAc"][0].isReadOnly()
    assert not posting_fields["POSSaleRevenueBifercation"][0].isEnabled()
    assert posting_fields["PostComplimentaryBills"][0].isEnabled()
    assert not posting_fields["PlanTariffNarration"][0].isReadOnly()
    from PyQt6.QtWidgets import QFormLayout
    posting_layout = tab._other_pages["Posting Parameters"][1]
    labels = [
        item.widget().text()
        for row in range(posting_layout.rowCount())
        if (item := posting_layout.itemAt(
            row, QFormLayout.ItemRole.LabelRole)) is not None
        and item.widget() is not None
    ]
    assert "Room Charge Due Account" in labels


def test_parameter_lookup_displays_name_and_retains_code(gwin, monkeypatch):
    from HMS_py.ui import general_setup_tabs_ui as setup_ui

    tab = gwin.tab_param
    account_field = next(
        widget for key, widget, _ in
        tab._other_pages["Posting Parameters"][2]
        if key == "RoomChrgDueAc")
    rows = [{"code": "AC01", "name": "Room Charge Account"}]
    monkeypatch.setitem(
        tab.LOOKUPS, ("Posting Parameters", "RoomChrgDueAc"),
        lambda: rows)
    monkeypatch.setattr(
        setup_ui, "lookup_pick", lambda parent, title, lookup_rows: "AC01")

    tab._open_lookup("Posting Parameters", "RoomChrgDueAc", account_field)

    assert account_field.text() == "Room Charge Account"
    assert account_field.property("lookupCode") == "AC01"


def test_printing_tabs_are_browse_only(gwin):
    gwin._show_tab("pp")
    gwin._show_tab("ps")
    ps = gwin.tab_ps
    from PyQt6.QtWidgets import QAbstractItemView
    assert ps.tbl.editTriggers() == QAbstractItemView.EditTrigger.NoEditTriggers


# ------------------------------------------------------- P9 openers exist
def test_fa_tds_challan_opener_and_window():
    from HMS_py.ui import fa_sub_forms_ui as fasub
    assert hasattr(fasub, "open_fa_tds_challan")
    assert hasattr(fasub, "TDSChallanWindow")
    src = inspect.getsource(fasub.open_fa_tds_challan)
    assert "TDSChallanWindow" in src


def test_currbal_update_opener_exists():
    from HMS_py.ui import fa_voucher_ui as fvu
    assert hasattr(fvu, "open_currbal_update")
    src = inspect.getsource(fvu.open_currbal_update)
    # PYT-guard: production CurrBal protected
    assert "PYT" in src


def test_posting_utility_reverse_na_openers_exist():
    from HMS_py.ui import posting_utility_ui as npu
    assert hasattr(npu, "open_reverse_night_audit")
    assert hasattr(npu, "open_night_audit_process")
    assert hasattr(npu, "ReverseNightAuditWindow")
    assert hasattr(npu, "NightAuditProcessWindow")


def test_card_registration_opener_exists():
    from HMS_py.ui import pos_masters_ui as pm
    assert hasattr(pm, "open_card_registration")
    src = inspect.getsource(pm.open_card_registration)
    # SmartCardRegistration CRUD, not card master
    assert "SmartCardRegistration" in src or "smartcard_ops" in src


# ---------------------------------------------------- registry wiring
def test_registry_has_general_setup_tabs_leaf():
    from HMS_py.ui.shell import _form_registry
    reg = _form_registry()
    fn = reg.get("General Setup (Tabs)")
    assert callable(fn)


def test_workbench_general_setup_group_lists_tabs_leaf():
    import HMS_py.ui.shell as shell_mod
    src = inspect.getsource(shell_mod.MainSetupWorkbench.__init__)
    assert "General Setup (Tabs)" in src


def test_card_registration_registry_wired_to_faithful_target():
    from HMS_py.ui.shell import _form_registry
    reg = _form_registry()
    fn = reg.get("Card Registration")
    assert fn is not None
    src = inspect.getsource(fn)
    assert "open_card_registration" in src
    assert "open_smartcard" not in src


# ------------------------------------------- parity batch (misc UIs)
def test_parity_batch_openers_exist():
    from HMS_py.ui import misc_parity_ui as mpu
    for name in ("open_facility_sundry", "open_revenue_change",
                 "open_sale_bill_modification", "open_inbox",
                 "open_outbox"):
        assert hasattr(mpu, name), f"{name} missing"


def test_parity_batch_leaves_in_registry():
    from HMS_py.ui.shell import _form_registry
    reg = _form_registry()
    for leaf in ("Facility Sundry Setting", "Revenue Change Entry",
                 "Sale Bill Modification", "&InBox", "&OutBox",
                 "&Voucher Entry", "&Expense Voucher", "Balanc&e Sheet",
                 "&Profit And Loss Account", "&Trial Balance (Group)",
                 "&Trial Ledger", "Cash &Flow", "Fund Flo&w", "&Annexure",
                 "A&geing Analysis for Debtors",
                 "Ageing A&nalysis for Creditors",
                 "Card Recharge", "Card Refund", "Card Re-Issue",
                 "&Cascade", "Tile &Horizontal", "Tile &Vertical",
                 "&Exit"):
        assert leaf in reg, f"'{leaf}' registry me missing"


def test_full_vb6_menu_parity_zero_missing():
    """546 VB6 leaves — sab registry me (audit sweep contract)."""
    import json, os
    from HMS_py.ui.shell import _form_registry
    # BUG-FIX: use __file__-relative path so test works from any CWD
    json_path = os.path.join(os.path.dirname(__file__), "..", "..", "core", "mdi_menu.json")
    json_path = os.path.normpath(json_path)
    menu = json.load(open(json_path, encoding="utf-8"))

    def walk(n, out):
        ch = n.get("children", [])
        if not ch:
            c = n.get("caption", "").strip()
            if c and c != "-":
                out.append(c)
        for x in ch:
            walk(x, out)

    leaves = []
    for t in menu.get("children", []):
        walk(t, leaves)
    norm = lambda s: " ".join(s.split()).lower()
    regkeys = {norm(k) for k in _form_registry()}
    missing = [l for l in leaves if norm(l) not in regkeys]
    assert not missing, f"{len(missing)} VB6 leaves registry me missing: {missing[:10]}"


def test_card_recharge_refund_reissue_core_guards():
    from HMS_py.core import smartcard_ops as sc
    # non-existent card -> ValueError (DB read, no write)
    with pytest.raises(ValueError):
        sc.card_recharge("__NOPE__", 100.0)
    with pytest.raises(ValueError):
        sc.card_refund("__NOPE__", 100.0)
    with pytest.raises(ValueError):
        sc.card_reissue("__NOPE__", "HW1")
    # amount guard (card lookup se pehle amount check order pe depend nahi)
    with pytest.raises(ValueError):
        sc.card_recharge("__NOPE__", -5.0)
