"""Catering Booking UI (VB6 CateringBooking.frm port) — Catering Operations.

VB6 form: CateringBooking (Caption="Catering Booking")
- Separate from Hall Booking - handles outdoor/off-premise catering
- Manages catering bookings, menu planning, resource allocation
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
    QTableWidgetItem, QVBoxLayout, QWidget, QComboBox, QGroupBox,
    QDateEdit, QTextEdit
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


def _editable_cell(val, fg: str = "") -> QTableWidgetItem:
    if isinstance(val, (datetime.date, datetime.datetime)):
        val = f"{val:%d/%b/%Y}"
    it = QTableWidgetItem("" if val is None else str(val))
    it.setFlags(it.flags() | Qt.ItemFlag.ItemIsEditable)
    if fg:
        it.setForeground(QColor(fg))
    return it


class CateringBookingDialog(QDialog):
    """Catering Booking (VB6 CateringBooking.frm port) - outdoor/off-premise catering."""

    COLS = ["SNo", "DocId", "VNo", "Date", "Party", "Function Date", "Venue", "Cover Rate", "Pax", "Status", "Advance"]
    KEYS = ["sno", "docid", "vno", "vdate", "party", "func_date", "venue", "cover_rate", "pax", "status", "advance"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Catering Booking - HMS_py")
        self.resize(1100, 700)
        self.edit_docid = None
        self._build_ui()
        self._load_bookings()

    def _build_ui(self):
        p = _theme.palette()
        root = QVBoxLayout(self)
        root.setContentsMargins(12, 10, 12, 10)
        root.setSpacing(8)

        # Title
        title = QLabel("Catering Booking (Outdoor/Off-Premise)")
        title.setStyleSheet(f"font-weight: bold; font-size: 14px; color: {p['text']};")
        root.addWidget(title)

        # Search bar
        search_bar = QHBoxLayout()
        search_bar.addWidget(QLabel("Search:"))
        self.ed_search = QLineEdit()
        self.ed_search.setPlaceholderText("Party name / DocId...")
        self.ed_search.textChanged.connect(self._filter_table)
        search_bar.addWidget(self.ed_search)

        btn_refresh = QPushButton("Refresh")
        btn_refresh.clicked.connect(self._load_bookings)
        search_bar.addWidget(btn_refresh)

        btn_exit = QPushButton("Exit")
        btn_exit.clicked.connect(self.reject)
        search_bar.addStretch(1)
        search_bar.addWidget(btn_exit)
        root.addLayout(search_bar)

        # Main content - splitter style (table left, form right)
        main_split = QHBoxLayout()

        # Left: Table
        table_wrap = QWidget()
        table_layout = QVBoxLayout(table_wrap)
        table_layout.setContentsMargins(0, 0, 0, 0)

        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels(self.COLS)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.cellDoubleClicked.connect(self._on_edit)
        table_layout.addWidget(self.tbl)

        # Table buttons
        tbl_btns = QHBoxLayout()
        btn_new = QPushButton("New Catering")
        btn_new.clicked.connect(self._on_new)
        btn_edit = QPushButton("Edit")
        btn_edit.clicked.connect(self._on_edit)
        btn_delete = QPushButton("Delete")
        btn_delete.clicked.connect(self._on_delete)
        for b in (btn_new, btn_edit, btn_delete):
            tbl_btns.addWidget(b)
        tbl_btns.addStretch(1)
        table_layout.addLayout(tbl_btns)

        main_split.addWidget(table_wrap, 2)

        # Right: Form
        form_wrap = QWidget()
        form_wrap.setMaximumWidth(400)
        form_layout = QVBoxLayout(form_wrap)
        form_layout.setContentsMargins(0, 0, 0, 0)

        form_title = QLabel("Booking Details")
        form_title.setStyleSheet(f"font-weight: bold; font-size: 12px; color: {p['text']};")
        form_layout.addWidget(form_title)

        self.form = QFormLayout()
        self.edits = {}

        # Form fields
        fields = [
            ("party", "Party Name"),
            ("add1", "Address 1"),
            ("add2", "Address 2"),
            ("city", "City"),
            ("func_date", "Function Date (DD/MM/YYYY)"),
            ("func_time", "Function Time"),
            ("venue", "Venue/Location"),
            ("cover_rate", "Cover Rate"),
            ("pax", "No. of Pax"),
            ("rest", "Rest Code"),
            ("mktseg", "Market Segment"),
            ("bussrc", "Business Source"),
            ("company", "Company Code"),
            ("agent", "Booking Agent"),
            ("inquiry", "Inquiry Code"),
            ("remark", "Remarks"),
        ]

        for key, label in fields:
            if key == "remark":
                e = QTextEdit()
                e.setMaximumHeight(80)
            else:
                e = QLineEdit()
            if key == "func_date":
                e.setPlaceholderText("DD/MM/YYYY")
            self.form.addRow(label, e)
            self.edits[key] = e

        form_layout.addLayout(self.form)

        # Form buttons
        form_btns = QHBoxLayout()
        self.btn_save = QPushButton("Save")
        self.btn_save.setFont(QFont("Segoe UI", 10, QFont.Weight.Bold))
        self.btn_save.clicked.connect(self._save)
        self.btn_cancel = QPushButton("Cancel")
        self.btn_cancel.clicked.connect(self._cancel_edit)
        form_btns.addWidget(self.btn_save)
        form_btns.addWidget(self.btn_cancel)
        form_layout.addLayout(form_btns)

        form_layout.addStretch(1)
        main_split.addWidget(form_wrap, 1)

        root.addLayout(main_split)

        # Status
        self.lbl_status = QLabel("Ready")
        self.lbl_status.setFont(QFont("Segoe UI", 9))
        self.lbl_status.setStyleSheet(f"color: {p['text_dim']};")
        root.addWidget(self.lbl_status)

        # Shortcuts
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._on_new)
        QShortcut(QKeySequence("Escape"), self, activated=self._cancel_edit)
        QShortcut(QKeySequence("F5"), self, activated=self._load_bookings)
        QShortcut(QKeySequence("Return"), self.ed_search, activated=lambda: None)

    def _load_bookings(self):
        """Load catering bookings from CateringBooking table."""
        try:
            bookings = bops.catering_list(limit=300)
            self.tbl.setRowCount(len(bookings))
            for i, b in enumerate(bookings):
                self.tbl.setItem(i, 0, _cell(i + 1))
                self.tbl.setItem(i, 1, _cell(b.get("docid", "")))
                self.tbl.setItem(i, 2, _cell(b.get("vno", 0)))
                func_date = b.get("func_date")
                if func_date and hasattr(func_date, 'strftime'):
                    func_date = func_date.strftime("%d/%b/%Y")
                elif func_date:
                    func_date = str(func_date)[:10]
                self.tbl.setItem(i, 3, _cell(b.get("vdate", "")))
                self.tbl.setItem(i, 4, _cell(b.get("party", "")))
                self.tbl.setItem(i, 5, _cell(func_date or ""))
                self.tbl.setItem(i, 6, _cell(b.get("rest", "")))
                self.tbl.setItem(i, 7, _cell(f"{float(b.get('cover_rate', 0)):,.2f}"))
                self.tbl.setItem(i, 8, _cell(int(b.get("pax", b.get("pax", 0)))))
                self.tbl.setItem(i, 9, _cell(b.get("status", "Active")))
                self.tbl.setItem(i, 10, _cell("0.00"))  # Advance - would need separate query

            self.lbl_status.setText(f"Loaded {len(bookings)} catering bookings")
        except Exception as e:
            self.lbl_status.setText(f"Load failed: {e}")

    def _filter_table(self):
        search = self.ed_search.text().lower()
        for row in range(self.tbl.rowCount()):
            party_item = self.tbl.item(row, 4)
            docid_item = self.tbl.item(row, 1)
            match = False
            if party_item and search in party_item.text().lower():
                match = True
            if docid_item and search in docid_item.text().lower():
                match = True
            self.tbl.setRowHidden(row, not match)

    def _on_new(self):
        """Start new catering booking."""
        self._cancel_edit()  # Clear form
        self.edit_docid = None
        # Pre-fill with defaults
        self.edits["func_date"].setText(datetime.date.today().strftime("%d/%m/%Y"))
        self.edits["func_time"].setText("19:00")
        self.edits["cover_rate"].setText("0.00")
        self.edits["pax"].setText("0")
        self.edits["status"].setText("Active")
        self.edits["party"].setFocus()

    def _on_edit(self, row=None, col=None):
        """Edit selected catering booking."""
        if row is None:
            row = self.tbl.currentRow()
        if row < 0:
            QMessageBox.information(self, "Edit", "Select a booking to edit")
            return

        docid = self.tbl.item(row, 1).text() if self.tbl.item(row, 1) else ""
        if not docid:
            return

        try:
            booking = bops.catering_get(docid)
            if not booking:
                QMessageBox.warning(self, "Edit", f"Booking {docid} not found")
                return

            self.edit_docid = docid
            self.edits["party"].setText(booking.get("party", ""))
            self.edits["add1"].setText(booking.get("add1", ""))
            self.edits["add2"].setText(booking.get("add2", ""))
            self.edits["city"].setText(booking.get("city", ""))
            func_date = booking.get("func_date")
            if func_date and hasattr(func_date, 'strftime'):
                self.edits["func_date"].setText(func_date.strftime("%d/%m/%Y"))
            elif func_date:
                self.edits["func_date"].setText(str(func_date)[:10])
            self.edits["func_time"].setText(booking.get("func_time", ""))
            self.edits["venue"].setText(booking.get("rest", ""))
            self.edits["cover_rate"].setText(f"{float(booking.get('cover_rate', 0)):,.2f}")
            self.edits["pax"].setText(str(int(booking.get("pax", 0))))
            self.edits["rest"].setText(booking.get("rest", ""))
            self.edits["mktseg"].setText(booking.get("mktseg", ""))
            self.edits["bussrc"].setText(booking.get("bussrc", ""))
            self.edits["company"].setText(booking.get("company", ""))
            self.edits["agent"].setText(booking.get("agent", ""))
            self.edits["inquiry"].setText(booking.get("inquiry", ""))
            self.edits["remark"].setPlainText(booking.get("remark", ""))

            self.lbl_status.setText(f"Editing {docid}")
        except Exception as e:
            QMessageBox.critical(self, "Edit", f"Failed to load booking:\n{e}")

    def _on_delete(self):
        """Delete selected catering booking."""
        row = self.tbl.currentRow()
        if row < 0:
            QMessageBox.information(self, "Delete", "Select a booking to delete")
            return

        docid = self.tbl.item(row, 1).text() if self.tbl.item(row, 1) else ""
        if not docid:
            return

        if QMessageBox.question(self, "Delete Catering",
                f"Delete catering booking {docid}?",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return

        try:
            # CateringBooking table might not exist - handle gracefully
            cn = db.connect()
            db.execute("DELETE FROM CateringBooking WHERE DocId = ?", (docid,), cn=cn, commit=True)
            cn.close()
            QMessageBox.information(self, "Delete", f"Booking {docid} deleted")
            self._load_bookings()
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"Delete failed (table may not exist):\n{e}")

    def _cancel_edit(self):
        """Cancel current edit."""
        self.edit_docid = None
        for e in self.edits.values():
            if isinstance(e, QTextEdit):
                e.clear()
            else:
                e.clear()
        self.lbl_status.setText("Ready")

    def _save(self):
        """Save catering booking (new or update)."""
        party = self.edits["party"].text().strip()
        if not party:
            QMessageBox.warning(self, "Save", "Party Name zaroori hai")
            return

        try:
            rec = {
                "party": party,
                "add1": self.edits["add1"].text(),
                "add2": self.edits["add2"].text(),
                "city": self.edits["city"].text(),
                "func_date": self._parse_date(self.edits["func_date"].text()),
                "func_time": self.edits["func_time"].text(),
                "rest": self.edits["venue"].text(),
                "cover_rate": float(self.edits["cover_rate"].text() or 0),
                "pax": int(self.edits["pax"].text() or 0),
                "mktseg": self.edits["mktseg"].text(),
                "bussrc": self.edits["bussrc"].text(),
                "company": self.edits["company"].text(),
                "agent": self.edits["agent"].text(),
                "inquiry": self.edits["inquiry"].text(),
                "remark": self.edits["remark"].toPlainText() if isinstance(self.edits["remark"], QTextEdit) else self.edits["remark"].text(),
            }

            cn = db.connect()
            if self.edit_docid:
                # Update - but CateringBooking might not have update function, use raw SQL
                db.execute("""
                    UPDATE CateringBooking SET PartyName = ?, Add1 = ?, Add2 = ?, City = ?,
                        Func_Date = ?, Func_Time = ?, RestCode = ?, CoverRate = ?,
                        MarketSeg = ?, BussSource = ?, CompanyCode = ?, BookingAgent = ?,
                        InquiryCode = ?, Remark = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E'
                    WHERE DocId = ?
                """, (rec["party"], rec["add1"], rec["add2"], rec["city"],
                      rec["func_date"], rec["func_time"], rec["rest"], rec["cover_rate"],
                      rec["mktseg"], rec["bussrc"], rec["company"], rec["agent"],
                      rec["inquiry"], rec["remark"], db.get_user() or "SYSTEM", self.edit_docid),
                    cn=cn, commit=True)
                cn.close()
                QMessageBox.information(self, "Catering", f"Booking {self.edit_docid} updated")
            else:
                # Insert - use core catering insert (but it might not exist, use raw)
                # Get next VNo
                vno_rows = db.query(
                    "SELECT MAX(VNo) FROM CateringBooking WITH (UPDLOCK, HOLDLOCK) WHERE Site_Code = ?",
                    (bops.SITE_CODE,), cn=cn)
                vno = (vno_rows[0][0] or 0) + 1 if vno_rows and vno_rows[0][0] else 1
                docid = f"D{bops.SITE_CODE.ljust(2)}CAT".ljust(6) + str(datetime.date.today().year).ljust(4) + str(vno).rjust(8)
                docid = docid[:21]

                now = datetime.datetime.now()
                db.execute("""
                    INSERT INTO CateringBooking (DocId, Vtype, VNo, VTime, Site_Code, PartyName,
                        Add1, Add2, City, Func_Date, Func_Time, CoverRate, RestCode,
                        MarketSeg, BussSource, CompanyCode, BookingAgent, InquiryCode,
                        Remark, U_Name, U_EntDt, U_AE, LogSite_Code)
                    VALUES (?, 'CAT', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)
                """, (docid, vno, now.strftime("%H:%M"), bops.SITE_CODE,
                      rec["party"], rec["add1"], rec["add2"], rec["city"],
                      rec["func_date"], rec["func_time"], rec["cover_rate"], rec["rest"],
                      rec["mktseg"], rec["bussrc"], rec["company"], rec["agent"],
                      rec["inquiry"], rec["remark"], db.get_user() or "SYSTEM", bops.SITE_CODE),
                    cn=cn, commit=True)
                cn.close()
                QMessageBox.information(self, "Catering", f"New booking created: {docid}")

            self._load_bookings()
            self._cancel_edit()
        except Exception as e:
            QMessageBox.critical(self, "Save", f"Save failed (CateringBooking table may not exist):\n{e}")

    def _parse_date(self, date_str):
        """Parse DD/MM/YYYY to date object."""
        try:
            parts = date_str.split("/")
            if len(parts) == 3:
                return datetime.date(int(parts[2]), int(parts[1]), int(parts[0]))
        except Exception:
            pass
        return None


def open_catering_booking(parent=None):
    """Shell opener for 'Catering Booking' leaf."""
    w = CateringBookingDialog(parent)
    w.setWindowFlags(Qt.WindowType.Window)
    w.show()
    return w


def main():
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = CateringBookingDialog()
    w.resize(1100, 700)
    w.show()
    sys.exit(app.exec())


if __name__ == "__main__":
    main()