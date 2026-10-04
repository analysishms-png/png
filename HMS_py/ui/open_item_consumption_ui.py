"""Open Item Consumption Master UI (VB6: FrmConsumMast9999 port).

VB6 source : HMS_REVERSE_ENGINEERING/HMS/FrmConsumMast9999.frm
Dispatch   : ModuleAdd.bas loc_1E43224
             If (var_188 = "Open Item Consumption") Then
                 Set var_90 = New FrmConsumMast9999 : ... Show
             (mdi_menu.json leaf "Open Item Consumption",
              _dispatch_map.json -> ["FrmConsumMast9999"])
Core ops   : HMS_py/core/open_item_consumption_ops.py
Tables     : BOM (17 cols), ItemMast, Depart.  Enviro is not read by this
             form; site/user come from db.get_site_code() / db.get_user().

WHAT THIS FORM IS (vs its sibling "Consumption Master" = FrmConsumMast,
ported in ui/pos_sub_forms_ui.py::ConsumptionMasterWindow):
      FrmConsumMast     : recipe key = FinItem + RestCode + AppDate (DATED,
                          one recipe per period) -> core/consumption_master
      FrmConsumMast9999 : recipe key = FinItem + RestCode (UNDATED open-item
                          BOM master); AppDate is a stored column only.
                          Save = DELETE whole key -> re-INSERT raw rows ->
                                 UPDATE ItemMast.PurchRate/LPurRate = SUM(Total)
                          Add on an existing key is auto-promoted to Edit by
                          VB6 Proc_132_46 (loc_FE95D5 COUNT(*)), so this port
                          does the same before saving.
Grid (FGrid.Cols = 8):
      0 S.No | 1 RawItem code (VB6: no header caption) | 2 Name | 3 Qty |
      4 Unit | 5 Cost | 6 Total (= col3 * col5, live-verified) | 7 Waste %
Header controls: Txt(0) Finish Name (Tag=Code) | Txt(1) Finish Qty (default 1)
      Txt(2) Unit (Enabled=0, always readonly) | Txt(3) Applicable Date |
      LblOutlet.Caption = outlet name, .Tag = RestCode.

MsgBox strings are verbatim VB6:
      "Save Record ?" / "Save Data"
      "Cancel ?" / "Terminate Process"
      "Delete Record ?" / "Confirmation"          (&H24)
      "No Record To Edit." / "Information"        (&H40)
      "No Records To Search."
      "Are You Sure To Delete?" / "Delete Entry !" (&H114)
      "No Entries To Delete" / "Delete Module"     (&H10)
      "Item Qty is required" (grid Qty blank or "0.00"; cell highlighted
      BackColor 14737632, then focus back)

DEVIATIONS (mirrors core/open_item_consumption_ops.py docstring):
      1. DISP CODE filter runs "<> 9999" instead of the decompiled "= 9999"
         (zero rows live under "= 9999" -> ops module DEVIATION 1).
      2. MsgBox button defaults normalised to "No" on every Yes/No prompt
         (VB6 flags &H24 / &H114 kept as the title+text above).
      3. MsgBox title for the bare "Item Qty is required" prompt is "HMS"
         (VB6 uses the project's default caption).
      4. VB6 audit helper on delete (Proc_154_5_10E33A4) is not ported.
      5. Applicable Date defaults to today (VB6 Txt(3) initial value is not
         recoverable from the decompile; every live AppDate is a day-1
         month-start, so a month-start default is also plausible).
      6. Finish Item is an editable QComboBox (VB6 Txt(0) is a TextBox whose
         Tag carries Code); picking from the list behaves like VB6's list pop.
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__)))))

from PyQt6.QtCore import QDate, Qt
from PyQt6.QtGui import QColor
from PyQt6.QtWidgets import (QComboBox, QDateEdit, QFormLayout, QGroupBox,
                             QHBoxLayout, QHeaderView, QLabel, QLineEdit,
                             QMainWindow, QMessageBox, QPushButton,
                             QTableWidget, QTableWidgetItem, QVBoxLayout,
                             QWidget)

from HMS_py.core import open_item_consumption_ops as oic
from HMS_py.ui.desktop_style import make_vb6_header
from HMS_py.ui.theme import palette

_HILITE = QColor(14737632)          # VB6 grid highlight BackColor 14737632


class OpenItemConsumptionWindow(QMainWindow):
    """Open Item Consumption Master (VB6 FrmConsumMast9999)."""

    LIST_COLS = ["FinItem", "Finish Name", "Outlet", "FinQty", "Unit",
                 "App Date"]
    RAW_COLS = ["S.No", "", "Name", "Qty", "Unit", "Cost", "Total", "Waste %"]
    READONLY_COLS = (0, 2, 4, 6)

    def __init__(self, parent=None, user="SA"):
        super().__init__(parent)
        self.setWindowTitle("Open Item Consumption Master")
        self.resize(1180, 660)
        self._user = user
        self._mode = "idle"              # idle | add | edit
        self._current = None             # {"fin_item","rest_code"}
        self._rest_code = ""
        self._recipes = []
        self._finish_items = []
        self._raw_items = []
        self._loading = False
        self._build_ui()
        self._load_pickers()
        self._reload()
        self._set_mode("idle")

    # ─────────────────────────── UI ───────────────────────────
    def _build_ui(self):
        central = QWidget()
        self.setCentralWidget(central)
        root = QVBoxLayout(central)
        root.addWidget(make_vb6_header("Open Item Consumption Master"))

        split = QHBoxLayout()
        root.addLayout(split, 1)

        # ── left: saved recipes (key = FinItem + RestCode, VB6 master list) ──
        left = QGroupBox("Saved recipes  (key = FinItem + RestCode)")
        lv = QVBoxLayout(left)
        self.txt_search = QLineEdit()
        self.txt_search.setPlaceholderText(
            "Search name / FinItem / outlet ...  (VB6 TopCtrl Search)")
        self.txt_search.returnPressed.connect(self._reload)
        lv.addWidget(self.txt_search)
        self.list_table = QTableWidget(0, len(self.LIST_COLS))
        self.list_table.setHorizontalHeaderLabels(self.LIST_COLS)
        self.list_table.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.list_table.setSelectionMode(
            QTableWidget.SelectionMode.SingleSelection)
        self.list_table.setEditTriggers(
            QTableWidget.EditTrigger.NoEditTriggers)
        self.list_table.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.Stretch)
        self.list_table.setAlternatingRowColors(True)
        self.list_table.itemSelectionChanged.connect(self._on_list_row)
        self.list_table.itemDoubleClicked.connect(lambda *_: self._edit())
        lv.addWidget(self.list_table, 1)
        bl = QHBoxLayout()
        self.btn_edit = QPushButton("Edit")
        self.btn_edit.clicked.connect(self._edit)
        self.btn_delete = QPushButton("Delete")
        self.btn_delete.setProperty("role", "danger")
        self.btn_delete.clicked.connect(self._delete)
        self.btn_refresh = QPushButton("Refresh")
        self.btn_refresh.clicked.connect(self._reload)
        bl.addWidget(self.btn_edit)
        bl.addWidget(self.btn_delete)
        bl.addStretch()
        bl.addWidget(self.btn_refresh)
        lv.addLayout(bl)
        split.addWidget(left, 1)

        # ── right: header + raw grid ──
        right = QWidget()
        rv = QVBoxLayout(right)
        rv.setContentsMargins(0, 0, 0, 0)

        hdr = QGroupBox("Finish item")
        fl = QFormLayout(hdr)
        self.cmb_fin = QComboBox()
        self.cmb_fin.setEditable(True)
        self.cmb_fin.setInsertPolicy(QComboBox.InsertPolicy.NoInsert)
        self.cmb_fin.currentIndexChanged.connect(self._on_finish_changed)
        self.txt_finqty = QLineEdit("1")
        self.txt_unit = QLineEdit()              # VB6 Txt(2).Enabled = 0
        self.txt_unit.setReadOnly(True)
        self.dt_app = QDateEdit()
        self.dt_app.setCalendarPopup(True)
        self.dt_app.setDisplayFormat("dd-MM-yyyy")
        self.dt_app.setDate(QDate.currentDate())
        self.lbl_outlet = QLabel("-")
        self.lbl_outlet.setStyleSheet("font-weight: bold;")
        fl.addRow("Finish Item *:", self.cmb_fin)
        fl.addRow("Finish Qty *:", self.txt_finqty)
        fl.addRow("Unit:", self.txt_unit)
        fl.addRow("Applicable Date *:", self.dt_app)
        fl.addRow("Outlet:", self.lbl_outlet)
        rv.addWidget(hdr)

        rv.addWidget(QLabel(
            "Raw material rows   (FGrid: Total = Qty x Cost; Waste % stored "
            "separately)"))
        self.raw_table = QTableWidget(0, len(self.RAW_COLS))
        self.raw_table.setHorizontalHeaderLabels(self.RAW_COLS)
        self.raw_table.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.raw_table.setAlternatingRowColors(True)
        self.raw_table.horizontalHeader().setSectionResizeMode(
            1, QHeaderView.ResizeMode.Stretch)
        self.raw_table.horizontalHeader().setSectionResizeMode(
            2, QHeaderView.ResizeMode.Stretch)
        self.raw_table.cellChanged.connect(self._on_cell_changed)
        rv.addWidget(self.raw_table, 1)

        self.lbl_user = QLabel("")
        self.lbl_date = QLabel("")
        u = QHBoxLayout()
        u.addWidget(self.lbl_user)
        u.addWidget(self.lbl_date)
        u.addStretch()
        rv.addLayout(u)

        b1 = QHBoxLayout()
        self.btn_new = QPushButton("New")
        self.btn_add_raw = QPushButton("Add Raw")
        self.btn_del_row = QPushButton("Del Row")
        self.btn_save = QPushButton("Save")
        self.btn_save.setProperty("success", True)
        self.btn_cancel = QPushButton("Cancel")
        for b in (self.btn_new, self.btn_add_raw, self.btn_del_row,
                  self.btn_save, self.btn_cancel):
            b1.addWidget(b)
        b1.addStretch()
        self.btn_exit = QPushButton("Exit")
        self.btn_exit.clicked.connect(self.close)
        b1.addWidget(self.btn_exit)
        rv.addLayout(b1)

        self.btn_new.clicked.connect(self._new)
        self.btn_add_raw.clicked.connect(self._add_raw)
        self.btn_del_row.clicked.connect(self._del_row)
        self.btn_save.clicked.connect(self._save)
        self.btn_cancel.clicked.connect(self._cancel)

        split.addWidget(right, 2)

    # ─────────────────────── pickers / lists ───────────────────────
    def _load_pickers(self):
        try:
            self._finish_items = oic.list_finish_items()
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))
            self._finish_items = []
        try:
            self._raw_items = oic.list_raw_items()
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))
            self._raw_items = []
        self._fill_finish_combo()

    def _fill_finish_combo(self):
        self._loading = True
        try:
            text = self.cmb_fin.currentText()
            self.cmb_fin.blockSignals(True)
            self.cmb_fin.clear()
            for f in self._finish_items:
                self.cmb_fin.addItem(
                    "{}  ({}  |  {})".format(f["name"], f["code"],
                                             f["outlet"]), f)
            self.cmb_fin.blockSignals(False)
            if text:
                self.cmb_fin.setEditText(text)
        finally:
            self._loading = False

    def _reload(self):
        try:
            recipes = oic.list_recipes()
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))
            return
        needle = (self.txt_search.text() or "").strip().lower()
        if needle:
            recipes = [r for r in recipes
                       if needle in (r["fin_item"] or "").lower()
                       or needle in (r["fin_name"] or "").lower()
                       or needle in (r["outlet"] or "").lower()]
            if not recipes:
                QMessageBox.information(self, "Search",
                                        "No Records To Search.")
        self._recipes = recipes
        txt = palette()["text"]
        t = self.list_table
        self._loading = True
        t.setRowCount(len(recipes))
        for i, r in enumerate(recipes):
            vals = [r["fin_item"], r["fin_name"], r["outlet"],
                    "{:g}".format(r["fin_qty"]), r["unit"], r["app_date"]]
            for j, v in enumerate(vals):
                it = QTableWidgetItem(str(v))
                it.setForeground(QColor(txt))
                t.setItem(i, j, it)
        self._loading = False

    def _on_list_row(self):
        if self._loading or self._mode != "idle":
            return
        row = self.list_table.currentRow()
        if 0 <= row < len(self._recipes):
            self._load_recipe(self._recipes[row])

    # ─────────────────────── header helpers ───────────────────────
    @staticmethod
    def _fin_text(f):
        return "{}  ({}  |  {})".format(f["name"], f["code"], f["outlet"])

    def _selected_finish(self):
        txt = (self.cmb_fin.currentText() or "").strip()
        data = self.cmb_fin.currentData()
        # editable combo: currentData() stays stale once the user types
        if isinstance(data, dict):
            if self._fin_text(data) == txt or txt in (data["name"],
                                                      data["code"]):
                return data
        for f in self._finish_items:
            if txt in (f["code"], f["name"]) or (
                    txt and txt.startswith(f["name"])):
                return f
        return None

    def _on_finish_changed(self, *_):
        if self._loading:
            return
        f = self._selected_finish()
        if not f:
            return
        self._loading = True
        try:
            self.cmb_fin.setEditText(self._fin_text(f))
            self.txt_unit.setText(f["unit"])
            self.lbl_outlet.setText(f["outlet"])
        finally:
            self._loading = False
        self._rest_code = f["rest_code"]
        # VB6 Proc_132_46 (loc_FE95D5): Add mode + key already present
        #   -> auto-load the existing recipe and switch to Edit mode.
        if self._mode == "add" and oic.count_recipe(f["code"], f["rest_code"]):
            self._load_recipe({"fin_item": f["code"],
                               "rest_code": f["rest_code"]})
            self._set_mode("edit")

    def _load_recipe(self, rec):
        try:
            data = oic.get_recipe(rec.get("fin_item", ""),
                                  rec.get("rest_code", ""))
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))
            return
        self._current = {"fin_item": data["fin_item"],
                         "rest_code": data["rest_code"]}
        self._rest_code = data["rest_code"]
        self._loading = True
        try:
            self.cmb_fin.setEditText("{}  ({}  |  {})".format(
                data["fin_name"], data["fin_item"], data["outlet"]))
            self.txt_finqty.setText("{:g}".format(data["fin_qty"]))
            self.txt_unit.setText(data["unit"])
            self.lbl_outlet.setText(data["outlet"])
            if data["app_date"]:
                y, m, d = (int(x) for x in data["app_date"].split("-")[:3])
                self.dt_app.setDate(QDate(y, m, d))
            self.lbl_user.setText(data["user_caption"])
            self.lbl_date.setText(data["date_caption"])
            self._fill_raw_grid(data["rows"])
        finally:
            self._loading = False

    # ─────────────────────── raw grid ───────────────────────
    def _cell(self, text, col):
        it = QTableWidgetItem(str(text))
        it.setForeground(QColor(palette()["text"]))
        if col in self.READONLY_COLS:
            it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
        return it

    def _make_raw_combo(self, code=""):
        combo = QComboBox()
        combo.setEditable(False)
        combo.setPlaceholderText("Select raw item ...")
        combo.addItem("(select raw item)", None)
        for r in self._raw_items:
            combo.addItem("{}  ({})".format(r["name"], r["code"]), r["code"])
        idx = combo.findData(code) if code else -1
        combo.setCurrentIndex(idx if idx > 0 else 0)
        if not code:
            combo.setCurrentIndex(0)
        combo.currentIndexChanged.connect(
            lambda *_: self._raw_picked(combo))
        return combo

    def _fill_raw_grid(self, rows):
        t = self.raw_table
        t.blockSignals(True)
        t.setRowCount(0)
        for i, r in enumerate(rows):
            t.insertRow(i)
            t.setItem(i, 0, self._cell(i + 1, 0))
            combo = self._make_raw_combo(r["raw_item"])
            t.setCellWidget(i, 1, combo)
            t.setItem(i, 2, self._cell(r["raw_name"], 2))
            t.setItem(i, 3, self._cell("{:.4f}".format(r["raw_qty"]), 3))
            t.setItem(i, 4, self._cell(r["unit"], 4))
            t.setItem(i, 5, self._cell("{:.4f}".format(r["cost"]), 5))
            t.setItem(i, 6, self._cell("{:.4f}".format(r["total"]), 6))
            t.setItem(i, 7, self._cell("{:.4f}".format(r["waste"]), 7))
        t.blockSignals(False)

    def _row_of(self, combo):
        for r in range(self.raw_table.rowCount()):
            if self.raw_table.cellWidget(r, 1) is combo:
                return r
        return -1

    def _raw_picked(self, combo):
        if self._loading:
            return
        row = self._row_of(combo)
        if row < 0:
            return
        code = combo.currentData()
        item = next((r for r in self._raw_items if r["code"] == code), None)
        if not item:
            return
        t = self.raw_table
        t.blockSignals(True)
        t.setItem(row, 2, self._cell(item["name"], 2))
        t.setItem(row, 4, self._cell(item["unit"], 4))
        # VB6 seeds grid col5 (Cost) from DGItem LPurRate on row add.
        t.setItem(row, 5, self._cell("{:.4f}".format(item["rate"]), 5))
        t.setItem(row, 3, self._cell("", 3))
        t.blockSignals(False)
        self._recalc(row)

    def _recalc(self, row):
        """VB6 Proc: Total(col6) = Qty(col3) x Cost(col5)."""
        t = self.raw_table
        qty = self._num(row, 3)
        cost = self._num(row, 5)
        t.blockSignals(True)
        t.setItem(row, 6, self._cell("{:.4f}".format(qty * cost), 6))
        t.blockSignals(False)

    def _num(self, row, col):
        it = self.raw_table.item(row, col)
        try:
            return float((it.text() if it else "").strip() or 0)
        except ValueError:
            return 0.0

    def _on_cell_changed(self, row, col):
        if self._loading:
            return
        if col in (3, 5):
            it = self.raw_table.item(row, col)
            if it is not None:
                it.setBackground(QColor("transparent"))
            self._recalc(row)

    def _add_raw(self):
        if self._mode == "idle":
            self._new()
            if self._mode == "idle":
                return
        t = self.raw_table
        row = t.rowCount()
        t.insertRow(row)
        t.setItem(row, 0, self._cell(row + 1, 0))
        t.setCellWidget(row, 1, self._make_raw_combo(""))
        t.setItem(row, 2, self._cell("", 2))
        t.setItem(row, 3, self._cell("", 3))
        t.setItem(row, 4, self._cell("", 4))
        t.setItem(row, 5, self._cell("", 5))
        t.setItem(row, 6, self._cell("0.0000", 6))
        t.setItem(row, 7, self._cell("0.0000", 7))
        combo = t.cellWidget(row, 1)
        if combo is not None:
            combo.setFocus()

    def _del_row(self):
        row = self.raw_table.currentRow()
        if self.raw_table.rowCount() == 0 or row < 0:
            QMessageBox.critical(self, "Delete Module",
                                 "No Entries To Delete")
            return
        reply = QMessageBox.question(
            self, "Delete Entry !", "Are You Sure To Delete?",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
            QMessageBox.StandardButton.No)
        if reply != QMessageBox.StandardButton.Yes:
            return
        self.raw_table.removeRow(row)
        self._renumber()

    def _renumber(self):
        t = self.raw_table
        t.blockSignals(True)
        for i in range(t.rowCount()):
            t.setItem(i, 0, self._cell(i + 1, 0))
        t.blockSignals(False)

    # ─────────────────────── modes / TopCtrl actions ───────────────────────
    def _set_mode(self, mode):
        self._mode = mode
        self.btn_new.setEnabled(mode == "idle")
        self.btn_edit.setEnabled(mode == "idle")
        self.btn_delete.setEnabled(mode == "idle")
        self.btn_save.setEnabled(mode != "idle")
        self.btn_cancel.setEnabled(mode != "idle")
        self.btn_refresh.setEnabled(mode == "idle")
        self.txt_search.setEnabled(mode == "idle")
        self.list_table.setEnabled(mode == "idle")

    def _clear_form(self):
        self._loading = True
        try:
            self.cmb_fin.setEditText("")
            self.txt_finqty.setText("1")
            self.txt_unit.setText("")
            self.dt_app.setDate(QDate.currentDate())
            self.lbl_outlet.setText("-")
            self.lbl_user.setText("")
            self.lbl_date.setText("")
            self.raw_table.setRowCount(0)
        finally:
            self._loading = False
        self._current = None
        self._rest_code = ""

    def _new(self):
        self._clear_form()
        self._set_mode("add")

    def _edit(self):
        row = self.list_table.currentRow()
        if not (0 <= row < len(self._recipes)):
            QMessageBox.information(self, "Information",
                                    "No Record To Edit.")
            return
        self._load_recipe(self._recipes[row])
        self._set_mode("edit")

    def _cancel(self):
        if self._mode == "idle":
            return
        reply = QMessageBox.question(
            self, "Terminate Process", "Cancel ?",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
            QMessageBox.StandardButton.No)
        if reply != QMessageBox.StandardButton.Yes:
            return
        self._clear_form()
        self._set_mode("idle")

    def _collect_rows(self):
        rows = []
        t = self.raw_table
        for r in range(t.rowCount()):
            combo = t.cellWidget(r, 1)
            code = combo.currentData() if combo is not None else None
            if not code:
                continue
            rows.append({
                "raw_item": code,
                "raw_qty": self._raw_text(r, 3),
                "cost": self._raw_text(r, 5),
                "waste": self._raw_text(r, 7),
                "unit": self._cell_text(r, 4),
            })
        return rows

    def _cell_text(self, row, col):
        it = self.raw_table.item(row, col)
        return (it.text() if it else "").strip()

    def _raw_text(self, row, col):
        return self._cell_text(row, col)

    def _highlight_qty(self, row):
        it = self.raw_table.item(row, 3)
        if it is not None:
            it.setBackground(_HILITE)
        self.raw_table.setCurrentCell(row, 3)
        self.raw_table.editItem(it)

    def _save(self):
        if self._mode == "idle":
            return
        f = self._selected_finish()
        fin_name = (self.cmb_fin.currentText() or "").strip()
        if not f and not fin_name:
            self._missing("Finish Name", self.cmb_fin)
            return
        fin_item = f["code"] if f else ""
        rest_code = f["rest_code"] if f else self._rest_code
        if not fin_item:
            self._missing("Finish Name", self.cmb_fin)
            return
        qty_text = (self.txt_finqty.text() or "").strip()
        if qty_text == "" or float(qty_text or 0) <= 0:
            self._missing("Finish Qty", self.txt_finqty)
            return
        rows = self._collect_rows()
        if not rows:
            self._missing("Item Qty is required", self.raw_table)
            return
        for i, r in enumerate(rows):
            try:
                q = float(str(r["raw_qty"]).strip() or 0)
            except ValueError:
                q = 0.0
            if str(r["raw_qty"]).strip() == "" or q == 0.0:
                self._highlight_qty(self._raw_row_index(r["raw_item"]))
                QMessageBox.warning(self, "HMS", "Item Qty is required")
                return
            rows[i]["raw_qty"] = q
            try:
                rows[i]["cost"] = float(str(r["cost"]).strip() or 0)
                rows[i]["waste"] = float(str(r["waste"]).strip() or 0)
            except ValueError:
                rows[i]["cost"] = 0.0
                rows[i]["waste"] = 0.0

        reply = QMessageBox.question(
            self, "Save Data", "Save Record ?",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
            QMessageBox.StandardButton.No)
        if reply != QMessageBox.StandardButton.Yes:
            return
        try:
            res = oic.save_recipe(fin_item, rest_code, float(qty_text),
                                  self.dt_app.date().toPyDate(), rows,
                                  user=self._user)
        except Exception as e:
            QMessageBox.critical(self, "Editing Error", str(e))
            return
        QMessageBox.information(
            self, "Done",
            "{} raw row(s) saved for {}.\n"
            "Cost per finished unit: {:,.4f}\n"
            "(ItemMast.PurchRate / LPurRate updated)".format(
                res["rows_saved"], fin_item, res["cost_per_unit"]))
        self._clear_form()
        self._set_mode("idle")
        self._reload()

    def _raw_row_index(self, code):
        for r in range(self.raw_table.rowCount()):
            combo = self.raw_table.cellWidget(r, 1)
            if combo is not None and combo.currentData() == code:
                return r
        return 0

    def _missing(self, label, widget):
        if label == "Item Qty is required":
            QMessageBox.warning(self, "HMS", label)
        else:
            QMessageBox.warning(self, "Information", label)
        widget.setFocus()

    def _delete(self):
        row = self.list_table.currentRow()
        if not (0 <= row < len(self._recipes)):
            QMessageBox.information(self, "Information",
                                    "No Record To Edit.")
            return
        rec = self._recipes[row]
        reply = QMessageBox.question(
            self, "Confirmation", "Delete Record ?",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
            QMessageBox.StandardButton.No)
        if reply != QMessageBox.StandardButton.Yes:
            return
        try:
            n = oic.delete_recipe(rec["fin_item"], rec["rest_code"])
        except Exception as e:
            QMessageBox.critical(self, "Deletion Error", str(e))
            return
        self._clear_form()
        self._set_mode("idle")
        self._reload()
        QMessageBox.information(self, "Done",
                                "{} BOM row(s) deleted.".format(n))


def open_open_item_consumption(parent=None, user="SA"):
    """Shell opener for mdi_menu.json leaf \"Open Item Consumption\".

    Usage (same shape as open_consumption_master):
        from HMS_py.ui import open_item_consumption_ui as oic_ui
        oic_ui.open_open_item_consumption(parent, user=\"SA\")
    """
    w = OpenItemConsumptionWindow(parent, user=user)
    w.show()
    return w
