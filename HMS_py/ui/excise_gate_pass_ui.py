"""Excise Invoice Cum Gate Pass (VB6 RsKitchenMaterial - menu leaf
"Excise Invoice Cum Gate Pass").

VB6 form do stock voucher banata hai:
  global_68 = "KMREC" (Kitchen Material Receive, loc_1821)
  global_72 = "KMISS" (Kitchen Material Issue,   loc_1822)
+ tax detail (TranTaxDetail) aur sundry detail (TranSunDetail) jinke codes
Enviro.ExciseInvoiceTaxStru se aate hain (loc_1241E2F).

Is port me:
  * stock lines -> core.inventory.kitchen_material_issue / _receive
                   (KMISS/KMREC, VB6 Stock insert column order)
  * tax/sundry  -> Enviro.ExciseInvoiceTaxStru live me '' aur
                   TranTaxDetail 0 rows -> documented inactive (UI banner)

Run: python -m HMS_py.ui.excise_gate_pass_ui
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import QDate, Qt
from PyQt6.QtGui import QColor
from PyQt6.QtWidgets import (QApplication, QComboBox, QDateEdit, QDialog,
                             QDoubleSpinBox, QFormLayout, QGroupBox,
                             QHBoxLayout, QHeaderView, QLabel, QLineEdit,
                             QMessageBox, QPushButton, QTableWidget,
                             QTableWidgetItem, QTabWidget, QVBoxLayout,
                             QWidget)

from HMS_py.core import excise_gate_pass as _egp
from HMS_py.core import inventory as _inv
from HMS_py.ui import theme as _theme


def _mk_table(cols) -> QTableWidget:
    t = QTableWidget(0, len(cols))
    t.setHorizontalHeaderLabels(cols)
    t.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
    t.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
    t.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
    t.setAlternatingRowColors(True)
    t.verticalHeader().setVisible(False)
    return t


def _fill(t: QTableWidget, rows) -> None:
    pal = _theme.palette()["text"]
    t.setRowCount(0)
    for vals in rows:
        i = t.rowCount()
        t.insertRow(i)
        for c, v in enumerate(vals):
            it = QTableWidgetItem("" if v is None else str(v))
            it.setForeground(QColor(pal))
            it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
            t.setItem(i, c, it)


def _wrap_widget(layout) -> QWidget:
    w = QWidget()
    w.setLayout(layout)
    return w


def _wrap_table(tbl: QTableWidget) -> QWidget:
    w = QWidget()
    v = QVBoxLayout(w)
    v.setContentsMargins(0, 0, 0, 0)
    v.addWidget(tbl)
    return w


class ExciseGatePassDialog(QDialog):
    LINE_COLS = ["#", "Item", "Name", "Qty", "Unit", "Rate", "Amount"]
    DOC_COLS = ["DocId", "Sr.No", "Date", "Godown", "Lines", "Amount"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Excise Invoice Cum Gate Pass (VB6 "
                            "RsKitchenMaterial)")
        self.resize(1040, 660)
        self._lines: list[dict] = []
        self._items: list[dict] = []
        self._godowns: list[dict] = []
        self._docs: list[dict] = []
        self._build_ui()
        self._load_meta()
        self._load_docs()

    # ------------------------------------------------------------------ ui
    def _build_ui(self):
        outer = QVBoxLayout(self)
        self.tabs = QTabWidget()
        self.tbl_docs = _mk_table(self.DOC_COLS)
        self.tabs.addTab(self._tab_entry(), "New Entry")
        self.tabs.addTab(_wrap_table(self.tbl_docs), "Documents")
        self.tabs.currentChanged.connect(self._on_tab)
        outer.addWidget(self.tabs, stretch=1)

        tax = _egp.excise_tax_stru()
        self.lbl_tax = QLabel(
            f"ExciseInvoiceTaxStru = '{tax}' - tax/sundry lines "
            + ("active hain." if tax else
               "khali + TranTaxDetail 0 rows -> tax lines abhi post nahi "
               "hongi (VB6 me bhi inactive)."))
        self.lbl_tax.setWordWrap(True)
        self.lbl_tax.setStyleSheet("color:#c9a227; padding:4px;")
        outer.addWidget(self.lbl_tax)

        row = QHBoxLayout()
        row.addStretch()
        b_exit = QPushButton("Exit")
        b_exit.setToolTip("Excise Invoice Cum Gate Pass band karo")
        b_exit.clicked.connect(self.close)
        row.addWidget(b_exit)
        outer.addLayout(row)
        self.lbl_status = QLabel("Ready")
        outer.addWidget(self.lbl_status)

    def _tab_entry(self) -> QWidget:
        w = QWidget()
        v = QVBoxLayout(w)

        hdr = QGroupBox("Header")
        f = QFormLayout(hdr)
        self.cmb_mode = QComboBox()
        self.cmb_mode.addItem("Issue (KMISS)", "KMISS")
        self.cmb_mode.addItem("Receive (KMREC)", "KMREC")
        self.cmb_godown = QComboBox()
        self.cmb_godown.setMinimumWidth(260)
        self.dt = QDateEdit(QDate.currentDate())
        self.dt.setCalendarPopup(True)
        self.ed_search = QLineEdit()
        self.ed_search.setPlaceholderText("Item code / name / barcode")
        self.ed_search.returnPressed.connect(self._find_items)
        b_find = QPushButton("Find Item")
        b_find.clicked.connect(self._find_items)
        fr = QHBoxLayout()
        fr.addWidget(self.ed_search, stretch=1)
        fr.addWidget(b_find)
        f.addRow("Mode:", self.cmb_mode)
        f.addRow("Godown:", self.cmb_godown)
        f.addRow("Date:", self.dt)
        f.addRow("Item search:", _wrap_widget(fr))
        v.addWidget(hdr)

        self.cmb_item = QComboBox()
        self.cmb_item.setMinimumWidth(320)
        self.cmb_item.currentIndexChanged.connect(self._rate_for_item)
        self.spn_qty = QDoubleSpinBox()
        self.spn_qty.setRange(0.0, 10 ** 9)
        self.spn_qty.setDecimals(3)
        self.spn_rate = QDoubleSpinBox()
        self.spn_rate.setRange(0.0, 10 ** 9)
        self.spn_rate.setDecimals(4)
        b_add = QPushButton("Add Line (+)")
        b_add.clicked.connect(self._add_line)
        b_del = QPushButton("Remove (-)")
        b_del.clicked.connect(self._del_line)
        r2 = QHBoxLayout()
        r2.addWidget(QLabel("Item:"))
        r2.addWidget(self.cmb_item, stretch=1)
        r2.addWidget(QLabel("Qty:"))
        r2.addWidget(self.spn_qty)
        r2.addWidget(QLabel("Rate:"))
        r2.addWidget(self.spn_rate)
        r2.addWidget(b_add)
        r2.addWidget(b_del)
        v.addLayout(r2)

        self.tbl_lines = _mk_table(self.LINE_COLS)
        v.addWidget(self.tbl_lines, stretch=1)

        btns = QHBoxLayout()
        b_save = QPushButton("Save Voucher")
        b_save.setProperty("success", True)
        b_save.setToolTip("VB6: Insert Into Stock (KMISS/KMREC)")
        b_save.clicked.connect(self._save)
        b_ref = QPushButton("Refresh Docs")
        b_ref.clicked.connect(self._load_docs)
        for b in (b_save, b_ref):
            btns.addWidget(b)
        btns.addStretch()
        v.addLayout(btns)
        return w

    # --------------------------------------------------------------- loads
    def _load_meta(self):
        try:
            self._godowns = _egp.godowns()
        except Exception as exc:
            self._godowns = []
            self.lbl_status.setText(f"Godown load fail: {exc}")
        self.cmb_godown.clear()
        for g in self._godowns:
            self.cmb_godown.addItem(f"{g['name']} [{g['code']}]", g["code"])
        self._find_items()

    def _find_items(self, *_):
        try:
            self._items = _egp.items(self.ed_search.text().strip())
        except Exception as exc:
            self._items = []
            self.lbl_status.setText(f"Item load fail: {exc}")
        self.cmb_item.clear()
        for it in self._items:
            self.cmb_item.addItem(f"{it['name']}  [{it['code']}]", it["code"])
        self._rate_for_item()

    def _rate_for_item(self, *_):
        code = self.cmb_item.currentData()
        for it in self._items:
            if it["code"] == code and it["rate"]:
                self.spn_rate.setValue(float(it["rate"]))

    def _on_tab(self, idx: int):
        if idx == 1:
            self._load_docs()

    # -------------------------------------------------------------- actions
    def _add_line(self):
        code = self.cmb_item.currentData()
        if not code:
            QMessageBox.information(self, self.windowTitle(),
                                    "Item select karo (Find Item chalao)")
            return
        qty = self.spn_qty.value()
        if qty <= 0:
            QMessageBox.information(self, self.windowTitle(),
                                    "Qty > 0 honi chahiye")
            return
        name, unit = "", ""
        for it in self._items:
            if it["code"] == code:
                name = it["name"]
                unit = it["unit"] or it["issueunit"]
        rate = self.spn_rate.value()
        self._lines.append({"item": code, "name": name, "unit": unit,
                            "qty": qty, "rate": rate,
                            "amount": round(qty * rate, 2)})
        self._render_lines()
        self.spn_qty.setValue(0.0)

    def _del_line(self):
        r = self.tbl_lines.currentRow()
        if 0 <= r < len(self._lines):
            del self._lines[r]
            self._render_lines()

    def _render_lines(self):
        _fill(self.tbl_lines, [
            (i + 1, l["item"], l["name"], f"{l['qty']:g}", l["unit"],
             f"{l['rate']:g}", f"{l['amount']:.2f}")
            for i, l in enumerate(self._lines)])

    def _save(self):
        if not self._lines:
            QMessageBox.information(self, self.windowTitle(),
                                    "Koi line nahi - pehle Add Line karo")
            return
        godown = self.cmb_godown.currentData()
        if not godown:
            QMessageBox.information(self, self.windowTitle(),
                                    "Godown select karo")
            return
        lines = [{"item": l["item"], "godown": godown, "qty": l["qty"],
                  "unit": l["unit"], "rate": l["rate"],
                  "amount": l["amount"]} for l in self._lines]
        vtype = self.cmb_mode.currentData()
        vdate = self.dt.date().toPyDate()
        try:
            if vtype == "KMISS":
                res = _inv.kitchen_material_issue(lines, vdate=vdate)
            else:
                res = _inv.kitchen_material_receive(lines, vdate=vdate)
        except Exception as exc:
            QMessageBox.critical(self, self.windowTitle(),
                                 f"Save fail: {exc}")
            return
        self.lbl_status.setText(
            f"Saved {res['docid']} ({res['vtype']}, VNo {res['vno']}, "
            f"{len(lines)} lines)")
        QMessageBox.information(
            self, self.windowTitle(),
            f"{res['vtype']} saved\nDocId: {res['docid']}")
        self._lines = []
        self._render_lines()
        self._load_docs()

    def _load_docs(self):
        vtype = self.cmb_mode.currentData()
        try:
            self._docs = _egp.documents(vtype)
        except Exception as exc:
            self._docs = []
            self.lbl_status.setText(f"Docs load fail: {exc}")
        _fill(self.tbl_docs, [
            (d["docid"], d["vno"], d["vdate"], d["godown"], d["lines"],
             f"{d['amount']:.2f}") for d in self._docs])


def open_excise_gate_pass(parent=None):
    """Menu leaf 'Excise Invoice Cum Gate Pass' -> VB6 RsKitchenMaterial."""
    dlg = ExciseGatePassDialog(parent)
    dlg.exec()
    return dlg


def main() -> int:
    app = QApplication(sys.argv)
    d = ExciseGatePassDialog()
    d.show()
    return app.exec()


if __name__ == "__main__":
    os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
    sys.exit(main())
