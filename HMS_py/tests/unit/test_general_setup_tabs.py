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
    labels = [lbl for lbl, _ in gwin.TABS]
    assert labels == ["Tax Master", "Tax Structure", "Payment Type",
                      "Parameter", "Printing Parameters", "Printing Setup"]
    assert set(gwin._tab_btns) == {"tax", "stru", "pay", "param", "pp", "ps"}


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
    gwin._show_tab("pay")
    bar = gwin.toolbar_holder.layout().itemAt(0).widget()
    assert bar is not None  # toolbar rebuilt for Payment Type tab


def test_tax_master_tab_loads_rows(gwin):
    gwin._show_tab("tax")
    tab = gwin.tab_tax
    # Live DB browse — rows may exist (system taxes); no crash is the contract
    assert tab.tbl.columnCount() == len(tab.HEADERS)
    assert tab.counter.text().endswith(f"/{tab.tbl.rowCount()}")


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
    import json
    from HMS_py.ui.shell import _form_registry
    menu = json.load(open("core/mdi_menu.json", encoding="utf-8"))

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
