"""Card transaction dialogs (ui/smartcard_txn_ui) - offscreen construction
+ VB6 message parity. Menu-leaf registry wiring test_shell_opener_refs.py
me guard hai."""
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


def test_registry_resolves_all_three_card_txn_leaves():
    from HMS_py.ui.shell import _form_registry

    reg = _form_registry()
    ci = {str(k).strip().lower(): v for k, v in reg.items()}
    for cap in ("Card Recharge", "Card Refund", "Card Re-Issue"):
        assert ci.get(cap.lower()), f"{cap} registry me resolve nahi hua"
        assert callable(ci[cap.lower()]), f"{cap} opener callable nahi"


def test_card_txn_openers_exist():
    from HMS_py.ui import smartcard_txn_ui as sct

    for fn in ("open_card_recharge", "open_card_refund", "open_card_re_issue",
               "pick_card", "RechargeDialog", "RefundDialog", "ReIssueDialog"):
        assert hasattr(sct, fn), f"{fn} missing"


def test_dialogs_construct_with_vb6_fields():
    _qapp()
    from PyQt6.QtWidgets import QPushButton
    from HMS_py.ui import smartcard_txn_ui as sct

    r = sct.RechargeDialog(None)
    assert "Card Recharge" in r.windowTitle()
    assert {"cash", "secur", "narr"} <= set(r.edits)
    assert r.btn_save.text() == "Save"
    assert r.lbl_curr.text() == "0.00"
    r.close()

    f = sct.RefundDialog(None)
    assert "Card Refund" in f.windowTitle()
    # VB6 CmdWaiveoff -> "Waive-off All Cash Card Balance"
    assert any(b.text().startswith("Waive-off All Cash Card Balance")
               for b in f.findChildren(QPushButton))
    f.close()

    i = sct.ReIssueDialog(None)
    assert "Card Re-Issue" in i.windowTitle()
    assert {"serial", "iss", "valid", "remark"} <= set(i.edits)
    i.close()


def test_recharge_save_guards_match_vb6_messages(monkeypatch):
    _qapp()
    from HMS_py.ui import smartcard_txn_ui as sct

    calls = []

    class _MB:
        @staticmethod
        def warning(*a, **k):
            calls.append(("warning", a))

        @staticmethod
        def information(*a, **k):
            calls.append(("information", a))

        @staticmethod
        def critical(*a, **k):
            calls.append(("critical", a))

    monkeypatch.setattr(sct, "QMessageBox", _MB)

    d = sct.RechargeDialog(None)
    d._on_save()                       # card nahi -> VB6 scan message
    assert calls and "Scan Card First" in calls[-1][1][2]

    d.card = {"code": "X1", "cardno": "C1", "currbal": 0, "securbal": 0,
              "cardtype": "", "name": "", "serialno": "", "membercode": "",
              "validupto": None}
    d.ed_cash.setText("0")
    d.ed_secur.setText("0")
    d._on_save()                       # dono zero -> VB6 message
    assert calls[-1][1][2] == "Both of Amount Should Not be Zero."
    d.close()


def test_card_statement_registry_leaves_resolve_to_real_openers():
    """Card Statement (MINI)/(FULL) pehle _coming_soon list me the - ab
    registry me asli opener (VB6 ModuleAdd.bas:2493/2497)."""
    from HMS_py.ui.shell import _form_registry
    from HMS_py.ui import smartcard_txn_ui as sct

    ci = {str(k).strip().lower(): v for k, v in _form_registry().items()}
    for cap in ("Card Statement (MINI)", "Card Statement (FULL)"):
        res = ci.get(cap.lower())
        assert res, f"{cap} registry me nahi hai"
        assert "coming_soon" not in getattr(res, "__qualname__", ""), (
            f"{cap} _coming_soon par downgrade ho gaya")
    for fn in ("CardStatementDialog", "open_card_statement_mini",
               "open_card_statement_full"):
        assert hasattr(sct, fn), f"{fn} missing"
    assert {"_STMT_MINI", "_STMT_FULL"} <= set(vars(sct))


def test_card_statement_dialog_constructs_offscreen():
    _qapp()
    from HMS_py.ui import smartcard_txn_ui as sct

    mini = sct.CardStatementDialog(None, mini=True)
    assert "MINI" in mini.windowTitle()
    assert mini.ed_date is not None, "MINI ko date input chahiye"
    assert mini.grid.columnCount() == len(sct._STMT_MINI)
    assert "card chuno" in mini.lbl_status.text().lower()
    mini.close()

    full = sct.CardStatementDialog(None, mini=False)
    assert "FULL" in full.windowTitle()
    assert full.ed_date is None, "FULL me VB6 koi date filter nahi deta"
    assert full.grid.columnCount() == len(sct._STMT_FULL)
    full.close()
