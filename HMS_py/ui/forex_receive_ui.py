"""Forex Receive Entry (VB6 FrmForExRec - menu leaf "Forex Receive Entry").

VB6 form ke labels: DOC ID / Sr.No / VPrefix / Date / Currency / Qty /
Rate / Amount / PayMode / Remarks / User / Last Update + FGPoint grid +
Print/Exit.  Yahan do tab: "New Entry" (line grid + save) aur "Documents"
(browse VB6 loc_EB336E jaisa).

VB6 refs: FrmForExRec.frm loc_EB336E (browse), loc_14511FC (insert),
loc_14515DF (voucher no), designer labels :616-:552.

Run: python -m HMS_py.ui.forex_receive_ui
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

from HMS_py.core import db as _db
from HMS_py.core import forex_txn as _fx
from HMS_py.ui import theme as _theme

PAYMODES = ("Cash", "Cheque", "Card", "Transfer")


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
            item = QTableWidgetItem("" if v is None else str(v))
            item.setForeground(QColor(pal))
            item.setFlags(item.flags() & ~Qt.ItemFlag.ItemIsEditable)
            t.setItem(i, c, item)


class ForexReceiveDialog(QDialog):
    LINE_COLS = ["#", "Currency", "Qty", "Rate", "Amount", "PayMode",
                 "Remarks"]
    DOC_COLS = ["DocId", "Sr.No", "Date", "Currency", "Qty", "Rate",
                "Amount", "Remarks"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Forex Receive Entry (VB6 FrmForExRec)")
        self.resize(1040, 660)
        self._lines: list[dict] = []
        self._currencies: list[dict] = []
        self._build_ui()
        self._load_currencies()
        self._new_document()
        self._load_docs()

    # ------------------------------------------------------------------ ui
    def _build_ui(self):
        outer = QVBoxLayout(self)
        self.tabs = QTabWidget()
        outer.addWidget(self.tabs)
        self.tabs.addTab(self._tab_entry(), "New Entry")
        self.tabs.addTab(self._tab_docs(), "Documents")

        self.lbl_status = QLabel("Ready")
        outer.addWidget(self.lbl_status)
        row = QHBoxLayout()
        row.addStretch()
        btn_exit = QPushButton("Exit")
        btn_exit.setToolTip("Forex Receive Entry band karo")
        btn_exit.clicked.connect(self.close)
        row.addWidget(btn_exit)
        outer.addLayout(row)

    def _tab_entry(self) -> QWidget:
        w = QWidget()
        v = QVBoxLayout(w)

        grp = QGroupBox("Header")
        f = QFormLayout(grp)
        self.ed_docid = QLineEdit(); self.ed_docid.setReadOnly(True)
        self.ed_vno = QLineEdit(); self.ed_vno.setReadOnly(True)
        self.ed_vprefix = QLineEdit(); self.ed_vprefix.setReadOnly(True)
        self.dt_vdate = QDateEdit(QDate.currentDate())
        self.dt_vdate.setCalendarPopup(True)
        self.cmb_paymode = QComboBox()
        self.cmb_paymode.addItems(list(PAYMODES))
        self.ed_remarks = QLineEdit()
        self.ed_remarks.setPlaceholderText("Remarks (max 255)")
        f.addRow("DOC ID:", self.ed_docid)
        f.addRow("Sr.No:", self.ed_vno)
        f.addRow("VPrefix:", self.ed_vprefix)
        f.addRow("Date:", self.dt_vdate)
        f.addRow("PayMode:", self.cmb_paymode)
        f.addRow("Remarks:", self.ed_remarks)
        v.addWidget(grp)

        line = QGroupBox("Line")
        fl = QFormLayout(line)
        self.cmb_curr = QComboBox()
        self.cmb_curr.setMinimumWidth(260)
        self.spn_qty = QDoubleSpinBox()
        self.spn_qty.setRange(0.0, 10 ** 9)
        self.spn_qty.setDecimals(3)
        self.spn_rate = QDoubleSpinBox()
        self.spn_rate.setRange(0.0, 10 ** 9)
        self.spn_rate.setDecimals(4)
        self.ed_amount = QLineEdit(); self.ed_amount.setReadOnly(True)
        self.ed_amount.setText("0.00")
        for sp in (self.spn_qty, self.spn_rate):
            sp.valueChanged.connect(self._calc_amount)
        self.cmb_curr.currentIndexChanged.connect(self._rate_from_master)
        btn_add = QPushButton("Add Line (+)")
        btn_add.setToolTip("Line grid me add karo")
        btn_add.clicked.connect(self._add_line)
        btn_del = QPushButton("Remove Line (-)")
        btn_del.setToolTip("Selected line hatao")
        btn_del.clicked.connect(self._del_line)
        bl = QHBoxLayout()
        bl.addWidget(btn_add)
        bl.addWidget(btn_del)
        bl.addStretch()
        fl.addRow("Currency:", self.cmb_curr)
        fl.addRow("Qty:", self.spn_qty)
        fl.addRow("Rate:", self.spn_rate)
        fl.addRow("Amount:", self.ed_amount)
        fl.addRow("", self._wrap(bl))
        v.addWidget(line)

        self.tbl_lines = _mk_table(self.LINE_COLS)
        v.addWidget(self.tbl_lines, stretch=1)

        btns = QHBoxLayout()
        b_new = QPushButton("New Document")
        b_new.clicked.connect(self._new_document)
        b_save = QPushButton("Save")
        b_save.setProperty("success", True)
        b_save.setToolTip("ForExTrans me saari lines atomic insert karo")
        b_save.clicked.connect(self._save)
        b_del = QPushButton("Delete Document")
        b_del.setToolTip("VB6: Delete From ForExTrans Where DocId=...")
        b_del.clicked.connect(self._delete_doc)
        b_ref = QPushButton("Refresh")
        b_ref.clicked.connect(self._load_docs)
        for b in (b_new, b_save, b_del, b_ref):
            btns.addWidget(b)
        btns.addStretch()
        v.addLayout(btns)
        return w

    def _tab_docs(self) -> QWidget:
        w = QWidget()
        v = QVBoxLayout(w)
        self.tbl_docs = _mk_table(self.DOC_COLS)
        v.addWidget(self.tbl_docs, stretch=1)
        self.tbl_lines2 = _mk_table(
            ["Currency", "Date", "Qty", "Rate", "Amount", "PayMode",
             "Remarks", "User"])
        v.addWidget(self.tbl_lines2)
        self.tbl_docs.itemSelectionChanged.connect(self._load_detail)
        btns = QHBoxLayout()
        b_del = QPushButton("Delete Selected Document")
        b_del.clicked.connect(self._delete_from_browser)
        b_ref = QPushButton("Refresh")
        b_ref.clicked.connect(self._load_docs)
        for b in (b_del, b_ref):
            btns.addWidget(b)
        btns.addStretch()
        v.addLayout(btns)
        return w

    @staticmethod
    def _wrap(layout) -> QWidget:
        w = QWidget()
        w.setLayout(layout)
        return w

    # --------------------------------------------------------------- loads
    def _load_currencies(self):
        try:
            self._currencies = _fx.currencies()
        except Exception as exc:
            self._currencies = []
            self.lbl_status.setText(f"Currency master load fail: {exc}")
        self.cmb_curr.clear()
        if not self._currencies:
            self.lbl_status.setText(
                "Forex Master khali hai - pehle Finance > Forex Master me "
                "currency banayein, phir yahan receive karein.")
            return
        for rec in self._currencies:
            self.cmb_curr.addItem(
                f"{rec['name']}  [{rec['code']}] rate={rec['rate']}",
                rec["code"])
        self._rate_from_master()

    def _rate_from_master(self, *_):
        code = self.cmb_curr.currentData()
        for rec in self._currencies:
            if rec["code"] == code and rec["rate"]:
                self.spn_rate.setValue(float(rec["rate"]))
        self._calc_amount()

    def _calc_amount(self, *_):
        self.ed_amount.setText(
            f"{self.spn_qty.value() * self.spn_rate.value():.2f}")

    def _new_document(self):
        try:
            vno = _fx.next_vno()
        except Exception:
            vno = 0
        self.ed_vno.setText(str(vno))
        self.ed_vprefix.setText("" if vno == 0 else _db.get_vprefix())
        self.ed_docid.setText("")
        self.dt_vdate.setDate(QDate.currentDate())
        self.ed_remarks.clear()
        self._lines = []
        self._render_lines()

    def _render_lines(self):
        _fill(self.tbl_lines, [
            (i + 1, l["forexcode"], f"{l['qty']:g}", f"{l['rate']:g}",
             f"{l['amount']:.2f}", l["paymode"], l["remarks"])
            for i, l in enumerate(self._lines)])

    # -------------------------------------------------------------- actions
    def _add_line(self):
        code = self.cmb_curr.currentData()
        if not code:
            QMessageBox.information(self, self.windowTitle(),
                                    "Currency select karo (Forex Master "
                                    "check karein)")
            return
        qty, rate = self.spn_qty.value(), self.spn_rate.value()
        if qty <= 0 or rate <= 0:
            QMessageBox.information(self, self.windowTitle(),
                                    "Qty aur Rate dono > 0 hone chahiye")
            return
        self._lines.append({
            "forexcode": code, "qty": qty, "rate": rate,
            "amount": round(qty * rate, 2),
            "paymode": self.cmb_paymode.currentText(),
            "remarks": self.ed_remarks.text().strip()})
        self._render_lines()

    def _del_line(self):
        r = self.tbl_lines.currentRow()
        if 0 <= r < len(self._lines):
            del self._lines[r]
            self._render_lines()

    def _save(self):
        if not self._lines:
            QMessageBox.information(self, self.windowTitle(),
                                    "Koi line nahi - pehle Add Line karo")
            return
        vdate = self.dt_vdate.date().toPyDate()
        try:
            # VB6 BeginTrans/CommitTrans -> db.transaction atomic
            with _db.transaction() as cn:
                docid, vno = "", 0
                for ln in self._lines:
                    res = _fx.txn_insert(
                        dict(ln, vdate=vdate), cn=cn, commit=False)
                    docid, vno = res["docid"], res["vno"]
        except Exception as exc:
            QMessageBox.critical(self, self.windowTitle(),
                                 f"Save fail: {exc}")
            return
        self.ed_docid.setText(docid)
        self.ed_vno.setText(str(vno))
        self.lbl_status.setText(
            f"Saved: {docid} ({len(self._lines)} lines, "
            f"amount {sum(l['amount'] for l in self._lines):.2f})")
        QMessageBox.information(self, self.windowTitle(),
                                f"Saved {len(self._lines)} line(s)\n{docid}")
        self._lines = []
        self._render_lines()
        self._load_docs()

    def _selected_docid(self) -> str:
        r = self.tbl_docs.currentRow()
        if r < 0:
            return ""
        it = self.tbl_docs.item(r, 0)
        return it.text() if it else ""

    def _delete_from_browser(self):
        docid = self._selected_docid()
        if not docid:
            QMessageBox.information(self, self.windowTitle(),
                                    "Pehle document select karo")
            return
        self._do_delete(docid)

    def _delete_doc(self):
        docid = self.ed_docid.text().strip()
        if not docid:
            docid = self._selected_docid()
        if not docid:
            QMessageBox.information(self, self.windowTitle(),
                                    "Save/selection ke baad hi delete hota hai")
            return
        self._do_delete(docid)

    def _do_delete(self, docid: str):
        if (QMessageBox.question(
                self, "Delete",
                f"Forex document {docid} delete karein?",
                QMessageBox.StandardButton.Yes
                | QMessageBox.StandardButton.No)
                != QMessageBox.StandardButton.Yes):
            return
        try:
            _fx.txn_delete(docid)
        except Exception as exc:
            QMessageBox.critical(self, self.windowTitle(),
                                 f"Delete fail: {exc}")
            return
        self.lbl_status.setText(f"Deleted {docid}")
        self.ed_docid.clear()
        self._load_docs()

    def _load_docs(self):
        try:
            rows = _fx.txn_browse()
        except Exception as exc:
            rows = []
            self.lbl_status.setText(f"Browse fail: {exc}")
        _fill(self.tbl_docs, [
            (r["docid"], r["vno"],
             r["vdate"].strftime("%d/%m/%Y")
             if hasattr(r["vdate"], "strftime") else r["vdate"],
             r["forexcode"], f"{r['qty']:g}", f"{r['rate']:g}",
             f"{r['amount']:.2f}", r["remarks"]) for r in rows])
        self._load_detail()

    def _load_detail(self):
        docid = self._selected_docid()
        if not docid:
            _fill(self.tbl_lines2, [])
            return
        try:
            lines = _fx.txn_lines(docid)
        except Exception:
            lines = []
        _fill(self.tbl_lines2, [
            (l["currency"],
             l["vdate"].strftime("%d/%m/%Y")
             if hasattr(l["vdate"], "strftime") else l["vdate"],
             f"{l['qty']:g}", f"{l['rate']:g}", f"{l['amount']:.2f}",
             l["paymode"], l["remarks"], l["u_name"]) for l in lines])


def open_forex_receive(parent=None):
    """Menu leaf 'Forex Receive Entry' -> VB6 FrmForExRec."""
    dlg = ForexReceiveDialog(parent)
    dlg.exec()
    return dlg


def main() -> int:
    app = QApplication(sys.argv)
    d = ForexReceiveDialog()
    d.show()
    return app.exec()


if __name__ == "__main__":
    os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
    sys.exit(main())
