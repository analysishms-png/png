"""Tax Structure Master UI (VB6: FrmTaxStruMast - Main Setup -> General Setup).

Structure: Header (Code, Name) + Grid lines (Sno, TaxCode, Nature, Rate,
Limit, Limit1, CondApp, CompOperator, TaxBeforeDisc).

VB6 FrmTaxStruMast: FGrid for lines, TopCtrl for header (Add/Edit/Delete/
Save/Cancel/Find + First/Prev/Next/Last browse + 'Browse 1/31' counter),
DGHelp/DGTaxMast for lookups.

This implementation: sortable structures list (Code/Name/Lines) + header
fields + editable lines grid - sab VB6 TopCtrl state machine ke saath.
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QKeySequence, QShortcut
from PyQt6.QtWidgets import (QApplication, QComboBox, QDialog,
                             QFormLayout, QGroupBox, QHBoxLayout, QInputDialog,
                             QLabel, QLineEdit, QMessageBox, QPushButton,
                             QTableWidget, QTableWidgetItem, QVBoxLayout)

from HMS_py.core import taxstru
from HMS_py.ui import theme as _theme


class TaxStruForm(QDialog):
    """Tax Structure Master - List + Header + Lines grid."""

    LINE_COLS = [
        ("SNo", "sno"), ("Tax Code", "taxcode"), ("Nature", "nature"),
        ("Rate %", "rate"), ("Limit", "limit"), ("Limit1", "limit1"),
        ("Cond Apply", "condapp"), ("Comp Operator", "compop"),
        ("Tax Before Disc", "taxbeforedisc"),
    ]
    LIST_COLS = [("Code", "code"), ("Tax Structure Name", "name"),
                 ("Lines", "lines")]

    NATURES = ["On Base Amt", "On Running Total", "On Prev. Tax Amt"]
    COND_APPS = ["", "<", "<=", ">", ">=", "=", "Between"]
    TAX_BEFORE_DISC = ["No", "Yes"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Tax Structure Master - HMS_py")
        self.resize(1200, 720)
        self.setMinimumSize(980, 640)
        self.state = "Idle"
        self.edit_code = None
        self._tax_codes = []          # cached from RevMast
        self._structures = {}         # code -> {"name", "lines"}
        self._loading = False         # programmatic fill guard

        p = _theme.palette()
        root = QVBoxLayout(self)
        root.setContentsMargins(8, 8, 8, 8)
        root.setSpacing(8)

        # ---------------- structures list (sort + search + browse) --------
        lst_grp = QGroupBox("Tax Structure - HMS_py List")
        lst_lay = QVBoxLayout(lst_grp)

        self.ed_search = QLineEdit()
        self.ed_search.setPlaceholderText("Search...")
        self.ed_search.setMinimumHeight(30)
        lst_lay.addWidget(self.ed_search)

        nav_row = QHBoxLayout()
        nav_row.setSpacing(6)
        self.btn_find = QPushButton("Find (Ctrl+F)")
        self.btn_find.setToolTip(
            "Code ya naam se structure dhoondein (VB6 Find)")
        self.btn_first = QPushButton("|<")
        self.btn_first.setToolTip("First record")
        self.btn_prev = QPushButton("<")
        self.btn_prev.setToolTip("Previous record")
        self.btn_next = QPushButton(">")
        self.btn_next.setToolTip("Next record")
        self.btn_last = QPushButton(">|")
        self.btn_last.setToolTip("Last record")
        for b in (self.btn_first, self.btn_prev, self.btn_next, self.btn_last):
            b.setFixedWidth(34)
            b.setMinimumHeight(28)
        self.btn_find.setMinimumHeight(28)
        self.lbl_browse = QLabel("Browse 0/0")
        nav_row.addWidget(self.btn_find)
        nav_row.addStretch()
        nav_row.addWidget(self.btn_first)
        nav_row.addWidget(self.btn_prev)
        nav_row.addWidget(self.btn_next)
        nav_row.addWidget(self.btn_last)
        nav_row.addSpacing(10)
        nav_row.addWidget(self.lbl_browse)
        lst_lay.addLayout(nav_row)

        self.list_tbl = QTableWidget(0, len(self.LIST_COLS))
        self.list_tbl.setHorizontalHeaderLabels(
            [c[0] for c in self.LIST_COLS])
        self.list_tbl.setEditTriggers(
            QTableWidget.EditTrigger.NoEditTriggers)
        self.list_tbl.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.list_tbl.setAlternatingRowColors(True)
        self.list_tbl.verticalHeader().setVisible(False)
        self.list_tbl.setSortingEnabled(True)
        self.list_tbl.setMinimumHeight(110)
        self.list_tbl.horizontalHeader().setStretchLastSection(True)
        self.list_tbl.itemSelectionChanged.connect(self._on_list_selected)
        self.list_tbl.cellDoubleClicked.connect(lambda *_: self._on_edit())
        lst_lay.addWidget(self.list_tbl)
        root.addWidget(lst_grp, 1)

        # ---------------- header (Record Details) -------------------------
        det_grp = QGroupBox("Record Details")
        det_lay = QFormLayout(det_grp)
        self.ed_code = QLineEdit()
        self.ed_code.setMaxLength(taxstru.LIMITS["code"])
        self.ed_name = QLineEdit()
        self.ed_name.setMaxLength(taxstru.LIMITS["name"])
        self.lbl_lines = QLabel("0")
        det_lay.addRow("Structure Code (KK####)", self.ed_code)
        det_lay.addRow("Structure Name", self.ed_name)
        det_lay.addRow("Tax Lines", self.lbl_lines)
        root.addWidget(det_grp)

        # ---------------- lines grid --------------------------------------
        grid_grp = QGroupBox(
            "Tax Lines  (SNo | Tax Code | Nature | Rate | Limit | "
            "Limit1 | Cond Apply | Comp Operator | Tax Before Disc)")
        grid_lay = QVBoxLayout(grid_grp)
        self.grid = QTableWidget(0, len(self.LINE_COLS))
        self.grid.setHorizontalHeaderLabels([c[0] for c in self.LINE_COLS])
        self.grid.setAlternatingRowColors(True)
        self.grid.horizontalHeader().setStretchLastSection(True)
        self.grid.setMinimumHeight(160)
        self.grid.cellChanged.connect(self._on_cell_changed)
        grid_lay.addWidget(self.grid)
        root.addWidget(grid_grp, 2)

        # ---- Status label ----
        self.lbl_state = QLabel(
            "State: Idle | New: Ctrl+N | Edit: Ctrl+E | Save: Ctrl+S | "
            "Delete: Ctrl+D | Find: Ctrl+F | Cancel: Esc | Refresh: F5")
        self.lbl_state.setStyleSheet(
            f"color:{p['text']}; padding:4px; background:{p['glass_tint']};")
        root.addWidget(self.lbl_state)

        # ---- Buttons ----
        btns = QHBoxLayout()
        self.btn_new = QPushButton("New (Ctrl+N)")
        self.btn_new.setToolTip("Add new tax structure")
        self.btn_edit = QPushButton("Edit (Ctrl+E)")
        self.btn_edit.setToolTip("Edit selected tax structure")
        self.btn_delete = QPushButton("Delete (Ctrl+D)")
        self.btn_delete.setToolTip("Delete tax structure")
        self.btn_save = QPushButton("Save (Ctrl+S)")
        self.btn_save.setToolTip("Save (Add = insert, Edit = update)")
        self.btn_cancel = QPushButton("Cancel (Esc)")
        self.btn_cancel.setToolTip("Cancel current operation")
        # VB6 TopCtrl1 Print (loc_1087ED0): TaxStructureMast.RPT + Title
        self.btn_print = QPushButton("Print Preview")
        self.btn_print.setToolTip(
            "Print preview of all tax structures (VB6 TaxStructureMast.RPT)")
        self.btn_close = QPushButton("Exit")
        self.btn_close.setToolTip("Close this window")
        for b in (self.btn_new, self.btn_edit, self.btn_delete,
                  self.btn_save, self.btn_cancel, self.btn_print,
                  self.btn_close):
            b.setMinimumHeight(32)
            btns.addWidget(b)
        root.addLayout(btns)

        # Signals
        self.btn_new.clicked.connect(self._on_new)
        self.btn_edit.clicked.connect(self._on_edit)
        self.btn_delete.clicked.connect(self._on_delete)
        self.btn_save.clicked.connect(self._on_save)
        self.btn_cancel.clicked.connect(self._on_cancel)
        self.btn_print.clicked.connect(self._on_print)
        self.btn_close.clicked.connect(self.reject)
        self.btn_find.clicked.connect(self._on_find)
        self.btn_first.clicked.connect(lambda: self._nav_edge("first"))
        self.btn_prev.clicked.connect(lambda: self._nav_step(-1))
        self.btn_next.clicked.connect(lambda: self._nav_step(1))
        self.btn_last.clicked.connect(lambda: self._nav_edge("last"))
        self.ed_search.textChanged.connect(self._filter_list)

        # Keyboard shortcuts (VB6 TopCtrl)
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._on_new)
        QShortcut(QKeySequence("Ctrl+E"), self, activated=self._on_edit)
        QShortcut(QKeySequence("Ctrl+D"), self, activated=self._on_delete)
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._on_save)
        QShortcut(QKeySequence("Ctrl+F"), self, activated=self._on_find)
        QShortcut(QKeySequence("Ctrl+Right"), self,
                  activated=lambda: self._nav_step(1))
        QShortcut(QKeySequence("Ctrl+Left"), self,
                  activated=lambda: self._nav_step(-1))
        QShortcut(QKeySequence("Escape"), self, activated=self._on_cancel)
        QShortcut(QKeySequence("F5"), self, activated=self.reload)

        # Load tax codes for dropdown
        self._load_tax_codes()

        self.set_state(False)
        self.reload()

    # ----------------------------------------------------------------- list
    def _load_tax_codes(self):
        """Load tax codes from RevMast for dropdown."""
        try:
            self._tax_codes = taxstru.get_tax_codes()
        except Exception as e:
            self._tax_codes = []
            QMessageBox.warning(self, "Tax Codes",
                                f"Could not load tax codes: {e}")

    def _visible_list_rows(self) -> list:
        return [r for r in range(self.list_tbl.rowCount())
                if not self.list_tbl.isRowHidden(r)]

    def _selected_list_code(self):
        r = self.list_tbl.currentRow()
        if r < 0:
            return None
        it = self.list_tbl.item(r, 0)
        return it.text() if it else None

    def _row_of_code(self, code: str):
        for r in range(self.list_tbl.rowCount()):
            it = self.list_tbl.item(r, 0)
            if it and it.text() == code:
                return r
        return None

    def _update_browse(self):
        vis = self._visible_list_rows()
        if not vis:
            self.lbl_browse.setText("Browse 0/0")
            return
        cur = self.list_tbl.currentRow()
        idx = vis.index(cur) + 1 if cur in vis else 1
        self.lbl_browse.setText(f"Browse {idx}/{len(vis)}")

    def _filter_list(self, text: str):
        text = text.lower().strip()
        for r in range(self.list_tbl.rowCount()):
            match = False
            for c in range(self.list_tbl.columnCount()):
                it = self.list_tbl.item(r, c)
                if it and text in it.text().lower():
                    match = True
                    break
            self.list_tbl.setRowHidden(r, not match and bool(text))
        # selection hidden ho gayi toh pehri visible row par le jao
        cur = self.list_tbl.currentRow()
        if cur >= 0 and self.list_tbl.isRowHidden(cur):
            vis = self._visible_list_rows()
            if vis and self.state == "Idle":
                self.list_tbl.setCurrentCell(vis[0], 0)
        self._update_browse()

    def _nav_step(self, delta: int):
        if self.state != "Idle":
            return
        vis = self._visible_list_rows()
        if not vis:
            return
        cur = self.list_tbl.currentRow()
        i = vis.index(cur) if cur in vis else 0
        i = max(0, min(len(vis) - 1, i + delta))
        self.list_tbl.setCurrentCell(vis[i], 0)

    def _nav_edge(self, which: str):
        if self.state != "Idle":
            return
        vis = self._visible_list_rows()
        if not vis:
            return
        self.list_tbl.setCurrentCell(
            vis[0] if which == "first" else vis[-1], 0)

    def _on_find(self):
        """VB6 TopCtrl Find (binoculars) - code/naam se structure dhoond kar
        us par browse karta hai."""
        if self.state != "Idle":
            return
        term, ok = QInputDialog.getText(
            self, "Find", "Tax Structure code ya naam likhein:")
        if not ok or not term.strip():
            return
        t = term.strip().lower()
        for r in self._visible_list_rows():
            for c in range(self.list_tbl.columnCount()):
                it = self.list_tbl.item(r, c)
                if it and t in it.text().lower():
                    self.list_tbl.setCurrentCell(r, 0)
                    self.list_tbl.scrollToItem(self.list_tbl.item(r, 0))
                    return
        QMessageBox.information(
            self, "Find", f"'{term}' ke liye structure nahi mila")

    def _on_list_selected(self):
        self._update_browse()
        if self.state != "Idle" or self._loading:
            return
        code = self._selected_list_code()
        if code and code != self.edit_code:
            self._load_structure(code)

    # ------------------------------------------------------------- tax codes
    def _tax_code_combo(self) -> QComboBox:
        """Create a combo box with tax codes."""
        combo = QComboBox()
        combo.setEditable(True)
        for tc in self._tax_codes:
            combo.addItem(f"{tc['code']} - {tc['name']}", tc["code"])
        return combo

    def _nature_combo(self) -> QComboBox:
        combo = QComboBox()
        combo.addItems(self.NATURES)
        return combo

    def _condapp_combo(self) -> QComboBox:
        combo = QComboBox()
        combo.addItems(self.COND_APPS)
        return combo

    def _taxbeforedisc_combo(self) -> QComboBox:
        combo = QComboBox()
        combo.addItems(self.TAX_BEFORE_DISC)
        return combo

    def _empty_line_row(self, sno: int) -> dict:
        """Create an empty line dict for given SNo."""
        return {
            "sno": sno,
            "taxcode": "",
            "nature": "On Base Amt",
            "rate": 0.0,
            "limit": 0.0,
            "limit1": 0.0,
            "condapp": "",
            "compop": "",
            "taxbeforedisc": "No",
        }

    def _populate_grid(self, lines: list[dict]):
        """Fill grid with lines + hamesha ek khali row (nayi line ke liye)."""
        self._loading = True
        self.grid.blockSignals(True)
        self.grid.setRowCount(len(lines))
        for r, line in enumerate(lines):
            self._set_grid_row(r, line)
        self.grid.insertRow(len(lines))
        self._set_grid_row(len(lines), self._empty_line_row(len(lines) + 1))
        self.grid.blockSignals(False)
        self._loading = False

    def _set_grid_row(self, row: int, line: dict):
        """Set a single grid row with editors where needed."""
        text_color = _theme.palette()["text"]

        # SNo (read-only)
        sno_item = QTableWidgetItem(str(line.get("sno", row + 1)))
        sno_item.setFlags(sno_item.flags() & ~Qt.ItemFlag.ItemIsEditable)
        sno_item.setForeground(QColor(text_color))
        self.grid.setItem(row, 0, sno_item)

        # TaxCode - combo (signal connect populate ke BAAD - no spurious hit)
        combo = self._tax_code_combo()
        idx = combo.findData(line.get("taxcode", ""))
        if idx >= 0:
            combo.setCurrentIndex(idx)
        self.grid.setCellWidget(row, 1, combo)
        combo.currentIndexChanged.connect(
            lambda _i, r=row: self._tax_picked(r))

        # Nature - combo
        combo = self._nature_combo()
        idx = combo.findText(line.get("nature", "On Base Amt"))
        if idx >= 0:
            combo.setCurrentIndex(idx)
        self.grid.setCellWidget(row, 2, combo)

        # Rate / Limit / Limit1 (plain editable items)
        for col, key in ((3, "rate"), (4, "limit"), (5, "limit1")):
            item = QTableWidgetItem(str(line.get(key, 0)))
            item.setForeground(QColor(text_color))
            self.grid.setItem(row, col, item)

        # CondApp - combo
        combo = self._condapp_combo()
        idx = combo.findText(line.get("condapp", ""))
        if idx >= 0:
            combo.setCurrentIndex(idx)
        self.grid.setCellWidget(row, 6, combo)

        # CompOperator
        compop_item = QTableWidgetItem(line.get("compop", ""))
        compop_item.setForeground(QColor(text_color))
        self.grid.setItem(row, 7, compop_item)

        # TaxBeforeDisc - combo
        combo = self._taxbeforedisc_combo()
        idx = combo.findText(line.get("taxbeforedisc", "No"))
        if idx >= 0:
            combo.setCurrentIndex(idx)
        self.grid.setCellWidget(row, 8, combo)

    def _tax_picked(self, row: int):
        """BUG-FIX: last row me tax pick hote hi nayi khali row append.
        (Purana cellChanged handler combos ke liye kabhi fire hi nahi hota
        tha - user ek hi line daal kar phas jata tha.)"""
        if self.state == "Idle" or self._loading:
            return
        combo = self.grid.cellWidget(row, 1)
        if not combo or not combo.currentData():
            return
        if row != self.grid.rowCount() - 1:
            return
        self.grid.blockSignals(True)
        self.grid.insertRow(row + 1)
        self._set_grid_row(row + 1, self._empty_line_row(row + 2))
        self.grid.blockSignals(False)

    def _cell_text(self, row: int, col: int) -> str:
        """Combo widget ho toh uska text, warna plain item text."""
        w = self.grid.cellWidget(row, col)
        if isinstance(w, QComboBox):
            return w.currentText()
        it = self.grid.item(row, col)
        return it.text() if it else ""

    def _get_grid_lines(self) -> list[dict]:
        """Extract lines from grid.

        BUG-018 fix: invalid rows silently skip nahi hoti - validation
        error raise hota hai taaki user ka data na ude.
        """
        lines = []
        for r in range(self.grid.rowCount()):
            sno_item = self.grid.item(r, 0)
            if not sno_item or not sno_item.text().strip():
                continue
            try:
                sno = int(sno_item.text())
            except ValueError:
                raise ValueError(
                    f"Row {r + 1}: SNo '{sno_item.text()}' "
                    "valid number nahi hai")

            # TaxCode from combo (fallback: plain item text)
            w = self.grid.cellWidget(r, 1)
            if isinstance(w, QComboBox):
                taxcode = w.currentData() or ""
            else:
                it = self.grid.item(r, 1)
                taxcode = it.text().strip() if it else ""

            # Nature (combo ya item, warna default)
            nature = self._cell_text(r, 2).strip() or "On Base Amt"

            # Rate
            rate_item = self.grid.item(r, 3)
            try:
                rate = float(rate_item.text() if rate_item else 0)
            except ValueError:
                raise ValueError(
                    f"Row {r + 1}: Rate "
                    f"'{rate_item.text() if rate_item else ''}' "
                    "valid number nahi hai")

            # Limit
            limit_item = self.grid.item(r, 4)
            try:
                limit = float(limit_item.text() if limit_item else 0)
            except ValueError:
                raise ValueError(
                    f"Row {r + 1}: Limit "
                    f"'{limit_item.text() if limit_item else ''}' "
                    "valid number nahi hai")

            # Limit1
            limit1_item = self.grid.item(r, 5)
            try:
                limit1 = float(limit1_item.text() if limit1_item else 0)
            except ValueError:
                raise ValueError(
                    f"Row {r + 1}: Limit1 "
                    f"'{limit1_item.text() if limit1_item else ''}' "
                    "valid number nahi hai")

            condapp = self._cell_text(r, 6).strip()
            compop = self._cell_text(r, 7).strip()
            taxbeforedisc = self._cell_text(r, 8).strip() or "No"

            if taxcode:  # Only include lines with tax code
                lines.append({
                    "sno": sno,
                    "taxcode": taxcode,
                    "nature": nature,
                    "rate": rate,
                    "limit": limit,
                    "limit1": limit1,
                    "condapp": condapp,
                    "compop": compop,
                    "taxbeforedisc": taxbeforedisc,
                })
        return lines

    def _on_cell_changed(self, row: int, col: int):
        """Plain-item cell changes (combos ka raasta _tax_picked hai)."""
        if self.state == "Idle" or col != 1 or self._loading:
            return
        it = self.grid.item(row, 1)
        if it and it.text().strip() and row == self.grid.rowCount() - 1:
            self.grid.blockSignals(True)
            self.grid.insertRow(row + 1)
            self._set_grid_row(row + 1, self._empty_line_row(row + 2))
            self.grid.blockSignals(False)

    # ----------------------------------------------------------------- data
    def reload(self, select_code=None):
        """List me saare structures + selected one form me."""
        try:
            all_lines = taxstru.list_all()
        except Exception as e:
            QMessageBox.critical(self, "Reload Error", str(e))
            all_lines = []

        structures = {}
        for line in all_lines:
            code = line["code"]
            if code not in structures:
                structures[code] = {"name": line["name"], "lines": []}
            structures[code]["lines"].append(line)
        self._structures = structures

        keep = select_code or self.edit_code or self._selected_list_code()
        codes = sorted(structures)

        # BUG-FIX: sorting ON rehti thi toh fill ke beech rows shuffle ho
        # jaati thi (columns blank/ghus jaate the) - fill ke dauran sort band
        was_sorted = self.list_tbl.isSortingEnabled()
        self.list_tbl.setSortingEnabled(False)
        self._loading = True
        self.list_tbl.setRowCount(len(codes))
        p = _theme.palette()
        for r, code in enumerate(codes):
            vals = (code, structures[code]["name"],
                    str(len(structures[code]["lines"])))
            for c, val in enumerate(vals):
                item = QTableWidgetItem(val)
                item.setFlags(item.flags() & ~Qt.ItemFlag.ItemIsEditable)
                item.setForeground(QColor(p["text"]))
                self.list_tbl.setItem(r, c, item)
        if was_sorted:
            self.list_tbl.setSortingEnabled(True)
        if self.ed_search.text():
            self._filter_list(self.ed_search.text())
        self._loading = False

        target = self._row_of_code(keep) if keep else None
        if target is None:
            vis = self._visible_list_rows()
            target = vis[0] if vis else None
        if target is None:
            self.edit_code = None
            self._clear_form()
            self._update_browse()
        else:
            self.list_tbl.setCurrentCell(target, 0)  # -> _on_list_selected
            self._load_structure(self.list_tbl.item(target, 0).text())
        self.lbl_state.setText(
            f"State: {self.state} | Structures: {len(codes)} | "
            "New: Ctrl+N | Edit: Ctrl+E | Save: Ctrl+S | Delete: Ctrl+D | "
            "Find: Ctrl+F")

    def _load_structure(self, code: str, struct: dict | None = None):
        """Load a specific structure into form."""
        if not code:
            return
        struct = struct or self._structures.get(code)
        if struct is None:
            lines = taxstru.list_by_code(code)
            if not lines:
                return
            struct = {"name": lines[0]["name"], "lines": lines}
            self._structures[code] = struct
        self.edit_code = code
        self._loading = True
        self.ed_code.setText(code)
        self.ed_name.setText(struct["name"])
        lines = sorted(struct["lines"], key=lambda x: x["sno"])
        self._populate_grid(lines)
        self.lbl_lines.setText(str(len(lines)))
        self._loading = False

    def _clear_form(self):
        self.edit_code = None
        self._loading = True
        self.ed_code.clear()
        self.ed_name.clear()
        self.lbl_lines.setText("0")
        self.grid.setRowCount(0)
        self.grid.insertRow(0)
        self._set_grid_row(0, self._empty_line_row(1))
        self._loading = False

    # -------------------------------------------------------- state machine
    def set_state(self, enabled: bool, mode=None):
        """TopCtrl pattern state machine (Idle / Add / Edit)."""
        if not enabled:
            self.state = "Idle"
        elif mode in ("Add", "Edit"):
            self.state = mode
        else:
            self.state = "Add" if self.edit_code is None else "Edit"

        self.ed_name.setEnabled(enabled)
        # Add: auto-code editable, Edit: PK locked (VB6 parity)
        self.ed_code.setEnabled(enabled and self.state != "Edit")

        # Grid editing controlled by state
        for r in range(self.grid.rowCount()):
            for c in range(self.grid.columnCount()):
                item = self.grid.item(r, c)
                if item:
                    editable = enabled and c in (3, 4, 5, 7)
                    item.setFlags(
                        (item.flags() | Qt.ItemFlag.ItemIsEditable)
                        if editable
                        else (item.flags() & ~Qt.ItemFlag.ItemIsEditable))
                widget = self.grid.cellWidget(r, c)
                if widget:
                    widget.setEnabled(enabled)

        # Browse (list + search + nav + find) Add/Edit ke dauran band
        for w in (self.list_tbl, self.ed_search, self.btn_find,
                  self.btn_first, self.btn_prev, self.btn_next, self.btn_last):
            w.setEnabled(not enabled)

        self.btn_new.setEnabled(not enabled)
        self.btn_edit.setEnabled(not enabled)
        self.btn_delete.setEnabled(not enabled)
        self.btn_save.setEnabled(enabled)
        self.btn_cancel.setEnabled(enabled)

        self.lbl_state.setText(
            "State: Idle | New: Ctrl+N | Edit: Ctrl+E | Save: Ctrl+S | "
            "Delete: Ctrl+D | Find: Ctrl+F | Cancel: Esc | Refresh: F5"
            if not enabled else
            f"State: {self.state} | Save: Ctrl+S | Cancel: Esc")

    # ----------------------------------------------------------- operations
    def _on_new(self):
        if self.state != "Idle":
            return
        self.edit_code = None
        self._clear_form()
        self.set_state(True, "Add")
        try:
            self.ed_code.setText(taxstru.next_code())
        except Exception as e:
            QMessageBox.warning(self, "New", f"Auto code nahi mila: {e}")
        self.ed_name.setFocus()

    def _on_edit(self):
        if self.state != "Idle":
            return
        code = self.edit_code or self._selected_list_code()
        if not code:
            structs = taxstru.get_structures_summary()
            if not structs:
                QMessageBox.information(self, "Edit", "No structures to edit")
                return
            # fallback: picker (list me koi selection nahi)
            names = [f"{s['code']} - {s['name']}" for s in structs]
            pick, ok = QInputDialog.getItem(
                self, "Edit Structure", "Select:", names, 0, False)
            if not ok or not pick:
                return
            code = pick.split(" - ")[0]
        lines = taxstru.list_by_code(code)
        if not lines:
            QMessageBox.information(
                self, "Edit", f"Structure '{code}' ki lines nahi mili")
            return
        self._load_structure(code, {"name": lines[0]["name"], "lines": lines})
        self.set_state(True, "Edit")
        self.ed_name.setFocus()
        self.ed_name.selectAll()

    @staticmethod
    def _check_duplicate_taxcodes(lines: list[dict]):
        """VB6 grid-level check (FrmTaxStruMast Proc_19_59 loc_FBF66E):
        ek hi structure me ek hi tax dobara nahi. Legacy message ka text
        'Sundry' likha hai (VB6 copy-paste artifact) - preserve karo.
        """
        seen = set()
        for line in lines:
            code = str(line.get("taxcode") or "").strip().upper()
            if not code:
                continue
            if code in seen:
                return "Duplicate Sundry Name Not Allowed"
            seen.add(code)
        return None

    def _on_save(self):
        if self.state == "Idle":
            return
        code = self.ed_code.text().strip()
        name = self.ed_name.text().strip()
        if not code:
            QMessageBox.warning(self, "Save", "Structure Code zaroori hai")
            return
        if not name:
            QMessageBox.warning(self, "Save", "Structure Name zaroori hai")
            return

        lines = self._get_grid_lines()
        if not lines:
            QMessageBox.warning(self, "Save", "At least one tax line required")
            return
        dup = self._check_duplicate_taxcodes(lines)
        if dup:
            QMessageBox.warning(self, "Validation", dup)
            return

        try:
            if self.state == "Add":
                if taxstru.exists_code(code):
                    QMessageBox.warning(
                        self, "Save", f"{code} pehle se maujood hai")
                    return
                taxstru.insert_structure(code, name, lines)
            else:
                taxstru.update_structure(code, name, lines)
            QMessageBox.information(
                self, "Save",
                f"Tax Structure '{code}' saved successfully "
                f"({len(lines)} lines)")
            self.set_state(False)
            self.reload(select_code=code)
        except ValueError as e:
            # BUG-018 fix: grid validation errors ab user ko dikhengi
            # (pehle save fail hota tha bina wajah bataye)
            QMessageBox.warning(self, "Save", str(e))
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")

    def _on_cancel(self):
        if self.state == "Idle":
            return
        code = self.edit_code
        self.set_state(False)
        self.reload(select_code=code)

    def _on_delete(self):
        if self.state != "Idle":
            return
        code = self.edit_code or self._selected_list_code()
        if not code:
            QMessageBox.information(
                self, "Delete", "Pehle structure select/edit karein")
            return
        if QMessageBox.question(
                self, "Delete",
                f"Tax Structure '{code}' delete karein? "
                "(All lines will be removed)",
                QMessageBox.StandardButton.Yes
                | QMessageBox.StandardButton.No,
                QMessageBox.StandardButton.No) \
                != QMessageBox.StandardButton.Yes:
            return
        try:
            # VB6 dependency checks core me (RevMast/ItemCatMast/TelCallType)
            taxstru.delete_structure(code)
            QMessageBox.information(self, "Delete", "Deleted successfully")
            self.edit_code = None
            self.reload()
        except ValueError as e:
            QMessageBox.warning(self, "Delete", str(e))
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")

    def _on_print(self):
        """VB6 TopCtrl1 print (loc_1087EE7): TaxStructureMast.RPT +
        Title='Tax Structure Master'. Crystal engine Python me nahi ->
        house text preview (print_preview), same query + Title.
        Empty set -> VB6 exact message 'No Record Present For Printing'."""
        from HMS_py.ui import print_preview as pp

        rows = taxstru.print_rows()
        if not rows:
            QMessageBox.information(
                self, "Tax Structure Master",
                "No Record Present For Printing")
            return
        headers = ["Code", "Name", "Sno", "TaxCode", "Rate", "Nature",
                   "Limit", "Limit1", "CompOp", "CondApp", "TaxBeforeDisc",
                   "TaxName"]
        text = (pp.company_header() + "\nTAX STRUCTURE MASTER\n\n"
                + pp.grid_to_text(headers, rows))
        pp.preview_text(text, "Tax Structure Master", parent=self)


def open_taxstru(parent=None):
    TaxStruForm(parent).exec()


def main() -> int:
    app = QApplication(sys.argv)
    w = TaxStruForm()
    w.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
