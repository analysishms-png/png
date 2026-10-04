"""Hall A/C Posting Charge UI (VB6 HallAcPostChrg.frm port) — Hall A/C Posting Charges.

VB6 form: HallAcPostChrg (Caption="Hall A/C Posting Charge")
- Posts banquet charges to accounts (GL integration)
- Creates voucher entries for hall revenue, taxes, advances
- Links HallSale1/PayChargeH to GL accounts
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
    QDateEdit
)

from HMS_py.core import db
from HMS_py.core import banquet_ops as bops
from HMS_py.core import fa_voucher as fv
from HMS_py.ui import theme as _theme


def _cell(val, fg: str = "") -> QTableWidgetItem:
    if isinstance(val, (datetime.date, datetime.datetime)):
        val = f"{val:%d/%b/%Y}"
    it = QTableWidgetItem("" if val is None else str(val))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    if fg:
        it.setForeground(QColor(fg))
    return it


class HallAcPostChrgDialog(QDialog):
    """Hall A/C Posting Charge (VB6 HallAcPostChrg.frm port)."""

    COLS = ["SNo", "Date", "DocId", "VType", "VNo", "Party", "Hall Rent", "F&B Total", "Service Charge", "CGST", "SGST", "IGST", "Advance", "Net Posted", "GL Account", "Status"]
    KEYS = ["sno", "vdate", "docid", "vtype", "vno", "party", "hall_rent", "fb_total", "service_charge", "cgst", "sgst", "igst", "advance", "net_posted", "gl_account", "status"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Hall A/C Posting Charge - HMS_py")
        self.resize(1300, 700)
        self._build_ui()
        self._load_pending_bills()

    def _build_ui(self):
        p = _theme.palette()
        root = QVBoxLayout(self)
        root.setContentsMargins(12, 10, 12, 10)
        root.setSpacing(8)

        # Title
        title = QLabel("Hall A/C Posting Charge (GL Integration)")
        title.setStyleSheet(f"font-weight: bold; font-size: 14px; color: {p['text']};")
        root.addWidget(title)

        # Filters
        filter_bar = QHBoxLayout()
        filter_bar.addWidget(QLabel("From:"))
        self.dt_from = QDateEdit(QDate.currentDate().addDays(-7))
        self.dt_from.setCalendarPopup(True)
        filter_bar.addWidget(self.dt_from)

        filter_bar.addWidget(QLabel("To:"))
        self.dt_to = QDateEdit(QDate.currentDate())
        self.dt_to.setCalendarPopup(True)
        filter_bar.addWidget(self.dt_to)

        filter_bar.addWidget(QLabel("Status:"))
        self.cb_status = QComboBox()
        self.cb_status.addItems(["All", "Pending", "Posted", "Failed"])
        filter_bar.addWidget(self.cb_status)

        btn_load = QPushButton("Load Bills")
        btn_load.clicked.connect(self._load_pending_bills)
        filter_bar.addWidget(btn_load)

        filter_bar.addStretch(1)
        btn_exit = QPushButton("Exit")
        btn_exit.clicked.connect(self.reject)
        filter_bar.addWidget(btn_exit)
        root.addLayout(filter_bar)

        # Pending bills table
        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels(self.COLS)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.tbl)

        # Action buttons
        action_bar = QHBoxLayout()
        btn_post_selected = QPushButton("Post Selected to GL")
        btn_post_selected.setFont(QFont("Segoe UI", 10, QFont.Weight.Bold))
        btn_post_selected.clicked.connect(self._post_selected)
        action_bar.addWidget(btn_post_selected)

        btn_post_all = QPushButton("Post All Pending")
        btn_post_all.setFont(QFont("Segoe UI", 10, QFont.Weight.Bold))
        btn_post_all.clicked.connect(self._post_all)
        action_bar.addWidget(btn_post_all)

        btn_view_voucher = QPushButton("View Voucher")
        btn_view_voucher.clicked.connect(self._view_voucher)
        action_bar.addWidget(btn_view_voucher)

        action_bar.addStretch(1)
        self.lbl_status = QLabel("Ready - Select date range and load bills")
        self.lbl_status.setFont(QFont("Segoe UI", 9))
        self.lbl_status.setStyleSheet(f"color: {p['text_dim']};")
        action_bar.addWidget(self.lbl_status)
        root.addLayout(action_bar)

        # Shortcuts
        QShortcut(QKeySequence("Escape"), self, activated=self.reject)
        QShortcut(QKeySequence("F5"), self, activated=self._load_pending_bills)

    def _load_pending_bills(self):
        """Load unposted banquet bills (HallSale1) for the date range."""
        date_from = self.dt_from.date().toPyDate()
        date_to = self.dt_to.date().toPyDate()

        try:
            # Get bills that haven't been posted to GL yet
            # Check if HallSale1 has a PostedYN or similar field, or check against FaVoucher
            where = ["H.Vdate >= ?", "H.Vdate <= ?", "H.Site_Code = ?"]
            params = [date_from, date_to, bops.SITE_CODE]

            status_filter = self.cb_status.currentText()
            if status_filter == "Pending":
                where.append("(H.PostedYN = '' OR H.PostedYN = 'N' OR H.PostedYN IS NULL)")
            elif status_filter == "Posted":
                where.append("H.PostedYN = 'Y'")
            elif status_filter == "Failed":
                where.append("H.PostedYN = 'F'")

            where_clause = " AND ".join(where)
            sql = f"""
                SELECT H.DocId, H.Vtype, H.VNo, H.Vdate, H.Party, H.HallRent,
                       H.Total - H.HallRent - H.ServiceCharge - H.Tax - H.DiscAmt as FBTotal,
                       H.ServiceCharge, H.CGST, H.SGST, H.IGST,
                       H.Advance, H.NetAmt,
                       CASE WHEN F.DocId IS NOT NULL THEN 'Posted' ELSE 'Pending' END as PostedStatus,
                       COALESCE(F.AcCode, '') as GLAccount
                FROM HallSale1 H
                LEFT JOIN FaVoucher F ON F.DocId = H.DocId AND F.VType = 'HALL'
                WHERE {where_clause}
                ORDER BY H.Vdate DESC, H.VNo DESC
            """

            rows = db.query(sql, tuple(params))
            self.tbl.setRowCount(len(rows))

            for i, r in enumerate(rows):
                self.tbl.setItem(i, 0, _cell(i + 1))
                self.tbl.setItem(i, 1, _cell(r.Vdate))
                self.tbl.setItem(i, 2, _cell(r.DocId or ""))
                self.tbl.setItem(i, 3, _cell(r.Vtype or ""))
                self.tbl.setItem(i, 4, _cell(r.VNo or 0))
                self.tbl.setItem(i, 5, _cell(r.Party or ""))
                self.tbl.setItem(i, 6, _cell(f"{float(r.HallRent or 0):,.2f}"))
                self.tbl.setItem(i, 7, _cell(f"{float(r.FBTotal or 0):,.2f}"))
                self.tbl.setItem(i, 8, _cell(f"{float(r.ServiceCharge or 0):,.2f}"))
                self.tbl.setItem(i, 9, _cell(f"{float(r.CGST or 0):,.2f}"))
                self.tbl.setItem(i, 10, _cell(f"{float(r.SGST or 0):,.2f}"))
                self.tbl.setItem(i, 11, _cell(f"{float(r.IGST or 0):,.2f}"))
                self.tbl.setItem(i, 12, _cell(f"{float(r.Advance or 0):,.2f}"))
                self.tbl.setItem(i, 13, _cell(f"{float(r.NetAmt or 0):,.2f}"))
                self.tbl.setItem(i, 14, _cell(r.GLAccount or ""))
                self.tbl.setItem(i, 15, _cell(r.PostedStatus))

                # Color code status
                if r.PostedStatus == "Posted":
                    for col in range(len(self.COLS)):
                        self.tbl.item(i, col).setBackground(QColor("#dcfce7"))  # green tint
                elif r.PostedStatus == "Failed":
                    for col in range(len(self.COLS)):
                        self.tbl.item(i, col).setBackground(QColor("#fef2f2"))  # red tint

            self.lbl_status.setText(f"Loaded {len(rows)} bills ({date_from} to {date_to})")
        except Exception as e:
            self.lbl_status.setText(f"Load failed: {e}")

    def _post_selected(self):
        """Post selected bills to GL."""
        selected_rows = set(item.row() for item in self.tbl.selectedItems())
        if not selected_rows:
            QMessageBox.information(self, "Post to GL", "No bills selected")
            return

        if QMessageBox.question(self, "Post to GL",
                f"Post {len(selected_rows)} selected bill(s) to GL?",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return

        self._post_bills(selected_rows)

    def _post_all(self):
        """Post all pending bills to GL."""
        pending_rows = []
        for row in range(self.tbl.rowCount()):
            status_item = self.tbl.item(row, 15)
            if status_item and status_item.text() == "Pending":
                pending_rows.append(row)

        if not pending_rows:
            QMessageBox.information(self, "Post to GL", "No pending bills to post")
            return

        if QMessageBox.question(self, "Post to GL",
                f"Post ALL {len(pending_rows)} pending bill(s) to GL?",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return

        self._post_bills(pending_rows)

    def _post_bills(self, rows):
        """Post bills to GL via FaVoucher."""
        posted = 0
        failed = 0
        errors = []

        for row in rows:
            docid = self.tbl.item(row, 2).text() if self.tbl.item(row, 2) else ""
            if not docid:
                continue

            try:
                # Get full bill details
                bill = bops.hallsale1_get(docid)
                if not bill:
                    failed += 1
                    errors.append(f"{docid}: Bill not found")
                    continue

                # Create GL voucher (FaVoucher entry)
                # This creates a Hall revenue voucher
                voucher_rec = {
                    "vtype": "HALL",  # Custom VType for hall revenue
                    "vdate": bill["vdate"],
                    "party": bill["party"],
                    "narration": f"Hall Revenue: {bill['party']} (Bill {docid})",
                    "ref_docid": docid,
                    "lines": [
                        {"ac_code": "HALL_REV", "amt_dr": 0, "amt_cr": float(bill.get("hallrent", 0)), "remarks": "Hall Rent Revenue"},
                        {"ac_code": "FOOD_REV", "amt_dr": 0, "amt_cr": float(bill.get("total", 0)) - float(bill.get("hallrent", 0)) - float(bill.get("servicecharge", 0)), "remarks": "F&B Revenue"},
                        {"ac_code": "SERVICE_REV", "amt_dr": 0, "amt_cr": float(bill.get("servicecharge", 0)), "remarks": "Service Charge Revenue"},
                        {"ac_code": "CGST_PAYABLE", "amt_dr": 0, "amt_cr": float(bill.get("cgst", 0)), "remarks": "CGST Payable"},
                        {"ac_code": "SGST_PAYABLE", "amt_dr": 0, "amt_cr": float(bill.get("sgst", 0)), "remarks": "SGST Payable"},
                        {"ac_code": "IGST_PAYABLE", "amt_dr": 0, "amt_cr": float(bill.get("igst", 0)), "remarks": "IGST Payable"},
                        {"ac_code": "ADVANCE_RECD", "amt_dr": float(bill.get("advance", 0)), "amt_cr": 0, "remarks": "Advance Received"},
                        {"ac_code": "DEBTORS", "amt_dr": float(bill.get("netamt", 0)) - float(bill.get("advance", 0)), "amt_cr": 0, "remarks": "Receivable from Party"},
                    ]
                }

                # Use fa_voucher to create entry
                cn = db.connect()
                try:
                    from HMS_py.core import fa_voucher as fv
                    vdocid = fv.fa_voucher_insert(voucher_rec, cn=cn, commit=True)
                    cn.close()

                    # Mark bill as posted
                    db.execute("UPDATE HallSale1 SET PostedYN = 'Y', PostedDate = getdate(), PostedBy = ? WHERE DocId = ?",
                              (db.get_user() or "SYSTEM", docid), commit=True)

                    # Update table
                    self.tbl.item(row, 15).setText("Posted")
                    self.tbl.item(row, 14).setText("HALL_REV")
                    for col in range(len(self.COLS)):
                        self.tbl.item(row, col).setBackground(QColor("#dcfce7"))
                    posted += 1

                except Exception as e:
                    if cn:
                        cn.close()
                    raise

            except Exception as e:
                failed += 1
                errors.append(f"{docid}: {e}")

        msg = f"Posting complete:\nPosted: {posted}\nFailed: {failed}"
        if errors:
            msg += "\n\nErrors:\n" + "\n".join(errors[:5])
            if len(errors) > 5:
                msg += f"\n... and {len(errors) - 5} more"

        QMessageBox.information(self, "Hall A/C Posting", msg)
        self._load_pending_bills()

    def _view_voucher(self):
        """View the GL voucher for selected bill."""
        row = self.tbl.currentRow()
        if row < 0:
            QMessageBox.information(self, "View Voucher", "Select a bill first")
            return

        docid = self.tbl.item(row, 2).text() if self.tbl.item(row, 2) else ""
        if not docid:
            return

        try:
            # Try to find existing voucher
            rows = db.query("SELECT * FROM FaVoucher WHERE DocId = ? AND VType = 'HALL'", (docid,))
            if not rows:
                QMessageBox.information(self, "View Voucher", "No GL voucher found for this bill")
                return

            # Show voucher details in a simple dialog
            from PyQt6.QtWidgets import QDialog, QVBoxLayout, QTableWidget, QTableWidgetItem
            dlg = QDialog(self)
            dlg.setWindowTitle(f"GL Voucher - {docid}")
            dlg.resize(800, 500)
            layout = QVBoxLayout(dlg)

            tbl = QTableWidget(len(rows), 6)
            tbl.setHorizontalHeaderLabels(["SNo", "AcCode", "AmtDr", "AmtCr", "Narration", "CostCenter"])
            for i, r in enumerate(rows):
                tbl.setItem(i, 0, _cell(r.SNo or i+1))
                tbl.setItem(i, 1, _cell(r.AcCode or ""))
                tbl.setItem(i, 2, _cell(f"{float(r.AmtDr or 0):,.2f}"))
                tbl.setItem(i, 3, _cell(f"{float(r.AmtCr or 0):,.2f}"))
                tbl.setItem(i, 4, _cell(r.Narration or ""))
                tbl.setItem(i, 5, _cell(r.CostCenter or ""))
            layout.addWidget(tbl)
            dlg.exec()

        except Exception as e:
            QMessageBox.critical(self, "View Voucher", f"Failed:\n{e}")


def open_hall_ac_post_chrg(parent=None):
    """Shell opener for 'Hall A/C Posting Charge' leaf."""
    w = HallAcPostChrgDialog(parent)
    w.setWindowFlags(Qt.WindowType.Window)
    w.show()
    return w


def main():
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = HallAcPostChrgDialog()
    w.resize(1300, 700)
    w.show()
    sys.exit(app.exec())


if __name__ == "__main__":
    main()