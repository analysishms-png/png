"""Hall Bill Estimate UI (VB6 HallBillEstimate.frm port) — Bill Estimate Billing.

VB6 form: HallBillEstimate (Caption="Hall Bill Estimate")
- Different from HallEstimate (which is booking -> estimate preview)
- This creates a detailed bill estimate from a booking with itemized breakdown
- Shows: Hall rent, menu items, taxes (CGST/SGST/IGST), service charge, discounts
- Allows preview before creating actual bill
"""

from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

import datetime
from PyQt6.QtCore import Qt, QDate
from PyQt6.QtGui import QFont, QColor, QKeySequence, QShortcut
from PyQt6.QtWidgets import (
    QApplication, QDialog, QFormLayout, QHBoxLayout,
    QLabel, QLineEdit, QMessageBox, QPushButton, QTableWidget,
    QTableWidgetItem, QVBoxLayout, QWidget, QComboBox
)

from HMS_py.core import db
from HMS_py.core import banquet_ops as bops
from HMS_py.ui import theme as _theme


def _cell(val, fg: str = "") -> QTableWidgetItem:
    if isinstance(val, (datetime.date, datetime.datetime)):
        val = f"{val:%d/%b/%Y}"
    it = QTableWidgetItem("" if val is None else str(val))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    if fg:
        it.setForeground(QColor(fg))
    return it


class HallBillEstimateDialog(QDialog):
    """Hall Bill Estimate (VB6 HallBillEstimate.frm port) - detailed bill preview from booking."""

    COLS = ["SNo", "Item", "Qty", "Unit", "Rate", "Amount", "Tax%", "TaxAmt", "Disc%", "DiscAmt", "Net"]
    KEYS = ["sno", "item", "qty", "unit", "rate", "amount", "taxper", "taxamt", "discper", "discamt", "net"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Hall Bill Estimate - HMS_py")
        self.resize(1100, 700)
        self._build_ui()
        self._load_booking_list()

    def _build_ui(self):
        p = _theme.palette()
        root = QVBoxLayout(self)
        root.setContentsMargins(12, 10, 12, 10)
        root.setSpacing(8)

        # Title
        title = QLabel("Hall Bill Estimate Billing")
        title.setStyleSheet(f"font-weight: bold; font-size: 14px; color: {p['text']};")
        root.addWidget(title)

        # Search/Select Booking
        search_bar = QHBoxLayout()
        search_bar.addWidget(QLabel("Booking DocId:"))
        self.ed_book = QLineEdit()
        self.ed_book.setPlaceholderText("DKKIBOOK2026001 / DKKOBOOK...")
        search_bar.addWidget(self.ed_book)

        btn_prev = QPushButton("Preview Estimate")
        btn_prev.setFont(QFont("Segoe UI", 10, QFont.Weight.Bold))
        btn_prev.clicked.connect(self._on_preview)
        search_bar.addWidget(btn_prev)

        btn_refresh = QPushButton("Refresh")
        btn_refresh.clicked.connect(self._load_booking_list)
        search_bar.addWidget(btn_refresh)

        btn_exit = QPushButton("Exit")
        btn_exit.clicked.connect(self.reject)
        search_bar.addStretch(1)
        search_bar.addWidget(btn_exit)
        root.addLayout(search_bar)

        # Summary labels
        summary_wrap = QWidget()
        summary_layout = QHBoxLayout(summary_wrap)
        summary_layout.setContentsMargins(0, 0, 0, 0)

        self.lbl_party = QLabel("Party: -")
        self.lbl_party.setFont(QFont("Segoe UI", 10, QFont.Weight.Bold))
        self.lbl_func = QLabel("Function: -")
        self.lbl_advance = QLabel("Advance: 0.00")
        self.lbl_net = QLabel("Net Estimate: 0.00")
        self.lbl_net.setFont(QFont("Segoe UI", 10, QFont.Weight.Bold))
        self.lbl_net.setStyleSheet(f"color: {p['accent']};")

        for w in (self.lbl_party, self.lbl_func, self.lbl_advance, self.lbl_net):
            summary_layout.addWidget(w)
        summary_layout.addStretch(1)
        root.addWidget(summary_wrap)

        # Estimate lines table
        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels(self.COLS)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.tbl)

        # Totals row
        totals_wrap = QWidget()
        totals_layout = QHBoxLayout(totals_wrap)
        totals_layout.setContentsMargins(0, 0, 0, 0)

        self.lbl_tot_amount = QLabel("Total Amt: 0.00")
        self.lbl_tot_tax = QLabel("Total Tax: 0.00")
        self.lbl_tot_disc = QLabel("Total Disc: 0.00")
        self.lbl_tot_net = QLabel("Net Total: 0.00")
        self.lbl_tot_net.setFont(QFont("Segoe UI", 10, QFont.Weight.Bold))

        for w in (self.lbl_tot_amount, self.lbl_tot_tax, self.lbl_tot_disc, self.lbl_tot_net):
            totals_layout.addWidget(w)
        totals_layout.addStretch(1)
        root.addWidget(totals_wrap)

        # Status
        self.lbl_status = QLabel("Enter Booking DocId and click Preview")
        self.lbl_status.setFont(QFont("Segoe UI", 9))
        self.lbl_status.setStyleSheet(f"color: {p['text_dim']};")
        root.addWidget(self.lbl_status)

        # Shortcuts
        QShortcut(QKeySequence("Return"), self.ed_book, activated=self._on_preview)
        QShortcut(QKeySequence("Escape"), self, activated=self.reject)
        QShortcut(QKeySequence("F5"), self, activated=self._load_booking_list)

    def _load_booking_list(self):
        """Preload recent bookings for quick reference."""
        try:
            bookings = bops.hallbook_list(limit=20)
            self.lbl_status.setText(f"Ready | {len(bookings)} recent bookings loaded")
        except Exception as e:
            self.lbl_status.setText(f"Ready (booking list load failed: {e})")

    def _on_preview(self):
        bookdocid = self.ed_book.text().strip()
        if not bookdocid:
            QMessageBox.warning(self, "Hall Bill Estimate", "Booking DocId zaroori hai")
            return

        try:
            res = bops.hall_estimate_preview(bookdocid)
        except Exception as ex:
            QMessageBox.critical(self, "Hall Bill Estimate", f"Failed to generate estimate:\n{ex}")
            return

        booking = res["booking"]
        lines = res["lines"]
        amounts = res["amounts"]
        advance = res["advance_received"]
        billed = res["billed_so_far"]
        balance = res["balance_due"]

        # Update summary labels
        self.lbl_party.setText(f"Party: {booking.get('party', '')}")
        func_name = booking.get('func_name', '')
        func_date = booking.get('frdate', '')
        self.lbl_func.setText(f"Function: {func_name} ({func_date})")
        self.lbl_advance.setText(f"Advance: {advance:,.2f}")
        self.lbl_net.setText(f"Net Estimate: {balance:,.2f}")

        # Populate estimate lines
        self.tbl.setRowCount(0)

        if lines:
            # Use HallBook1 lines
            for i, line in enumerate(lines, 1):
                row = self.tbl.rowCount()
                self.tbl.insertRow(row)
                self.tbl.setItem(row, 0, _cell(i))
                self.tbl.setItem(row, 1, _cell(line.get("item", "")))
                self.tbl.setItem(row, 2, _cell(line.get("qtyiss", line.get("qty", 0))))
                self.tbl.setItem(row, 3, _cell(line.get("unit", "")))
                self.tbl.setItem(row, 4, _cell(f"{float(line.get('rate', 0)):,.2f}"))
                self.tbl.setItem(row, 5, _cell(f"{float(line.get('amount', 0)):,.2f}"))
                self.tbl.setItem(row, 6, _cell(line.get("taxper", 0)))
                self.tbl.setItem(row, 7, _cell(f"{float(line.get('taxamt', 0)):,.2f}"))
                self.tbl.setItem(row, 8, _cell(line.get("discper", 0)))
                self.tbl.setItem(row, 9, _cell(f"{float(line.get('discamt', 0)):,.2f}"))
                net = float(line.get("amount", 0)) + float(line.get("taxamt", 0)) - float(line.get("discamt", 0))
                self.tbl.setItem(row, 10, _cell(f"{net:,.2f}"))
        else:
            # Fallback: show header amounts as single line
            self.tbl.insertRow(0)
            self.tbl.setItem(0, 0, _cell(1))
            self.tbl.setItem(0, 1, _cell("Banquet Package (Header Total)"))
            self.tbl.setItem(0, 2, _cell(booking.get("guaratt", 0)))
            self.tbl.setItem(0, 3, _cell("PAX"))
            self.tbl.setItem(0, 4, _cell(f"{float(booking.get('cover_rate', 0)):,.2f}"))
            self.tbl.setItem(0, 5, _cell(f"{amounts['total']:,.2f}"))
            self.tbl.setItem(0, 6, _cell(amounts.get("taxper", amounts.get("tax", 0))))
            self.tbl.setItem(0, 7, _cell(f"{amounts.get('tax', 0):,.2f}"))
            self.tbl.setItem(0, 8, _cell(amounts.get("discper", 0)))
            self.tbl.setItem(0, 9, _cell(f"{amounts.get('discamt', 0):,.2f}"))
            self.tbl.setItem(0, 10, _cell(f"{amounts['netamt']:,.2f}"))

        # Update totals
        self.lbl_tot_amount.setText(f"Total Amt: {amounts['total']:,.2f}")
        self.lbl_tot_tax.setText(f"Total Tax: {amounts.get('tax', 0):,.2f}")
        self.lbl_tot_disc.setText(f"Total Disc: {amounts.get('discamt', 0):,.2f}")
        self.lbl_tot_net.setText(f"Net Total: {amounts['netamt']:,.2f}")

        self.lbl_status.setText(f"Estimate generated for {bookdocid} | {self.tbl.rowCount()} lines")


def open_hall_bill_estimate(parent=None):
    """Shell opener for 'Hall Bill Estimate' leaf."""
    w = HallBillEstimateDialog(parent)
    w.setWindowFlags(Qt.WindowType.Window)
    w.show()
    return w


def main():
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = HallBillEstimateDialog()
    w.resize(1100, 700)
    w.show()
    sys.exit(app.exec())


if __name__ == "__main__":
    main()