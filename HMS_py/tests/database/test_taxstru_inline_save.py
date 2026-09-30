"""Tax Structure inline-grid save path — DB-level round-trip test.

Flow (VB6 FrmTaxStruMast parity):
  TaxStructureTab.new()  -> grid blank row + tax dropdown
  grid fill              -> taxcode combos + numeric cells
  save()                 -> _collect_lines() -> taxstru.insert_structure()
  verify                 -> TaxStru rows (Code, Sno 1..n) live DB me
  cleanup                -> delete_structure (PYT* only)

Read-safety: sirf PYTPAR* test-code insert/delete hota hai; production
KK* rows untouched. Offscreen Qt, blocking dialogs stubbed.
"""
import os
import sys

import pytest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__))))))

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

pytestmark = pytest.mark.database

TEST_CODE_PREFIX = "PYTPAR"


@pytest.fixture(scope="module")
def qapp():
    from PyQt6.QtWidgets import QApplication, QMessageBox
    app = QApplication.instance() or QApplication([])
    QMessageBox.information = staticmethod(lambda *a, **k: None)
    QMessageBox.warning = staticmethod(lambda *a, **k: None)
    QMessageBox.critical = staticmethod(lambda *a, **k: None)
    QMessageBox.question = staticmethod(
        lambda *a, **k: QMessageBox.StandardButton.Yes)
    yield app


@pytest.fixture(scope="module")
def stru_tab(qapp):
    from HMS_py.ui.general_setup_tabs_ui import GeneralSetupWindow
    w = GeneralSetupWindow()
    w._show_tab("stru")
    yield w.tab_stru
    w.close()


def _cleanup(code: str):
    from HMS_py.core import taxstru
    try:
        taxstru.delete_structure(code)
    except Exception:
        pass


def _grid_fill(tab, lines: list[dict]):
    """Fill tab.tbl exactly as user double-click edit would."""
    from PyQt6.QtWidgets import QAbstractItemView
    tab.tbl.setEditTriggers(
        QAbstractItemView.EditTrigger.NoEditTriggers)  # programmatic fill
    for i, ln in enumerate(lines):
        if i:  # first row already exists from new()
            tab._add_blank_row()
        combo = tab.tbl.cellWidget(i, 1)
        assert combo is not None, "row 1 col must hold tax dropdown"
        idx = combo.findData(ln["taxcode"])
        assert idx >= 0, f"tax code {ln['taxcode']} RevMast me nahi mila"
        combo.setCurrentIndex(idx)
        tab.tbl.item(i, 2).setText(f"{ln['rate']:.4f}")
        tab.tbl.item(i, 3).setText(ln["nature"])
        tab.tbl.item(i, 4).setText(f"{ln['limit']:.2f}")
        tab.tbl.item(i, 5).setText(ln["condapp"])
        tab.tbl.item(i, 6).setText(f"{ln['limit1']:.2f}")
        tab.tbl.item(i, 7).setText(ln["compop"])


def test_inline_grid_save_roundtrip(qapp, stru_tab):
    from HMS_py.core import db, taxstru

    tab = stru_tab
    taxes = taxstru.get_tax_codes()
    assert taxes, "RevMast FieldType='T' rows chahiye (tax dropdown ke liye)"
    tax_a, tax_b = taxes[0]["code"], taxes[-1]["code"]

    # ---- Add mode via real UI entry point ----
    tab.new()
    assert tab.state == "Add"

    name = "PYT Parity Roundtrip"
    tab.ed_new_name.setText(name)
    lines = [
        {"taxcode": tax_a, "rate": 6.0, "nature": "On Base Amt",
         "limit": 0.0, "condapp": "", "limit1": 0.0, "compop": ""},
        {"taxcode": tax_b, "rate": 6.0, "nature": "On Base Amt",
         "limit": 0.0, "condapp": "", "limit1": 0.0, "compop": ""},
    ]
    _grid_fill(tab, lines)

    # ---- collect exactly like save() does ----
    collected = tab._collect_lines()
    assert [l["taxcode"] for l in collected] == [tax_a, tax_b]
    assert [float(l["rate"]) for l in collected] == [6.0, 6.0]

    # ---- real save (next_code + insert_structure) ----
    code = taxstru.next_code()
    assert code.startswith("KK"), "live DB code pattern KK#### hai"
    taxstru.insert_structure(code, name, collected)

    # ---- verify live rows ----
    rows = taxstru.list_by_code(code)
    assert len(rows) == 2
    assert [r["sno"] for r in rows] == [1, 2]
    assert rows[0]["name"] == name
    assert rows[0]["taxcode"] == tax_a
    assert float(rows[1]["rate"]) == 6.0

    # ---- UI browse reflects the new structure ----
    tab.reload()
    codes = [tab.cmb.itemData(i) for i in range(tab.cmb.count())]
    assert code in codes

    # ---- cleanup (PYT-name structure, code is KK####) ----
    _cleanup(code)

    rows_after = taxstru.list_by_code(code)
    assert rows_after == []


def test_inline_grid_non_numeric_rate_raises(qapp, stru_tab):
    tab = stru_tab
    from HMS_py.core import taxstru

    taxes = taxstru.get_tax_codes()
    assert taxes
    tab.new()
    tab.ed_new_name.setText("PYT Invalid Rate")
    _grid_fill(tab, [{"taxcode": taxes[0]["code"], "rate": 0.0,
                      "nature": "On Base Amt", "limit": 0.0,
                      "condapp": "", "limit1": 0.0, "compop": ""}])
    tab.tbl.item(0, 2).setText("abc")  # invalid rate
    with pytest.raises(ValueError, match="numeric"):
        tab._collect_lines()
    tab.tbl.setRowCount(0)


def test_core_insert_structure_rolls_back_on_bad_line(qapp):
    """Bad line (missing taxcode) par koi partial rows na rehne payein."""
    from HMS_py.core import db, taxstru
    code = taxstru.next_code()
    bad_lines = [
        {"taxcode": "", "rate": 1.0, "nature": "On Base Amt",
         "limit": 0.0, "condapp": "", "limit1": 0.0, "compop": ""},
    ]
    with pytest.raises(ValueError):
        taxstru.insert_structure(code, "PYT Bad Line", bad_lines)
    assert taxstru.list_by_code(code) == []
