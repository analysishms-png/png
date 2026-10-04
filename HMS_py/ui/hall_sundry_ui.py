"""Hall Sundry UI (VB6 HallSundry.frm port) — Banquet Bill Sundry Setting.

VB6 form: HallSundry (Caption="Banquet Bill Sundry Setting")
- Configures sundry charges for banquet bills (service charge, hall rent, etc.)
- SundryTypeFix links to SundryMast for fixed sundry types
- Per-venue or global settings
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
    QCheckBox, QDoubleSpinBox
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


class HallSundryDialog(QDialog):
    """Banquet Bill Sundry Setting (VB6 HallSundry.frm port)."""

    COLS = ["SNo", "Sundry Code", "Sundry Name", "Type", "Rate/Amount", "Calc Basis", "Taxable", "Active", "Display Order"]
    KEYS = ["sno", "sundry_code", "sundry_name", "type", "rate_amt", "calc_basis", "taxable", "active", "disp_order"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Banquet Bill Sundry Setting - HMS_py")
        self.resize(1000, 650)
        self._build_ui()
        self._load_sundry_settings()

    def _build_ui(self):
        p = _theme.palette()
        root = QVBoxLayout(self)
        root.setContentsMargins(12, 10, 12, 10)
        root.setSpacing(8)

        # Title
        title = QLabel("Banquet Bill Sundry Setting")
        title.setStyleSheet(f"font-weight: bold; font-size: 14px; color: {p['text']};")
        root.addWidget(title)

        # Toolbar
        bar = QHBoxLayout()
        btn_new = QPushButton("New Sundry")
        btn_new.clicked.connect(self._on_new)
        bar.addWidget(btn_new)

        btn_save = QPushButton("Save All")
        btn_save.setFont(QFont("Segoe UI", 10, QFont.Weight.Bold))
        btn_save.clicked.connect(self._save_all)
        bar.addWidget(btn_save)

        btn_refresh = QPushButton("Refresh")
        btn_refresh.clicked.connect(self._load_sundry_settings)
        bar.addWidget(btn_refresh)

        btn_exit = QPushButton("Exit")
        btn_exit.clicked.connect(self.reject)
        bar.addStretch(1)
        bar.addWidget(btn_exit)
        root.addLayout(bar)

        # Global settings group
        global_group = QGroupBox("Global Defaults (Applied to all venues unless overridden)")
        global_group.setStyleSheet(f"QGroupBox {{ font-weight: bold; color: {p['text']}; }}")
        global_layout = QFormLayout(global_group)

        self.ed_service_charge_pct = QLineEdit("5.00")
        self.ed_service_charge_pct.setPlaceholderText("Service Charge % (default 5%)")
        global_layout.addRow("Service Charge %:", self.ed_service_charge_pct)

        self.ed_hall_rent_type = QComboBox()
        self.ed_hall_rent_type.addItems(["Per Function", "Per Hour", "Per Pax", "Flat Rate"])
        global_layout.addRow("Hall Rent Calc:", self.ed_hall_rent_type)

        self.ed_cover_charge_incl = QComboBox()
        self.ed_cover_charge_incl.addItems(["Yes (Included)", "No (Extra)"])
        global_layout.addRow("Cover Charge:", self.ed_cover_charge_incl)

        root.addWidget(global_group)

        # Sundry list table
        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels(self.COLS)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.tbl)

        # Status
        self.lbl_status = QLabel("Ready")
        self.lbl_status.setFont(QFont("Segoe UI", 9))
        self.lbl_status.setStyleSheet(f"color: {p['text_dim']};")
        root.addWidget(self.lbl_status)

        # Shortcuts
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._on_new)
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save_all)
        QShortcut(QKeySequence("Escape"), self, activated=self.reject)
        QShortcut(QKeySequence("F5"), self, activated=self._load_sundry_settings)

    def _load_sundry_settings(self):
        """Load sundry settings from SundryTypeFix and SundryMast tables."""
        try:
            # Load from SundryTypeFix (banquet-specific fixed sundries)
            rows = db.query("""
                SELECT STF.Code, STF.Name, STF.Type, STF.Rate, STF.CalcBasis, STF.Taxable,
                       STF.Active, STF.DispOrder, SM.Name as MasterName
                FROM SundryTypeFix STF
                LEFT JOIN SundryMast SM ON STF.Code = SM.Code
                WHERE STF.Site_Code = ? OR STF.Site_Code = 'HO'
                ORDER BY STF.DispOrder, STF.Code
            """, (bops.SITE_CODE,))

            self.tbl.setRowCount(len(rows))
            for i, r in enumerate(rows):
                self.tbl.setItem(i, 0, _cell(i + 1))
                self.tbl.setItem(i, 1, _cell(r.Code or ""))
                self.tbl.setItem(i, 2, _cell(r.Name or r.MasterName or ""))
                self.tbl.setItem(i, 3, _editable_cell(r.Type or ""))
                self.tbl.setItem(i, 4, _editable_cell(f"{float(r.Rate or 0):,.2f}"))
                self.tbl.setItem(i, 5, _editable_cell(r.CalcBasis or "%"))
                self.tbl.setItem(i, 6, _editable_cell("Yes" if (r.Taxable or "Y") in ("Y", "1") else "No"))
                self.tbl.setItem(i, 7, _editable_cell("Yes" if (r.Active or "Y") in ("Y", "1") else "No"))
                self.tbl.setItem(i, 8, _editable_cell(r.DispOrder or ""))

            self.lbl_status.setText(f"Loaded {len(rows)} sundry settings from SundryTypeFix")
        except Exception as e:
            self.lbl_status.setText(f"Load failed: {e}")

    def _on_new(self):
        """Add a new blank row for manual entry."""
        row = self.tbl.rowCount()
        self.tbl.insertRow(row)
        self.tbl.setItem(row, 0, _cell(row + 1))
        self.tbl.setItem(row, 1, _editable_cell(""))
        self.tbl.setItem(row, 2, _editable_cell(""))
        self.tbl.setItem(row, 3, _editable_cell("Charge"))
        self.tbl.setItem(row, 4, _editable_cell("0.00"))
        self.tbl.setItem(row, 5, _editable_cell("%"))
        self.tbl.setItem(row, 6, _editable_cell("Yes"))
        self.tbl.setItem(row, 7, _editable_cell("Yes"))
        self.tbl.setItem(row, 8, _editable_cell(row + 1))

    def _save_all(self):
        """Save sundry settings to SundryTypeFix table."""
        try:
            cn = db.connect()
            saved = 0
            for row in range(self.tbl.rowCount()):
                sundry_code = self.tbl.item(row, 1).text().strip() if self.tbl.item(row, 1) else ""
                if not sundry_code:
                    continue

                sundry_name = self.tbl.item(row, 2).text().strip() if self.tbl.item(row, 2) else ""
                s_type = self.tbl.item(row, 3).text().strip() if self.tbl.item(row, 3) else "Charge"
                rate = float(self.tbl.item(row, 4).text() or 0) if self.tbl.item(row, 4) else 0
                calc_basis = self.tbl.item(row, 5).text().strip() if self.tbl.item(row, 5) else "%"
                taxable = 1 if (self.tbl.item(row, 6).text().strip().upper() in ("YES", "Y", "1", "TRUE")) else 0
                active = 1 if (self.tbl.item(row, 7).text().strip().upper() in ("YES", "Y", "1", "TRUE")) else 0
                disp_order = int(self.tbl.item(row, 8).text() or 0) if self.tbl.item(row, 8) else 0

                # Upsert
                existing = db.query("SELECT Code FROM SundryTypeFix WHERE Code = ? AND Site_Code = ?",
                                   (sundry_code, bops.SITE_CODE), cn=cn)
                if existing:
                    db.execute("""
                        UPDATE SundryTypeFix SET Name = ?, Type = ?, Rate = ?, CalcBasis = ?,
                            Taxable = ?, Active = ?, DispOrder = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E'
                        WHERE Code = ? AND Site_Code = ?
                    """, (sundry_name, s_type, rate, calc_basis, taxable, active, disp_order,
                          db.get_user() or "SYSTEM", sundry_code, bops.SITE_CODE), cn=cn, commit=True)
                else:
                    db.execute("""
                        INSERT INTO SundryTypeFix (Code, Name, Type, Rate, CalcBasis, Taxable, Active, DispOrder,
                            Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code)
                        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)
                    """, (sundry_code, sundry_name, s_type, rate, calc_basis, taxable, active, disp_order,
                          bops.SITE_CODE, db.get_user() or "SYSTEM", bops.SITE_CODE), cn=cn, commit=True)
                saved += 1

            cn.close()
            QMessageBox.information(self, "Hall Sundry", f"Saved {saved} sundry settings")
            self._load_sundry_settings()
        except Exception as e:
            QMessageBox.critical(self, "Hall Sundry", f"Save failed:\n{e}")


def open_hall_sundry(parent=None):
    """Shell opener for 'Banquet Bill Sundry Setting' leaf."""
    w = HallSundryDialog(parent)
    w.setWindowFlags(Qt.WindowType.Window)
    w.show()
    return w


def main():
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = HallSundryDialog()
    w.resize(1000, 650)
    w.show()
    sys.exit(app.exec())


if __name__ == "__main__":
    main()