"""Settlement Entry (VB6 rsTouchScreenAdvanceDepDialog - menu leaf
"Settlement Entry").

VB6 flow:
  1. Outlet (`global_52` = RestCode) + open bills pick
     (`SELECT ST.DOCID, ST.VNO, ST.VDATE, ... BillAmount ...`)
  2. Pay codes - `SELECT DP.PayCode as code, RevMast.Name as Name,
     revMast.PayType as PayType FROM DepartPay as DP LEFT OUTER JOIN
     RevMast ON DP.PayCode = RevMast.code where (DP.LOGSITE_CODE='..')`
  3. Save -> ek document ke under n PayCharge rows (insert loc_179B886)
     + `Update Sale1 Set Party='..'`

Run: python -m HMS_py.ui.pos_settlement_ui
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import QDate, Qt
from PyQt6.QtGui import QColor
from PyQt6.QtWidgets import (QApplication, QComboBox, QDialog,
                             QDoubleSpinBox, QFormLayout, QGroupBox,
                             QHBoxLayout, QHeaderView, QLabel, QLineEdit,
                             QMessageBox, QPushButton, QTableWidget,
                             QTableWidgetItem, QVBoxLayout, QWidget)

from HMS_py.core import pos_advance as _adv
from HMS_py.core import pos_display as _pdis
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


class PosSettlementDialog(QDialog):
    BILL_COLS = ["DocId", "Bill No", "Date", "Customer", "Net Amt",
                 "Paid", "Balance"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Settlement Entry (VB6 "
                            "rsTouchScreenAdvanceDepDialog)")
        self.resize(1060, 660)
        self._bills: list[dict] = []
        self._codes: list[dict] = []
        self._paylines: list[dict] = []
        self._build_ui()
        self._load()

    # ------------------------------------------------------------------ ui
    def _build_ui(self):
        outer = QVBoxLayout(self)

        bar = QHBoxLayout()
        bar.addWidget(QLabel("Outlet:"))
        self.cmb_outlet = QComboBox()
        self.cmb_outlet.setMinimumWidth(240)
        self.cmb_outlet.currentIndexChanged.connect(self._load_bills)
        bar.addWidget(self.cmb_outlet)
        b_ref = QPushButton("Refresh")
        b_ref.clicked.connect(self._load)
        bar.addWidget(b_ref)
        bar.addStretch()
        outer.addLayout(bar)

        outer.addWidget(QLabel("Open POS bills:"))
        self.tbl_bills = _mk_table(self.BILL_COLS)
        outer.addWidget(self.tbl_bills, stretch=1)
        self.tbl_bills.itemSelectionChanged.connect(self._update_balance)

        grp = QGroupBox("Payment line")
        f = QFormLayout(grp)
        self.cmb_pay = QComboBox()
        self.cmb_pay.setMinimumWidth(280)
        self.spn_amt = QDoubleSpinBox()
        self.spn_amt.setRange(0.0, 10 ** 9)
        self.spn_amt.setDecimals(2)
        self.ed_remarks = QLineEdit()
        self.ed_remarks.setPlaceholderText("Comments")
        self.ed_card = QLineEdit()
        self.ed_card.setPlaceholderText("Card no (card pay par)")
        b_add = QPushButton("Add Payment (+)")
        b_add.clicked.connect(self._add_pay)
        b_del = QPushButton("Remove Payment (-)")
        b_del.clicked.connect(self._del_pay)
        row = QHBoxLayout()
        row.addWidget(b_add)
        row.addWidget(b_del)
        row.addStretch()
        f.addRow("Pay Code:", self.cmb_pay)
        f.addRow("Amount:", self.spn_amt)
        f.addRow("Card No:", self.ed_card)
        f.addRow("Comments:", self.ed_remarks)
        f.addRow("", self._wrap(row))
        outer.addWidget(grp)

        self.tbl_pay = _mk_table(["#", "PayCode", "Amount", "Card", "Comments"])
        outer.addWidget(self.tbl_pay)

        foot = QHBoxLayout()
        self.lbl_balance = QLabel("Balance: 0.00")
        foot.addWidget(self.lbl_balance)
        foot.addStretch()
        b_save = QPushButton("Save Settlement")
        b_save.setProperty("success", True)
        b_save.setToolTip("VB6: ek PayCharge document, har pay code ek SNo")
        b_save.clicked.connect(self._save)
        b_exit = QPushButton("Exit")
        b_exit.clicked.connect(self.close)
        foot.addWidget(b_save)
        foot.addWidget(b_exit)
        outer.addLayout(foot)
        self.lbl_status = QLabel("Ready")
        outer.addWidget(self.lbl_status)

    @staticmethod
    def _wrap(layout) -> QWidget:
        w = QWidget()
        w.setLayout(layout)
        return w

    # --------------------------------------------------------------- loads
    def _load(self):
        try:
            outlets = _pdis.outlets()
        except Exception:
            outlets = []
        cur = self.cmb_outlet.currentData()
        self.cmb_outlet.blockSignals(True)
        self.cmb_outlet.clear()
        for o in outlets:
            self.cmb_outlet.addItem(f"{o['name']} [{o['code']}]", o["code"])
        if cur:
            i = self.cmb_outlet.findData(cur)
            if i >= 0:
                self.cmb_outlet.setCurrentIndex(i)
        self.cmb_outlet.blockSignals(False)

        rest = self.cmb_outlet.currentData() or ""
        try:
            self._codes = _adv.outlet_pay_codes(rest)
        except Exception as exc:
            self._codes = []
            self.lbl_status.setText(f"Pay codes fail: {exc}")
        self.cmb_pay.clear()
        for c in self._codes:
            self.cmb_pay.addItem(f"{c['name']} [{c['code']}]", c["code"])
        self._load_bills()

    def _load_bills(self, *_):
        rest = self.cmb_outlet.currentData() or ""
        try:
            self._bills = _adv.open_pos_bills(rest) if rest else []
        except Exception as exc:
            self._bills = []
            self.lbl_status.setText(f"Bills fail: {exc}")
        _fill(self.tbl_bills, [
            (b["docid"], b["vno"], b["vdate"], b["custname"],
             f"{b['netamt']:.2f}", f"{b['paid']:.2f}",
             f"{b['netamt'] - b['paid']:.2f}") for b in self._bills])
        self._update_balance()

    def _selected_bill(self) -> dict | None:
        r = self.tbl_bills.currentRow()
        return self._bills[r] if 0 <= r < len(self._bills) else None

    def _update_balance(self, *_):
        bill = self._selected_bill()
        if not bill:
            self.lbl_balance.setText("Balance: -")
            return
        bal = bill["netamt"] - bill["paid"] - sum(
            float(p["amtcr"]) for p in self._paylines)
        self.lbl_balance.setText(f"Balance: {bal:.2f}")

    # -------------------------------------------------------------- actions
    def _add_pay(self):
        bill = self._selected_bill()
        if not bill:
            QMessageBox.information(self, self.windowTitle(),
                                    "Pehle bill select karo")
            return
        code = self.cmb_pay.currentData()
        amt = self.spn_amt.value()
        if not code:
            QMessageBox.information(self, self.windowTitle(),
                                    "Pay Code select karo")
            return
        if amt <= 0:
            QMessageBox.information(self, self.windowTitle(),
                                    "Amount > 0 hona chahiye")
            return
        paytype = ""
        for c in self._codes:
            if c["code"] == code:
                paytype = c["paytype"]
        self._paylines.append({
            "paycode": code, "paytype": paytype, "amtcr": amt,
            "cardno": self.ed_card.text().strip(),
            "comments": self.ed_remarks.text().strip()})
        self._render_pay()
        self.spn_amt.setValue(0.0)
        self.ed_remarks.clear()
        self._update_balance()

    def _del_pay(self):
        r = self.tbl_pay.currentRow()
        if 0 <= r < len(self._paylines):
            del self._paylines[r]
            self._render_pay()
            self._update_balance()

    def _render_pay(self):
        _fill(self.tbl_pay, [
            (i + 1, p["paycode"], f"{p['amtcr']:.2f}", p["cardno"],
             p["comments"]) for i, p in enumerate(self._paylines)])

    def _save(self):
        bill = self._selected_bill()
        if not bill:
            QMessageBox.information(self, self.windowTitle(),
                                    "Pehle bill select karo")
            return
        if not self._paylines:
            QMessageBox.information(self, self.windowTitle(),
                                    "Koi payment line nahi")
            return
        try:
            res = _adv.settle_bill(
                bill, self._paylines, vtype="RPV",
                vdate=QDate.currentDate().toPyDate())
        except Exception as exc:
            QMessageBox.critical(self, self.windowTitle(),
                                 f"Save fail: {exc}")
            return
        self.lbl_status.setText(
            f"Settled {bill['docid']} -> {res['docid']} "
            f"({res['total']:.2f} in {res['lines']} line(s))")
        QMessageBox.information(
            self, self.windowTitle(),
            f"Settlement saved\nDocId: {res['docid']}\n"
            f"Amount: {res['total']:.2f}")
        self._paylines = []
        self._render_pay()
        self._load_bills()


def open_pos_settlement(parent=None):
    """Menu leaf 'Settlement Entry' -> VB6 rsTouchScreenAdvanceDepDialog."""
    dlg = PosSettlementDialog(parent)
    dlg.exec()
    return dlg


def main() -> int:
    app = QApplication(sys.argv)
    d = PosSettlementDialog()
    d.show()
    return app.exec()


if __name__ == "__main__":
    os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
    sys.exit(main())
