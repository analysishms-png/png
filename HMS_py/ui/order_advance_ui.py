"""Order Booking Advance (VB6 POSAdvanceDepDialog - menu leaf
"Order Booking Advance").

VB6 flow:
  1. Target pick - PackingOrder (`UPDATE PackingOrder SET AdvAmt=...`) ya
     HallBook (`UPDATE HallBook SET Advance=...`) / HallSale1
     (`UPDATE HallSale1 SET Advance=...`)
  2. Pay code + amount
  3. Save -> PayChargeH row (insert loc_19A7A3A, VType 'AD'/'AR' - VB6
     `Delete From PayChargeH Where VType In ('AD','AR') And Docid=...`)
     + ek PayCharge row + target ka advance counter
  4. Pehle liya advance - `SELECT Sum(AmtCr) FROM PayCharge WHERE
     ContraDocid='...'`

Run: python -m HMS_py.ui.order_advance_ui
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
                             QTableWidgetItem, QTabWidget, QVBoxLayout,
                             QWidget, QDateEdit)

from HMS_py.core import pos_advance as _adv
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


class OrderAdvanceDialog(QDialog):
    PO_COLS = ["DocId", "Order No", "Customer", "Date", "Net Amt",
               "Advance", "Outlet"]
    HB_COLS = ["DocId", "VNo", "Party", "Date", "Net Amt", "Advance",
               "Outlet"]
    REC_COLS = ["DocId", "Rect No", "Date", "Comments", "PayType",
                "Amount", "Target"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Order Booking Advance (VB6 "
                            "POSAdvanceDepDialog)")
        self.resize(1080, 660)
        self._po: list[dict] = []
        self._hb: list[dict] = []
        self._rec: list[dict] = []
        self._codes: list[dict] = []
        self._build_ui()
        self._load()

    # ------------------------------------------------------------------ ui
    def _build_ui(self):
        outer = QVBoxLayout(self)
        self.tabs = QTabWidget()
        self.tbl_po = _mk_table(self.PO_COLS)
        self.tbl_hb = _mk_table(self.HB_COLS)
        self.tbl_rec = _mk_table(self.REC_COLS)
        self.tabs.addTab(self._wrap(self.tbl_po), "Order Booking")
        self.tabs.addTab(self._wrap(self.tbl_hb), "Hall Booking")
        self.tabs.addTab(self._wrap(self.tbl_rec), "Receipts (PayChargeH)")
        self.tabs.currentChanged.connect(self._update_already)
        outer.addWidget(self.tabs, stretch=1)

        grp = QGroupBox("Advance")
        f = QFormLayout(grp)
        self.cmb_pay = QComboBox()
        self.cmb_pay.setMinimumWidth(300)
        self.spn_amt = QDoubleSpinBox()
        self.spn_amt.setRange(0.0, 10 ** 9)
        self.spn_amt.setDecimals(2)
        self.dt = QDateEdit(QDate.currentDate())
        self.dt.setCalendarPopup(True)
        self.ed_remarks = QLineEdit()
        self.ed_remarks.setPlaceholderText("Comments")
        self.lbl_already = QLabel("-")
        f.addRow("Pay Code:", self.cmb_pay)
        f.addRow("Amount:", self.spn_amt)
        f.addRow("Date:", self.dt)
        f.addRow("Comments:", self.ed_remarks)
        f.addRow("Already received:", self.lbl_already)
        outer.addWidget(grp)

        row = QHBoxLayout()
        b_save = QPushButton("Save Advance")
        b_save.setProperty("success", True)
        b_save.setToolTip("VB6: PayChargeH + PayCharge + target AdvAmt update")
        b_save.clicked.connect(self._save)
        b_ref = QPushButton("Refresh")
        b_ref.clicked.connect(self._load)
        b_exit = QPushButton("Exit")
        b_exit.clicked.connect(self.close)
        for b in (b_save, b_ref, b_exit):
            row.addWidget(b)
        row.addStretch()
        outer.addLayout(row)
        self.lbl_status = QLabel("Ready")
        outer.addWidget(self.lbl_status)

        for t in (self.tbl_po, self.tbl_hb, self.tbl_rec):
            t.itemSelectionChanged.connect(self._update_already)

    @staticmethod
    def _wrap(tbl) -> QWidget:
        w = QWidget()
        v = QVBoxLayout(w)
        v.setContentsMargins(0, 0, 0, 0)
        v.addWidget(tbl)
        return w

    # --------------------------------------------------------------- loads
    def _load(self):
        try:
            self._codes = _adv.rev_pay_codes()
        except Exception as exc:
            self._codes = []
            self.lbl_status.setText(f"Pay codes fail: {exc}")
        self.cmb_pay.clear()
        for c in self._codes:
            self.cmb_pay.addItem(f"{c['name']} [{c['code']}]", c["code"])
        try:
            self._po = _adv.packing_orders()
        except Exception as exc:
            self._po = []
            self.lbl_status.setText(f"PackingOrder fail: {exc}")
        _fill(self.tbl_po, [
            (r["docid"], r["vno"], r["custname"], r["vdate"],
             f"{r['netamt']:.2f}", f"{r['advamt']:.2f}", r["restcode"])
            for r in self._po])
        try:
            self._hb = _adv.hall_bookings()
        except Exception as exc:
            self._hb = []
            self.lbl_status.setText(f"HallBook fail: {exc}")
        _fill(self.tbl_hb, [
            (r["docid"], r["vno"], r["party"], r["vdate"],
             f"{r['netamt']:.2f}", f"{r['advance']:.2f}", r["restcode"])
            for r in self._hb])
        try:
            self._rec = _adv.advance_receipts("AD")
        except Exception as exc:
            self._rec = []
            self.lbl_status.setText(f"Receipts fail: {exc}")
        _fill(self.tbl_rec, [
            (r["docid"], r["vno"], r["vdate"], r["comments"], r["paytype"],
             f"{r['amtcr']:.2f}", r["contradocid"]) for r in self._rec])
        self._update_already()

    def _target(self) -> dict | None:
        idx = self.tabs.currentIndex()
        if idx == 0:
            r = self.tbl_po.currentRow()
            if 0 <= r < len(self._po):
                return dict(self._po[r], kind="PO")
        elif idx == 1:
            r = self.tbl_hb.currentRow()
            if 0 <= r < len(self._hb):
                return dict(self._hb[r], kind="HB")
        return None

    def _update_already(self, *_):
        tgt = self._target()
        if not tgt:
            self.lbl_already.setText("-")
            return
        try:
            info = _adv.paid_against_contra(tgt["docid"])
        except Exception as exc:
            self.lbl_already.setText(f"fail: {exc}")
            return
        self.lbl_already.setText(
            f"{info['count']} line(s) / {info['amount']:.2f}")

    # -------------------------------------------------------------- action
    def _save(self):
        tgt = self._target()
        if not tgt:
            QMessageBox.information(self, self.windowTitle(),
                                    "Pehle order/booking select karo")
            return
        amount = self.spn_amt.value()
        paycode = self.cmb_pay.currentData()
        if amount <= 0:
            QMessageBox.information(self, self.windowTitle(),
                                    "Amount > 0 hona chahiye")
            return
        if not paycode:
            QMessageBox.information(self, self.windowTitle(),
                                    "Pay Code select karo")
            return
        paytype = ""
        for c in self._codes:
            if c["code"] == paycode:
                paytype = c["paytype"]
        try:
            res = _adv.receive_order_advance(
                target=tgt, amount=amount, paycode=paycode,
                paytype=paytype, vtype="AD",
                vdate=self.dt.date().toPyDate(),
                comments=self.ed_remarks.text().strip(),
                restcode=tgt.get("restcode", ""))
        except Exception as exc:
            QMessageBox.critical(self, self.windowTitle(),
                                 f"Save fail: {exc}")
            return
        self.lbl_status.setText(
            f"Saved {res['docid']} (VNo {res['vno']}) - {amount:.2f} "
            f"advance on {tgt['docid']}")
        QMessageBox.information(
            self, self.windowTitle(),
            f"Advance {amount:.2f} saved\nDocId: {res['docid']}\n"
            f"Target: {tgt['docid']}")
        self.spn_amt.setValue(0.0)
        self.ed_remarks.clear()
        self._load()


def open_order_advance(parent=None):
    """Menu leaf 'Order Booking Advance' -> VB6 POSAdvanceDepDialog."""
    dlg = OrderAdvanceDialog(parent)
    dlg.exec()
    return dlg


def main() -> int:
    app = QApplication(sys.argv)
    d = OrderAdvanceDialog()
    d.show()
    return app.exec()


if __name__ == "__main__":
    os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
    sys.exit(main())
