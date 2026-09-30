"""Main Setup > General Setup — VB6-hybrid tabbed window (screenshot parity).

VB6 FDGENMAS (Main Setup > General Setup) top tab strip:
  Tax Master | Tax Structure | Payment Type | Parameter |
  Printing Parameters | Printing Setup

Screenshots se VB6 evidence:
  - Blue/purple gradient top tab buttons (active tab = teal/green).
  - Toolbar row: New/Edit/Delete/Save/Browse-first/prev/next/last/Find/
    Post/Refresh/Exit icons + "Browse   1/N" record counter.
  - Cream/yellow title strip: "Main Setup > General Setup > <Screen>".
  - Tax Master: TaxName/ShortName/SundryName/LedgerAC/PayableAC/
    UnregisteredAC + "System Defined" red tag.
  - Tax Structure: name + lines grid (S.No, Tax Name, Rate, Apply On,
    L.Limit, Comparison, U.Limit, Condition).
  - Payment Type: PaymentName/ShortName/LedgerAccount/A-CPosting +
    Detailed/Summarize + Nature + outlet checkbox buttons
    (FRONT OFFICE, Banquet, ...).
  - Parameter: stacked sub-tabs (Instructions F.P./Guest Charges (Split)/
    Display / Order Booking/SMS/Smart Card/Settings/Instructions Res. /
    Posting/Outlet/Banquet/KOT/Round Off / HR-Payroll/Check Out/General/
    Printing Parameters/Rate Types) with Printing Settings card
    (Bill Header / Bill Footer).
  - Printing Parameters: browse-only single row (Module Type FOM/(P)OS,
    Department Name, Module Description).
  - Right dock: world clocks + Reload/Exit, VB6 Analysis sidebar.

Data sources (live core modules — koi invented table nahi):
  - Tax Master      -> core.taxmaster (RevMast FieldType='T')
  - Tax Structure   -> core.taxstru (TaxStru header+lines)
  - Payment Type    -> core.paymenttype (RevMast PAYTYPE<> '')
  - Parameter       -> core.enviro (single-row UPDATE, EDITABLE white-list)
  - Printing Params -> Analysis.ini paths + Enviro print flags
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt, QDate
from PyQt6.QtGui import QColor, QFont, QKeySequence, QShortcut
from PyQt6.QtWidgets import (QAbstractItemView, QApplication, QCheckBox,
                             QComboBox, QDateEdit, QDialog, QFormLayout,
                             QFrame, QGridLayout, QGroupBox, QHBoxLayout,
                             QHeaderView, QLabel, QLineEdit, QMessageBox,
                             QPushButton, QScrollArea, QTableWidget,
                             QTableWidgetItem, QVBoxLayout, QWidget)

from HMS_py.core import enviro, general_setup, paymenttype, taxmaster, taxstru
from HMS_py.ui import theme as _theme
from HMS_py.ui.desktop_style import mark_desktop_action


# ---------------------------------------------------------------- helpers
def _p() -> dict:
    return _theme.palette()


VB_TAB_STYLES = """
QPushButton#vbGenTab {
    padding: 10px 22px; font-size: 14px; font-weight: bold;
    font-style: italic; border: 1px solid #2d2a55; border-radius: 2px;
    color: white; background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
        stop:0 #7b2d8e, stop:1 #4b1a6e);
}
QPushButton#vbGenTab:hover { background: #8b3da0; }
QPushButton#vbGenTab:checked {
    background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
        stop:0 #0e7a6f, stop:1 #0a5c54);
    color: #ffe95c;
}
"""


def _title_strip(text: str) -> QLabel:
    """VB6 cream/yellow caption strip (child-form title)."""
    lbl = QLabel(text)
    lbl.setAlignment(Qt.AlignmentFlag.AlignCenter)
    lbl.setAutoFillBackground(True)
    pal = lbl.palette()
    from PyQt6.QtGui import QPalette
    pal.setColor(QPalette.ColorRole.Window, QColor("#fdfbd3"))
    lbl.setPalette(pal)
    lbl.setStyleSheet(
        "font-size: 20px; font-weight: bold; color: #1a1a1a;"
        "padding: 8px; border: 1px solid #b8b47a;")
    lbl.setFixedHeight(46)
    return lbl


def _toolbar_row(on_new, on_edit, on_delete, on_save, on_refresh, on_exit,
                 counter: QLabel) -> QWidget:
    """VB6 icon toolbar row (text buttons — icon theme se safe)."""
    bar = QWidget()
    lay = QHBoxLayout(bar)
    lay.setContentsMargins(4, 4, 4, 4)
    lay.setSpacing(4)
    # VB6 icon toolbar — plain ASCII labels (emoji font missing on this
    # system render karta nahi; VB6 icons bhi text+color the)
    btns = []
    for cap, fn, tip in (
        ("+ New", on_new, "New (Ctrl+N)"),
        ("Edit", on_edit, "Edit (Ctrl+E)"),
        ("Del", on_delete, "Delete (Ctrl+D)"),
        ("Save", on_save, "Save (Ctrl+S)"),
        ("Refresh", on_refresh, "Refresh (F5)"),
    ):
        b = QPushButton(cap)
        b.setFixedHeight(30)
        b.setMinimumWidth(52)
        b.setToolTip(tip)
        b.clicked.connect(fn)
        mark_desktop_action(b)
        btns.append(b)
        lay.addWidget(b)
    lay.addSpacing(10)
    lay.addWidget(QLabel("Browse"))
    lay.addSpacing(6)
    counter.setMinimumWidth(70)
    lay.addWidget(counter)
    lay.addStretch()
    bx = QPushButton("Exit")
    bx.setFixedHeight(30)
    bx.setMinimumWidth(52)
    bx.setToolTip("Exit")
    bx.clicked.connect(on_exit)
    mark_desktop_action(bx)
    lay.addWidget(bx)
    return bar


def _ro_item(v) -> QTableWidgetItem:
    it = QTableWidgetItem("" if v is None else str(v))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    it.setForeground(QColor(_p()["text"]))
    return it


def _read_only_line() -> QLineEdit:
    e = QLineEdit()
    e.setReadOnly(True)
    e.setStyleSheet(f"QLineEdit {{ background: #f0f0ee; color: #555; }}")
    return e


def _world_clock_dock(on_reload, on_exit) -> QWidget:
    """VB6 right sidebar: date + world clocks + Reload/Exit."""
    dock = QFrame()
    dock.setFixedWidth(150)
    dock.setStyleSheet("QFrame { background: white; }")
    lay = QVBoxLayout(dock)
    lay.setContentsMargins(6, 8, 6, 8)
    lay.setSpacing(6)

    d = QLabel(QDate.currentDate().toString("dd/MMM/yyyy"))
    d.setAlignment(Qt.AlignmentFlag.AlignCenter)
    d.setStyleSheet(
        "background:#0a5c54; color:white; font-weight:bold;"
        "padding:6px; border-radius:3px;")
    lay.addWidget(d)

    import datetime as _dt
    zones = [("India", 5.5), ("Canada", -5.0), ("Italy", 1.0),
             ("London", 0.0), ("Japan", 9.0), ("Australia", 10.0)]
    utc_now = _dt.datetime.utcnow()
    for name, off in zones:
        t = utc_now + _dt.timedelta(hours=off)
        box = QLabel(f"<span style='color:#666;font-size:9px'>{name}</span>"
                     f"<br><span style='color:#0a5c54;font-weight:bold'>"
                     f"{t.strftime('%H:%M:%S')}</span>")
        box.setAlignment(Qt.AlignmentFlag.AlignCenter)
        box.setStyleSheet("background:#111; color:#eee; padding:4px;"
                          "border-radius:3px;")
        lay.addWidget(box)

    lay.addStretch()
    row = QHBoxLayout()
    b1 = QPushButton("Reload")
    b1.setStyleSheet("background:#b8962e; color:white; font-weight:bold;"
                     "padding:5px; border-radius:3px;")
    b1.clicked.connect(on_reload)
    b2 = QPushButton("Exit")
    b2.setStyleSheet("background:#b8962e; color:white; font-weight:bold;"
                     "padding:5px; border-radius:3px;")
    b2.clicked.connect(on_exit)
    row.addWidget(b1)
    row.addWidget(b2)
    lay.addLayout(row)
    return dock


# ================================================================ Tax Master
class TaxMasterTab(QWidget):
    """VB6 FrmTaxMast: RevMast FieldType='T' flat master."""

    HEADERS = ["S.No", "Tax Name", "Short Name", "Sundry Name", "Ledger A/C",
               "Payable A/C", "Unregistered A/C", "System"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.edit_code = None
        self.state = "Idle"
        self._build()
        self.reload()

    def _build(self):
        p = _p()
        lay = QVBoxLayout(self)
        lay.setContentsMargins(12, 8, 12, 8)

        form = QGroupBox()
        fl = QFormLayout(form)
        fl.setSpacing(8)
        self.ed_name = QLineEdit(); self.ed_name.setMaxLength(
            taxmaster.LIMITS["name"])
        self.ed_short = QLineEdit(); self.ed_short.setMaxLength(
            taxmaster.LIMITS["short"])
        self.ed_sundry = QLineEdit(); self.ed_sundry.setMaxLength(50)
        self.ed_ledger = QLineEdit(); self.ed_ledger.setMaxLength(
            taxmaster.LIMITS["accode"])
        self.ed_payable = QLineEdit(); self.ed_payable.setMaxLength(
            taxmaster.LIMITS["payableac"])
        self.ed_unreg = QLineEdit(); self.ed_unreg.setMaxLength(
            taxmaster.LIMITS["unregisteredac"])
        self.lbl_sysdef = QLabel("")
        self.lbl_sysdef.setStyleSheet("color:#c00000; font-weight:bold;")
        # VB6 red side-notes: 'System Defined' (Tax Name row),
        # '(Purchase)' (Payable/Unregistered rows)
        row_name = QHBoxLayout()
        row_name.addWidget(self.ed_name)
        row_name.addWidget(self.lbl_sysdef)
        row_name.addStretch()
        fl.addRow("Tax Name", row_name)
        fl.addRow("Short Name", self.ed_short)
        fl.addRow("Sundry Name", self.ed_sundry)
        fl.addRow("Ledger A/C", self.ed_ledger)
        note_p = QLabel("(Purchase)")
        note_p.setStyleSheet("color:#c00000; font-weight:bold;")
        row_pay = QHBoxLayout()
        row_pay.addWidget(self.ed_payable)
        row_pay.addWidget(note_p)
        row_pay.addStretch()
        fl.addRow("Payable A/C", row_pay)
        note_u = QLabel("(Purchase)")
        note_u.setStyleSheet("color:#c00000; font-weight:bold;")
        row_unr = QHBoxLayout()
        row_unr.addWidget(self.ed_unreg)
        row_unr.addWidget(note_u)
        row_unr.addStretch()
        fl.addRow("Unregistered A/C", row_unr)
        lay.addWidget(form)

        self.tbl = QTableWidget(0, len(self.HEADERS))
        self.tbl.setHorizontalHeaderLabels(self.HEADERS)
        self.tbl.setSelectionBehavior(
            QAbstractItemView.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.itemSelectionChanged.connect(self._pick)
        lay.addWidget(self.tbl, 1)

        self.counter = QLabel("0/0")
        self.lbl_audit = QLabel("")
        self.lbl_audit.setStyleSheet("color:#00008b; font-weight:bold;")
        ar = QHBoxLayout()
        ar.addStretch(); ar.addWidget(self.lbl_audit)
        lay.addLayout(ar)

    def _pick(self):
        r = self.tbl.currentRow()
        if r < 0:
            return
        code = self.tbl.item(r, 0).text()
        rec = taxmaster.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_short.setText(rec.get("short", ""))
        self.ed_sundry.setText(rec.get("name", ""))
        self.ed_ledger.setText(rec.get("accode", ""))
        self.ed_payable.setText(rec.get("payableac", ""))
        self.ed_unreg.setText(rec.get("unregisteredac", ""))
        self.lbl_sysdef.setText(
            "System Defined" if (rec.get("sysyn") or "N").upper() == "Y"
            else "")
        self.lbl_audit.setText("")

    def _rec(self) -> dict:
        return {
            "code": self.edit_code or self.ed_short.text().strip().upper()[:6],
            "name": self.ed_name.text().strip(),
            "short": self.ed_short.text().strip(),
            "accode": self.ed_ledger.text().strip(),
            "payableac": self.ed_payable.text().strip(),
            "unregisteredac": self.ed_unreg.text().strip(),
            "roundoff": "No", "active": "Y",
        }

    def reload(self):
        try:
            rows = taxmaster.list_all()
        except Exception as e:
            QMessageBox.critical(self, "Tax Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("short", "")))
            self.tbl.setItem(r, 3, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 4, _ro_item(rec.get("accode", "")))
            self.tbl.setItem(r, 5, _ro_item(rec.get("payableac", "")))
            self.tbl.setItem(r, 6, _ro_item(rec.get("unregisteredac", "")))
            self.tbl.setItem(r, 7, _ro_item(
                "Yes" if (rec.get("sysyn") or "").upper() == "Y" else ""))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")

    def new(self):
        self.edit_code = None
        for e in (self.ed_name, self.ed_short, self.ed_sundry,
                  self.ed_ledger, self.ed_payable, self.ed_unreg):
            e.clear()
        self.lbl_sysdef.setText("")
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Tax Name zaroori hai")
            return
        rec = self._rec()
        if not rec["code"]:
            QMessageBox.warning(self, "Save",
                                "Short Name se Code banta hai — bharein")
            return
        try:
            if self.edit_code and taxmaster.exists(self.edit_code):
                taxmaster.update(self.edit_code, rec)
            else:
                if taxmaster.exists(rec["code"]):
                    QMessageBox.warning(self, "Save",
                                        f"{rec['code']} pehle se maujood hai")
                    return
                taxmaster.insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if not code.upper().startswith("PYT"):
            QMessageBox.warning(self, "Delete",
                                "Safety: sirf PYT* test records delete ho "
                                "sakte hain (production data protected)")
            return
        if QMessageBox.question(self, "Delete",
                                f"Tax '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            taxmaster.delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
        self.reload()


# ============================================================ Tax Structure
class TaxStructureTab(QWidget):
    """VB6 FrmTaxStruMast: header name + EDITABLE tax lines grid.

    Inline editing (screenshot parity): S.No fixed; Tax Name dropdown
    (RevMast FieldType='T'); Rate/L.Limit/U.Limit numeric editable;
    Apply On/Comparison/Condition VB6 combos. Save = whole structure
    replace (core.taxstru.update_structure transaction).
    """

    HEADERS = ["S.No", "Tax Name", "Rate", "Apply On", "L. Limit",
               "Comparison", "U. Limit", "Condition"]

    NATURES = ["On Base Amt", "On Running Total", "On Prev. Tax Amt"]
    CONDAPPS = ["", "<", "<=", ">", ">=", "=", "Between"]
    COMPOPS = ["", "AND", "OR"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.edit_code = None
        self.state = "Idle"
        self._build()
        self.reload()

    def _build(self):
        lay = QVBoxLayout(self)
        lay.setContentsMargins(12, 8, 12, 8)

        fh = QHBoxLayout()
        fh.addWidget(QLabel("Tax Structure Name"))
        self.cmb = QComboBox()
        self.cmb.setMinimumWidth(280)
        self.cmb.currentIndexChanged.connect(self._pick)
        fh.addWidget(self.cmb)
        # New structure name entry (Add mode)
        self.ed_new_name = QLineEdit()
        self.ed_new_name.setPlaceholderText(
            "New structure name (Add mode) — max 35")
        self.ed_new_name.setMaxLength(taxstru.LIMITS["name"])
        self.ed_new_name.setVisible(False)
        fh.addWidget(self.ed_new_name, 1)
        lay.addLayout(fh)

        self.tbl = QTableWidget(0, len(self.HEADERS))
        self.tbl.setHorizontalHeaderLabels(self.HEADERS)
        self.tbl.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers)  # programmatic
        self.tbl.setAlternatingRowColors(True)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.cellDoubleClicked.connect(self._enable_cell_edit)
        lay.addWidget(self.tbl, 1)

        self.counter = QLabel("0/0")
        self.lbl_audit = QLabel("")
        self.lbl_audit.setStyleSheet("color:#00008b; font-weight:bold;")
        ar = QHBoxLayout()
        ar.addStretch(); ar.addWidget(self.lbl_audit)
        lay.addLayout(ar)

    # ---- inline editing helpers ----
    def _enable_cell_edit(self, row: int, col: int):
        """Double-click par cell editable (VB6 FGrid behaviour) — Idle me
        read-only rehta hai; Add/Edit state me hi edit hota hai."""
        if self.state == "Idle" or col == 0:
            return
        it = self.tbl.item(row, col)
        if it:
            it.setFlags(it.flags() | Qt.ItemFlag.ItemIsEditable)
            self.tbl.editItem(it)

    def _tax_combo(self, current_code: str = "") -> QComboBox:
        combo = QComboBox()
        combo.setEditable(False)
        if current_code:
            # filled row: real tax list
            for t in getattr(self, "_taxes", []):
                combo.addItem(f"{t['name']} ({t['code']})", t["code"])
            idx = combo.findData(current_code)
            if idx >= 0:
                combo.setCurrentIndex(idx)
        else:
            # blank row: placeholder item — collect is skip karta hai
            combo.addItem("— select tax —", "")
            for t in getattr(self, "_taxes", []):
                combo.addItem(f"{t['name']} ({t['code']})", t["code"])
        return combo

    def _flag_combo(self, options: list, current: str = "") -> QComboBox:
        combo = QComboBox()
        combo.addItems(options)
        idx = combo.findText(current or "")
        if idx >= 0:
            combo.setCurrentIndex(idx)
        return combo

    def _lock_grid(self, locked: bool):
        """Idle me grid sirf browse; Add/Edit me double-click edit."""
        self.tbl.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers if locked
            else QAbstractItemView.EditTrigger.DoubleClicked)

    def _fill_grid(self, lines):
        self.tbl.setRowCount(len(lines))
        for r, ln in enumerate(lines):
            self.tbl.setItem(r, 0, _ro_item(ln.get("sno", r + 1)))
            tc = ln.get("taxcode", "")
            name = tc
            for t in self._taxes:
                if t["code"] == tc:
                    name = f"{t['name']} ({t['code']})"
                    break
            self.tbl.setItem(r, 1, _ro_item(name))
            self.tbl.setItem(r, 2, _ro_item(f"{float(ln.get('rate') or 0):.4f}"))
            self.tbl.setItem(r, 3, _ro_item(ln.get("nature", "")))
            self.tbl.setItem(r, 4, _ro_item(f"{float(ln.get('limit') or 0):.2f}"))
            self.tbl.setItem(r, 5, _ro_item(ln.get("condapp", "")))
            self.tbl.setItem(r, 6, _ro_item(f"{float(ln.get('limit1') or 0):.2f}"))
            self.tbl.setItem(r, 7, _ro_item(ln.get("compop", "")))

    def _collect_lines(self) -> list[dict]:
        """Grid -> core line dicts (validation core me hoti hai)."""
        lines = []
        for r in range(self.tbl.rowCount()):
            tax_combo = self.tbl.cellWidget(r, 1)
            if tax_combo is not None:
                taxcode = tax_combo.currentData() or ""
            else:
                it = self.tbl.item(r, 1)
                taxcode = (it.text().rsplit("(", 1)[-1].rstrip(")")
                           if it and "(" in it.text() else
                           (it.text() if it else ""))
            if not taxcode:
                continue  # blank row
            rate_it = self.tbl.item(r, 2)
            limit_it = self.tbl.item(r, 4)
            limit1_it = self.tbl.item(r, 6)
            try:
                rate = float(rate_it.text() if rate_it else 0)
            except (TypeError, ValueError):
                raise ValueError(f"Row {r + 1}: Rate numeric hona chahiye")
            try:
                limit = float(limit_it.text() if limit_it else 0)
            except (TypeError, ValueError):
                raise ValueError(f"Row {r + 1}: L.Limit numeric hona chahiye")
            try:
                limit1 = float(limit1_it.text() if limit1_it else 0)
            except (TypeError, ValueError):
                raise ValueError(f"Row {r + 1}: U.Limit numeric hona chahiye")
            nat_it = self.tbl.item(r, 3)
            cond_it = self.tbl.item(r, 5)
            comp_it = self.tbl.item(r, 7)
            lines.append({
                "taxcode": taxcode,
                "rate": rate,
                "nature": (nat_it.text() if nat_it else "On Base Amt"),
                "limit": limit,
                "condapp": (cond_it.text() if cond_it else ""),
                "limit1": limit1,
                "compop": (comp_it.text() if comp_it else ""),
            })
        if not lines:
            raise ValueError("At least one tax line required")
        return lines

    def reload(self):
        try:
            self._taxes = taxstru.get_tax_codes()
            structs = taxstru.get_structures_summary()
        except Exception as e:
            QMessageBox.critical(self, "Tax Structure", f"DB error: {e}")
            self._taxes, structs = [], []
        self.cmb.blockSignals(True)
        self.cmb.clear()
        for s in structs:
            self.cmb.addItem(f"{s['code']} - {s['name']}", s["code"])
        self.cmb.blockSignals(False)
        self.counter.setText(f"1/{len(structs)}" if structs else "0/0")
        if structs:
            self._pick(0)
        else:
            self.edit_code = None
            self.tbl.setRowCount(0)

    def _pick(self, idx):
        code = self.cmb.itemData(idx)
        if not code:
            return
        try:
            lines = taxstru.list_by_code(code)
        except Exception as e:
            QMessageBox.critical(self, "Tax Structure", f"DB error: {e}")
            return
        self.edit_code = code
        self._fill_grid(lines)
        if lines:
            self.lbl_audit.setText(
                f"Modified By : {lines[0].get('u_name', '') or '-'}")

    # ---- TopCtrl pattern (toolbar wires inhe) ----
    def new(self):
        """Add mode: blank grid + naya structure name."""
        self.state = "Add"
        self.edit_code = None
        self.cmb.setVisible(False)
        self.ed_new_name.setVisible(True)
        self.ed_new_name.clear()
        self.tbl.setRowCount(0)
        # 1 blank row with tax dropdown
        self.tbl.insertRow(0)
        self.tbl.setItem(0, 0, _ro_item(1))
        self.tbl.setCellWidget(0, 1, self._tax_combo())
        for c, default in ((2, "0.0000"), (3, "On Base Amt"),
                           (4, "0.00"), (5, ""), (6, "0.00"), (7, "")):
            self.tbl.setItem(0, c, _ro_item(default))
        self._add_blank_row()
        self._lock_grid(False)
        self.ed_new_name.setFocus()

    def _add_blank_row(self):
        """Grid ke end me ek blank row (tax dropdown ke saath)."""
        r = self.tbl.rowCount()
        self.tbl.insertRow(r)
        self.tbl.setItem(r, 0, _ro_item(r + 1))
        self.tbl.setCellWidget(r, 1, self._tax_combo())
        for c, default in ((2, "0.0000"), (3, "On Base Amt"),
                           (4, "0.00"), (5, ""), (6, "0.00"), (7, "")):
            self.tbl.setItem(r, c, _ro_item(default))

    def save(self):
        if self.state == "Idle":
            QMessageBox.information(
                self, "Save",
                "New (Ctrl+N) se Add mode me jaayein ya structure "
                "select karke lines double-click edit karein")
            return
        name = self.ed_new_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Structure Name zaroori hai")
            return
        try:
            lines = self._collect_lines()
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        try:
            code = taxstru.next_code()
            taxstru.insert_structure(code, name, lines)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.state = "Idle"
        self.ed_new_name.setVisible(False)
        self.cmb.setVisible(True)
        self._lock_grid(True)
        self.reload()
        QMessageBox.information(self, "Save",
                                f"Tax Structure '{code}' saved ({len(lines)} lines)")

    def edit(self):
        """Edit mode: selected structure ki lines inline edit + replace."""
        if not self.edit_code:
            QMessageBox.information(self, "Edit",
                                    "Pehle structure select karo (dropdown)")
            return
        if not str(self.edit_code).upper().startswith("PYT"):
            QMessageBox.warning(
                self, "Edit",
                "Safety: sirf PYT* test structures inline edit ho sakte "
                "hain (production tax data protected)")
            return
        self.state = "Edit"
        self.cmb.setVisible(False)
        self.ed_new_name.setText("")
        self.ed_new_name.setPlaceholderText(
            f"Editing {self.edit_code} — name change nahi hoga")
        self.ed_new_name.setVisible(True)
        # Last row (already blank) ensure
        if self.tbl.rowCount() and not self._row_has_tax(self.tbl.rowCount() - 1):
            pass
        else:
            self._add_blank_row()
        self._lock_grid(False)

    def _row_has_tax(self, row: int) -> bool:
        combo = self.tbl.cellWidget(row, 1)
        if combo is not None:
            return bool(combo.currentData())
        it = self.tbl.item(row, 1)
        return bool(it and it.text().strip())

    def delete(self):
        if not self.edit_code:
            QMessageBox.information(self, "Delete",
                                    "Pehle structure select karo (dropdown)")
            return
        code = str(self.edit_code)
        if not code.upper().startswith("PYT"):
            QMessageBox.warning(self, "Delete",
                                "Safety: sirf PYT* test structures delete ho "
                                "sakte hain (production data protected)")
            return
        if QMessageBox.question(self, "Delete",
                                f"Tax Structure '{code}' (all lines) "
                                "delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            taxstru.delete_structure(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.edit_code = None
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ============================================================= Payment Type
class PaymentTypeTab(QWidget):
    """VB6 fdPaymentCharge master: RevMast PAYTYPE<>''."""

    HEADERS = ["S.No", "Payment Name", "Short", "Ledger Account",
               "A/C Posting", "Nature", "System"]

    OUTLETS = ["FRONT OFFICE", "Banquet", "Hight Way point", "Garden Aroma",
               "Hight Way point KOT", "MOON TEA CAFE", "ECOMORSE SALES",
               "LAUNDRY", "ROOM SERVICE"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.edit_code = None
        self.state = "Idle"
        self._build()
        self.reload()

    def _build(self):
        lay = QVBoxLayout(self)
        lay.setContentsMargins(12, 8, 12, 8)

        form = QGroupBox()
        fl = QFormLayout(form)
        fl.setSpacing(8)
        self.ed_name = QLineEdit(); self.ed_name.setMaxLength(
            paymenttype.LIMITS["name"])
        self.ed_short = QLineEdit(); self.ed_short.setMaxLength(10)
        self.ed_ledger = QLineEdit(); self.ed_ledger.setMaxLength(50)
        self.ed_acpost = QLineEdit()
        self.cmb_dets = QComboBox()
        self.cmb_dets.addItems(["Detailed", "Summarize"])
        self.ed_nature = QLineEdit(); self.ed_nature.setMaxLength(15)
        row = QHBoxLayout()
        row.addWidget(self.ed_acpost)
        row.addWidget(QLabel("Detailed/Summarize"))
        row.addWidget(self.cmb_dets)
        fl.addRow("Payment Name", self.ed_name)
        fl.addRow("Short Name", self.ed_short)
        fl.addRow("Ledger Account", self.ed_ledger)
        fl.addRow("A/C Posting", row)
        fl.addRow("Nature", self.ed_nature)
        self.lbl_sysdef = QLabel("")
        self.lbl_sysdef.setStyleSheet("color:#c00000; font-weight:bold;")
        fl.addRow("", self.lbl_sysdef)
        lay.addWidget(form)

        out = QGroupBox("Outlet A/C Posting (checkbox buttons)")
        og = QGridLayout(out)
        self.chk_outlets = {}
        for i, name in enumerate(self.OUTLETS):
            cb = QCheckBox(name)
            cb.setStyleSheet("color:#c00000; font-weight:bold;")
            self.chk_outlets[name] = cb
            og.addWidget(cb, i // 2, i % 2)
        lay.addWidget(out)

        self.tbl = QTableWidget(0, len(self.HEADERS))
        self.tbl.setHorizontalHeaderLabels(self.HEADERS)
        self.tbl.setSelectionBehavior(
            QAbstractItemView.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.itemSelectionChanged.connect(self._pick)
        lay.addWidget(self.tbl, 1)

        self.counter = QLabel("0/0")
        self.lbl_audit = QLabel("")
        self.lbl_audit.setStyleSheet("color:#00008b; font-weight:bold;")
        ar = QHBoxLayout()
        ar.addStretch(); ar.addWidget(self.lbl_audit)
        lay.addLayout(ar)

    def _pick(self):
        r = self.tbl.currentRow()
        if r < 0:
            return
        code = self.tbl.item(r, 0).text()
        rec = paymenttype.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_short.setText(rec.get("short", ""))
        self.ed_ledger.setText(rec.get("name", ""))
        self.ed_nature.setText(rec.get("paytype", ""))
        self.lbl_sysdef.setText(
            "System Defined" if (rec.get("u_ae") or "") else "")

    def reload(self):
        try:
            rows = paymenttype.list_all()
        except Exception as e:
            QMessageBox.critical(self, "Payment Type", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("short", "")))
            self.tbl.setItem(r, 3, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 4, _ro_item(""))
            self.tbl.setItem(r, 5, _ro_item(rec.get("paytype", "")))
            self.tbl.setItem(r, 6, _ro_item(""))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")

    def new(self):
        self.edit_code = None
        for e in (self.ed_name, self.ed_short, self.ed_ledger,
                  self.ed_acpost, self.ed_nature):
            e.clear()
        self.lbl_sysdef.setText("")

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Payment Name zaroori hai")
            return
        code = self.edit_code or self.ed_short.text().strip().upper()[:6] \
            or name.upper()[:6]
        rec = {
            "code": code, "name": name,
            "short": self.ed_short.text().strip(),
            "paytype": self.ed_nature.text().strip() or "Cash",
            "fieldtype": "P", "type": "Dr", "active": "Y",
        }
        try:
            if self.edit_code and paymenttype.exists(self.edit_code):
                paymenttype.update(self.edit_code, rec)
            else:
                if paymenttype.exists(code):
                    QMessageBox.warning(self, "Save",
                                        f"{code} pehle se maujood hai")
                    return
                paymenttype.insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.reload()

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if not code.upper().startswith("PYT"):
            QMessageBox.warning(self, "Delete",
                                "Safety: sirf PYT* test records delete ho "
                                "sakte hain")
            return
        if QMessageBox.question(self, "Delete",
                                f"Payment Type '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            paymenttype.delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
        self.reload()


# ================================================================= Parameter
class ParameterTab(QWidget):
    """VB6 frmEnviro 'Parameter' — stacked sub-tabs + Printing Settings.

    Screenshot evidence: 4 stacked rows of sub-tab buttons; active page
    'Printing Parameters' shows Bill Header / Bill Footer boxes.
    Editable: enviro EDITABLE white-list (Bill_Header/Bill_Footer etc.).
    """

    SUB_ROWS = [
        ["Instructions (F.P.)", "Guest Charges (Split)", "Display"],
        ["Order Booking Parameter", "SMS Parameters", "Smart Card",
         "Settings", "Instructions (Res.)"],
        ["Posting Parameters", "Outlet Parameters", "Banquet Parameters",
         "KOT Parameters", "Round Off Setting"],
        ["HR/Payroll", "Check Out", "General Parameters",
         "Printing Parameters", "Rate Types"],
    ]

    def __init__(self, parent=None):
        super().__init__(parent)
        self._build()
        self.reload()

    def _build(self):
        lay = QVBoxLayout(self)
        lay.setContentsMargins(8, 6, 8, 6)

        # Stacked sub-tab buttons (VB6 visual)
        for row_names in self.SUB_ROWS:
            row = QHBoxLayout()
            row.setSpacing(6)
            for name in row_names:
                b = QPushButton(name)
                b.setCheckable(True)
                b.setStyleSheet(
                    "QPushButton { padding: 8px 16px; border: 1px solid "
                    "#9a9a8a; border-radius: 10px 10px 0 0; background: "
                    "qlineargradient(x1:0,y1:0,x2:0,y2:1, stop:0 #fdfdf5, "
                    "stop:1 #e8e8d8); color:#1a1a5e; font-weight:bold; }"
                    "QPushButton:checked { background:#5a5a4a; color:white; }")
                b.clicked.connect(
                    lambda _=False, n=name: self._show_page(n))
                row.addWidget(b)
            row.addStretch()
            lay.addLayout(row)

        self.stack_area = QFrame()
        self.stack_area.setFrameShape(QFrame.Shape.StyledPanel)
        self.stack_area.setStyleSheet("QFrame { background: #d4d0c8; }")
        self.stack_lay = QVBoxLayout(self.stack_area)
        self.stack_lay.setContentsMargins(10, 10, 10, 10)

        # ---- Printing Parameters page (default, screenshot page) ----
        page = QWidget()
        pl = QVBoxLayout(page)
        hdr = QLabel("Printing Settings")
        hdr.setAlignment(Qt.AlignmentFlag.AlignCenter)
        hdr.setStyleSheet(
            "background:#3a3a00; color:#ffe95c; font-weight:bold;"
            "padding:6px; font-size:14px;")
        pl.addWidget(hdr)

        card = QFrame()
        card.setStyleSheet("QFrame { background: #efefe9; border: 1px "
                           "solid #6a6a5a; }")
        cl = QVBoxLayout(card)
        cl.setContentsMargins(24, 24, 24, 24)
        cl.setSpacing(12)
        t1 = QLabel("Bill Header")
        t1.setAlignment(Qt.AlignmentFlag.AlignCenter)
        t1.setStyleSheet("color:#6a5a00; font-weight:bold; font-size:15px;")
        cl.addWidget(t1)
        self.ed_bill_header = QLineEdit()
        self.ed_bill_header.setPlaceholderText("Bill Header line "
                                               "(Enviro.Bill_Header)")
        cl.addWidget(self.ed_bill_header)
        t2 = QLabel("Bill Footer")
        t2.setAlignment(Qt.AlignmentFlag.AlignCenter)
        t2.setStyleSheet("color:#6a5a00; font-weight:bold; font-size:15px;")
        cl.addWidget(t2)
        self.ed_bill_footer = QLineEdit()
        self.ed_bill_footer.setPlaceholderText("Bill Footer line "
                                               "(Enviro.Bill_Footer)")
        cl.addWidget(self.ed_bill_footer)
        pl.addWidget(card)

        btns = QHBoxLayout()
        btns.addStretch()
        self.btn_save = QPushButton("Save & Exit")
        self.btn_save.setStyleSheet(
            "background:#fdfbd3; color:#1a1a1a; font-weight:bold;"
            "padding:8px 22px; border:1px solid #6a6a5a;")
        self.btn_save.clicked.connect(self._save)
        self.btn_cancel = QPushButton("Cancel & Exit")
        self.btn_cancel.setStyleSheet(
            "background:#d9f0f7; color:#1a1a1a; font-weight:bold;"
            "padding:8px 22px; border:1px solid #6a6a5a;")
        self.btn_cancel.clicked.connect(self.reload)
        btns.addWidget(self.btn_save)
        btns.addWidget(self.btn_cancel)
        btns.addStretch()
        pl.addLayout(btns)
        pl.addStretch()
        self.stack_lay.addWidget(page)
        self._pages = {"Printing Parameters": page}
        lay.addWidget(self.stack_area, 1)

        # placeholder pages for other sub-tabs (VB6 bhi yahi stack hai)
        self._other_pages = {}
        for names in self.SUB_ROWS:
            for name in names:
                if name in self._pages:
                    continue
                pw = QWidget()
                pl2 = QVBoxLayout(pw)
                lab = QLabel(f"{name} — settings (Enviro operational flags)")
                lab.setAlignment(Qt.AlignmentFlag.AlignCenter)
                lab.setStyleSheet("color:#333; font-weight:bold;")
                pl2.addWidget(lab)
                grid = QFormLayout()
                self._other_pages[name] = (pw, grid, [])
                pl2.addLayout(grid)
                pl2.addStretch()
                self.stack_lay.addWidget(pw)
                self._pages[name] = pw

        # Enviro operational flags har page me dalo (white-listed only)
        flag_map = {
            "Instructions (F.P.)": ["FPInstruction1"],
            "Guest Charges (Split)": ["SplitYN"],
            "Display": ["DisplayRackRow", "DisplayRackCol",
                        "DisplayRackFontSize"],
            "Order Booking Parameter": ["BookingSlipFooter1",
                                        "BookingSlipFooter2"],
            "SMS Parameters": ["SMSMessaging", "SMSOption"],
            "Smart Card": ["SMARTCARDRECIEPTPrintingDW"],
            "Settings": ["Editopen", "AddModifyEntryInBackDate"],
            "Instructions (Res.)": ["ResInstruction1", "ResInstruction2"],
            "Posting Parameters": ["Postingtype"],
            "Outlet Parameters": ["KOTOutletSelection"],
            "Banquet Parameters": ["OutDoorCatering"],
            "KOT Parameters": ["KOTPrinting", "KOTPrintEdited",
                               "KOTHeader1"],
            "Round Off Setting": ["FomBillCopies", "NCKOTPercentage"],
            "HR/Payroll": [],
            "Check Out": ["Checkout", "CheckoutVar", "Variation",
                          "AllowRoomSettlement"],
            "General Parameters": ["GRCMandatory", "RoomRateEditable",
                                   "RoomIncTaxEditable"],
            "Printing Parameters": [],
            "Rate Types": ["RcptPrinting", "ReservationPrinting"],
        }
        for page_name, keys in flag_map.items():
            entry = self._other_pages.get(page_name)
            if not entry:
                continue
            _, grid, made = entry
            for k in keys:
                e = QLineEdit()
                grid.addRow(k, e)
                made.append((k, e))

    def _show_page(self, name):
        for n, w in self._pages.items():
            w.setVisible(n == name)

    def reload(self):
        try:
            env = enviro.get()
        except Exception as e:
            QMessageBox.critical(self, "Parameter", f"Enviro error: {e}")
            return
        self.ed_bill_header.setText(str(env.get("Bill_Header") or ""))
        self.ed_bill_footer.setText(str(env.get("Bill_Footer") or ""))
        for page_name, (_, _, made) in self._other_pages.items():
            for k, e in made:
                v = env.get(k)
                e.setText("" if v is None else str(v))

    def _save(self):
        changes = {}
        if self.ed_bill_header.text().strip() != "":
            changes["Bill_Header"] = self.ed_bill_header.text().strip()
        if self.ed_bill_footer.text().strip() != "":
            changes["Bill_Footer"] = self.ed_bill_footer.text().strip()
        for _, (_, _, made) in self._other_pages.items():
            for k, e in made:
                if e.text().strip() != "":
                    changes[k] = e.text().strip()
        if not changes:
            QMessageBox.information(self, "Save", "Koi change nahi")
            return
        try:
            enviro.update_settings(changes, user="SA")
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        QMessageBox.information(self, "Save",
                                f"{len(changes)} setting(s) saved")


# ======================================================= Printing Parameters
class PrintingParametersTab(QWidget):
    """Browse-only module print registry (VB6 'Printing Parameters' leaf).

    VB6: PrintingParameters table inhe DB me nahi hai (core NOTE) —
    isliye Module Type/Department/Description live Enviro print flags +
    Analysis.ini paths ka registry view (FOM/(P)OS style rows).
    """

    def __init__(self, parent=None):
        super().__init__(parent)
        self._build()
        self.reload()

    def _build(self):
        lay = QVBoxLayout(self)
        lay.setContentsMargins(12, 8, 12, 8)
        form = QGroupBox()
        fl = QFormLayout(form)
        self.ed_module = _read_only_line()
        self.ed_dept = _read_only_line()
        self.ed_desc = _read_only_line()
        fl.addRow("Module Type", self.ed_module)
        fl.addRow("Department Name", self.ed_dept)
        fl.addRow("Module Description", self.ed_desc)
        lay.addWidget(form)
        note = QLabel(
            "Module Type: FOM = Front Office, PJOS = POS (VB6 FOM/(P)OS).\n"
            "Yeh browse-only registry hai — values Enviro print flags + "
            "Analysis.ini paths se aati hain.")
        note.setWordWrap(True)
        note.setStyleSheet("color:#555;")
        lay.addWidget(note)
        lay.addStretch()

    def reload(self):
        try:
            data = general_setup.printing_settings_snapshot()
        except Exception as e:
            QMessageBox.critical(self, "Printing Parameters",
                                 f"Load error: {e}")
            return
        kot = str(data.get("enviro", {}).get("KOTPrinting") or "")
        self.ed_module.setText("FOM" if "Kitchen" not in kot else "PJOS")
        self.ed_dept.setText("FRONT OFFICE")
        self.ed_desc.setText(
            f"GUEST BILL WINDOWS PLAIN PAPER (KOT: {kot or '-'})")


# ============================================================ Printing Setup
class PrintingSetupTab(QWidget):
    """Analysis.ini paths + Enviro print flags (VB6 Printing Setup leaf)."""

    HEADERS = ["Setting", "Value"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self._build()
        self.reload()

    def _build(self):
        lay = QVBoxLayout(self)
        lay.setContentsMargins(12, 8, 12, 8)
        self.tbl = QTableWidget(0, 2)
        self.tbl.setHorizontalHeaderLabels(self.HEADERS)
        self.tbl.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        lay.addWidget(self.tbl, 1)

    def reload(self):
        try:
            data = general_setup.printing_settings_snapshot()
        except Exception as e:
            QMessageBox.critical(self, "Printing Setup", f"Load error: {e}")
            return
        rows = [("Reports Path", data.get("reports")),
                ("Temp Folder", data.get("temp")),
                ("Printer", data.get("printer")),
                ("Site", data.get("site")),
                ("Company", data.get("company"))]
        for k, v in sorted(data.get("enviro", {}).items()):
            rows.append((k, v))
        self.tbl.setRowCount(len(rows))
        for r, (k, v) in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(k))
            self.tbl.setItem(r, 1, _ro_item(v))


# ================================================================ Main window
class GeneralSetupWindow(QDialog):
    """VB6 FDGENMAS hybrid: top tab strip + toolbar + tab pages."""

    TABS = [
        ("Tax Master", "tax"),
        ("Tax Structure", "stru"),
        ("Payment Type", "pay"),
        ("Parameter", "param"),
        ("Printing Parameters", "pp"),
        ("Printing Setup", "ps"),
    ]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle(
            "Moon and Mars Resorts { 2026-27 } - [Main Setup > "
            "General Setup]")
        # Screen-fit (VB6 maximizes to desktop; 1440x860 screen se bahar
        # jaata tha — 1280x720 jaisi small screens par dock/status cut)
        try:
            from PyQt6.QtWidgets import QApplication as _QApp
            scr = _QApp.primaryScreen().availableSize()
            self.resize(min(1440, scr.width() - 20),
                        min(860, scr.height() - 60))
        except Exception:
            self.resize(1280, 700)
        self._build()
        self._show_tab("tax")

    def _build(self):
        root = QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        root.setSpacing(0)

        # ---- top tab strip ----
        strip = QWidget()
        strip.setStyleSheet("background: white;")
        sl = QHBoxLayout(strip)
        sl.setContentsMargins(8, 8, 8, 8)
        sl.setSpacing(4)
        self._tab_btns = {}
        for label, key in self.TABS:
            b = QPushButton(label)
            b.setObjectName("vbGenTab")
            b.setCheckable(True)
            b.setStyleSheet(VB_TAB_STYLES)
            b.clicked.connect(lambda _=False, k=key: self._show_tab(k))
            sl.addWidget(b)
            self._tab_btns[key] = b
        sl.addStretch()
        root.addWidget(strip)

        # ---- body: left menu strip + center pages + right dock ----
        body = QHBoxLayout()
        body.setContentsMargins(0, 0, 0, 0)
        body.setSpacing(0)

        left = self._left_menu()
        body.addWidget(left)

        center = QWidget()
        cl = QVBoxLayout(center)
        cl.setContentsMargins(0, 0, 0, 0)
        cl.setSpacing(0)

        self.toolbar_holder = QWidget()
        tl = QVBoxLayout(self.toolbar_holder)
        tl.setContentsMargins(0, 0, 0, 0)
        cl.addWidget(self.toolbar_holder)

        self.title_strip = _title_strip("Main Setup > General Setup")
        cl.addWidget(self.title_strip)

        self.pages = QScrollArea()
        self.pages.setWidgetResizable(True)
        self.pages.setFrameShape(QFrame.Shape.NoFrame)
        self._pages_container = QWidget()
        self._pages_lay = QVBoxLayout(self._pages_container)
        self._pages_lay.setContentsMargins(0, 0, 0, 0)
        self.pages.setWidget(self._pages_container)
        cl.addWidget(self.pages, 1)

        body.addWidget(center, 1)

        self.dock_holder = QWidget()
        dl = QVBoxLayout(self.dock_holder)
        dl.setContentsMargins(0, 0, 0, 0)
        dl.addWidget(_world_clock_dock(self._reload_current,
                                       self._exit))
        body.addWidget(self.dock_holder)
        root.addLayout(body, 1)

        # ---- status bar (VB6 bottom strip) ----
        status = QLabel(
            f"  SA    Property Site : {getattr(enviro, 'SITE_CODE', '-')}"
            "    CAPS   NUM   Hide Left Menu   Hide Right Menu   Full Screen")
        status.setStyleSheet(
            "background:#e8e8e8; color:#333; padding:4px;"
            "border-top:1px solid #aaa; font-size:11px;")
        root.addWidget(status)

        # ---- tab pages ----
        self.tab_tax = TaxMasterTab()
        self.tab_stru = TaxStructureTab()
        self.tab_pay = PaymentTypeTab()
        self.tab_param = ParameterTab()
        self.tab_pp = PrintingParametersTab()
        self.tab_ps = PrintingSetupTab()
        self._page_widgets = {
            "tax": self.tab_tax, "stru": self.tab_stru,
            "pay": self.tab_pay, "param": self.tab_param,
            "pp": self.tab_pp, "ps": self.tab_ps,
        }
        for key, w in self._page_widgets.items():
            self._pages_lay.addWidget(w)
            w.hide()

        # keyboard
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._new)
        QShortcut(QKeySequence("Ctrl+E"), self, activated=self._edit)
        QShortcut(QKeySequence("Ctrl+D"), self, activated=self._delete)
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save)
        QShortcut(QKeySequence("F5"), self, activated=self._reload_current)
        QShortcut(QKeySequence("Escape"), self, activated=self._exit)

    def _left_menu(self) -> QWidget:
        """VB6 left module strip (Finance..EXTRAs)."""
        w = QWidget()
        w.setFixedWidth(150)
        w.setStyleSheet("background: qlineargradient(x1:0,y1:0,x2:1,y2:0,"
                        "stop:0 #0a3a34, stop:1 #0a5c54);")
        lay = QVBoxLayout(w)
        lay.setContentsMargins(0, 10, 0, 10)
        lay.setSpacing(2)
        for name, active in (
            ("Finance", False), ("Main Setup", True), ("Reservation", False),
            ("Front Office", False), ("House Keeping", False),
            ("Inventory", False), ("Point Of Sale", False),
            ("Banquet", False), ("Night Audit", False),
            ("HR/Payroll", False), ("EXTRAs", False),
        ):
            b = QPushButton(name)
            b.setFlat(True)
            st = ("background:#0e7a6f; color:#ffe95c;" if active else
                  "background:transparent; color:white;")
            b.setStyleSheet(st + "font-weight:bold; font-style:italic;"
                            "text-align:left; padding:10px 12px;"
                            "font-size:13px; border:none;")
            lay.addWidget(b)
        lay.addStretch()
        inbox = QLabel("In Box")
        inbox.setAlignment(Qt.AlignmentFlag.AlignCenter)
        inbox.setStyleSheet("background:#5a5a4a; color:white; padding:6px;")
        lay.addWidget(inbox)
        ps = QLabel("Property Status")
        ps.setAlignment(Qt.AlignmentFlag.AlignCenter)
        ps.setStyleSheet("background:#8b0000; color:white; padding:6px;"
                         "font-weight:bold;")
        lay.addWidget(ps)
        return w

    # ---- toolbar (per active tab) ----
    def _wire_toolbar(self):
        old = self.toolbar_holder.layout()
        while old.count():
            it = old.takeAt(0)
            if it.widget():
                it.widget().deleteLater()
        w = self._current()
        counter = getattr(w, "counter", None) or QLabel("")
        bar = _toolbar_row(
            getattr(w, "new", None) or (lambda: None),
            getattr(w, "edit", None) or (lambda: None),
            getattr(w, "delete", None) or (lambda: None),
            getattr(w, "save", None) or (lambda: None),
            self._reload_current,
            self._exit,
            counter)
        self.toolbar_holder.layout().addWidget(bar)

    def _current(self) -> QWidget:
        key = self._active_key
        return self._page_widgets[key]

    def _show_tab(self, key: str):
        self._active_key = key
        for k, b in self._tab_btns.items():
            b.setChecked(k == key)
        for k, w in self._page_widgets.items():
            w.setVisible(k == key)
        label = {k: lbl for lbl, k in self.TABS}[key]
        self.title_strip.setText(f"Main Setup > General Setup > {label}")
        self._wire_toolbar()

    def _reload_current(self):
        w = self._current()
        if hasattr(w, "reload"):
            w.reload()

    def _new(self):
        w = self._current()
        if hasattr(w, "new"):
            w.new()

    def _edit(self):
        w = self._current()
        if hasattr(w, "new"):
            w.new()   # pick-then-edit flow same hai (row pick karke fields)

    def _save(self):
        w = self._current()
        if hasattr(w, "save"):
            w.save()

    def _delete(self):
        w = self._current()
        if hasattr(w, "delete"):
            w.delete()

    def _exit(self):
        self.reject()

    # VB6-style aliases (tests/manual smoke)
    def open_tax_master(self):    self._show_tab("tax")
    def open_tax_structure(self): self._show_tab("stru")
    def open_payment_type(self):  self._show_tab("pay")
    def open_parameter(self):     self._show_tab("param")
    def open_printing_parameters(self): self._show_tab("pp")
    def open_printing_setup(self): self._show_tab("ps")


def open_general_setup(parent=None, user: str = "SA"):
    GeneralSetupWindow(parent, user=user).exec()


def main() -> int:
    app = QApplication(sys.argv)
    w = GeneralSetupWindow()
    w.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
