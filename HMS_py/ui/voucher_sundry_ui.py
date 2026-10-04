"""Voucher Wise Sundry Entry UI — VB6 VoucherSundrySetting.frm port.

Form: "Voucher Sundry Setting" (MDI child, maximized, TopCtrl rights "AEDP").
Two new files only — nothing in ui/shell.py or tests/ is touched; call
    open_voucher_sundry_entry(parent=None, user="SA")
to open the window.

Controls mapped from the .frm property block:
  LblName(0) "Outlet"     -> outlet QComboBox (VB6 Txt(0): MaxLength 30,
                              Text = Department name, Tag = V_Type code,
                              source :507 Depart picker)
  LblName(1) "App.Date"   -> QDateEdit dd/MM/yyyy (VB6 Txt(1) MaxLength 11)
  LblDepart (big red)     -> department caption (Arial Narrow, red)
  FGrid (Cols=&H11)       -> QTableWidget, 13 editable columns
  TopCtrl "AEDP"          -> Add / Edit / Delete / Search / Save / Cancel /
                              Exit buttons

FGrid column map (VB6 ColWidth/TextMatrix from Proc_82_45 :1611-1798,
value mapping from detail fill Proc_82_51 :2200-2305):
  port col  header           VB6 col  SundryType field
   0 Sn.                     1        SNo
   1 Sundry Name  (combo)    3 (+2)   SundryMast.Name / SundryCode
   2 Display Name            4        DispName
   3 Cal. Formula            5        CalcFormula
   4 P/A        (combo)      6        PerOrAmt (P/A)
   5 Value                   7        SValue        (Format "0.00")
   6 ROff       (combo)      8        RoundOff      (Y/N)
   7 Limit                   9        Limit         (Format "0.00")
   8 Nature                  10       Nature
   9 +/-        (combo)      11       CalcSign
  10 Bold       (combo)      12       Grp           (Y/N)
  11 Revenue Charge (combo)  13 (+15) RevMast.Name / RevCode
  12 A/M        (combo)      16       AutoManual    (A/M)
  hidden-by-VB6 cols 14 (SysYN) and 15 (RevCode) are carried in row dicts;
  SysYN is set from the SundryMast pick, RevCode from the revenue pick.

VB6 behaviours reproduced (line refs into VoucherSundrySetting.frm):
  * outlet pick -> SundryTypeFix template grid (Txt_Validate :759 -> Proc_82_55
    :2366)
  * sundry pick -> fills code/name/DispName/Nature/SysYN and A/M='Manual'
    (DGSundry event :595-628 + Proc_82_49 :1973-1998)
  * revenue pick -> fills RevCode/RevName and CalcSign from RevMast.Type
    ('Cr'->'+', 'Dr'->'-', else clear) (:2140-2162)
  * CalcFormula check (Proc_82_47 :1833): no leading/trailing +/-, every
    row reference must be an SNo of a row above
  * duplicate Sundry Name check (Proc_82_54 :2334): 'Duplicate Sundry Name
    Not Allowed'
  * SNo filled on last row -> append a new row (:2001-2008)
  * Ctrl+D grid-row delete, Add mode only, 'Are You Sure To Delete?' /
    'Delete Entry !'; empty -> 'No Entries To Delete' / 'Delete Module'
    (FGrid event D :1518-1557)
  * Save -> 'Save Record ?'/'Save Data' prompt when leaving the last grid
    row, direct save from the Save button (event A :1339, event 19 :234)
  * Cancel -> 'Cancel ?' / 'Terminate Process' (:446)
  * Search -> 'No Records To Search.' / 'Information' (:469)

Port deviations (see core/voucher_sundry_ops.py for SQL-side ones):
  1. VB6 hides ROff/Limit/Nature/+/- via ColWidth=0; port shows them so the
     data the INSERT writes can actually be entered.
  2. Outlet combo is disabled in Edit mode (VB6 TopCtrl Edit handler is
     missing from the decompiled .frm) and enabled in Add mode.
  3. Delete button = group DELETE (port addition, no DELETE SQL in .frm).
  4. Search = QInputDialog over the VB6 :472 index (VB6 shared search form
     is not part of this port).
  5. Blank P/A, ROff/Bold, A/M cells render blank (VB6 IIf renders
     "Amt"/"No"/"Manual") so a re-save never rewrites '' into 'N'/'M'.
  6. Row delete also accepts the Delete key next to VB6's Ctrl+D.

Run: python -m HMS_py.ui.voucher_sundry_ui
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import QDate, QEvent, Qt
from PyQt6.QtGui import QFont
from PyQt6.QtWidgets import (QComboBox, QDateEdit, QHBoxLayout, QHeaderView,
                             QInputDialog, QLabel, QLineEdit, QMainWindow,
                             QPushButton, QTableWidget, QVBoxLayout, QWidget, QMessageBox)

from HMS_py.core import voucher_sundry_ops as ops


# ── display <-> raw value helpers (VB6 detail-fill IIf/Format) ──────────
def _disp_pa(v):
    return {"P": "Per", "A": "Amt"}.get((v or "").strip().upper(),
                                        (v or "").strip())


def _raw_pa(t):
    return {"Per": "P", "Amt": "A"}.get((t or "").strip(), (t or "")[:1])


def _disp_yn(v):
    u = (v or "").strip().upper()
    if not u:
        return ""
    return "Yes" if u == "Y" else "No"


def _raw_yn(t):
    u = (t or "").strip().lower()
    if not u:
        return ""
    return "Y" if u.startswith("y") else "N"


def _disp_am(v):
    u = (v or "").strip().upper()
    if not u:
        return ""
    return "Auto" if u == "A" else "Manual"


def _raw_am(t):
    u = (t or "").strip().lower()
    if not u:
        return ""
    return "A" if u.startswith("a") else "M"


def _fmt2(v):
    try:
        return f"{float(v or 0):.2f}"
    except (TypeError, ValueError):
        return "0.00"


def _num(v):
    try:
        return float(str(v).strip() or 0)
    except (TypeError, ValueError):
        return 0.0


def _int(v):
    try:
        return int(float(str(v).strip() or 0))
    except (TypeError, ValueError):
        return 0


# port col index, header, width, editor kind
_COLS = [
    (0, "Sn.", 55, "sno"),
    (1, "Sundry Name", 175, "sundry"),
    (2, "Display Name", 150, "line"),
    (3, "Cal. Formula", 150, "line"),
    (4, "P/A", 65, "pa"),
    (5, "Value", 85, "value"),
    (6, "ROff", 65, "yn"),
    (7, "Limit", 85, "limit"),
    (8, "Nature", 110, "line"),
    (9, "+/-", 55, "sign"),
    (10, "Bold", 65, "yn"),
    (11, "Revenue Charge", 190, "rev"),
    (12, "A/M", 80, "am"),
]


def _msg(parent, text, title, *, question=False, critical=False):
    """VB6 MsgBox parity (text/title/icons from the .frm call sites)."""
    box = QMessageBox(parent)
    box.setWindowTitle(title)
    box.setText(text)
    if question:
        box.setIcon(QMessageBox.Icon.Question)
        box.setStandardButtons(QMessageBox.StandardButton.Yes
                               | QMessageBox.StandardButton.No)
        return box.exec()
    box.setIcon(QMessageBox.Icon.Critical if critical
                 else QMessageBox.Icon.Information)
    box.exec()
    return None


class VoucherSundryEntryWindow(QMainWindow):
    """VB6 VoucherSundrySetting — outlet + app date + sundry grid CRUD."""

    def __init__(self, parent=None, user="SA"):
        super().__init__(parent)
        self.setWindowTitle("Voucher Wise Sundry Entry")
        self.resize(1180, 660)
        self._user = user or "SA"
        self._mode = "browse"          # browse | add | edit
        self._search_code = None       # loaded VB6 SearchCode
        self._loaded_vtype = None
        self._loaded_date = None
        self._rows: list[dict] = []    # row dicts, parallel to grid rows
        self._outlets: list[dict] = []
        self._sundries: list[dict] = []
        self._revenues: list[dict] = []
        self._build_ui()
        self._reload_lookups()
        self._apply_mode()

    # ── layout ───────────────────────────────────────────────────────
    def _build_ui(self):
        central = QWidget()
        self.setCentralWidget(central)
        lay = QVBoxLayout(central)

        title = QLabel("Voucher Wise Sundry Entry")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        lay.addWidget(title)

        btns = QHBoxLayout()
        self.btn_add = QPushButton("Add")
        self.btn_edit = QPushButton("Edit")
        self.btn_del = QPushButton("Delete")
        self.btn_search = QPushButton("Search")
        self.btn_save = QPushButton("Save")
        self.btn_cancel = QPushButton("Cancel")
        self.btn_exit = QPushButton("Exit")
        self.btn_save.setStyleSheet(
            "QPushButton{background:#28a745;color:white;font-weight:bold;}")
        self.btn_del.setProperty("role", "danger")
        for b in (self.btn_add, self.btn_edit, self.btn_del, self.btn_search,
                  self.btn_save, self.btn_cancel):
            btns.addWidget(b)
        btns.addStretch()
        btns.addWidget(self.btn_exit)
        lay.addLayout(btns)

        head = QHBoxLayout()
        head.addWidget(QLabel("Outlet"))
        self.cbo_outlet = QComboBox()
        self.cbo_outlet.setMinimumWidth(240)
        head.addWidget(self.cbo_outlet)
        head.addSpacing(18)
        head.addWidget(QLabel("App.Date"))
        self.date_app = QDateEdit()
        self.date_app.setCalendarPopup(True)
        self.date_app.setDisplayFormat("dd/MM/yyyy")
        self.date_app.setDate(QDate.currentDate())
        self.date_app.setMaximumWidth(140)
        head.addWidget(self.date_app)
        head.addStretch()
        self.lbl_dept = QLabel("")
        self.lbl_dept.setAlignment(Qt.AlignmentFlag.AlignCenter)
        self.lbl_dept.setFont(QFont("Arial Narrow", 18, QFont.Weight.Bold))
        self.lbl_dept.setStyleSheet("color:#ff0000;")
        head.addWidget(self.lbl_dept, 1)
        lay.addLayout(head)

        self.table = QTableWidget(0, len(_COLS))
        self.table.setHorizontalHeaderLabels([c[1] for c in _COLS])
        hdr = self.table.horizontalHeader()
        hdr.setSectionResizeMode(QHeaderView.ResizeMode.ResizeToContents)
        hdr.setSectionResizeMode(1, QHeaderView.ResizeMode.Stretch)
        hdr.setSectionResizeMode(2, QHeaderView.ResizeMode.Stretch)
        self.table.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.table.setSelectionMode(
            QTableWidget.SelectionMode.SingleSelection)
        self.table.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        for col, _, width, _ in _COLS:
            self.table.setColumnWidth(col, width)
        self.table.installEventFilter(self)
        lay.addWidget(self.table, 1)

        self.statusBar().showMessage(
            "Ready — Add dabao naya group banane ke liye.")

        self.btn_add.clicked.connect(self._add)
        self.btn_edit.clicked.connect(self._edit)
        self.btn_del.clicked.connect(self._delete_group)
        self.btn_search.clicked.connect(self._search)
        self.btn_save.clicked.connect(self._save)
        self.btn_cancel.clicked.connect(self._cancel)
        self.btn_exit.clicked.connect(self.close)
        self.cbo_outlet.currentIndexChanged.connect(self._on_outlet_changed)

    # ── lookups ──────────────────────────────────────────────────────
    def _reload_lookups(self):
        try:
            self._outlets = ops.list_outlets()
            self._sundries = ops.list_sundries()
            self._revenues = ops.list_revenues()
        except Exception as e:
            _msg(self, str(e), "", critical=True)
            return
        keep = self.cbo_outlet.currentData()
        self.cbo_outlet.blockSignals(True)
        self.cbo_outlet.clear()
        self.cbo_outlet.addItem("", None)
        idx = 0
        for o in self._outlets:
            self.cbo_outlet.addItem(o["name"] or o["code"], o["code"])
            if keep and o["code"] == keep:
                idx = self.cbo_outlet.count() - 1
        self.cbo_outlet.setCurrentIndex(idx)
        self.cbo_outlet.blockSignals(False)

    # ── mode / enable state ──────────────────────────────────────────
    def _apply_mode(self):
        editable = self._mode in ("add", "edit")
        # deviation 2: outlet fixed while editing an existing group
        self.cbo_outlet.setEnabled(self._mode == "add")
        self.date_app.setEnabled(editable)
        self.btn_save.setEnabled(editable)
        self.btn_cancel.setEnabled(editable)
        for i in range(self.table.rowCount()):
            for c in range(len(_COLS)):
                w = self.table.cellWidget(i, c)
                if w is not None:
                    w.setEnabled(editable)

    def _set_mode(self, mode):
        self._mode = mode
        self._apply_mode()

    # ── grid row plumbing ────────────────────────────────────────────
    def _row_of(self, widget) -> int:
        for i in range(self.table.rowCount()):
            for c in range(len(_COLS)):
                if self.table.cellWidget(i, c) is widget:
                    return i
        return -1

    def _set_grid_rows(self, rows):
        self.table.setRowCount(0)
        self._rows = []
        for r in rows:
            self._append_row(r)
        self._apply_mode()

    def _append_row(self, row=None):
        i = self.table.rowCount()
        self.table.insertRow(i)
        data = dict(row) if row else ops.blank_row()
        self._rows.append(data)
        self._build_row(i, data)

    def _build_row(self, i, r):
        self.table.setCellWidget(i, 0, self._line(str(r.get("sno") or ""),
                                                  self._on_sno_edited))
        self.table.setCellWidget(i, 1, self._sundry_combo(r))
        self.table.setCellWidget(i, 2, self._line(r.get("dispname", "")))
        self.table.setCellWidget(i, 3, self._line(r.get("calcformula", ""),
                                                  self._on_formula_edited))
        self.table.setCellWidget(i, 4, self._combo(
            ["", "Per", "Amt"], _disp_pa(r.get("peroramt"))))
        self.table.setCellWidget(i, 5, self._line(_fmt2(r.get("svalue")),
                                                  self._on_value_edited))
        self.table.setCellWidget(i, 6, self._combo(["", "Yes", "No"],
                                                   _disp_yn(r.get("roundoff"))))
        self.table.setCellWidget(i, 7, self._line(_fmt2(r.get("limit")),
                                                  self._on_value_edited))
        self.table.setCellWidget(i, 8, self._line(r.get("nature", "")))
        self.table.setCellWidget(i, 9, self._combo(["", "+", "-"],
                                                   r.get("calcsign", "")))
        self.table.setCellWidget(i, 10, self._combo(["", "Yes", "No"],
                                                    _disp_yn(r.get("grp"))))
        self.table.setCellWidget(i, 11, self._revenue_combo(r))
        self.table.setCellWidget(i, 12, self._combo(["", "Auto", "Manual"],
                                                    _disp_am(r.get("autom"))))

    def _line(self, text, slot=None):
        ed = QLineEdit(text or "")
        if slot is not None:
            ed.editingFinished.connect(slot)
        return ed

    def _combo(self, items, current):
        cb = QComboBox()
        cb.addItems(items)
        idx = cb.findText(current if current is not None else "")
        cb.setCurrentIndex(idx if idx >= 0 else 0)
        return cb

    def _sundry_combo(self, r):
        cb = QComboBox()
        cb.addItem("", None)
        cur = 0
        for s in self._sundries:
            cb.addItem(s["name"], s["code"])
            if r.get("sundrycode") and s["code"] == r["sundrycode"]:
                cur = cb.count() - 1
        cb.setCurrentIndex(cur)
        cb.currentIndexChanged.connect(self._on_sundry_changed)
        return cb

    def _revenue_combo(self, r):
        cb = QComboBox()
        cb.addItem("", None)
        cur = 0
        for v in self._revenues:
            cb.addItem(v["name"], v["code"])
            if r.get("revcode") and v["code"] == r["revcode"]:
                cur = cb.count() - 1
        cb.setCurrentIndex(cur)
        cb.currentIndexChanged.connect(self._on_revenue_changed)
        return cb

    # ── VB6 cell side effects ────────────────────────────────────────
    def _on_sundry_changed(self, *_):
        cb = self.sender()
        if not isinstance(cb, QComboBox):
            return
        i = self._row_of(cb)
        if i < 0 or i >= len(self._rows):
            return
        r = self._rows[i]
        code = cb.currentData()
        code = "" if code is None else str(code)
        name = cb.currentText()
        if not code:                      # VB6 clears col3/2/10/14
            r["sundrycode"] = ""
            r["sundry_name"] = ""
            r["nature"] = ""
            r["sysyn"] = ""
            self._set_cell(i, 8, "")
            return
        if ops.duplicate_sundry_name(name, self._rows, skip=i):
            _msg(self, "Duplicate Sundry Name Not Allowed", "Validation")
            return                        # combo keeps previous selection
        s = next((x for x in self._sundries if x["code"] == code), None)
        r["sundrycode"] = code
        r["sundry_name"] = name
        r["dispname"] = name                      # VB6 col4 = SundryMast.Name
        r["nature"] = s["nature"] if s else ""
        r["sysyn"] = s["sysyn"] if s else ""
        r["autom"] = "M"                          # VB6 col16 = "Manual"
        self._set_cell(i, 2, name)
        self._set_cell(i, 8, r["nature"])
        am = self.table.cellWidget(i, 12)
        if isinstance(am, QComboBox):
            am.blockSignals(True)
            am.setCurrentIndex(max(0, am.findText("Manual")))
            am.blockSignals(False)

    def _on_revenue_changed(self, *_):
        cb = self.sender()
        if not isinstance(cb, QComboBox):
            return
        i = self._row_of(cb)
        if i < 0 or i >= len(self._rows):
            return
        r = self._rows[i]
        code = cb.currentData()
        code = "" if code is None else str(code)
        r["revcode"] = code
        r["rev_name"] = cb.currentText() if code else ""
        if not code:
            r["calcsign"] = ""
        else:
            v = next((x for x in self._revenues if x["code"] == code), None)
            t = (v or {}).get("type", "")
            r["calcsign"] = "+" if t == "Cr" else ("-" if t == "Dr" else "")
        sign = self.table.cellWidget(i, 9)
        if isinstance(sign, QComboBox):
            sign.blockSignals(True)
            sign.setCurrentIndex(max(0, sign.findText(r["calcsign"])))
            sign.blockSignals(False)

    def _set_cell(self, row, col, text):
        w = self.table.cellWidget(row, col)
        if isinstance(w, QLineEdit):
            w.setText(text)

    def _on_sno_edited(self):
        ed = self.sender()
        if not isinstance(ed, QLineEdit) or self._mode == "browse":
            return
        i = self._row_of(ed)
        if i < 0 or i != self.table.rowCount() - 1:
            return
        if ed.text().strip():             # VB6 :2001 append when Sn. filled
            self._append_row()

    def _on_value_edited(self):
        ed = self.sender()
        if isinstance(ed, QLineEdit):
            ed.setText(_fmt2(ed.text()))  # VB6 Format(Val(x), "0.00")

    def _on_formula_edited(self):
        ed = self.sender()
        if not isinstance(ed, QLineEdit):
            return
        i = self._row_of(ed)
        if i < 0:
            return
        prior = [self._rows[k].get("sno") for k in range(i)]
        err = ops.check_formula(ed.text(), prior)
        if err:
            _msg(self, err, "")
            ed.setFocus()

    # ── row delete (VB6 FGrid event D) ───────────────────────────────
    def eventFilter(self, obj, ev):
        if obj is self.table and ev.type() == QEvent.Type.KeyPress:
            ctrl = ev.modifiers() & Qt.KeyboardModifier.ControlModifier
            if ev.key() == Qt.Key.Key_Delete or (
                    ev.key() == Qt.Key.Key_D and ctrl):
                self._delete_grid_row()
                return True
        return super().eventFilter(obj, ev)

    def _delete_grid_row(self):
        if self._mode != "add":           # VB6: Browse/Edit -> Exit Sub
            return
        r = self.table.currentRow()
        if r < 0:
            _msg(self, "No Entries To Delete", "Delete Module", critical=True)
            return
        if _msg(self, "Are You Sure To Delete?", "Delete Entry !",
                question=True) != QMessageBox.StandardButton.Yes:
            return
        if self.table.rowCount() > 2:
            self.table.removeRow(r)
            if r < len(self._rows):
                del self._rows[r]
        else:
            self._set_grid_rows([ops.blank_row()])

    # ── header / template ────────────────────────────────────────────
    def _on_outlet_changed(self, *_):
        if self._mode != "add":
            return
        code = self.cbo_outlet.currentData()
        if not code:
            return
        try:
            rows = ops.load_fix_template() or [ops.blank_row()]
        except Exception as e:
            _msg(self, str(e), "", critical=True)
            return
        for r in rows:                    # VB6 Proc_82_55 col16 = "Manual"
            r["autom"] = r.get("autom") or "M"
        self._set_grid_rows(rows)
        self.statusBar().showMessage(f"Outlet {code} — SundryTypeFix template "
                                     f"{len(rows)} rows.")

    # ── toolbar actions ──────────────────────────────────────────────
    def _add(self):
        self._search_code = None
        self._loaded_vtype = None
        self._loaded_date = None
        self.cbo_outlet.blockSignals(True)
        self.cbo_outlet.setCurrentIndex(0)
        self.cbo_outlet.blockSignals(False)
        self.date_app.setDate(QDate.currentDate())
        self.lbl_dept.setText("")
        self._set_grid_rows([ops.blank_row()])
        self._set_mode("add")
        self.statusBar().showMessage(
            "Add mode — Outlet chuno (template aayega), grid bharo, Save.")

    def _edit(self):
        if not self._search_code:
            self._add()                    # nothing loaded yet
            return
        self._set_mode("edit")
        self.statusBar().showMessage(
            "Edit mode — rows badlo, Save dabao (delete + re-insert).")

    def _search(self):
        try:
            items = ops.search_list()
        except Exception as e:
            _msg(self, str(e), "", critical=True)
            return
        if not items:
            _msg(self, "No Records To Search.", "Information")
            return
        labels = [f"{it['search_code']}  |  {it['description'] or '-'}  |  "
                  f"{it['sundry_name'] or '-'}" for it in items]
        pick, ok = QInputDialog.getItem(self, "Search", "Select entry:",
                                        labels, 0, False)
        if ok and pick in labels:
            self._load_group(items[labels.index(pick)]["search_code"])

    def _load_group(self, search_code):
        try:
            rows = ops.load_detail(search_code)
        except Exception as e:
            _msg(self, str(e), "", critical=True)
            return
        if not rows:
            _msg(self, "No Records To Search.", "Information")
            return
        v_type = rows[0]["v_type"]
        app_date = rows[0]["appdate"]
        self.lbl_dept.setText(rows[0]["department"])
        self.date_app.blockSignals(True)
        if app_date:
            self.date_app.setDate(QDate(app_date.year, app_date.month,
                                        app_date.day))
        self.date_app.blockSignals(False)
        self.cbo_outlet.blockSignals(True)
        idx = 0
        if not any(o["code"] == v_type for o in self._outlets):
            self.cbo_outlet.addItem(v_type, v_type)
        for j, o in enumerate(self._outlets):
            if o["code"] == v_type:
                idx = j + 1
                break
        self.cbo_outlet.setCurrentIndex(idx)
        self.cbo_outlet.blockSignals(False)
        self._set_grid_rows(rows)
        self._search_code = search_code
        self._loaded_vtype = v_type
        self._loaded_date = app_date
        self._set_mode("browse")
        self.statusBar().showMessage(
            f"{search_code} loaded — {len(rows)} rows.")

    def _cancel(self):
        if _msg(self, "Cancel ?", "Terminate Process",
                question=True) != QMessageBox.StandardButton.Yes:
            return
        if self._search_code:
            self._load_group(self._search_code)
        else:
            self._add_pending_browse()

    def _add_pending_browse(self):
        self.cbo_outlet.blockSignals(True)
        self.cbo_outlet.setCurrentIndex(0)
        self.cbo_outlet.blockSignals(False)
        self.date_app.setDate(QDate.currentDate())
        self.lbl_dept.setText("")
        self._set_grid_rows([])
        self._set_mode("browse")
        self.statusBar().showMessage("Cancelled.")

    # ── save / delete group ──────────────────────────────────────────
    def _collect(self) -> list[dict]:
        out = []
        for i in range(self.table.rowCount()):
            meta = dict(self._rows[i]) if i < len(self._rows) else ops.blank_row()
            def w(c):
                return self.table.cellWidget(i, c)
            sno = w(0).text() if isinstance(w(0), QLineEdit) else ""
            cb = w(1)
            code = cb.currentData() if isinstance(cb, QComboBox) else None
            name = cb.currentText() if isinstance(cb, QComboBox) else ""
            disp = w(2).text() if isinstance(w(2), QLineEdit) else ""
            form = w(3).text() if isinstance(w(3), QLineEdit) else ""
            pa = w(4).currentText() if isinstance(w(4), QComboBox) else ""
            val = w(5).text() if isinstance(w(5), QLineEdit) else ""
            roff = w(6).currentText() if isinstance(w(6), QComboBox) else ""
            lim = w(7).text() if isinstance(w(7), QLineEdit) else ""
            nature = w(8).text() if isinstance(w(8), QLineEdit) else ""
            sign = w(9).currentText() if isinstance(w(9), QComboBox) else ""
            bold = w(10).currentText() if isinstance(w(10), QComboBox) else ""
            rc = w(11)
            revcode = rc.currentData() if isinstance(rc, QComboBox) else None
            am = w(12).currentText() if isinstance(w(12), QComboBox) else ""
            out.append({
                "sno": _int(sno),
                "sundrycode": "" if code is None else str(code),
                "sundry_name": name if code else "",
                "dispname": disp,
                "calcformula": form,
                "peroramt": _raw_pa(pa),
                "svalue": _num(val),
                "roundoff": _raw_yn(roff),
                "limit": _num(lim),
                "nature": nature,
                "calcsign": (sign or "").strip(),
                "grp": _raw_yn(bold),
                "revcode": "" if revcode is None else str(revcode),
                "rev_name": "",
                "sysyn": meta.get("sysyn", ""),
                "autom": _raw_am(am),
                "appdate": meta.get("appdate"),
                "v_type": meta.get("v_type", ""),
                "department": meta.get("department", ""),
                "description": meta.get("description", ""),
            })
        return out

    def _save(self):
        if self._mode == "browse":
            return
        v_type = self.cbo_outlet.currentData() or ""
        app_date = self.date_app.date().toPython()
        rows = self._collect()
        new_key = ops.search_code_for(v_type, app_date)
        same_group = bool(self._search_code) and self._search_code == new_key
        try:
            if self._mode == "edit" and same_group:
                n = ops.update_group(
                    v_type, app_date, rows, user=self._user,
                    prev_v_type=self._loaded_vtype,
                    prev_app_date=self._loaded_date)
            else:
                if self._mode == "edit" and self._search_code:
                    if ops.count_group(v_type, app_date) > 0:
                        raise ops.Vb6Msg("Duplicate Entry", "Information")
                    n = ops.update_group(
                        v_type, app_date, rows, user=self._user,
                        prev_v_type=self._loaded_vtype,
                        prev_app_date=self._loaded_date)
                else:
                    n = ops.save_group(v_type, app_date, rows,
                                       user=self._user)
        except ops.Vb6Msg as e:
            _msg(self, e.text, e.title or "Information")
            return
        except Exception as e:
            _msg(self, str(e), "", critical=True)
            return
        self._reload_lookups()
        if self._mode == "edit":
            self._load_group(new_key)
            self.statusBar().showMessage(f"{n} rows updated.")
        else:
            self.statusBar().showMessage(f"{n} rows saved.")
            self._add()

    def _delete_group(self):
        if not self._search_code:
            _msg(self, "No Entries To Delete", "Delete Module", critical=True)
            return
        if _msg(self, "Are You Sure To Delete?", "Delete Entry !",
                question=True) != QMessageBox.StandardButton.Yes:
            return
        try:
            n = ops.delete_group(self._loaded_vtype, self._loaded_date)
        except Exception as e:
            _msg(self, str(e), "", critical=True)
            return
        self._reload_lookups()
        self._add_pending_browse()
        self.statusBar().showMessage(f"Group deleted ({n} rows).")


def open_voucher_sundry_entry(parent=None, user="SA"):
    """Open the Voucher Wise Sundry Entry window (VB6 VoucherSundrySetting)."""
    w = VoucherSundryEntryWindow(parent, user=user)
    w.show()
    return w


if __name__ == "__main__":
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    win = open_voucher_sundry_entry()
    sys.exit(app.exec())
