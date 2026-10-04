"""Hall Item Group Master UI (VB6 HallItemGroupMast.frm port) — Item Group Entry.

VB6 Form: HallItemGroupMast (Caption="Item Group Entry")
- Simple master: Code, Name, Status (Active/Non Active)
- Delete validates against ItemMast reference
"""

from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

import datetime
from PyQt6.QtCore import Qt
from PyQt6.QtGui import QFont, QColor, QKeySequence, QShortcut
from PyQt6.QtWidgets import (
    QApplication, QDialog, QFormLayout, QHBoxLayout,
    QLabel, QLineEdit, QMessageBox, QPushButton, QTableWidget,
    QTableWidgetItem, QVBoxLayout, QWidget, QComboBox
)

from HMS_py.core import db
from HMS_py.core import hall_item_group_mast as himg
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


class HallItemGroupMastDialog(QDialog):
    """Item Group Entry (VB6 HallItemGroupMast.frm port)."""

    COLS = ["Code", "Name", "Status"]
    KEYS = ["code", "name", "status"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Item Group Entry - HMS_py")
        self.resize(800, 500)
        self.edit_code = None
        self._build_ui()
        self._load_data()

    def _build_ui(self):
        p = _theme.palette()
        root = QVBoxLayout(self)
        root.setContentsMargins(12, 10, 12, 10)
        root.setSpacing(8)

        # Title
        title = QLabel("Item Group Entry")
        title.setStyleSheet(f"font-weight: bold; font-size: 14px; color: {p['text']};")
        root.addWidget(title)

        # Search bar
        search_bar = QHBoxLayout()
        search_bar.addWidget(QLabel("Search:"))
        self.ed_search = QLineEdit()
        self.ed_search.setPlaceholderText("Code / Name...")
        self.ed_search.textChanged.connect(self._filter_table)
        search_bar.addWidget(self.ed_search)

        btn_refresh = QPushButton("Refresh")
        btn_refresh.clicked.connect(self._load_data)
        search_bar.addWidget(btn_refresh)

        btn_exit = QPushButton("Exit")
        btn_exit.clicked.connect(self.reject)
        search_bar.addStretch(1)
        search_bar.addWidget(btn_exit)
        root.addLayout(search_bar)

        # Table
        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels(self.COLS)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.cellDoubleClicked.connect(self._on_edit)
        root.addWidget(self.tbl)

        # Form
        form_wrap = QWidget()
        form_wrap.setMaximumWidth(400)
        form_layout = QVBoxLayout(form_wrap)
        form_layout.setContentsMargins(0, 0, 0, 0)

        form_title = QLabel("Item Group Details")
        form_title.setStyleSheet(f"font-weight: bold; font-size: 12px; color: {p['text']};")
        form_layout.addWidget(form_title)

        self.form = QFormLayout()
        self.edits = {}

        fields = [
            ("code", "Code"),
            ("name", "Name"),
            ("status", "Status"),
        ]

        for key, label in fields:
            if key == "status":
                e = QComboBox()
                e.addItems(["Active", "Non Active"])
            else:
                e = QLineEdit()
                if key == "code":
                    e.setMaxLength(10)
                elif key == "name":
                    e.setMaxLength(50)
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

        # Table buttons
        tbl_btns = QHBoxLayout()
        btn_new = QPushButton("New")
        btn_new.clicked.connect(self._on_new)
        btn_edit = QPushButton("Edit")
        btn_edit.clicked.connect(self._on_edit)
        btn_delete = QPushButton("Delete")
        btn_delete.clicked.connect(self._on_delete)
        for b in (btn_new, btn_edit, btn_delete):
            tbl_btns.addWidget(b)
        tbl_btns.addStretch(1)
        form_layout.addLayout(tbl_btns)

        root.addWidget(form_wrap)

        # Status
        self.lbl_status = QLabel("Ready")
        self.lbl_status.setFont(QFont("Segoe UI", 9))
        self.lbl_status.setStyleSheet(f"color: {p['text_dim']};")
        root.addWidget(self.lbl_status)

        # Shortcuts
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._on_new)
        QShortcut(QKeySequence("Escape"), self, activated=self._cancel_edit)
        QShortcut(QKeySequence("F5"), self, activated=self._load_data)

    def _load_data(self):
        try:
            groups = himg.hall_item_group_list()
            self.tbl.setRowCount(len(groups))
            for i, g in enumerate(groups):
                self.tbl.setItem(i, 0, _cell(g.get("code", "")))
                self.tbl.setItem(i, 1, _cell(g.get("name", "")))
                self.tbl.setItem(i, 2, _cell(g.get("status", "Active")))
            self.lbl_status.setText(f"Loaded {len(groups)} item groups")
        except Exception as e:
            self.lbl_status.setText(f"Load failed: {e}")

    def _filter_table(self):
        search = self.ed_search.text().lower()
        for row in range(self.tbl.rowCount()):
            code_item = self.tbl.item(row, 0)
            name_item = self.tbl.item(row, 1)
            match = False
            if code_item and search in code_item.text().lower():
                match = True
            if name_item and search in name_item.text().lower():
                match = True
            self.tbl.setRowHidden(row, not match)

    def _on_new(self):
        self._cancel_edit()
        self.edit_code = None
        self.edits["code"].setFocus()

    def _on_edit(self, row=None, col=None):
        if row is None:
            row = self.tbl.currentRow()
        if row < 0:
            QMessageBox.information(self, "Edit", "Select an item group to edit")
            return

        code = self.tbl.item(row, 0).text() if self.tbl.item(row, 0) else ""
        if not code:
            return

        try:
            group = himg.hall_item_group_get(code)
            if not group:
                QMessageBox.warning(self, "Edit", f"Item group {code} not found")
                return

            self.edit_code = code
            self.edits["code"].setText(group.get("code", ""))
            self.edits["name"].setText(group.get("name", ""))
            status = group.get("status", "Active")
            if isinstance(self.edits["status"], QComboBox):
                idx = self.edits["status"].findText(status)
                if idx >= 0:
                    self.edits["status"].setCurrentIndex(idx)
            self.lbl_status.setText(f"Editing {code}")
        except Exception as e:
            QMessageBox.critical(self, "Edit", f"Failed to load group:\n{e}")

    def _on_delete(self):
        row = self.tbl.currentRow()
        if row < 0:
            QMessageBox.information(self, "Delete", "Select an item group to delete")
            return

        code = self.tbl.item(row, 0).text() if self.tbl.item(row, 0) else ""
        if not code:
            return

        if QMessageBox.question(self, "Delete Item Group",
                f"Delete item group {code}?",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return

        try:
            himg.hall_item_group_delete(code)
            QMessageBox.information(self, "Delete", f"Item group {code} deleted")
            self._load_data()
            self._cancel_edit()
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"Delete failed:\n{e}")

    def _cancel_edit(self):
        self.edit_code = None
        for e in self.edits.values():
            if isinstance(e, QComboBox):
                e.setCurrentIndex(0)
            else:
                e.clear()
        self.lbl_status.setText("Ready")

    def _save(self):
        code = self.edits["code"].text().strip()
        name = self.edits["name"].text().strip()
        if not code:
            QMessageBox.warning(self, "Save", "Code zaroori hai")
            return
        if not name:
            QMessageBox.warning(self, "Save", "Name zaroori hai")
            return

        rec = {
            "code": code,
            "name": name,
            "status": self.edits["status"].currentText() if isinstance(self.edits["status"], QComboBox) else self.edits["status"].text(),
        }

        try:
            if self.edit_code:
                himg.hall_item_group_update(self.edit_code, rec)
                QMessageBox.information(self, "Save", f"Item group {code} updated")
            else:
                himg.hall_item_group_insert(rec)
                QMessageBox.information(self, "Save", f"New item group {code} created")
            self._load_data()
            self._cancel_edit()
        except Exception as e:
            QMessageBox.critical(self, "Save", f"Save failed:\n{e}")


def open_hall_item_group_mast(parent=None):
    """Shell opener for 'Item Group Entry' leaf."""
    w = HallItemGroupMastDialog(parent)
    w.setWindowFlags(Qt.WindowType.Window)
    w.show()
    return w


def main():
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = HallItemGroupMastDialog()
    w.resize(800, 500)
    w.show()
    sys.exit(app.exec())


if __name__ == "__main__":
    main()