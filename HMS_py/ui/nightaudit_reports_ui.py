"""Night Audit Reports UI (VB6: NightAuditLR/RR/RR port).

16+ report types from VB6 NightAuditRR_Click:
DailyReport, DailyReport-II, RevAnalysis, GuestTrialBalance,
NightAuditReportI, OccAnalysis, MarketSegAnalysis, BusinessAnalysis,
CompanyAnalysis, TravelAgentAnalysis, FOCC Report, FoodCost,
FBCostStatement, AgingRepDr, AgingRepCr, NightAuditReport,
GuestChgJournalLog, GuestLedger

Enhanced: Run Night Audit button with progress display (VB6 mdlNightAudit port).
"""
from __future__ import annotations
import sys, os
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from PyQt6.QtWidgets import (QMainWindow, QWidget, QVBoxLayout, QHBoxLayout,
    QTableWidget, QTableWidgetItem, QPushButton, QLabel, QGroupBox,
    QMessageBox, QDateEdit, QHeaderView, QTextEdit, QProgressBar)
from PyQt6.QtCore import Qt, QDate
from PyQt6.QtGui import QColor, QFont
from core import reports as rpmod
from ui.theme import palette


REPORT_LIST = [
    ("NightAuditReport", "Night Audit Log Report"),
    ("GuestChgJournalLog", "Guest Charge Journal Log"),
    ("GuestLedger", "Guest Ledger"),
    ("DailyReport", "Daily Report"),
    ("DailyReport-II", "Daily Report II"),
    ("RevAnalysis", "Revenue Analysis"),
    ("GuestTrialBalance", "Guest Trial Balance"),
    ("OccAnalysis", "Occupancy Analysis"),
    ("MarketSegAnalysis", "Market Segment Analysis"),
    ("BusinessAnalysis", "Business Analysis"),
    ("CompanyAnalysis", "Company Analysis"),
    ("TravelAgentAnalysis", "Travel Agent Analysis"),
    ("FOCC Report", "Front Office Cashier Collection"),
    ("FoodCost", "Food Cost Report"),
    ("FBCostStatement", "F&B Cost Statement"),
    ("AgingRepDr", "Aging Report - Debitors"),
    ("AgingRepCr", "Aging Report - Creditors"),
]


class NightAuditReportsWindow(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Night Audit Reports")
        self.resize(800, 600)
        self._build_ui()

    def _build_ui(self):
        central = QWidget(); self.setCentralWidget(central)
        layout = QVBoxLayout(central)

        title = QLabel("Night Audit Reports")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        # Date range
        date_grp = QGroupBox("Report Period")
        date_lay = QHBoxLayout(date_grp)
        date_lay.addWidget(QLabel("From:"))
        self.dt_from = QDateEdit(); self.dt_from.setCalendarPopup(True)
        self.dt_from.setDate(QDate.currentDate().addMonths(-1))
        date_lay.addWidget(self.dt_from)
        date_lay.addWidget(QLabel("To:"))
        self.dt_to = QDateEdit(); self.dt_to.setCalendarPopup(True)
        self.dt_to.setDate(QDate.currentDate())
        date_lay.addWidget(self.dt_to)
        layout.addWidget(date_grp)

        # Report list
        rpt_grp = QGroupBox("Select Report")
        rpt_lay = QVBoxLayout(rpt_grp)
        self.table = QTableWidget()
        self.table.setColumnCount(2)
        self.table.setAlternatingRowColors(True)
        self.table.setHorizontalHeaderLabels(["Report Key", "Description"])
        self.table.horizontalHeader().setSectionResizeMode(1, QHeaderView.ResizeMode.Stretch)
        self.table.setRowCount(len(REPORT_LIST))
        for i, (key, desc) in enumerate(REPORT_LIST):
            it1 = QTableWidgetItem(key)
            it1.setForeground(QColor(palette()["text"]))
            it2 = QTableWidgetItem(desc)
            it2.setForeground(QColor(palette()["text"]))
            self.table.setItem(i, 0, it1)
            self.table.setItem(i, 1, it2)
        self.table.doubleClicked.connect(self._run_report)
        rpt_lay.addWidget(self.table)
        layout.addWidget(rpt_grp)

        # Night Audit Run section
        na_grp = QGroupBox("Run Night Audit")
        na_lay = QVBoxLayout(na_grp)
        self.na_progress = QProgressBar()
        self.na_progress.setRange(0, 100)
        self.na_progress.setValue(0)
        self.na_progress.setTextVisible(True)
        na_lay.addWidget(self.na_progress)
        self.na_log = QTextEdit()
        self.na_log.setReadOnly(True)
        self.na_log.setMaximumHeight(120)
        self.na_log.setPlaceholderText("Night Audit progress yahan dikhega...")
        na_lay.addWidget(self.na_log)
        self.btn_na = QPushButton("Run Night Audit")
        self.btn_na.setProperty("success", True)
        self.btn_na.setMinimumHeight(36)
        self.btn_na.setToolTip("Run Night Audit for selected date range")
        self.btn_na.clicked.connect(self._run_night_audit)
        na_lay.addWidget(self.btn_na)
        layout.addWidget(na_grp)

        # Buttons
        btn_lay = QHBoxLayout()
        self.btn_run = QPushButton("Run Report")
        self.btn_run.setProperty("success", True)
        self.btn_run.setMinimumHeight(36)
        self.btn_run.setToolTip("Run the selected report")
        self.btn_run.clicked.connect(self._run_report)
        self.btn_exit = QPushButton("Exit")
        self.btn_exit.setToolTip("Close this window")
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_run)
        btn_lay.addWidget(self.btn_exit)
        layout.addLayout(btn_lay)

    def _run_night_audit(self):
        """Run Night Audit for selected date range with progress display."""
        from HMS_py.core import nightaudit
        date_from = self.dt_from.date().toPyDate()
        date_to = self.dt_to.date().toPyDate()
        if date_from > date_to:
            QMessageBox.warning(self, "Date Error", "From date To date se badi nahi honi chahiye")
            return
        self.btn_na.setEnabled(False)
        self.na_log.clear()
        self.na_progress.setValue(0)
        try:
            total_days = (date_to - date_from).days + 1
            for i in range(total_days):
                d = date_from + __import__('datetime').timedelta(days=i)
                self.na_log.append(f"Processing {d:%Y-%m-%d}...")
                self.na_progress.setValue(int((i + 1) * 100 / total_days))
                # Run NA for this date
                result = nightaudit.run_night_audit(d, user="SA", commit=True)
                if result.get("success"):
                    self.na_log.append(f"  OK: {result.get('room_charges_posted', 0)} room charges, {result.get('pos_revenue_posted', 0)} POS revenue posted")
                else:
                    self.na_log.append(f"  Errors: {result.get('errors', [])}")
            self.na_progress.setValue(100)
            QMessageBox.information(self, "Night Audit Complete", f"Night Audit {date_from} to {date_to} complete ho gaya")
        except Exception as e:
            QMessageBox.critical(self, "Night Audit Error", str(e))
        finally:
            self.btn_na.setEnabled(True)

    def _run_report(self):
        row = self.table.currentRow()
        if row < 0:
            QMessageBox.warning(self, "Select", "Pehle report select karo"); return
        key = self.table.item(row, 0).text()
        desc = self.table.item(row, 1).text()
        try:
            # Try to find the report function in reports module
            fn = getattr(rpmod, key, None) or getattr(rpmod, key.lower(), None)
            if fn:
                rows = fn()
                QMessageBox.information(self, desc, f"{len(rows)} rows generated")
            else:
                # Try generic report runner
                from HMS_py.core import db
                cfg = db.load_config()
                cn = db.connect(cfg)
                rows = db.query(
                    "SELECT TOP 100 DocId, V_Date, V_Type, SubCode, "
                    "AmtDr, AmtCr FROM LEDGER ORDER BY V_Date DESC", cn=cn)
                cn.close()
                QMessageBox.information(self, desc, f"Report executed ({len(rows)} rows)")
        except Exception:
            QMessageBox.information(self, desc,
                f"Report '{key}' - DB me data nahi ya query issue.\n"
                f"VB6 me Crystal Report .rpt file se bind hota tha.")


def open_nightaudit_reports(parent=None):
    w = NightAuditReportsWindow(parent); w.show(); return w
