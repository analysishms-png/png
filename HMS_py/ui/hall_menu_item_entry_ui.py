"""Hall Menu Item Entry UI (VB6 HallMenuItemEntry.frm port) — Menu Item Entry.

VB6 Form: HallMenuItemEntry (Caption="Menu Item Entry")
- Detailed menu item master for banquet
- Fields: Code, Name, Unit, Rate, ItemGroup, ItemCategory, RestCode, TaxCode, etc.
- Multiple lookup grids: ItemCategory, ItemGroup, RestCode, Unit
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
    QTableWidgetItem, QVBoxLayout, QWidget, QComboBox, QGroupBox,
    QTextEdit
)

from HMS_py.core import db
from HMS_py.core import hall_menu_item_entry as hmi
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


class HallMenuItemEntryDialog(QDialog):
    """Menu Item Entry (VB6 HallMenuItemEntry.frm port)."""

    COLS = ["Code", "Name", "Unit", "Rate", "ItemGroup", "ItemCategory", "RestCode", "TaxCode"]
    KEYS = ["code", "name", "unit", "rate", "itemgroup", "itemcat", "rest", "tax"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Menu Item Entry - HMS_py")
        self.resize(1100, 700)
        self.edit_code = None
        self._build_ui()
        self._load_items()

    def _build_ui(self):
        p = _theme.palette()
        root = QVBoxLayout(self)
        root.setContentsMargins(12, 10, 12, 10)
        root.setSpacing(8)

        # Title
        title = QLabel("Menu Item Entry")
        title.setStyleSheet(f"font-weight: bold; font-size: 14px; color: {p['text']};")
        root.addWidget(title)

        # Search bar
        search_bar = QHBoxLayout()
        search_bar.addWidget(QLabel("Search:"))
        self.ed_search = QLineEdit()
        self.ed_search.setPlaceholderText("Code / Name / ItemCode...")
        self.ed_search.textChanged.connect(self._filter_table)
        search_bar.addWidget(self.ed_search)

        btn_refresh = QPushButton("Refresh")
        btn_refresh.clicked.connect(self._load_items)
        search_bar.addWidget(btn_refresh)

        btn_exit = QPushButton("Exit")
        btn_exit.clicked.connect(self.reject)
        search_bar.addStretch(1)
        search_bar.addWidget(btn_exit)
        root.addLayout(search_bar)

        # Main splitter: table left, form right
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
        table_layout.addLayout(tbl_btns)

        main_split.addWidget(table_wrap, 2)

        # Right: Form
        form_wrap = QWidget()
        form_wrap.setMaximumWidth(450)
        form_layout = QVBoxLayout(form_wrap)
        form_layout.setContentsMargins(0, 0, 0, 0)

        form_title = QLabel("Item Details")
        form_title.setStyleSheet(f"font-weight: bold; font-size: 12px; color: {p['text']};")
        form_layout.addWidget(form_title)

        self.form = QFormLayout()
        self.edits = {}

        fields = [
            ("code", "Code"),
            ("name", "Name"),
            ("unit", "Unit"),
            ("rate", "Rate"),
            ("itemgroup", "ItemGroup (FK HallItemGroupMast)"),
            ("itemcat", "ItemCategory (FK HallMenuCatalog)"),
            ("rest", "RestCode (FK Depart)"),
            ("tax", "TaxCode (FK TaxMast)"),
            ("srate", "Sale Rate"),
            ("pur_rate", "Purchase Rate"),
            ("minstock", "Min Stock"),
            ("maxstock", "Max Stock"),
            ("restock", "Reorder Level"),
            ("direct_sale", "Direct Sale (Y/N)"),
        ]

        for key, label in fields:
            e = QLineEdit()
            if key == "code":
                e.setMaxLength(8)
            elif key == "name":
                e.setMaxLength(50)
            elif key == "unit":
                e.setMaxLength(10)
            elif key in ("itemgroup", "itemcat", "rest", "tax"):
                e.setMaxLength(10 if key != "rest" else 6)
            self.form.addRow(label, e)
            self.edits[key] = e

        form_layout.addLayout(self.form)

        # Direct Sale as combo
        ds_label = self.form.labelForField(self.edits["direct_sale"])
        if ds_label:
            self.form.removeRow(self.edits["direct_sale"])
            cb = QComboBox()
            cb.addItems(["Y", "N"])
            self.form.addRow("Direct Sale (Y/N):", cb)
            self.edits["direct_sale"] = cb

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
        QShortcut(QKeySequence("F5"), self, activated=self._load_items)

    def _load_items(self):
        try:
            items = hmi.hall_menu_item_list()
            self.tbl.setRowCount(len(items))
            for i, item in enumerate(items):
                self.tbl.setItem(i, 0, _cell(item.get("code", "")))
                self.tbl.setItem(i, 1, _cell(item.get("name", "")))
                self.tbl.setItem(i, 2, _cell(item.get("unit", "")))
                self.tbl.setItem(i, 3, _cell(f"{float(item.get('rate', 0)):,.2f}"))
                self.tbl.setItem(i, 4, _cell(item.get("itemgroup", "")))
                self.tbl.setItem(i, 5, _cell(item.get("itemcat", "")))
                self.tbl.setItem(i, 6, _cell(item.get("rest", "")))
                self.tbl.setItem(i, 7, _cell(item.get("tax", "")))
            self.lbl_status.setText(f"Loaded {len(items)} menu items")
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
            QMessageBox.information(self, "Edit", "Select an item to edit")
            return

        code = self.tbl.item(row, 0).text() if self.tbl.item(row, 0) else ""
        if not code:
            return

        try:
            item = hmi.hall_menu_item_get(code)
            if not item:
                QMessageBox.warning(self, "Edit", f"Item {code} not found")
                return

            self.edit_code = code
            self.edits["code"].setText(item.get("code", ""))
            self.edits["name"].setText(item.get("name", ""))
            self.edits["unit"].setText(item.get("unit", ""))
            self.edits["rate"].setText(f"{float(item.get('rate', 0)):,.2f}")
            self.edits["itemgroup"].setText(item.get("itemgroup", ""))
            self.edits["itemcat"].setText(item.get("itemcat", ""))
            self.edits["rest"].setText(item.get("rest", ""))
            self.edits["tax"].setText(item.get("tax", ""))
            self.edits["srate"].setText(f"{float(item.get('srate', 0)):,.2f}")
            self.edits["pur_rate"].setText(f"{float(item.get('pur_rate', 0)):,.2f}")
            self.edits["minstock"].setText(f"{float(item.get('minstock', 0)):,.2f}")
            self.edits["maxstock"].setText(f"{float(item.get('maxstock', 0)):,.2f}")
            self.edits["restock"].setText(f"{float(item.get('restock', 0)):,.2f}")
            if isinstance(self.edits["direct_sale"], QComboBox):
                ds = item.get("direct_sale", "N")
                idx = self.edits["direct_sale"].findText(ds)
                if idx >= 0:
                    self.edits["direct_sale"].setCurrentIndex(idx)

            self.lbl_status.setText(f"Editing {code}")
        except Exception as e:
            QMessageBox.critical(self, "Edit", f"Failed to load item:\n{e}")

    def _on_delete(self):
        row = self.tbl.currentRow()
        if row < 0:
            QMessageBox.information(self, "Delete", "Select an item to delete")
            return

        code = self.tbl.item(row, 0).text() if self.tbl.item(row, 0) else ""
        if not code:
            return

        if QMessageBox.question(self, "Delete Item",
                f"Delete menu item {code}?",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return

        try:
            hmi.hall_menu_item_delete(code)
            QMessageBox.information(self, "Delete", f"Item {code} deleted")
            self._load_items()
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
            "unit": self.edits["unit"].text().strip(),
            "rate": float(self.edits["rate"].text() or 0),
            "itemgroup": self.edits["itemgroup"].text().strip(),
            "itemcat": self.edits["itemcat"].text().strip(),
            "rest": self.edits["rest"].text().strip(),
            "tax": self.edits["tax"].text().strip(),
            "srate": float(self.edits["srate"].text() or 0),
            "pur_rate": float(self.edits["pur_rate"].text() or 0),
            "minstock": float(self.edits["minstock"].text() or 0),
            "maxstock": float(self.edits["maxstock"].text() or 0),
            "restock": float(self.edits["restock"].text() or 0),
            "direct_sale": self.edits["direct_sale"].currentText() if isinstance(self.edits["direct_sale"], QComboBox) else self.edits["direct_sale"].text(),
        }

        try:
            if self.edit_code:
                hmi.hall_menu_item_update(self.edit_code, rec)
                QMessageBox.information(self, "Save", f"Item {code} updated")
            else:
                hmi.hall_menu_item_insert(rec)
                QMessageBox.information(self, "Save", f"New item {code} created")
            self._load_items()
            self._cancel_edit()
        except Exception as e:
            QMessageBox.critical(self, "Save", f"Save failed:\n{e}")


def open_hall_menu_item_entry(parent=None):
    """Shell opener for 'Menu Item Entry' leaf."""
    w = HallMenuItemEntryDialog(parent)
    w.setWindowFlags(Qt.WindowType.Window)
    w.show()
    return w


def main():
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = HallMenuItemEntryDialog()
    w.resize(1100, 700)
    w.show()
    sys.exit(app.exec())


if __name__ == "__main__":
    main()