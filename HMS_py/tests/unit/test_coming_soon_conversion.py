"""Unit tests: shell registry COMING_SOON -> real UI conversion (31 VB6 forms).

VB6 parity report SECTION A (`VB6_VS_PYTHON_FILE_BY_FILE.txt`) ke 31
COMING_SOON forms me se:
  * 29 forms ab real UI/resolver par hain (13 pehle se the, 10 isi batch
    me wire hue)
  * 2 genuinely blocked hain (absent table / HW-DLL) - documented

Ye test dono taraf ka guard hai: wired leaf wapas _coming_soon par downgrade
na ho, aur blocked leaves bina evidence ke "wire" na ho jaaye.

New modules is batch me:
  core/depart_change.py, core/forex_txn.py, core/pos_display.py,
  core/pos_advance.py, core/excise_gate_pass.py
  ui/depart_change_ui.py, ui/forex_receive_ui.py, ui/pos_display_ui.py,
  ui/advance_deposit_ui.py, ui/pos_settlement_ui.py,
  ui/order_advance_ui.py, ui/excise_gate_pass_ui.py

run: python -m pytest tests/unit/test_coming_soon_conversion.py -q
"""
import os

import pytest

pytestmark = pytest.mark.unit

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

# menu leaf -> (ui module, opener, dialog class)
WIRED = {
    # VB6 FrmChangeDepart / FrmChangeRest
    "Changes Department": ("depart_change_ui", "open_changes_department",
                           "DepartChangeDialog"),
    "Restaurant Change ": ("depart_change_ui", "open_restaurant_change",
                           "DepartChangeDialog"),
    # VB6 FrmForExRec
    "Forex Receive Entry": ("forex_receive_ui", "open_forex_receive",
                            "ForexReceiveDialog"),
    # VB6 RsPOSDisplay / RsTouchDisplayTB
    "Display Table": ("pos_display_ui", "open_display_table",
                      "PosDisplayWindow"),
    # VB6 frmAdvanceDepDialog
    "Advance Deposit": ("advance_deposit_ui", "open_advance_deposit",
                        "AdvanceDepositDialog"),
    # VB6 rsTouchScreenAdvanceDepDialog
    "Settlement Entry": ("pos_settlement_ui", "open_pos_settlement",
                         "PosSettlementDialog"),
    # VB6 POSAdvanceDepDialog
    "Order Booking Advance": ("order_advance_ui", "open_order_advance",
                              "OrderAdvanceDialog"),
    # VB6 RsKitchenMaterial
    "Excise Invoice Cum Gate Pass": ("excise_gate_pass_ui",
                                     "open_excise_gate_pass",
                                     "ExciseGatePassDialog"),
    # VB6 RSSaleBill -> shared POS Sales register screen
    "Sale Bill Entry": ("pos_sales_ui", "open_pos_sales", None),
    # VB6 RsStoreRecEntry -> shared Stock Receive screen
    "Finish Material Receive Entry": ("stock_receive_ui",
                                      "open_stock_receive", None),
}

# Absent-table / HW-DLL forms: inhe documented _coming_soon par rehna chahiye.
BLOCKED = {
    # FrmItemIssuedOnCleaning.frm ka primary table DepartWiseItemIssueList
    # live DB me absent hai.
    "Item Issued On Cleaning",
    # frmLockGodrejSettings.frm + frmGodrejLockSettings.frm ->
    # DoorLockEnviro table absent + physical Godrej lock DLL/HW.
    "Godrej Locks",
}

_COMING_SOON_SUFFIX = "_coming_soon.<locals>.go"


def _registry() -> dict:
    from HMS_py.ui.shell import _form_registry
    return _form_registry()


# ----------------------------------------------------------------- registry
def test_wired_leaves_resolve_to_real_openers():
    reg = _registry()
    for leaf, (mod, opener, _cls) in WIRED.items():
        assert leaf in reg, f"registry me leaf missing: {leaf!r}"
        res = reg[leaf]
        assert res is not None, f"{leaf!r} None (dead click) par hai"
        q = getattr(res, "__qualname__", "")
        assert not q.endswith(_COMING_SOON_SUFFIX), (
            f"{leaf!r} wapas _coming_soon() par downgrade ho gaya")
        # resolver ke andar asli opener ka reference hona chahiye
        import inspect
        src = inspect.getsource(res)
        assert opener in src, (
            f"{leaf!r} resolver {opener} call nahi kar raha:\n{src}")


def test_blocked_leaves_stay_documented():
    reg = _registry()
    for leaf in BLOCKED:
        assert leaf in reg, f"blocked leaf registry se gayab: {leaf!r}"
        q = getattr(reg[leaf], "__qualname__", "")
        assert q.endswith(_COMING_SOON_SUFFIX), (
            f"{leaf!r} bina DB/HW feasibility check ke wire ho gaya - "
            "pehle table/DLL evidence do (see ui/shell.py tuple comment)")


def test_no_coming_soon_leaf_is_none():
    """_coming_soon fallback ka matlab hai documented skip, dead click nahi."""
    for leaf, res in _registry().items():
        assert res is not None, f"{leaf!r} None resolver (dead click)"


# ------------------------------------------------------------------- modules
def test_new_ui_modules_expose_opener_and_dialog():
    import importlib
    for _leaf, (mod, opener, cls) in WIRED.items():
        m = importlib.import_module(f"HMS_py.ui.{mod}")
        assert hasattr(m, opener), f"ui/{mod}.py me {opener} missing"
        if cls:
            assert hasattr(m, cls), f"ui/{mod}.py me {cls} missing"


def test_new_core_modules_expose_helpers():
    from HMS_py.core import depart_change, excise_gate_pass, forex_txn
    from HMS_py.core import pos_advance, pos_display

    for fn in ("housekeeping_departments", "outlet_departments",
               "depart_lookups"):
        assert hasattr(depart_change, fn), f"depart_change.{fn} missing"
    for fn in ("currencies", "txn_browse", "txn_lines", "txn_insert",
               "txn_delete", "next_vno", "txn_validate"):
        assert hasattr(forex_txn, fn), f"forex_txn.{fn} missing"
    for fn in ("legend", "outlets", "table_status", "unsettled_bills",
               "pending_orders"):
        assert hasattr(pos_display, fn), f"pos_display.{fn} missing"
    for fn in ("paycharge_insert", "paychargeh_insert", "receive_advance",
               "settle_bill", "receive_order_advance", "rev_pay_codes",
               "outlet_pay_codes", "occupied_rooms", "reservations",
               "open_pos_bills", "packing_orders", "hall_bookings"):
        assert hasattr(pos_advance, fn), f"pos_advance.{fn} missing"
    for fn in ("excise_tax_stru", "godowns", "items", "documents",
               "document_lines", "tax_lines"):
        assert hasattr(excise_gate_pass, fn), f"excise_gate_pass.{fn} missing"


# ---------------------------------------------------------------- pure logic
def test_docid_format_is_21_chars_vb6_style():
    from HMS_py.core import forex_txn, pos_advance

    assert pos_advance.make_docid("ADRES", "2026", 1) == \
        "DKKADRES 2026       1"
    assert len(pos_advance.make_docid("RPV", "2026", 18726)) == 21
    assert forex_txn._docid("2026", 1) == "DKKHTFEX 2026       1"
    assert len(forex_txn._docid("2026", 1)) == 21


def test_forex_txn_validate_rules():
    from HMS_py.core import forex_txn

    with pytest.raises(ValueError, match="Currency"):
        forex_txn.txn_validate({"forexcode": "", "qty": 1, "rate": 1})
    with pytest.raises(ValueError, match="Qty"):
        forex_txn.txn_validate({"forexcode": "USD", "qty": 0, "rate": 80})
    with pytest.raises(ValueError, match="Rate"):
        forex_txn.txn_validate({"forexcode": "USD", "qty": 2, "rate": 0})
    with pytest.raises(ValueError, match="Remarks"):
        forex_txn.txn_validate({"forexcode": "USD", "qty": 2, "rate": 80,
                                "remarks": "x" * 256})
    forex_txn.txn_validate({"forexcode": "USD", "qty": 2, "rate": 80})


def test_paycharge_validation_happens_before_any_db_call():
    from HMS_py.core import pos_advance

    with pytest.raises(ValueError, match="DocId"):
        pos_advance.paycharge_insert({"docid": "", "amtcr": 10})
    with pytest.raises(ValueError, match="Amount"):
        pos_advance.paycharge_insert({"docid": "X", "amtcr": 0})
    with pytest.raises(ValueError, match="Amount"):
        pos_advance.paychargeh_insert({"docid": "X", "amtcr": 0})
    # wrappers bhi transaction kholne se pehle validate karte hain
    with pytest.raises(ValueError, match="amount"):
        pos_advance.receive_advance("REF", 0, "KKCASH", "Cash")
    with pytest.raises(ValueError, match="PayCode"):
        pos_advance.receive_advance("REF", 100, "  ", "Cash")
    with pytest.raises(ValueError, match="payment line"):
        pos_advance.settle_bill({"docid": "D1"}, [])
    with pytest.raises(ValueError, match="amount"):
        pos_advance.receive_order_advance({"docid": "D1", "kind": "PO"},
                                          0, "KKCASH", "Cash")


def test_pos_display_legend_hex_conversion():
    from HMS_py.ui.pos_display_ui import _to_hex

    assert _to_hex(8453888) == "#80ff00"      # VB6 DispColor 'Vacant'
    assert _to_hex(16776960) == "#ffff00"     # 'Billed'
    assert _to_hex("8421631") == "#8080ff"    # 'Occupied'
    assert _to_hex(None) == "#555555"
    assert _to_hex("junk") == "#555555"


def test_depart_change_dialog_requires_valid_mode():
    from HMS_py.ui.depart_change_ui import DepartChangeDialog

    _qapp()
    with pytest.raises(ValueError, match="mode"):
        DepartChangeDialog("bogus")


# ------------------------------------------------------------------ db mocks
class FakeCn:
    def __init__(self):
        self.committed = False
        self.closed = False

    def commit(self):
        self.committed = True

    def rollback(self):
        self.committed = False

    def close(self):
        self.closed = True


def test_forex_txn_insert_computes_amount_and_docid(monkeypatch):
    from HMS_py.core import forex_txn

    captured = {}
    monkeypatch.setattr(forex_txn.db, "get_vprefix", lambda cfg=None: "2026")
    monkeypatch.setattr(forex_txn.db, "query",
                        lambda *a, **k: [])
    monkeypatch.setattr(
        forex_txn.db, "execute",
        lambda sql, params=(), cn=None, commit=True:
        captured.update(sql=sql, params=params) or 1)

    res = forex_txn.txn_insert({"forexcode": "USD", "qty": 2, "rate": 80.0,
                                "vdate": "2026-10-02", "remarks": "test"})
    assert res["amount"] == 160.0
    assert res["vno"] == 1
    assert res["docid"] == "DKKHTFEX 2026       1"
    assert "INSERT INTO ForExTrans" in captured["sql"]
    # (docid, vtype, vprefix, site, vno, vdate, code, qty, rate, amount, ...)
    p = captured["params"]
    assert p[0] == "DKKHTFEX 2026       1"
    assert p[6] == "USD"
    assert p[7] == 2.0 and p[8] == 80.0 and p[9] == 160.0


def test_depart_change_queries_and_lookups(monkeypatch):
    from HMS_py.core import depart_change as dc

    seen = {}

    def fake_query(sql, params=(), cn=None):
        seen["sql"], seen["params"] = sql, params
        if "RestType, BackColor" in sql:
            return [("Outlet", 15522299)]
        return []

    monkeypatch.setattr(dc.db, "query", fake_query)
    assert dc.depart_lookups("KKM001") == {"resttype": "Outlet",
                                           "backcolor": 15522299}
    assert seen["params"] == ("KKM001",)

    out = dc.outlet_departments(point_of_sale=True, logsite_code="KK")
    assert out == []
    assert "Outlet" in seen["sql"] and "Room Service" in seen["sql"]
    assert seen["params"] == ("KK",)

    dc.outlet_departments(point_of_sale=False, logsite_code="KK")
    assert "Direct Sale" in seen["sql"]

    dc.housekeeping_departments()
    assert "House Keeping" in seen["sql"] and "OutletYN" in seen["sql"]

    monkeypatch.setattr(dc.db, "query", lambda *a, **k: [])
    assert dc.depart_lookups("NOPE") == {"resttype": "", "backcolor": 0}


def test_inventory_stock_create_direction_from_vtype_map(monkeypatch):
    """KMISS/KSISS (issue) ko QtyIss me likhna chahiye, QtyRec nahi.

    Purana code sirf RQI/RQR ko pehchanta tha - baaki saare issue types
    ('KMISS') ADJ branch me jaakar galat column me likhe jaate the.
    """
    from HMS_py.core import inventory as inv

    captured = []
    monkeypatch.setattr(inv, "stock_next_vno",
                        lambda *a, **k: 7)
    monkeypatch.setattr(
        inv.db, "execute",
        lambda sql, params=(), cn=None, commit=True:
        captured.append(params) or 1)

    inv.stock_create("KMISS",
                     [{"item": "ITM001", "godown": "G1", "qty": 5,
                       "unit": "KG", "rate": 2, "amount": 10}],
                     cn=FakeCn(), commit=True)
    p = captured[0]
    assert p[2] == "KMISS"
    assert p[14] == 5 and p[15] == 0, "KMISS = issue -> QtyIss me likho"

    captured.clear()
    inv.stock_create("KMREC",
                     [{"item": "ITM001", "godown": "G1", "qty": 5,
                       "unit": "KG", "rate": 2, "amount": 10}],
                     cn=FakeCn(), commit=True)
    p = captured[0]
    assert p[14] == 0 and p[15] == 5, "KMREC = receive -> QtyRec me likho"

    captured.clear()
    inv.stock_create("ADJ",
                     [{"item": "ITM001", "godown": "G1", "qty": -3,
                       "unit": "KG", "rate": 2, "amount": -6}],
                     cn=FakeCn(), commit=True)
    p = captured[0]
    assert p[14] == 3 and p[15] == 0, "ADJ negative = issue (sign based)"


# --------------------------------------------------------------- offscreen UI
_QAPP = None


def _qapp():
    global _QAPP
    from PyQt6.QtWidgets import QApplication
    _QAPP = QApplication.instance() or QApplication([])
    return _QAPP


@pytest.mark.parametrize("leaf,mod,cls", [
    (leaf, mod, cls) for leaf, (mod, _op, cls) in WIRED.items() if cls
])
def test_dialog_constructs_offscreen(leaf, mod, cls):
    import importlib

    _qapp()
    m = importlib.import_module(f"HMS_py.ui.{mod}")
    d = getattr(m, cls)()
    assert d.windowTitle()
    d.close()
