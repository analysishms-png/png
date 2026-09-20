"""Purchase Bill Entry (VB6: pPBill port)."""
from __future__ import annotations
import sys, os
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from PyQt6.QtWidgets import (QMainWindow, QWidget, QVBoxLayout, QHBoxLayout,
    QTableWidget, QTableWidgetItem, QPushButton, QLineEdit, QLabel,
    QComboBox, QMessageBox, QGroupBox, QFormLayout, QDateEdit)
from PyQt6.QtCore import Qt, QDate
from PyQt6.QtGui import QColor
from HMS_py.core import purchase as purch
from HMS_py.core import ledger as led

class PurchaseBillWindow(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Purchase Bill Entry")
        self.resize(1000, 700)
        self._all_parties = []
        self._build_ui()
        self._load_data()

    def _build_ui(self):
        central = QWidget(); self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        hdr = QGroupBox("Purchase Bill Header")
        hdr_lay = QFormLayout(hdr)
        self.dt_date = QDateEdit(); self.dt_date.setCalendarPopup(True)
        self.dt_date.setDate(QDate.currentDate())
        self.cbo_party = QComboBox(); self.cbo_party.setEditable(True)
        self.txt_remark = QLineEdit()
        hdr_lay.addRow("Date:", self.dt_date)
        hdr_lay.addRow("Party:", self.cbo_party)
        hdr_lay.addRow("Remark:", self.txt_remark)
        layout.addWidget(hdr)
        lines_grp = QGroupBox("Bill Lines")
        lines_lay = QVBoxLayout(lines_grp)
        self.table = QTableWidget(); self.table.setColumnCount(7)
        self.table.setHorizontalHeaderLabels(
            ["SNo", "Item Code", "Item Name", "Qty", "Rate", "Tax%", "Amount"])
        lines_lay.addWidget(self.table)
        btn_lay = QHBoxLayout()
        self.btn_add = QPushButton("Add Line (+)")
        self.btn_del = QPushButton("Remove (-)")
        self.btn_save = QPushButton("Save Bill")
        self.btn_save.setStyleSheet("QPushButton{background:#28a745;color:white;font-weight:bold;}")
        self.btn_exit = QPushButton("Exit")
        for b in [self.btn_add, self.btn_del, self.btn_save, self.btn_exit]:
            btn_lay.addWidget(b)
        lines_lay.addLayout(btn_lay)
        layout.addWidget(lines_grp)
        self.btn_add.clicked.connect(self._add_line)
        self.btn_del.clicked.connect(self._del_line)
        self.btn_save.clicked.connect(self._save)
        self.btn_exit.clicked.connect(self.close)

    def _load_data(self):
        try:
            self._all_parties = led.list_all()
            for p in self._all_parties:
                self.cbo_party.addItem(p["code"] + " - " + p["name"], p["code"])
        except Exception:
            pass

    def _add_line(self):
        r = self.table.rowCount(); self.table.insertRow(r)
        for c, v in enumerate([str(r+1), "", "", "0", "0", "0", "0"]):
            it = QTableWidgetItem(v); it.setForeground(QColor("#111")); self.table.setItem(r, c, it)

    def _del_line(self):
        r = self.table.currentRow()
        if r >= 0: self.table.removeRow(r)

    def _save(self):
        party_code = self.cbo_party.currentData() or ""
        vdate = self.dt_date.date().toPyDate()
        lines = []
        for r in range(self.table.rowCount()):
            item = self.table.item(r, 1).text().strip() if self.table.item(r, 1) else ""
            if not item: continue
            try:
                qty = float(self.table.item(r, 3).text() or 0)
                rate = float(self.table.item(r, 4).text() or 0)
                tax_per = float(self.table.item(r, 5).text() or 0)
            except ValueError:
                QMessageBox.warning(self, "Error", "Row %d: Invalid" % (r+1)); return
            amount = qty * rate
            tax_amt = amount * tax_per / 100
            lines.append({"item": item, "qty": qty, "rate": rate, "unit": "",
                          "amount": amount, "tax_per": tax_per, "tax_amt": tax_amt,
                          "disc_per": 0, "disc_amt": 0})
        if not lines:
            QMessageBox.warning(self, "Empty", "Koi lines nahi"); return
        try:
            result = purch.purch1_insert({
                "party_code": party_code, "vdate": vdate, "narration": self.txt_remark.text(),
                "net_amount": sum(l["amount"] for l in lines),
                "tax_amount": sum(l["tax_amt"] for l in lines),
            })
            QMessageBox.information(self, "Saved", "Purchase Bill saved!")
            self.table.setRowCount(0)
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))

def open_purchase_bill(parent=None):
    w = PurchaseBillWindow(parent); w.show(); return w
