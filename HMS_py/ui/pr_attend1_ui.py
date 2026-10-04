"""PrAttend1 UI (VB6 PrAttend1.frm port) — Attendance Management.

VB6 form: PrAttend1 (Caption="Attendence", MDIChild=True)
Note: VB6 uses "Attendence" spelling (intentional - parity with legacy)
- FlexGrid displaying attendance records
- Employee selection
- Date range filtering
- Refresh button to load data
- Save/Cancel buttons for editing
- TopCtrl at bottom

EVIDENCE (decompiled PrAttend1.frm):
- Tables: ATTENDENCE, Attend, DESIG, EMPLOYEE, Salary, attend
- MSHFlexGrid FGrid1 for attendance display
- TextBox array for inline editing
- CommandButton Command1[0]="&Refresh", Command1[1]="&Exit"
- SSPanel with btncancel, btnsave
- KeyPreview=True for keyboard shortcuts

Tables used:
- ATTENDENCE / Attend (attendance records)
- EMPLOYEE (employee master)
- DESIG (designation)
- Salary (salary records)
"""

from __future__ import annotations

import os
import sys
from datetime import date, datetime

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QKeySequence, QShortcut
from PyQt6.QtWidgets import (QAbstractItemView, QComboBox, QDateEdit, QDialog,
                             QHBoxLayout, QHeaderView, QLabel, QMessageBox,
                             QPushButton, QTableWidget, QTableWidgetItem,
                             QVBoxLayout, QWidget)

from HMS_py.core import db
from HMS_py.core import hr_payroll as hr
from HMS_py.ui import theme as _theme


def _dark_item(val, readonly=False) -> QTableWidgetItem:
    it = QTableWidgetItem("" if val is None else str(val))
    if readonly:
        it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    else:
        it.setFlags(it.flags() | Qt.ItemFlag.ItemIsEditable)
    it.setForeground(_theme.palette()["text"])
    if readonly:
        it.setBackground(_theme.palette()["glass_tint"])
    return it


class PrAttend1Dialog(QDialog):
    """Attendance Management (VB6 PrAttend1.frm port)."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Attendence")  # VB6 spelling parity
        self.resize(1100, 650)
        self._build_ui()
        self._load_employees()
        self.refresh()

    def _build_ui(self):
        p = _theme.palette()
        v = QVBoxLayout(self)
        v.setContentsMargins(12, 10, 12, 10)
        v.setSpacing(8)

        # Filter row
        filter_row = QHBoxLayout()

        filter_row.addWidget(QLabel("Employee:"))
        self.cmb_employee = QComboBox()
        self.cmb_employee.setMinimumWidth(250)
        self.cmb_employee.currentTextChanged.connect(self.refresh)
        filter_row.addWidget(self.cmb_employee)

        filter_row.addWidget(QLabel("From:"))
        self.dt_from = QDateEdit()
        self.dt_from.setCalendarPopup(True)
        self.dt_from.setDate(date.today().replace(day=1))
        self.dt_from.dateChanged.connect(self.refresh)
        filter_row.addWidget(self.dt_from)

        filter_row.addWidget(QLabel("To:"))
        self.dt_to = QDateEdit()
        self.dt_to.setCalendarPopup(True)
        self.dt_to.setDate(date.today())
        self.dt_to.dateChanged.connect(self.refresh)
        filter_row.addWidget(self.dt_to)

        filter_row.addStretch(1)

        self.btn_refresh = QPushButton("&Refresh")
        self.btn_refresh.setToolTip("Reload attendance data (F5)")
        self.btn_refresh.clicked.connect(self.refresh)
        filter_row.addWidget(self.btn_refresh)

        v.addLayout(filter_row)

        # Table
        self.table = QTableWidget()
        self.table.setAlternatingRowColors(True)
        self.table.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.table.setEditTriggers(QAbstractItemView.EditTrigger.DoubleClicked |
                                   QAbstractItemView.EditTrigger.SelectedClicked)
        self.table.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.ResizeToContents)
        self.table.horizontalHeader().setStretchLastSection(True)
        v.addWidget(self.table, stretch=1)

        # Bottom buttons
        btn_row = QHBoxLayout()
        btn_row.addStretch(1)

        self.btn_save = QPushButton("Save")
        self.btn_save.setToolTip("Save attendance changes (Ctrl+S)")
        self.btn_save.clicked.connect(self._save)
        btn_row.addWidget(self.btn_save)

        self.btn_cancel = QPushButton("&Cancel")
        self.btn_cancel.setToolTip("Cancel changes (Esc)")
        self.btn_cancel.clicked.connect(self._cancel)
        btn_row.addWidget(self.btn_cancel)

        self.btn_exit = QPushButton("&Exit")
        self.btn_exit.setToolTip("Close window (F12)")
        self.btn_exit.clicked.connect(self.close)
        btn_row.addWidget(self.btn_exit)

        v.addLayout(btn_row)

        # Status
        self.lbl_status = QLabel("Ready")
        self.lbl_status.setStyleSheet(f"color: {p['text_dim']};")
        v.addWidget(self.lbl_status)

        # Shortcuts
        QShortcut(QKeySequence("F5"), self, activated=self.refresh)
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save)
        QShortcut(QKeySequence(Qt.Key.Key_Escape), self, activated=self._cancel)
        QShortcut(QKeySequence(Qt.Key.Key_F12), self, activated=self.close)

    def _load_employees(self):
        """Load employee list from EMPLOYEE table."""
        try:
            rows = hr.list_employees()
            self.cmb_employee.clear()
            self.cmb_employee.addItem("All Employees", user_id=None)
            for emp in rows:
                emp_id = emp.get("emp_code") or emp.get("code") or emp.get("id")
                emp_name = emp.get("emp_name") or emp.get("name") or str(emp_id)
                self.cmb_employee.addItem(f"{emp_id} - {emp_name}", user_id=emp_id)
        except Exception as e:
            self.lbl_status.setText(f"Error loading employees: {e}")

    def refresh(self):
        """Load attendance records for selected employee/date range."""
        emp_data = self.cmb_employee.currentData()
        emp_code = emp_data if emp_data else None
        dt_from = self.dt_from.date().toPyDate()
        dt_to = self.dt_to.date().toPyDate()

        self.lbl_status.setText(f"Loading attendance for {dt_from} to {dt_to}...")
        self.table.clear()

        try:
            # VB6 uses ATTENDENCE table (intentional spelling)
            # Try ATTENDENCE first, then Attend
            rows = []
            for table in ("ATTENDENCE", "Attend", "attend"):
                try:
                    if emp_code:
                        rows = db.query(
                            f"SELECT * FROM {table} WHERE EmpCode = ? AND AttDate BETWEEN ? AND ? "
                            "ORDER BY AttDate, EmpCode",
                            (emp_code, dt_from, dt_to))
                    else:
                        rows = db.query(
                            f"SELECT * FROM {table} WHERE AttDate BETWEEN ? AND ? "
                            "ORDER BY AttDate, EmpCode",
                            (dt_from, dt_to))
                    if rows:
                        break
                except Exception:
                    continue

            if not rows:
                # Try hr_payroll module
                try:
                    rows = hr.get_attendance(emp_code, dt_from, dt_to)
                except Exception:
                    pass

            if not rows:
                self.table.setRowCount(0)
                self.table.setColumnCount(0)
                self.lbl_status.setText("No attendance records found")
                return

            # Determine columns from first row
            if hasattr(rows[0], "keys"):
                cols = list(rows[0].keys())
            else:
                # Get column names from cursor description
                cn = db.connect()
                cursor = cn.cursor()
                cursor.execute("SELECT TOP 1 * FROM ATTENDENCE")
                cols = [d[0] for d in cursor.description] if cursor.description else []
                cn.close()

            self.table.setColumnCount(len(cols))
            self.table.setHorizontalHeaderLabels(cols)
            self.table.setRowCount(len(rows))

            for r, row in enumerate(rows):
                if hasattr(row, "keys"):
                    vals = [row.get(c) for c in cols]
                else:
                    vals = list(row)

                for c, val in enumerate(vals):
                    # Make key columns readonly (EmpCode, AttDate, etc.)
                    readonly = c < 2  # First two columns typically key fields
                    self.table.setItem(r, c, _dark_item(val, readonly=readonly))

            self.lbl_status.setText(f"Loaded {len(rows)} attendance records")

        except Exception as e:
            self.lbl_status.setText(f"Error: {e}")
            QMessageBox.critical(self, "Attendence", f"Failed to load attendance:\n{e}")

    def _save(self):
        """Save attendance changes back to database."""
        # Get the table name that worked
        table_name = "ATTENDENCE"  # VB6 spelling

        cn = db.connect()
        try:
            cn.autocommit = False
            updated = 0

            for r in range(self.table.rowCount()):
                # Check if row was modified (we'd need to track original values)
                # For now, just report
                pass

            cn.commit()
            self.lbl_status.setText("Save completed (no changes tracked in this version)")
            QMessageBox.information(self, "Attendence",
                "Save functionality requires change tracking.\n"
                "Current version: read-only display with refresh.")
        except Exception as e:
            try:
                cn.rollback()
            except Exception:
                pass
            QMessageBox.critical(self, "Attendence", f"Save failed:\n{e}")
        finally:
            cn.close()

    def _cancel(self):
        """Cancel changes - reload data."""
        self.refresh()


def open_pr_attend1(parent=None):
    """Shell opener for 'Attendence' leaf."""
    from PyQt6.QtWidgets import QWidget
    w = PrAttend1Dialog(parent)
    w.setWindowFlags(Qt.WindowType.Window)
    w.show()
    return w


def main():
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = PrAttend1Dialog()
    w.resize(1100, 650)
    w.show()
    sys.exit(app.exec())


if __name__ == "__main__":
    main()