"""Hall Chef Pre-Costing UI (VB6 HallChefPreCosting.frm port) — Chef Pre-Costing for Banquet Items.

VB6 form: HallChefPreCosting (Caption="Chef Pre-Costing")
- Pre-costing for banquet menu items before booking
- Calculates food cost, labor cost, overhead for each menu item
- Used for pricing banquet packages
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
    QTableWidgetItem, QVBoxLayout, QWidget, QComboBox, QGroupBox
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


class HallChefPreCostingDialog(QDialog):
    """Chef Pre-Costing for Banquet Items (VB6 HallChefPreCosting.frm port)."""

    COLS = ["SNo", "Item", "Category", "Qty/Pax", "Unit", "Rate", "Amount", "Food%", "Labour%", "Overhead%", "Total Cost", "Sale Rate", "Margin%"]
    KEYS = ["sno", "item", "category", "qty_pax", "unit", "rate", "amount", "food_pct", "labour_pct", "overhead_pct", "total_cost", "sale_rate", "margin_pct"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Chef Pre-Costing - HMS_py")
        self.resize(1200, 750)
        self._build_ui()
        self._load_master_data()

    def _build_ui(self):
        p = _theme.palette()
        root = QVBoxLayout(self)
        root.setContentsMargins(12, 10, 12, 10)
        root.setSpacing(8)

        # Title
        title = QLabel("Chef Pre-Costing for Banquet Menu Items")
        title.setStyleSheet(f"font-weight: bold; font-size: 14px; color: {p['text']};")
        root.addWidget(title)

        # Search/Filter
        search_bar = QHBoxLayout()
        search_bar.addWidget(QLabel("Category:"))
        self.cb_category = QComboBox()
        self.cb_category.addItems(["All", "Starter", "Main Course", "Dessert", "Beverage", "Accompaniment", "Bread/Rice", "Salad"])
        self.cb_category.currentTextChanged.connect(self._filter_table)
        search_bar.addWidget(self.cb_category)

        search_bar.addWidget(QLabel("Search:"))
        self.ed_search = QLineEdit()
        self.ed_search.setPlaceholderText("Item name...")
        self.ed_search.textChanged.connect(self._filter_table)
        search_bar.addWidget(self.ed_search)

        btn_new = QPushButton("New Item")
        btn_new.clicked.connect(self._on_new_item)
        search_bar.addWidget(btn_new)

        btn_save = QPushButton("Save All")
        btn_save.setFont(QFont("Segoe UI", 10, QFont.Weight.Bold))
        btn_save.clicked.connect(self._save_all)
        search_bar.addWidget(btn_save)

        btn_exit = QPushButton("Exit")
        btn_exit.clicked.connect(self.reject)
        search_bar.addStretch(1)
        search_bar.addWidget(btn_exit)
        root.addLayout(search_bar)

        # Cost Parameters Group
        params_group = QGroupBox("Cost Parameters (Applied to all items)")
        params_group.setStyleSheet(f"QGroupBox {{ font-weight: bold; color: {p['text']}; }}")
        params_layout = QFormLayout(params_group)

        self.ed_food_pct = QLineEdit("65")
        self.ed_food_pct.setPlaceholderText("Food Cost %")
        params_layout.addRow("Food Cost %:", self.ed_food_pct)

        self.ed_labour_pct = QLineEdit("20")
        self.ed_labour_pct.setPlaceholderText("Labour Cost %")
        params_layout.addRow("Labour Cost %:", self.ed_labour_pct)

        self.ed_overhead_pct = QLineEdit("15")
        self.ed_overhead_pct.setPlaceholderText("Overhead %")
        params_layout.addRow("Overhead %:", self.ed_overhead_pct)

        self.ed_target_margin = QLineEdit("20")
        self.ed_target_margin.setPlaceholderText("Target Margin %")
        params_layout.addRow("Target Margin %:", self.ed_target_margin)

        root.addWidget(params_group)

        # Table
        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels(self.COLS)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.tbl)

        # Summary
        summary_wrap = QWidget()
        summary_layout = QHBoxLayout(summary_wrap)
        summary_layout.setContentsMargins(0, 0, 0, 0)

        self.lbl_total_items = QLabel("Items: 0")
        self.lbl_avg_margin = QLabel("Avg Margin: 0%")
        self.lbl_total_cost = QLabel("Total Cost: 0.00")
        self.lbl_total_sale = QLabel("Total Sale: 0.00")

        for w in (self.lbl_total_items, self.lbl_avg_margin, self.lbl_total_cost, self.lbl_total_sale):
            w.setFont(QFont("Segoe UI", 9, QFont.Weight.Bold))
            summary_layout.addWidget(w)
        summary_layout.addStretch(1)
        root.addWidget(summary_wrap)

        # Status
        self.lbl_status = QLabel("Ready - Load items from menu master or add manually")
        self.lbl_status.setFont(QFont("Segoe UI", 9))
        self.lbl_status.setStyleSheet(f"color: {p['text_dim']};")
        root.addWidget(self.lbl_status)

        # Shortcuts
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._on_new_item)
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save_all)
        QShortcut(QKeySequence("Escape"), self, activated=self.reject)
        QShortcut(QKeySequence("F5"), self, activated=self._load_master_data)

    def _load_master_data(self):
        """Load menu items from HallMenuItemEntry/HallMenuCatalog as base for pre-costing."""
        try:
            # Try to load from HallMenuItemEntry (if exists)
            rows = db.query("SELECT ItemCode, ItemName, Category, Rate, Unit FROM HallMenuItemEntry WHERE Active = 'Y' ORDER BY Category, ItemName")
            if not rows:
                # Fallback to HallMenuCatalog
                rows = db.query("SELECT ItemCode, ItemName, Category, Rate, Unit FROM HallMenuCatalog WHERE Active = 'Y' ORDER BY Category, ItemName")

            if rows:
                self.tbl.setRowCount(len(rows))
                for i, r in enumerate(rows):
                    item_code = r[0] or ""
                    item_name = r[1] or ""
                    category = r[2] or "Main Course"
                    rate = float(r[3] or 0)
                    unit = r[4] or "PCS"

                    # Calculate default cost breakdown (food 65%, labour 20%, overhead 15%)
                    food_pct = 65
                    labour_pct = 20
                    overhead_pct = 15
                    total_cost = rate
                    sale_rate = rate * (1 + 0.20)  # 20% margin
                    margin_pct = 20

                    self.tbl.setItem(i, 0, _cell(i + 1))
                    self.tbl.setItem(i, 1, _cell(item_name))
                    self.tbl.setItem(i, 2, _cell(category))
                    self.tbl.setItem(i, 3, _editable_cell(1))  # Qty/Pax
                    self.tbl.setItem(i, 4, _editable_cell(unit))
                    self.tbl.setItem(i, 5, _editable_cell(f"{rate:,.2f}"))
                    self.tbl.setItem(i, 6, _editable_cell(f"{rate:,.2f}"))  # Amount = rate * qty
                    self.tbl.setItem(i, 7, _editable_cell(food_pct))
                    self.tbl.setItem(i, 8, _editable_cell(labour_pct))
                    self.tbl.setItem(i, 9, _editable_cell(overhead_pct))
                    self.tbl.setItem(i, 10, _editable_cell(f"{total_cost:,.2f}"))
                    self.tbl.setItem(i, 11, _editable_cell(f"{sale_rate:,.2f}"))
                    self.tbl.setItem(i, 12, _editable_cell(margin_pct))

                self._update_summary()
                self.lbl_status.setText(f"Loaded {len(rows)} menu items from master")
            else:
                self.lbl_status.setText("No master menu items found - add items manually")
        except Exception as e:
            self.lbl_status.setText(f"Master data load failed: {e}")

    def _filter_table(self):
        """Filter table by category and search text."""
        cat = self.cb_category.currentText()
        search = self.ed_search.text().lower()

        for row in range(self.tbl.rowCount()):
            item_cat = self.tbl.item(row, 2)
            item_name = self.tbl.item(row, 1)

            cat_match = (cat == "All") or (item_cat and item_cat.text() == cat)
            search_match = (not search) or (item_name and search in item_name.text().lower())

            self.tbl.setRowHidden(row, not (cat_match and search_match))

    def _on_new_item(self):
        """Add a new blank row for manual entry."""
        row = self.tbl.rowCount()
        self.tbl.insertRow(row)
        self.tbl.setItem(row, 0, _cell(row + 1))
        self.tbl.setItem(row, 1, _editable_cell(""))
        self.tbl.setItem(row, 2, _editable_cell("Main Course"))
        self.tbl.setItem(row, 3, _editable_cell(1))
        self.tbl.setItem(row, 4, _editable_cell("PCS"))
        self.tbl.setItem(row, 5, _editable_cell("0.00"))
        self.tbl.setItem(row, 6, _editable_cell("0.00"))
        self.tbl.setItem(row, 7, _editable_cell(65))
        self.tbl.setItem(row, 8, _editable_cell(20))
        self.tbl.setItem(row, 9, _editable_cell(15))
        self.tbl.setItem(row, 10, _editable_cell("0.00"))
        self.tbl.setItem(row, 11, _editable_cell("0.00"))
        self.tbl.setItem(row, 12, _editable_cell(20))

    def _recalc_row(self, row):
        """Recalculate cost breakdown for a row based on parameters."""
        try:
            rate = float(self.tbl.item(row, 5).text() or 0) if self.tbl.item(row, 5) else 0
            qty = float(self.tbl.item(row, 3).text() or 1) if self.tbl.item(row, 3) else 1
            food_pct = float(self.tbl.item(row, 7).text() or 65) if self.tbl.item(row, 7) else 65
            labour_pct = float(self.tbl.item(row, 8).text() or 20) if self.tbl.item(row, 8) else 20
            overhead_pct = float(self.tbl.item(row, 9).text() or 15) if self.tbl.item(row, 9) else 15
            target_margin = float(self.ed_target_margin.text() or 20) if self.ed_target_margin.text() else 20

            amount = rate * qty
            total_cost = amount
            food_cost = total_cost * food_pct / 100
            labour_cost = total_cost * labour_pct / 100
            overhead_cost = total_cost * overhead_pct / 100
            sale_rate = total_cost * (1 + target_margin / 100)
            margin_pct = target_margin

            self.tbl.item(row, 6).setText(f"{amount:,.2f}")  # Amount
            self.tbl.item(row, 10).setText(f"{total_cost:,.2f}")  # Total Cost
            self.tbl.item(row, 11).setText(f"{sale_rate:,.2f}")  # Sale Rate
            self.tbl.item(row, 12).setText(f"{margin_pct:,.1f}")  # Margin%

        except (ValueError, AttributeError):
            pass

    def _recalc_all(self):
        """Recalculate all rows."""
        for row in range(self.tbl.rowCount()):
            self._recalc_row(row)
        self._update_summary()

    def _update_summary(self):
        """Update summary labels."""
        total_items = self.tbl.rowCount()
        total_cost = 0.0
        total_sale = 0.0
        total_margin = 0.0

        for row in range(self.tbl.rowCount()):
            if self.tbl.isRowHidden(row):
                continue
            try:
                cost = float(self.tbl.item(row, 10).text() or 0) if self.tbl.item(row, 10) else 0
                sale = float(self.tbl.item(row, 11).text() or 0) if self.tbl.item(row, 11) else 0
                margin = float(self.tbl.item(row, 12).text() or 0) if self.tbl.item(row, 12) else 0
                total_cost += cost
                total_sale += sale
                total_margin += margin
            except (ValueError, AttributeError):
                pass

        avg_margin = total_margin / total_items if total_items > 0 else 0
        self.lbl_total_items.setText(f"Items: {total_items}")
        self.lbl_avg_margin.setText(f"Avg Margin: {avg_margin:.1f}%")
        self.lbl_total_cost.setText(f"Total Cost: {total_cost:,.2f}")
        self.lbl_total_sale.setText(f"Total Sale: {total_sale:,.2f}")

    def _save_all(self):
        """Save pre-costing data to HallPreCosting table."""
        try:
            food_pct = float(self.ed_food_pct.text() or 65)
            labour_pct = float(self.ed_labour_pct.text() or 20)
            overhead_pct = float(self.ed_overhead_pct.text() or 15)
            target_margin = float(self.ed_target_margin.text() or 20)

            cn = db.connect()
            try:
                # Delete existing for this session (or keep - depends on business logic)
                # For now, insert new records with timestamp
                saved = 0
                for row in range(self.tbl.rowCount()):
                    if self.tbl.isRowHidden(row):
                        continue
                    item_name = self.tbl.item(row, 1).text() if self.tbl.item(row, 1) else ""
                    if not item_name.strip():
                        continue

                    db.execute("""
                        INSERT INTO HallPreCosting (ItemCode, ItemName, Category, QtyPerPax, Unit,
                            Rate, Amount, FoodPct, LabourPct, OverheadPct, TotalCost,
                            SaleRate, MarginPct, FoodCost, LabourCost, OverheadCost,
                            U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code)
                        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?)
                    """, (
                        self.tbl.item(row, 0).text() if self.tbl.item(row, 0) else "",  # sno as code
                        self.tbl.item(row, 1).text() if self.tbl.item(row, 1) else "",
                        self.tbl.item(row, 2).text() if self.tbl.item(row, 2) else "",
                        float(self.tbl.item(row, 3).text() or 0) if self.tbl.item(row, 3) else 0,
                        self.tbl.item(row, 4).text() if self.tbl.item(row, 4) else "",
                        float(self.tbl.item(row, 5).text() or 0) if self.tbl.item(row, 5) else 0,
                        float(self.tbl.item(row, 6).text() or 0) if self.tbl.item(row, 6) else 0,
                        float(self.tbl.item(row, 7).text() or 0) if self.tbl.item(row, 7) else 0,
                        float(self.tbl.item(row, 8).text() or 0) if self.tbl.item(row, 8) else 0,
                        float(self.tbl.item(row, 9).text() or 0) if self.tbl.item(row, 9) else 0,
                        float(self.tbl.item(row, 10).text() or 0) if self.tbl.item(row, 10) else 0,
                        float(self.tbl.item(row, 11).text() or 0) if self.tbl.item(row, 11) else 0,
                        float(self.tbl.item(row, 12).text() or 0) if self.tbl.item(row, 12) else 0,
                        float(self.tbl.item(row, 6).text() or 0) * food_pct / 100 if self.tbl.item(row, 6) else 0,
                        float(self.tbl.item(row, 6).text() or 0) * labour_pct / 100 if self.tbl.item(row, 6) else 0,
                        float(self.tbl.item(row, 6).text() or 0) * overhead_pct / 100 if self.tbl.item(row, 6) else 0,
                        db.get_user() or "SYSTEM",
                        db.get_site_code() or "KK",
                        db.get_site_code() or "KK",
                    ), cn=cn, commit=True)
                    saved += 1

                cn.close()
                QMessageBox.information(self, "Chef Pre-Costing", f"Saved {saved} items successfully")
                self.lbl_status.setText(f"Saved {saved} items to HallPreCosting")
            except Exception as e:
                if cn:
                    cn.close()
                raise
        except Exception as e:
            QMessageBox.critical(self, "Chef Pre-Costing", f"Save failed:\n{e}")


def open_hall_chef_pre_costing(parent=None):
    """Shell opener for 'Chef Pre-Costing' leaf."""
    w = HallChefPreCostingDialog(parent)
    w.setWindowFlags(Qt.WindowType.Window)
    w.show()
    return w


def main():
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = HallChefPreCostingDialog()
    w.resize(1200, 750)
    w.show()
    sys.exit(app.exec())


if __name__ == "__main__":
    main()