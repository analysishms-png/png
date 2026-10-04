"""Reports Center UI - REPORTS_TXT collection (231 VB6 reports) ka viewer.

Run: python -m HMS_py.ui.reports_ui
Menu wiring: shell registry me module-wise report leaves (Front Office,
Finance, Point Of Sale, Inventory, Night Audit). READ-ONLY — core/reports.py
sirf SELECT chalata hai; export_csv file likhta hai, DB me kuch nahi.
"""
from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt, QDate
from PyQt6.QtWidgets import (QComboBox, QDateEdit, QDialog, QFileDialog,
                             QFormLayout, QHBoxLayout, QHeaderView, QLabel,
                             QMessageBox, QPushButton, QTableWidget,
                             QTableWidgetItem, QVBoxLayout, QTabWidget,
                                   QLineEdit)

from HMS_py.core import reports as rp
from HMS_py.core import report_params as rp_params
from HMS_py.core import print_engine as pe
from HMS_py.ui import print_preview as _pp


def _cell(val) -> QTableWidgetItem:
    it = QTableWidgetItem("" if val is None else str(val))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    return it


class ReportParamsDialog(QDialog):
    """VB6-style report parameter dialog (from Enviro/Analysis.ini)."""

    def __init__(self, params: dict, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Report Parameters")
        self.resize(480, 400)
        self._params = params
        self._build()

    def _build(self):
        root = QVBoxLayout(self)

        form = QFormLayout()
        # Context params (read-only display)
        for key in ("site_code", "company_code", "user", "business_date"):
            val = self._params.get(key, "")
            e = QLabel(str(val))
            e.setStyleSheet("color: #666;")
            form.addRow(key.replace("_", " ").title() + ":", e)

        # Enviro flags (key ones)
        env = self._params.get("enviro", {})
        for key in ("Bill_Header", "Bill_Footer", "KOTPrinting", "KOTOutletSelection",
                    "RcptPrinting", "ReservationPrinting", "TaxSummary"):
            val = env.get(key, "")
            e = QLineEdit(str(val))
            e.setReadOnly(True)
            form.addRow(key, e)

        root = QVBoxLayout(self)
        root.addLayout(form)
        btns = QHBoxLayout()
        btns.addStretch()
        ok = QPushButton("OK")
        ok.clicked.connect(self.accept)
        btns.addWidget(ok)
        root.addLayout(btns)

    def get_params(self) -> dict:
        return self._params


class ReportsCenter(QDialog):
    """Date-range + report-picker + grid + CSV export + Preview/Print/Reprint (read-only)."""

    def __init__(self, parent=None, module: str | None = None,
                 report_key: str | None = None):
        super().__init__(parent)
        self.setWindowTitle("Reports Center - HMS_py")
        self.resize(1000, 650)
        self._cols: list[str] = []
        self._rows: list[list] = []
        self._current_key = ""
        self._last_run_params = {}
        self._print_engine = None

        root = QVBoxLayout(self)

        # Top: Report selector
        top = QHBoxLayout()
        top.addWidget(QLabel("Report:"))
        self.cmbReport = QComboBox()
        by_mod = rp.by_module()
        for mod in sorted(by_mod):
            for r in by_mod[mod]:
                self.cmbReport.addItem(f"[{mod}] {r['title']}", r["key"])
        top.addWidget(self.cmbReport, 1)

        # Parameter button
        self.btnParams = QPushButton("Parameters")
        self.btnParams.setToolTip("View report parameters (Enviro/INI/Business Date)")
        self.btnParams.clicked.connect(self._show_params)
        top.addWidget(self.btnParams)

        # Reprint button
        self.btnReprint = QPushButton("Reprint")
        self.btnReprint.setToolTip("Reprint last report (VB6 reprint)")
        self.btnReprint.clicked.connect(self._reprint)
        top.addWidget(self.btnReprint)

        root.addLayout(top)

        # Date range
        form = QFormLayout()
        today = datetime.date.today()
        self.dtFrom = QDateEdit()
        self.dtFrom.setCalendarPopup(True)
        self.dtFrom.setDisplayFormat("dd/MM/yyyy")
        self.dtFrom.setDate(QDate(2016, 1, 1))
        self.dtTo = QDateEdit()
        self.dtTo.setCalendarPopup(True)
        self.dtTo.setDisplayFormat("dd/MM/yyyy")
        self.dtTo.setDate(QDate(today.year, today.month, today.day))
        form.addRow("From:", self.dtFrom)
        form.addRow("To:", self.dtTo)
        root.addLayout(form)

        # Buttons
        btns = QHBoxLayout()
        self.btnRun = QPushButton("Run Report")
        self.btnRun.setDefault(True)
        self.btnRun.setToolTip("Execute the selected report")
        self.btnRun.clicked.connect(self._run)
        self.btnPreview = QPushButton("Preview")
        self.btnPreview.setToolTip("Preview report before printing")
        self.btnPreview.clicked.connect(self._preview)
        self.btnCsv = QPushButton("Export CSV")
        self.btnCsv.setToolTip("Export report results to CSV file")
        self.btnCsv.clicked.connect(self._csv)
        self.btnPrint = QPushButton("Print")
        self.btnPrint.setToolTip("Print report to printer")
        self.btnPrint.clicked.connect(self._print)
        self.btnReprintDoc = QPushButton("Reprint Document")
        self.btnReprintDoc.setToolTip("Reprint a specific document (Bill/Folio/KOT/Receipt)")
        self.btnReprintDoc.clicked.connect(self._reprint_document)
        btns.addWidget(self.btnRun)
        btns.addWidget(self.btnPreview)
        btns.addWidget(self.btnCsv)
        btns.addWidget(self.btnPrint)
        btns.addWidget(self.btnReprintDoc)
        btns.addStretch(1)
        root.addLayout(btns)

        # Status
        self.lblStatus = QLabel(
            "Ready (read-only — DB me koi write nahi hota)")
        root.addWidget(self.lblStatus)

        # Grid
        self.tbl = QTableWidget(0, 0)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.tbl)

        # Initialize
        if report_key:
            i = self.cmbReport.findData(report_key)
            if i >= 0:
                self.cmbReport.setCurrentIndex(i)
        elif module:
            for i in range(self.cmbReport.count()):
                if self.cmbReport.itemText(i).startswith(f"[{module}]"):
                    self.cmbReport.setCurrentIndex(i)
                    break
        self._run()

    def _key(self) -> str:
        return self.cmbReport.currentData()

    def _show_params(self):
        """Show report parameters dialog (Enviro/INI/Business Date)."""
        params = rp_params.get_report_params(self._key(), cn=None)
        dlg = ReportParamsDialog(params, self)
        dlg.exec()

    def _run(self):
        try:
            key = self._key()
            if not key:
                return
            d_from = self.dtFrom.date().toPyDate()
            d_to = self.dtTo.date().toPyDate()
            cols, rows = rp.run(key, d_from, d_to)
            self._cols = cols
            self._rows = rows
            self._current_key = key
            # Store params for preview/print
            from HMS_py.core import report_params as rp_params
            self._last_run_params = rp_params.get_report_params(key, 
                self.dtFrom.date().toPyDate().isoformat(),
                self.dtTo.date().toPyDate().isoformat(), cn=None)

            self.tbl.clear()
            self.tbl.setColumnCount(len(cols))
            self.tbl.setHorizontalHeaderLabels(cols)
            self.tbl.setRowCount(0)
            for row in rows[:2000]:
                r = self.tbl.rowCount()
                self.tbl.insertRow(r)
                for c, v in enumerate(row):
                    self.tbl.setItem(r, c, QTableWidgetItem(str(v) if v is not None else ""))
            self.tbl.resizeColumnsToContents()
            self.lblStatus.setText(
                f"{len(rows)} rows  (grid me pehli 2000) — read-only")
        except Exception as e:
            QMessageBox.critical(self, "Report Error", str(e)[:300])
            return

    def _preview(self):
        if not self._cols or not self._rows:
            QMessageBox.information(self, "Preview", "Pehle report chalao")
            return
        title = self.cmbReport.currentText()
        body = (f"{title}\n"
                f"From: {self.dtFrom.date().toString('dd/MM/yyyy')}  "
                f"To: {self.dtTo.date().toString('dd/MM/yyyy')}\n"
                f"{self.lblStatus.text()}\n\n"
                f"{_pp.grid_to_text(self._cols, self._rows)}")
        _pp.preview_text(body, title, self)

    def _csv(self):
        if not self._cols:
            QMessageBox.information(self, "Export", "Pehle report chalao")
            return
        path, _ = QFileDialog.getSaveFileName(
            self, "Export CSV", f"{self._key()}.csv", "CSV (*.csv)")
        if not path:
            return
        try:
            n = rp.export_csv(self._key(), self.dtFrom.date().toPyDate(),
                              self.dtTo.date().toPyDate(), path)
        except Exception as e:
            QMessageBox.critical(self, "Export Error", str(e)[:300])
            return
        self.lblStatus.setText(f"{n} rows -> {path}")
        QMessageBox.information(self, "Export", f"{n} rows exported")

    def _print(self):
        if not self._cols or self.tbl.rowCount() == 0:
            QMessageBox.information(self, "Print", "Pehle report chalao")
            return
        # Use print engine
        from HMS_py.core import print_engine as pe
        engine = pe.get_print_engine()
        # Create print job
        job = engine.create_job(
            report_key=self._key(),
            d_from=self.dtFrom.date().isoformat(),
            d_to=self.dtTo.date().isoformat(),
            headers=self._cols,
            rows=self._rows,
            title=self.cmbReport.currentText()
        )
        # Preview first
        preview_text = engine.preview(job)
        from HMS_py.ui import print_preview as _pp
        _pp.preview_text(preview_text, f"Preview: {self.cmbReport.currentText()}", self)

    def _reprint(self):
        """Reprint last run report (VB6 reprint button)."""
        if not self._current_key or not self._rows:
            QMessageBox.information(self, "Reprint", "Koi report nahi chala")
            return
        # Use print engine to reprint
        from HMS_py.core import print_engine as pe
        engine = pe.get_print_engine()
        job = engine.create_job(
            report_key=self._current_key,
            d_from=self.dtFrom.date().isoformat(),
            d_to=self.dtTo.date().isoformat(),
            headers=self._cols,
            rows=self._rows,
            title=self.cmbReport.currentText()
        )
        reprint_job = engine.reprint(job)
        # Preview reprint
        preview_text = engine.preview(reprint_job)
        from HMS_py.ui import print_preview as _pp
        _pp.preview_text(preview_text, f"Reprint: {self.cmbReport.currentText()}", self)
        # Audit reprint
        engine.audit_reprint(reprint_job)

    def _reprint_document(self):
        """Reprint a specific document (Bill/Folio/KOT/Receipt)."""
        dlg = QDialog(self)
        dlg.setWindowTitle("Reprint Document")
        dlg.resize(400, 250)
        form = QFormLayout(dlg)

        self.cmbReprintType = QComboBox()
        self.cmbReprintType.addItems(["Bill (POS)", "Folio (FO)", "KOT (Kitchen)", "Receipt"])
        form.addRow("Document Type:", self.cmbReprintType)

        self.edDocId = QLineEdit()
        self.edDocId.setPlaceholderText("Document ID / Bill No / Folio No")
        form.addRow("Document ID:", self.edDocId)

        btns = QHBoxLayout()
        ok = QPushButton("Reprint")
        ok.setDefault(True)
        cancel = QPushButton("Cancel")
        ok.clicked.connect(dlg.accept)
        cancel.clicked.connect(dlg.reject)
        btns.addStretch()
        btns.addWidget(ok)
        btns.addWidget(cancel)
        form.addRow(btns)

        if dlg.exec() != QDialog.DialogCode.Accepted:
            return

        doc_type = self.cmbReprintType.currentText()
        doc_id = self.edDocId.text().strip()
        if not doc_id:
            QMessageBox.warning(self, "Reprint", "Document ID zaroori hai")
            return

        # Map doc type to report key
        type_map = {
            "Bill (POS)": "pos_sales_daybook",
            "Folio (FO)": "guest_bill_details",
            "KOT (Kitchen)": "kitchen_order_ticket",
            "Receipt": "guest_payments",
        }
        report_key = type_map.get(doc_type, "pos_sales_daybook")

        # Create reprint job
        from HMS_py.core import print_engine as pe
        engine = pe.get_print_engine()
        # We'd need to fetch the original report data for this doc_id
        # For now, just show message
        QMessageBox.information(self, "Reprint", 
            f"Reprint requested for {doc_type}: {doc_id}\n"
            f"Original report: {report_key}\n"
            f"Feature: VB6-style reprint with original doc ID tracking")

    def _csv(self):
        if not self._cols:
            QMessageBox.information(self, "Export", "Pehle report chalao")
            return
        path, _ = QFileDialog.getSaveFileName(
            self, "Export CSV", f"{self._key()}.csv", "CSV (*.csv)")
        if not path:
            return
        try:
            n = rp.export_csv(self._key(), self.dtFrom.date().toPyDate(),
                              self.dtTo.date().toPyDate(), path)
        except Exception as e:
            QMessageBox.critical(self, "Export Error", str(e)[:300])
            return
        self.lblStatus.setText(f"{n} rows -> {path}")
        QMessageBox.information(self, "Export", f"{n} rows exported")


def open_reports(parent=None, module: str | None = None,
                 report_key: str | None = None):
    ReportsCenter(parent, module=module, report_key=report_key).exec()


if __name__ == "__main__":
    os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
    from PyQt6.QtWidgets import QApplication
    app = QApplication([])
    open_reports()