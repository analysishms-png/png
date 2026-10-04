"""Hall Menu Catalog UI (VB6 HallMenuCatalog.frm port) — Menu Catalog with GroupCatalog limits.

VB6 Form: HallMenuCatalog (Caption="Menu Catalog")
- Catalog of menu items for banquet operations
- Fields: Code, ItemCode (FK->ItemMast), RestCode, Name, ItemCatCode, Category, ItemGroupCode
- Category radio buttons: Veg/Non-Veg
- Child grid for GroupCatalog limits (ItemCatCode + Limit per catalog item)
- TopCtrl1 navigation with child grid
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
    QSplitter
)

from HMS_py.core import db
from HMS_py.core import hall_menu_catalog as hmc
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


class HallMenuCatalogDialog(QDialog):
    """Menu Catalog (VB6 HallMenuCatalog.frm port) with GroupCatalog limits grid."""

    COLS = ["Code", "ItemCode", "RestCode", "Name", "ItemCatCode", "Category", "ItemGroupCode"]
    KEYS = ["code", "itemcode", "rest", "name", "itemcat", "category", "itemgroup"]

    GROUPCAT_COLS = ["ItemCatCode", "Limit", "GroupName"]
    GROUPCAT_KEYS = ["itemcat", "limit", "groupname"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Menu Catalog - HMS_py")
        self.resize(1200, 750)
        self.edit_code = None
        self.current_groupcat_rows = []
        self._build_ui()
        self._load_catalogs()

    def _build_ui(self):
        p = _theme.palette()
        root = QVBoxLayout(self)
        root.setContentsMargins(12, 10, 12, 10)
        root.setSpacing(8)

        # Title
        title = QLabel("Menu Catalog (with Group Limits)")
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
        btn_refresh.clicked.connect(self._load_catalogs)
        search_bar.addWidget(btn_refresh)

        btn_exit = QPushButton("Exit")
        btn_exit.clicked.connect(self.reject)
        search_bar.addStretch(1)
        search_bar.addWidget(btn_exit)
        root.addLayout(search_bar)

        # Splitter for main table (top) and groupcat table (bottom)
        splitter = QSplitter(Qt.Orientation.Vertical)

        # Top: Main catalog table
        top_wrap = QWidget()
        top_layout = QVBoxLayout(top_wrap)
        top_layout.setContentsMargins(0, 0, 0, 0)

        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels(self.COLS)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.cellDoubleClicked.connect(self._on_edit)
        top_layout.addWidget(self.tbl)

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
        top_layout.addLayout(tbl_btns)

        splitter.addWidget(top_wrap)

        # Bottom: GroupCatalog limits table
        bottom_wrap = QWidget()
        bottom_layout = QVBoxLayout(bottom_wrap)
        bottom_layout.setContentsMargins(0, 0, 0, 0)

        gc_label = QLabel("Group Catalog Limits (for selected catalog item)")
        gc_label.setStyleSheet(f"font-weight: bold; font-size: 11px; color: {p['text']};")
        bottom_layout.addWidget(gc_label)

        self.tbl_gc = QTableWidget(0, len(self.GROUPCAT_COLS))
        self.tbl_gc.setHorizontalHeaderLabels(self.GROUPCAT_COLS)
        self.tbl_gc.setAlternatingRowColors(True)
        self.tbl_gc.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl_gc.horizontalHeader().setStretchLastSection(True)
        bottom_layout.addWidget(self.tbl_gc)

        gc_btns = QHBoxLayout()
        btn_gc_add = QPushButton("Add Limit")
        btn_gc_add.clicked.connect(self._gc_add)
        btn_gc_del = QPushButton("Delete Limit")
        btn_gc_del.clicked.connect(self._gc_delete)
        for b in (btn_gc_add, btn_gc_del):
            gc_btns.addWidget(b)
        gc_btns.addStretch(1)
        bottom_layout.addLayout(gc_btns)

        splitter.addWidget(bottom_wrap)
        splitter.setSizes([500, 250])
        root.addWidget(splitter)

        # Form for main catalog
        form_wrap = QWidget()
        form_wrap.setMaximumWidth(400)
        form_layout = QVBoxLayout(form_wrap)
        form_layout.setContentsMargins(0, 0, 0, 0)

        form_title = QLabel("Catalog Details")
        form_title.setStyleSheet(f"font-weight: bold; font-size: 12px; color: {p['text']};")
        form_layout.addWidget(form_title)

        self.form = QFormLayout()
        self.edits = {}

        fields = [
            ("code", "Code"),
            ("itemcode", "ItemCode (FK ItemMast)"),
            ("rest", "RestCode"),
            ("name", "Name"),
            ("itemcat", "ItemCatCode"),
            ("category", "Category"),
            ("itemgroup", "ItemGroupCode"),
        ]

        for key, label in fields:
            e = QLineEdit()
            if key == "code":
                e.setMaxLength(6)
            elif key == "name":
                e.setMaxLength(50)
            elif key == "itemcode":
                e.setMaxLength(8)
            elif key == "rest":
                e.setMaxLength(6)
            elif key == "itemcat":
                e.setMaxLength(6)
            elif key == "category":
                e.setMaxLength(30)
            elif key == "itemgroup":
                e.setMaxLength(10)
            self.form.addRow(label, e)
            self.edits[key] = e

        form_layout.addLayout(self.form)

        # Category radio buttons (VB6: OptCat(0)=Veg, OptCat(1)=Non-Veg)
        cat_group = QGroupBox("Category Type")
        cat_layout = QHBoxLayout(cat_group)
        self.rb_veg = QComboBox()
        self.rb_veg.addItems(["Veg", "Non-Veg"])
        cat_layout.addWidget(self.rb_veg)
        form_layout.addWidget(cat_group)

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

        root.addWidget(form_wrap, 1)

        # Status
        self.lbl_status = QLabel("Ready")
        self.lbl_status.setFont(QFont("Segoe UI", 9))
        self.lbl_status.setStyleSheet(f"color: {p['text_dim']};")
        root.addWidget(self.lbl_status)

        # Shortcuts
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._on_new)
        QShortcut(QKeySequence("Escape"), self, activated=self._cancel_edit)
        QShortcut(QKeySequence("F5"), self, activated=self._load_catalogs)

    def _load_catalogs(self):
        try:
            catalogs = hmc.hall_menu_catalog_list()
            self.tbl.setRowCount(len(catalogs))
            for i, c in enumerate(catalogs):
                self.tbl.setItem(i, 0, _cell(c.get("code", "")))
                self.tbl.setItem(i, 1, _cell(c.get("itemcode", "")))
                self.tbl.setItem(i, 2, _cell(c.get("rest", "")))
                self.tbl.setItem(i, 3, _cell(c.get("name", "")))
                self.tbl.setItem(i, 4, _cell(c.get("itemcat", "")))
                self.tbl.setItem(i, 5, _cell(c.get("category", "")))
                self.tbl.setItem(i, 6, _cell(c.get("itemgroup", "")))
            self.lbl_status.setText(f"Loaded {len(catalogs)} catalog items")
            # Clear groupcat table when no selection
            self.tbl_gc.setRowCount(0)
            self.current_groupcat_rows = []
        except Exception as e:
            self.lbl_status.setText(f"Load failed: {e}")

    def _filter_table(self):
        search = self.ed_search.text().lower()
        for row in range(self.tbl.rowCount()):
            code_item = self.tbl.item(row, 0)
            name_item = self.tbl.item(row, 3)
            match = False
            if code_item and search in code_item.text().lower():
                match = True
            if name_item and search in name_item.text().lower():
                match = True
            self.tbl.setRowHidden(row, not match)

    def _on_table_selection_changed(self):
        """Load GroupCatalog limits for selected catalog item."""
        row = self.tbl.currentRow()
        if row < 0:
            self.tbl_gc.setRowCount(0)
            self.current_groupcat_rows = []
            return

        code = self.tbl.item(row, 0).text() if self.tbl.item(row, 0) else ""
        if not code:
            self.tbl_gc.setRowCount(0)
            return

        try:
            gc_rows = hmc.group_catalog_list(code)
            self.current_groupcat_rows = gc_rows
            self.tbl_gc.setRowCount(len(gc_rows))
            for i, r in enumerate(gc_rows):
                self.tbl_gc.setItem(i, 0, _cell(r.get("itemcat", "")))
                self.tbl_gc.setItem(i, 1, _cell(r.get("limit", 0)))
                self.tbl_gc.setItem(i, 2, _cell(r.get("groupname", "")))
        except Exception as e:
            self.tbl_gc.setRowCount(0)
            self.lbl_status.setText(f"GroupCatalog load failed: {e}")

    def _filter_table(self):
        search = self.ed_search.text().lower()
        for row in range(self.tbl.rowCount()):
            code_item = self.tbl.item(row, 0)
            name_item = self.tbl.item(row, 3)
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
            QMessageBox.information(self, "Edit", "Select a catalog item to edit")
            return

        code = self.tbl.item(row, 0).text() if self.tbl.item(row, 0) else ""
        if not code:
            return

        try:
            cat = hmc.hall_menu_catalog_get(code)
            if not cat:
                QMessageBox.warning(self, "Edit", f"Catalog {code} not found")
                return

            self.edit_code = code
            self.edits["code"].setText(cat.get("code", ""))
            self.edits["itemcode"].setText(cat.get("itemcode", ""))
            self.edits["rest"].setText(cat.get("rest", ""))
            self.edits["name"].setText(cat.get("name", ""))
            self.edits["itemcat"].setText(cat.get("itemcat", ""))
            self.edits["category"].setText(cat.get("category", ""))
            self.edits["itemgroup"].setText(cat.get("itemgroup", ""))

            self.lbl_status.setText(f"Editing {code}")
            self._on_table_selection_changed()
        except Exception as e:
            QMessageBox.critical(self, "Edit", f"Failed to load catalog:\n{e}")

    def _on_delete(self):
        row = self.tbl.currentRow()
        if row < 0:
            QMessageBox.information(self, "Delete", "Select a catalog item to delete")
            return

        code = self.tbl.item(row, 0).text() if self.tbl.item(row, 0) else ""
        if not code:
            return

        if QMessageBox.question(self, "Delete Catalog",
                f"Delete catalog item {code}? This will also delete its GroupCatalog limits.",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return

        try:
            hmc.hall_menu_catalog_delete(code)
            QMessageBox.information(self, "Delete", f"Catalog {code} deleted")
            self._load_catalogs()
            self._cancel_edit()
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"Delete failed:\n{e}")

    def _cancel_edit(self):
        self.edit_code = None
        for e in self.edits.values():
            e.clear()
        self.rb_veg = "Veg"  # Default
        self.lbl_status.setText("Ready")

    def _save(self):
        code = self.edits["code"].text().strip()
        name = self.edits["name"].text().strip()
        itemcode = self.edits["itemcode"].text().strip()
        if not code:
            QMessageBox.warning(self, "Save", "Code zaroori hai")
            return
        if not name:
            QMessageBox.warning(self, "Save", "Name zaroori hai")
            return
        if not itemcode:
            QMessageBox.warning(self, "Save", "ItemCode zaroori hai")
            return

        rec = {
            "code": code,
            "itemcode": itemcode,
            "rest": self.edits["rest"].text().strip(),
            "name": name,
            "itemcat": self.edits["itemcat"].text().strip(),
            "category": self.edits["category"].text().strip(),
            "itemgroup": self.edits["itemgroup"].text().strip(),
        }

        try:
            if self.edit_code:
                hmc.hall_menu_catalog_update(self.edit_code, rec)
                QMessageBox.information(self, "Save", f"Catalog {code} updated")
            else:
                hmc.hall_menu_catalog_insert(rec)
                QMessageBox.information(self, "Save", f"New catalog {code} created")
            self._load_catalogs()
            self._cancel_edit()
        except Exception as e:
            QMessageBox.critical(self, "Save", f"Save failed:\n{e}")

    # GroupCatalog methods
    def _gc_add(self):
        row = self.tbl.currentRow()
        if row < 0:
            QMessageBox.information(self, "GroupCatalog", "Select a catalog item first")
            return

        code = self.tbl.item(row, 0).text() if self.tbl.item(row, 0) else ""
        if not code:
            return

        # Simple dialog for adding limit
        from PyQt6.QtWidgets import QDialog, QFormLayout, QLineEdit, QComboBox, QPushButton, QHBoxLayout
        dlg = QDialog(self)
        dlg.setWindowTitle("Add GroupCatalog Limit")
        form = QFormLayout(dlg)

        ed_itemcat = QLineEdit()
        ed_itemcat.setMaxLength(6)
        form.addRow("ItemCatCode:", ed_itemcat)

        ed_limit = QLineEdit()
        ed_limit.setPlaceholderText("0 = no limit")
        form.addRow("Limit:", ed_limit)

        btn_ok = QPushButton("Add")
        btn_ok.clicked.connect(dlg.accept)
        btn_cancel = QPushButton("Cancel")
        btn_cancel.clicked.connect(dlg.reject)
        h = QHBoxLayout()
        h.addWidget(btn_ok)
        h.addWidget(btn_cancel)
        form.addRow(h)

        if dlg.exec() != QDialog.DialogCode.Accepted:
            return

        itemcat = ed_itemcat.text().strip()
        if not itemcat:
            QMessageBox.warning(self, "GroupCatalog", "ItemCatCode zaroori hai")
            return

        try:
            limit = int(ed_limit.text() or 0)
        except ValueError:
            limit = 0

        # Check duplicate
        for r in self.current_groupcat_rows:
            if r.get("itemcat") == itemcat:
                QMessageBox.warning(self, "GroupCatalog", f"ItemCatCode {itemcat} already exists")
                return

        # Add to GroupCatalog
        try:
            hmc.group_catalog_set(code, self.current_groupcat_rows + [{"itemcat": itemcat, "limit": limit}])
            QMessageBox.information(self, "GroupCatalog", "Limit added")
            self._on_table_selection_changed()
        except Exception as e:
            QMessageBox.critical(self, "GroupCatalog", f"Add failed:\n{e}")

    def _gc_delete(self):
        row = self.tbl_gc.currentRow()
        if row < 0:
            QMessageBox.information(self, "GroupCatalog", "Select a limit to delete")
            return

        itemcat = self.tbl_gc.item(row, 0).text() if self.tbl_gc.item(row, 0) else ""
        if not itemcat:
            return

        if QMessageBox.question(self, "Delete Limit",
                f"Delete limit for ItemCatCode {itemcat}?",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return

        try:
            # Rebuild limits list without deleted item
            new_limits = [r for r in self.current_groupcat_rows if r.get("itemcat") != itemcat]
            code = self.tbl.item(self.tbl.currentRow(), 0).text() if self.tbl.item(self.tbl.currentRow(), 0) else ""
            hmc.group_catalog_set(code, new_limits)
            QMessageBox.information(self, "GroupCatalog", "Limit deleted")
            self._on_table_selection_changed()
        except Exception as e:
            QMessageBox.critical(self, "GroupCatalog", f"Delete failed:\n{e}")


def open_hall_menu_catalog(parent=None):
    """Shell opener for 'Menu Catalog' leaf."""
    w = HallMenuCatalogDialog(parent)
    w.setWindowFlags(Qt.WindowType.Window)
    w.show()
    return w


def main():
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = HallMenuCatalogDialog()
    w.resize(1200, 750)
    w.show()
    sys.exit(app.exec())


if __name__ == "__main__":
    main()