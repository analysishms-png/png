"""Assign Delivery UI (VB6 RsAssignDelivery) - offscreen construction +
menu-leaf registry wiring."""
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


def test_registry_assign_delivery_is_real_opener():
    from HMS_py.ui.shell import _form_registry

    ci = {str(k).strip().lower(): v for k, v in _form_registry().items()}
    res = ci.get("assign delivery")
    assert res, "Assign Delivery registry me nahi hai"
    assert "coming_soon" not in getattr(res, "__qualname__", ""), \
        "Assign Delivery _coming_soon par downgrade ho gaya"


def test_pos_delivery_ui_exposes_vb6_helpers():
    from HMS_py.ui import pos_delivery_ui as pdui
    from HMS_py.core import pos_delivery as pdcore

    for fn in ("open_pos_delivery", "PosDeliveryDialog"):
        assert hasattr(pdui, fn), f"{fn} missing"
    for fn in ("unassigned_bills", "browse_assignments", "delivery_boys",
               "assign_bill", "depart_vtype", "use_split_table"):
        assert hasattr(pdcore, fn), f"core.{fn} missing"


def test_dialog_constructs_with_two_tabs_offscreen():
    _qapp()
    from HMS_py.ui.pos_delivery_ui import PosDeliveryDialog

    d = PosDeliveryDialog()
    assert "Assign Delivery" in d.windowTitle()
    assert [d.tabs.tabText(i) for i in range(d.tabs.count())] == \
        ["Assign Bills", "Assigned (Browser)"]
    assert d.tbl_bills.columnCount() == len(PosDeliveryDialog.BILL_COLS)
    assert d.tbl_assigned.columnCount() == len(PosDeliveryDialog.ASSIGNED_COLS)
    assert d.cmb_depart.count() >= 1, "All departments row honi chahiye"
    assert d.cmb_depart2.count() == d.cmb_depart.count()
    # live DB: DeliveryBoy master khali -> editable combo fallback
    assert d.cmb_boy.isEditable()
    d.close()
