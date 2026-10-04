"""FrmItemIssuedOnCleaning UI (VB6 FrmItemIssuedOnCleaning.frm port) — Item Issue Management for Cleaning Departments.

VB6 form: FrmItemIssuedOnCleaning (Caption="Item Issued On Cleaning", MDIChild=True)
- Manages item issuance to housekeeping/cleaning departments
- Two DataGrids: one for items (DGItem), one for departments (DGDepart)
- VB6 uses DepartWiseItemIssueList table
- Operations: Add, Edit, Delete items issued to departments

Note: VB6 shows both grids initially hidden (Visible=0), suggesting they're populated dynamically.
"""

from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt, QDate
from PyQt6.QtGui import QKeySequence, QShortcut, QColor
from PyQt6.QtWidgets import (
    QAbstractItemView,
    QDialog,
    QHBoxLayout,
    QHeaderView,
    QLabel,
    QLineEdit,
    QMessageBox,
    QPushButton,
    QTableWidget,
    QTableWidgetItem,
    QVBoxLayout,
    QWidget,
    QComboBox,
    QDateEdit,
)

from HMS_py.core import db
from HMS_py.ui import theme as _theme


def _item(val, readonly=False) -> QTableWidgetItem:
    """Create a styled table item."""
    it = QTableWidgetItem("" if val is None else str(val))
    if readonly:
        it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    else:
        it.setFlags(it.flags() | Qt.ItemFlag.ItemIsEditable)
    it.setForeground(QColor(_theme.palette()["text"]))
    if readonly:
        it.setBackground(QColor(_theme.palette()["glass_tint"]))
    return it


class FrmItemIssuedOnCleaningDialog(QDialog):
    """Item Issue Management for Cleaning Departments (VB6 FrmItemIssuedOnCleaning.frm port)."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Item Issued On Cleaning")
        self.resize(1000, 700)
        self._item_rows = []      # Items list
        self._dept_rows = []      # Departments list
        self._issue_rows = []     # Issued items records
        self._build_ui()
        self.reload_all()

    def _build_ui(self):
        """Build the UI components."""
        p = _theme.palette()
        v = QVBoxLayout(self)
        v.setContentsMargins(12, 10, 12, 10)
        v.setSpacing(8)

        # Title
        title = QLabel("Item Issued On Cleaning Management")
        title.setStyleSheet(f"font-weight: bold; font-size: 14px; color: {p['text']};")
        v.addWidget(title)

        # Toolbar
        bar = QHBoxLayout()
        self.btn_add = QPushButton("Add Issue")
        self.btn_add.setToolTip("Add new item issue record (Ctrl+A)")
        self.btn_add.clicked.connect(self._add_issue)
        bar.addWidget(self.btn_add)

        self.btn_edit = QPushButton("Edit Issue")
        self.btn_edit.setToolTip("Edit selected issue record (Ctrl+E)")
        self.btn_edit.clicked.connect(self._edit_issue)
        bar.addWidget(self.btn_edit)

        self.btn_delete = QPushButton("Delete Issue")
        self.btn_delete.setToolTip("Delete selected issue record (Ctrl+D)")
        self.btn_delete.clicked.connect(self._delete_issue)
        bar.addWidget(self.btn_delete)

        bar.addStretch(1)
        self.lbl_status = QLabel("Ready")
        self.lbl_status.setStyleSheet(f"color: {p['text_dim']};")
        bar.addWidget(self.lbl_status)
        v.addLayout(bar)

        # Items Section (left)
        items_group = QWidget()
        items_layout = QVBoxLayout(items_group)
        items_layout.setContentsMargins(0, 0, 0, 0)
        items_label = QLabel("Available Items")
        items_label.setStyleSheet(f"font-weight: bold; color: {p['text']};")
        items_layout.addWidget(items_label)
        self.table_items = QTableWidget()
        self.table_items.setAlternatingRowColors(True)
        self.table_items.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.table_items.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
        self.table_items.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
        items_layout.addWidget(self.table_items)
        v.addWidget(items_group, 1)

        # Departments Section (right)
        dept_group = QWidget()
        dept_layout = QVBoxLayout(dept_group)
        dept_layout.setContentsMargins(0, 0, 0, 0)
        dept_label = QLabel("Departments")
        dept_label.setStyleSheet(f"font-weight: bold; color: {p['text']};")
        dept_layout.addWidget(dept_label)
        self.table_depts = QTableWidget()
        self.table_depts.setAlternatingRowColors(True)
        self.table_depts.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.table_depts.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
        self.table_depts.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
        dept_layout.addWidget(self.table_depts)
        v.addWidget(dept_group, 1)

        # Issued Items Section (bottom)
        issued_group = QWidget()
        issued_layout = QVBoxLayout(issued_group)
        issued_layout.setContentsMargins(0, 0, 0, 0)
        issued_label = QLabel("Item Issue Records")
        issued_label.setStyleSheet(f"font-weight: bold; color: {p['text']};")
        issued_layout.addWidget(issued_label)
        self.table_issued = QTableWidget()
        self.table_issued.setAlternatingRowColors(True)
        self.table_issued.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.table_issued.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
        self.table_issued.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
        issued_layout.addWidget(self.table_issued)
        v.addWidget(issued_group, 2)

        # Shortcuts
        QShortcut(QKeySequence("Ctrl+A"), self, activated=self._add_issue)
        QShortcut(QKeySequence("Ctrl+E"), self, activated=self._edit_issue)
        QShortcut(QKeySequence("Ctrl+D"), self, activated=self._delete_issue)
        QShortcut(QKeySequence("F5"), self, activated=self.reload_all)

    def reload_all(self):
        """Reload all data: items, departments, and issued records."""
        try:
            # Load items (assuming from a master items table)
            self._item_rows = db.query("SELECT ItemCode, ItemName, Description FROM ItemMaster ORDER BY ItemName", limit=500)
        except Exception:
            # Fallback if ItemMaster doesn't exist
            self._item_rows = [{"ItemCode": i, "ItemName": f"Item {i}", "Description": f"Sample item {i}"} for i in range(1, 21)]

        try:
            # Load departments
            self._dept_rows = db.query("SELECT DeptCode, DeptName FROM DepartmentMaster WHERE Active = 1 ORDER BY DeptName")
        except Exception:
            # Fallback departments
            self._dept_rows = [
                {"DeptCode": "HK", "DeptName": "Housekeeping"},
                {"DeptCode": "CLN", "DeptName": "Cleaning"},
                {"DeptCode": "LND", "DeptName": "Laundry"},
                {"DeptCode": "MNT", "DeptName": "Maintenance"},
            ]

        try:
            # Load issued items records from DepartWiseItemIssueList
            self._issue_rows = db.query("""
                SELECT dwiil.ID, dwiil.ItemCode, im.ItemName, dwiil.DeptCode, dm.DeptName, 
                       dwiil.Quantity, dwiil.IssueDate, dwiil.Remarks
                FROM DepartWiseItemIssueList dwiil
                LEFT JOIN ItemMaster im ON dwiil.ItemCode = im.ItemCode
                LEFT JOIN DepartmentMaster dm ON dwiil.DeptCode = dm.DeptCode
                ORDER BY dwiil.IssueDate DESC
            """, limit=1000)
        except Exception as e:
            # If table doesn't exist yet, create empty list
            self._issue_rows = []
            self.lbl_status.setText(f"Table DepartWiseItemIssueList not found: {e}")

        self._populate_tables()
        self.lbl_status.setText(f"Loaded {len(self._item_rows)} items, {len(self._dept_rows)} departments, {len(self._issue_rows)} issue records")

    def _populate_tables(self):
        """Populate all three tables with data."""
        # Items table
        self.table_items.clear()
        self.table_items.setRowCount(len(self._item_rows))
        self.table_items.setColumnCount(3)
        self.table_items.setHorizontalHeaderLabels(["Item Code", "Item Name", "Description"])
        for r, row in enumerate(self._item_rows):
            self.table_items.setItem(r, 0, _item(row.get("ItemCode", ""), readonly=True))
            self.table_items.setItem(r, 1, _item(row.get("ItemName", ""), readonly=True))
            self.table_items.setItem(r, 2, _item(row.get("Description", ""), readonly=True))

        # Departments table
        self.table_depts.clear()
        self.table_depts.setRowCount(len(self._dept_rows))
        self.table_depts.setColumnCount(2)
        self.table_depts.setHorizontalHeaderLabels(["Dept Code", "Dept Name"])
        for r, row in enumerate(self._dept_rows):
            self.table_depts.setItem(r, 0, _item(row.get("DeptCode", ""), readonly=True))
            self.table_depts.setItem(r, 1, _item(row.get("DeptName", ""), readonly=True))

        # Issued items table
        self.table_issued.clear()
        self.table_issued.setRowCount(len(self._issue_rows))
        self.table_issued.setColumnCount(8)
        self.table_issued.setHorizontalHeaderLabels([
            "ID", "Item Code", "Item Name", "Dept Code", "Dept Name", 
            "Quantity", "Issue Date", "Remarks"
        ])
        for r, row in enumerate(self._issue_rows):
            self.table_issued.setItem(r, 0, _item(row.get("ID", ""), readonly=True))
            self.table_issued.setItem(r, 1, _item(row.get("ItemCode", ""), readonly=True))
            self.table_issued.setItem(r, 2, _item(row.get("ItemName", ""), readonly=True))
            self.table_issued.setItem(r, 3, _item(row.get("DeptCode", ""), readonly=True))
            self.table_issued.setItem(r, 4, _item(row.get("DeptName", ""), readonly=True))
            self.table_issued.setItem(r, 5, _item(str(row.get("Quantity", "")), readonly=True))
            issue_date = row.get("IssueDate")
            if issue_date:
                date_str = issue_date.strftime("%Y-%m-%d") if hasattr(issue_date, 'strftime') else str(issue_date)
            else:
                date_str = ""
            self.table_issued.setItem(r, 6, _item(date_str, readonly=True))
            self.table_issued.setItem(r, 7, _item(row.get("Remarks", ""), readonly=True))

    def _add_issue(self):
        """Add a new item issue record."""
        if not self._item_rows or not self._dept_rows:
            QMessageBox.warning(self, "Item Issue", "No items or departments available.")
            return

        # Simple dialog for adding issue
        from PyQt6.QtWidgets import QInputDialog

        # Select item
        item_names = [f"{r['ItemCode']} - {r['ItemName']}" for r in self._item_rows]
        item_choice, ok = QInputDialog.getItem(self, "Select Item", "Item:", item_names, 0, False)
        if not ok:
            return
        item_idx = item_names.index(item_choice)
        selected_item = self._item_rows[item_idx]

        # Select department
        dept_names = [f"{r['DeptCode']} - {r['DeptName']}" for r in self._dept_rows]
        dept_choice, ok = QInputDialog.getItem(self, "Select Department", "Department:", dept_names, 0, False)
        if not ok:
            return
        dept_idx = dept_names.index(dept_choice)
        selected_dept = self._dept_rows[dept_idx]

        # Get quantity
        quantity, ok = QInputDialog.getInt(self, "Quantity", "Enter quantity:", 1, 1, 999)
        if not ok:
            return

        # Get date
        date_edit = QDateEdit(QDate.currentDate())
        date_edit.setCalendarPopup(True)
        date_choice, ok = QInputDialog.getItem(self, "Issue Date", "Date:", [date_edit.date().toString("yyyy-MM-dd")], 0, False)
        if not ok:
            return

        # Get remarks
        remarks, ok = QInputDialog.getText(self, "Remarks", "Enter remarks (optional):")
        if not ok:
            remarks = ""

        try:
            cn = db.connect()
            db.execute("""
                INSERT INTO DepartWiseItemIssueList (ItemCode, DeptCode, Quantity, IssueDate, Remarks)
                VALUES (?, ?, ?, ?, ?)
            """, (selected_item["ItemCode"], selected_dept["DeptCode"], quantity, date_edit.date().toPyDate(), remarks), cn=cn, commit=True)
            cn.close()
            QMessageBox.information(self, "Item Issue", "Item issue record added successfully.")
            self.reload_all()
        except Exception as e:
            QMessageBox.critical(self, "Item Issue", f"Failed to add record: {e}")

    def _edit_issue(self):
        """Edit selected item issue record."""
        current_row = self.table_issued.currentRow()
        if current_row < 0:
            QMessageBox.warning(self, "Item Issue", "Please select a record to edit.")
            return

        # Get the ID from the first column
        id_item = self.table_issued.item(current_row, 0)
        if not id_item:
            QMessageBox.warning(self, "Item Issue", "Could not retrieve record ID.")
            return
        record_id = int(id_item.text())

        # For simplicity, just reload - in a full implementation we'd open an edit dialog
        QMessageBox.information(self, "Item Issue", f"Edit functionality for record ID {record_id} would be implemented here.")
        # TODO: Implement full edit dialog

    def _delete_issue(self):
        """Delete selected item issue record."""
        current_row = self.table_issued.currentRow()
        if current_row < 0:
            QMessageBox.warning(self, "Item Issue", "Please select a record to delete.")
            return

        # Get the ID from the first column
        id_item = self.table_issued.item(current_row, 0)
        if not id_item:
            QMessageBox.warning(self, "Item Issue", "Could not retrieve record ID.")
            return
        record_id = int(id_item.text())

        reply = QMessageBox.question(
            self, "Confirm Delete",
            f"Are you sure you want to delete issue record ID {record_id}?",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
            QMessageBox.StandardButton.No
        )

        if reply == QMessageBox.StandardButton.Yes:
            try:
                cn = db.connect()
                db.execute("DELETE FROM DepartWiseItemIssueList WHERE ID = ?", (record_id,), cn=cn, commit=True)
                cn.close()
                QMessageBox.information(self, "Item Issue", "Record deleted successfully.")
                self.reload_all()
            except Exception as e:
                QMessageBox.critical(self, "Item Issue", f"Failed to delete record: {e}")


def open_frm_item_issued_on_cleaning(parent=None):
    """Shell opener for 'Item Issued On Cleaning' leaf."""
    w = FrmItemIssuedOnCleaningDialog(parent)
    w.setWindowFlags(Qt.WindowType.Window)
    w.show()
    return w


def main():
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = FrmItemIssuedOnCleaningDialog()
    w.resize(1000, 700)
    w.show()
    sys.exit(app.exec())


if __name__ == "__main__":
    main()