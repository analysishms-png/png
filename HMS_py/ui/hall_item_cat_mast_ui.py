"""Hall Item Category & Charge Master UI (VB6 FrmHallItemCatMast.frm port) — Category and Charge Master.

VB6 Form: FrmHallItemCatMast (Caption="Category and Charge Master")
- Category master with linked Sale Account and Sale Tax grids
- Fields: CatCode, CatName, CategoryCode (FK->HallItemGroupMast), SaleAcCode, SaleTaxCode
- Two child grids: Sale Account mapping, Sale Tax mapping
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
from HMS_py.core import hall_item_cat_mast as hicm
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


class HallItemCatMastDialog(QDialog):
    """Category and Charge Master (VB6 FrmHallItemCatMast.frm port)."""

    COLS = ["CatCode", "CatName", "CategoryCode", "SaleAcCode", "SaleTaxCode"]
    KEYS = ["catcode", "catname", "category_code", "sale_ac_code", "sale_tax_code"]

    SALEAC_COLS = ["SaleAcCode"]
    SALETAX_COLS = ["SaleTaxCode"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Category and Charge Master - HMS_py")
        self.resize(1100, 700)
        self.edit_catcode = None
        self._build_ui()
        self._load_categories()

    def _build_ui(self):
        p = _theme.palette()
        root = QVBoxLayout(self)
        root.setContentsMargins(12, 10, 12, 10)
        root.setSpacing(8)

        # Title
        title = QLabel("Category and Charge Master")
        title.setStyleSheet(f"font-weight: bold; font-size: 14px; color: {p['text']};")
        root.addWidget(title)

        # Search bar
        search_bar = QHBoxLayout()
        search_bar.addWidget(QLabel("Search:"))
        self.ed_search = QLineEdit()
        self.ed_search.setPlaceholderText("CatCode / CatName...")
        self.ed_search.textChanged.connect(self._filter_table)
        search_bar.addWidget(self.ed_search)

        btn_refresh = QPushButton("Refresh")
        btn_refresh.clicked.connect(self._load_categories)
        search_bar.addWidget(btn_refresh)

        btn_exit = QPushButton("Exit")
        btn_exit.clicked.connect(self.reject)
        search_bar.addStretch(1)
        search_bar.addWidget(btn_exit)
        root.addLayout(search_bar)

        # Splitter: main table top, child grids bottom
        splitter = QSplitter(Qt.Orientation.Vertical)

        # Top: Main category table
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

        # Bottom: Child grids (Sale Account and Sale Tax)
        bottom_wrap = QWidget()
        bottom_layout = QHBoxLayout(bottom_wrap)
        bottom_layout.setContentsMargins(0, 0, 0, 0)

        # Sale Account grid
        sa_wrap = QWidget()
        sa_layout = QVBoxLayout(sa_wrap)
        sa_layout.setContentsMargins(0, 0, 0, 0)

        sa_label = QLabel("Sale Account Mapping")
        sa_label.setStyleSheet(f"font-weight: bold; font-size: 11px; color: {p['text']};")
        sa_layout.addWidget(sa_label)

        self.tbl_sa = QTableWidget(0, len(self.SALEAC_COLS))
        self.tbl_sa.setHorizontalHeaderLabels(self.SALEAC_COLS)
        self.tbl_sa.setAlternatingRowColors(True)
        self.tbl_sa.horizontalHeader().setStretchLastSection(True)
        sa_layout.addWidget(self.tbl_sa)

        sa_btns = QHBoxLayout()
        btn_sa_add = QPushButton("Add")
        btn_sa_add.clicked.connect(self._sa_add)
        btn_sa_del = QPushButton("Delete")
        btn_sa_del.clicked.connect(self._sa_delete)
        for b in (btn_sa_add, btn_sa_del):
            sa_btns.addWidget(b)
        sa_btns.addStretch(1)
        sa_layout.addLayout(sa_btns)

        bottom_layout.addWidget(sa_wrap)

        # Sale Tax grid
        st_wrap = QWidget()
        st_layout = QVBoxLayout(st_wrap)
        st_layout.setContentsMargins(0, 0, 0, 0)

        st_label = QLabel("Sale Tax Mapping")
        st_label.setStyleSheet(f"font-weight: bold; font-size: 11px; color: {p['text']};")
        st_layout.addWidget(st_label)

        self.tbl_st = QTableWidget(0, len(self.SALETAX_COLS))
        self.tbl_st.setHorizontalHeaderLabels(self.SALETAX_COLS)
        self.tbl_st.setAlternatingRowColors(True)
        self.tbl_st.horizontalHeader().setStretchLastSection(True)
        st_layout.addWidget(self.tbl_st)

        st_btns = QHBoxLayout()
        btn_st_add = QPushButton("Add")
        btn_st_add.clicked.connect(self._st_add)
        btn_st_del = QPushButton("Delete")
        btn_st_del.clicked.connect(self._st_delete)
        for b in (btn_st_add, btn_st_del):
            st_btns.addWidget(b)
        st_btns.addStretch(1)
        st_layout.addLayout(st_btns)

        bottom_layout.addWidget(st_wrap)

        splitter.addWidget(top_wrap)
        splitter.addWidget(bottom_wrap)
        splitter.setSizes([400, 300])
        root.addWidget(splitter)

        # Form for main category
        form_wrap = QWidget()
        form_wrap.setMaximumWidth(400)
        form_layout = QVBoxLayout(form_wrap)
        form_layout.setContentsMargins(0, 0, 0, 0)

        form_title = QLabel("Category Details")
        form_title.setStyleSheet(f"font-weight: bold; font-size: 12px; color: {p['text']};")
        form_layout.addWidget(form_title)

        self.form = QFormLayout()
        self.edits = {}

        fields = [
            ("catcode", "CatCode"),
            ("catname", "CatName"),
            ("category_code", "CategoryCode (FK HallItemGroupMast)"),
            ("sale_ac_code", "SaleAcCode (FK AcGroup)"),
            ("sale_tax_code", "SaleTaxCode (FK TaxMast)"),
        ]

        for key, label in fields:
            e = QLineEdit()
            if key == "catcode":
                e.setMaxLength(6)
            elif key == "catname":
                e.setMaxLength(50)
            elif key in ("category_code", "sale_ac_code", "sale_tax_code"):
                e.setMaxLength(10)
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

        root.addWidget(form_wrap)

        # Status
        self.lbl_status = QLabel("Ready")
        self.lbl_status.setFont(QFont("Segoe UI", 9))
        self.lbl_status.setStyleSheet(f"color: {p['text_dim']};")
        root.addWidget(self.lbl_status)

        # Shortcuts
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._on_new)
        QShortcut(QKeySequence("Escape"), self, activated=self._cancel_edit)
        QShortcut(QKeySequence("F5"), self, activated=self._load_categories)

    def _load_categories(self):
        try:
            cats = hicm.hall_item_cat_list()
            self.tbl.setRowCount(len(cats))
            for i, c in enumerate(cats):
                self.tbl.setItem(i, 0, _cell(c.get("catcode", "")))
                self.tbl.setItem(i, 1, _cell(c.get("catname", "")))
                self.tbl.setItem(i, 2, _cell(c.get("category_code", "")))
                self.tbl.setItem(i, 3, _cell(c.get("sale_ac_code", "")))
                self.tbl.setItem(i, 4, _cell(c.get("sale_tax_code", "")))
            self.lbl_status.setText(f"Loaded {len(cats)} categories")
            # Clear child grids
            self.tbl_sa.setRowCount(0)
            self.tbl_st.setRowCount(0)
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

    def _on_table_selection_changed(self):
        """Load child grids for selected category."""
        row = self.tbl.currentRow()
        if row < 0:
            self.tbl_sa.setRowCount(0)
            self.tbl_st.setRowCount(0)
            return

        catcode = self.tbl.item(row, 0).text() if self.tbl.item(row, 0) else ""
        if not catcode:
            self.tbl_sa.setRowCount(0)
            self.tbl_st.setRowCount(0)
            return

        try:
            # Load Sale Account mapping
            sa_rows = hicm.hall_item_cat_sale_ac_list(catcode)
            self.tbl_sa.setRowCount(len(sa_rows))
            for i, r in enumerate(sa_rows):
                self.tbl_sa.setItem(i, 0, _cell(r.get("sale_ac_code", "")))

            # Load Sale Tax mapping
            st_rows = hicm.hall_item_cat_sale_tax_list(catcode)
            self.tbl_st.setRowCount(len(st_rows))
            for i, r in enumerate(st_rows):
                self.tbl_st.setItem(i, 0, _cell(r.get("sale_tax_code", "")))
        except Exception as e:
            self.tbl_sa.setRowCount(0)
            self.tbl_st.setRowCount(0)
            self.lbl_status.setText(f"Child grids load failed: {e}")

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
        self.edit_catcode = None
        self.edits["catcode"].setFocus()

    def _on_edit(self, row=None, col=None):
        if row is None:
            row = self.tbl.currentRow()
        if row < 0:
            QMessageBox.information(self, "Edit", "Select a category to edit")
            return

        catcode = self.tbl.item(row, 0).text() if self.tbl.item(row, 0) else ""
        if not catcode:
            return

        try:
            cat = hicm.hall_item_cat_get(catcode)
            if not cat:
                QMessageBox.warning(self, "Edit", f"Category {catcode} not found")
                return

            self.edit_catcode = catcode
            self.edits["catcode"].setText(cat.get("catcode", ""))
            self.edits["catname"].setText(cat.get("catname", ""))
            self.edits["category_code"].setText(cat.get("category_code", ""))
            self.edits["sale_ac_code"].setText(cat.get("sale_ac_code", ""))
            self.edits["sale_tax_code"].setText(cat.get("sale_tax_code", ""))

            self.lbl_status.setText(f"Editing {catcode}")
            self._on_table_selection_changed()
        except Exception as e:
            QMessageBox.critical(self, "Edit", f"Failed to load category:\n{e}")

    def _on_delete(self):
        row = self.tbl.currentRow()
        if row < 0:
            QMessageBox.information(self, "Delete", "Select a category to delete")
            return

        catcode = self.tbl.item(row, 0).text() if self.tbl.item(row, 0) else ""
        if not catcode:
            return

        if QMessageBox.question(self, "Delete Category",
                f"Delete category {catcode}? This will also delete its Sale Account and Sale Tax mappings.",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return

        try:
            hicm.hall_item_cat_delete(catcode)
            QMessageBox.information(self, "Delete", f"Category {catcode} deleted")
            self._load_categories()
            self._cancel_edit()
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"Delete failed:\n{e}")

    def _cancel_edit(self):
        self.edit_catcode = None
        for e in self.edits.values():
            e.clear()
        self.lbl_status.setText("Ready")

    def _save(self):
        catcode = self.edits["catcode"].text().strip()
        catname = self.edits["catname"].text().strip()
        if not catcode:
            QMessageBox.warning(self, "Save", "CatCode zaroori hai")
            return
        if not catname:
            QMessageBox.warning(self, "Save", "CatName zaroori hai")
            return

        rec = {
            "catcode": catcode,
            "catname": catname,
            "category_code": self.edits["category_code"].text().strip(),
            "sale_ac_code": self.edits["sale_ac_code"].text().strip(),
            "sale_tax_code": self.edits["sale_tax_code"].text().strip(),
        }

        try:
            if self.edit_catcode:
                hicm.hall_item_cat_update(self.edit_catcode, rec)
                QMessageBox.information(self, "Save", f"Category {catcode} updated")
            else:
                hicm.hall_item_cat_insert(rec)
                QMessageBox.information(self, "Save", f"New category {catcode} created")
            self._load_categories()
            self._cancel_edit()
        except Exception as e:
            QMessageBox.critical(self, "Save", f"Save failed:\n{e}")

    # Sale Account grid methods
    def _sa_add(self):
        row = self.tbl.currentRow()
        if row < 0:
            QMessageBox.information(self, "Sale Account", "Select a category first")
            return

        catcode = self.tbl.item(row, 0).text() if self.tbl.item(row, 0) else ""
        if not catcode:
            return

        from PyQt6.QtWidgets import QDialog, QFormLayout, QLineEdit, QPushButton, QHBoxLayout
        dlg = QDialog(self)
        dlg.setWindowTitle("Add Sale Account")
        form = QFormLayout(dlg)

        ed_sac = QLineEdit()
        ed_sac.setMaxLength(10)
        form.addRow("SaleAcCode:", ed_sac)

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

        sac = ed_sac.text().strip()
        if not sac:
            QMessageBox.warning(self, "Sale Account", "SaleAcCode zaroori hai")
            return

        # Check duplicate
        for r in range(self.tbl_sa.rowCount()):
            if self.tbl_sa.item(r, 0) and self.tbl_sa.item(r, 0).text() == sac:
                QMessageBox.warning(self, "Sale Account", f"SaleAcCode {sac} already exists")
                return

        try:
            hicm.hall_item_cat_sale_ac_set(catcode, [sac])
            QMessageBox.information(self, "Sale Account", "Sale Account added")
            self._on_table_selection_changed()
        except Exception as e:
            QMessageBox.critical(self, "Sale Account", f"Add failed:\n{e}")

    def _sa_delete(self):
        row = self.tbl_sa.currentRow()
        if row < 0:
            QMessageBox.information(self, "Sale Account", "Select a sale account to delete")
            return

        sac = self.tbl_sa.item(row, 0).text() if self.tbl_sa.item(row, 0) else ""
        if not sac:
            return

        if QMessageBox.question(self, "Delete Sale Account",
                f"Delete SaleAcCode {sac}?",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return

        catcode = self.tbl.item(self.tbl.currentRow(), 0).text() if self.tbl.item(self.tbl.currentRow(), 0) else ""
        try:
            # Rebuild list without deleted
            sale_ac_codes = []
            for r in range(self.tbl_sa.rowCount()):
                if r != row and self.tbl_sa.item(r, 0):
                    sale_ac_codes.append(self.tbl_sa.item(r, 0).text())
            hicm.hall_item_cat_sale_ac_set(catcode, sale_ac_codes)
            QMessageBox.information(self, "Sale Account", "Sale Account deleted")
            self._on_table_selection_changed()
        except Exception as e:
            QMessageBox.critical(self, "Sale Account", f"Delete failed:\n{e}")

    # Sale Tax grid methods
    def _st_add(self):
        row = self.tbl.currentRow()
        if row < 0:
            QMessageBox.information(self, "Sale Tax", "Select a category first")
            return

        catcode = self.tbl.item(row, 0).text() if self.tbl.item(row, 0) else ""
        if not catcode:
            return

        from PyQt6.QtWidgets import QDialog, QFormLayout, QLineEdit, QPushButton, QHBoxLayout
        dlg = QDialog(self)
        dlg.setWindowTitle("Add Sale Tax")
        form = QFormLayout(dlg)

        ed_stc = QLineEdit()
        ed_stc.setMaxLength(10)
        form.addRow("SaleTaxCode:", ed_stc)

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

        stc = ed_stc.text().strip()
        if not stc:
            QMessageBox.warning(self, "Sale Tax", "SaleTaxCode zaroori hai")
            return

        # Check duplicate
        for r in range(self.tbl_st.rowCount()):
            if self.tbl_st.item(r, 0) and self.tbl_st.item(r, 0).text() == stc:
                QMessageBox.warning(self, "Sale Tax", f"SaleTaxCode {stc} already exists")
                return

        try:
            hicm.hall_item_cat_sale_tax_set(catcode, [stc])
            QMessageBox.information(self, "Sale Tax", "Sale Tax added")
            self._on_table_selection_changed()
        except Exception as e:
            QMessageBox.critical(self, "Sale Tax", f"Add failed:\n{e}")

    def _st_delete(self):
        row = self.tbl_st.currentRow()
        if row < 0:
            QMessageBox.information(self, "Sale Tax", "Select a sale tax to delete")
            return

        stc = self.tbl_st.item(row, 0).text() if self.tbl_st.item(row, 0) else ""
        if not stc:
            return

        if QMessageBox.question(self, "Delete Sale Tax",
                f"Delete SaleTaxCode {stc}?",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return

        catcode = self.tbl.item(self.tbl.currentRow(), 0).text() if self.tbl.item(self.tbl.currentRow(), 0) else ""
        try:
            sale_tax_codes = []
            for r in range(self.tbl_st.rowCount()):
                if r != row and self.tbl_st.item(r, 0):
                    sale_tax_codes.append(self.tbl_st.item(r, 0).text())
            hicm.hall_item_cat_sale_tax_set(catcode, sale_tax_codes)
            QMessageBox.information(self, "Sale Tax", "Sale Tax deleted")
            self._on_table_selection_changed()
        except Exception as e:
            QMessageBox.critical(self, "Sale Tax", f"Delete failed:\n{e}")


def open_hall_item_cat_mast(parent=None):
    """Shell opener for 'Category and Charge Master' leaf."""
    w = HallItemCatMastDialog(parent)
    w.setWindowFlags(Qt.WindowType.Window)
    w.show()
    return w


def main():
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = HallItemCatMastDialog()
    w.resize(1100, 700)
    w.show()
    sys.exit(app.exec())


if __name__ == "__main__":
    main()