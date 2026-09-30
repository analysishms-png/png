"""Travel Agency Posting UI (VB6 TravelAgencyPost) - registry wiring +
offscreen construction."""
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


def test_registry_travel_agency_posting_is_real_opener():
    from HMS_py.ui.shell import _form_registry

    ci = {str(k).strip().lower(): v for k, v in _form_registry().items()}
    res = ci.get("travel agency posting")
    assert res, "Travel Agency Posting registry me nahi hai"
    assert "coming_soon" not in getattr(res, "__qualname__", ""), \
        "Travel Agency Posting _coming_soon par downgrade ho gaya"


def test_travel_post_exposes_vb6_helpers():
    from HMS_py.ui import travel_post_ui as tui
    from HMS_py.core import travel_post as tcore

    for fn in ("open_travel_agency_posting", "TravelAgencyPostDialog"):
        assert hasattr(tui, fn), f"{fn} missing"
    for fn in ("agency_list", "fill_guests", "validate_rows", "save_post",
               "search_list", "load_post", "delete_post", "commission_ac",
               "next_number", "make_docid", "recompute"):
        assert hasattr(tcore, fn), f"core.{fn} missing"
    assert tcore.VTYPE == "PRAP"


def test_dialog_constructs_offscreen_with_vb6_grid():
    _qapp()
    from HMS_py.ui.travel_post_ui import TravelAgencyPostDialog
    from HMS_py.core import travel_post as tp

    d = TravelAgencyPostDialog()
    assert d.windowTitle() == "Travel Agency Posting"
    assert d.tbl.columnCount() == 9
    assert [d.tbl.horizontalHeaderItem(i).text()
            for i in range(9)] == list(tp.GRID_COLS)
    # VB6 col1 (Guest code) width 0 -> hidden
    assert d.tbl.isColumnHidden(tp.COL_GUEST)
    assert not d.tbl.isColumnHidden(tp.COL_PER)
    # live DB: 6 travel agencies load honi chahiye
    assert d.cmb_agency.count() >= 1
    assert d.cmb_agency.itemData(0), "agency code userData me hona chahiye"
    assert d._commac, "Enviro.CommissionAc set hona chahiye"
    d.close()


def test_offline_grid_edit_recomputes_commission():
    _qapp()
    from HMS_py.ui.travel_post_ui import TravelAgencyPostDialog
    from HMS_py.core import travel_post as tp

    d = TravelAgencyPostDialog()
    row = {"sno": 1, "guest": "KK006883", "guest_name": "TEST", "nodays": 2,
           "roomrate": 3050.0, "total": 6100.0, "commper": 5.0,
           "commamt": 305.0, "post": ""}
    d._show_rows([row])
    assert d.tbl.rowCount() == 1
    # Comm.% 7.5 => Commission = 6100 * 7.5 / 100
    d._rows[0]["commper"] = 7.5
    tp.recompute(d._rows[0])
    d._set_cell_text(0, tp.COL_AMT, f"{d._rows[0]['commamt']:.2f}")
    assert d._cell_text(0, tp.COL_AMT) == "457.50"
    # Post toggle
    d._rows[0]["post"] = "Y"
    d._set_cell_text(0, tp.COL_POST, "Y")
    assert d._cell_text(0, tp.COL_POST) == "Y"
    d.close()
