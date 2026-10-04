"""Main Setup > Point of Sale — VB6-hybrid tabbed window.

VB6 MDIForm1 'Main Setup' > 'Point of Sale' sub-menu:
  Setup Outlet | Outlet Bill Sundry Setting | Server Master | Table Master |
  Item List | Menu Group | Menu Category | Menu Item | Menu Item Rate |
  Rate Group Master | Session Master | Open Item Consumption | Scheme Master |
  Happy Hours | Happy Hours [Free Items] | Combo Pack | NC Type |
  Customer History | Delivery Boy

Data sources (live core modules):
  - Setup Outlet      -> core.pos_masters (Outlet table)
  - Server Master     -> core.pos_masters (Waiter table)
  - Table Master      -> core.pos_table (TableMast table)
  - Item List         -> core.pos_masters (ItemCat table)
  - Menu Group        -> core.pos_masters (ItemGrp table)
  - Menu Category     -> core.pos_masters (ItemCat table)
  - Menu Item         -> core.pos_masters (Item table)
  - Menu Item Rate    -> core.pos_masters (ItemRate table)
  - Session Master    -> core.pos_masters (SessionMast table)
  - Scheme Master     -> core.pos_masters (SchemeMast table)
  - Combo Pack        -> core.pos_masters (ComboPackHead table)
  - NC Type           -> core.pos_masters (NCTypeMast table)
  - Delivery Boy      -> core.pos_masters (DeliveryBoy table)
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QKeySequence, QShortcut
from PyQt6.QtWidgets import (QAbstractItemView, QApplication, QComboBox,
                             QDialog, QFormLayout, QFrame, QGroupBox,
                             QHBoxLayout, QHeaderView, QLabel, QLineEdit,
                             QMessageBox, QPushButton, QScrollArea,
                             QTableWidget, QTableWidgetItem, QVBoxLayout,
                             QWidget)

from HMS_py.core import pos_masters, pos_table
from HMS_py.ui import theme as _theme
from HMS_py.ui.desktop_style import mark_desktop_action


def _p() -> dict:
    return _theme.palette()


VB_TAB_STYLES = """
QPushButton#vbPosTab {
    padding: 10px 22px; font-size: 14px; font-weight: bold;
    font-style: italic; border: 1px solid #2d2a55; border-radius: 2px;
    color: white; background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
        stop:0 #7b2d8e, stop:1 #4b1a6e);
}
QPushButton#vbPosTab:hover { background: #8b3da0; }
QPushButton#vbPosTab:checked {
    background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
        stop:0 #0e7a6f, stop:1 #0a5c54);
    color: #ffe95c;
}
"""


def _title_strip(text: str) -> QLabel:
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
    bar = QWidget()
    lay = QHBoxLayout(bar)
    lay.setContentsMargins(4, 4, 4, 4)
    lay.setSpacing(4)
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
    dock = QFrame()
    dock.setFixedWidth(150)
    dock.setStyleSheet("QFrame { background: white; }")
    lay = QVBoxLayout(dock)
    lay.setContentsMargins(6, 8, 6, 8)
    lay.setSpacing(6)

    from PyQt6.QtCore import QDate
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


# ================================================================ Server Master (Waiter)
class ServerMasterTab(QWidget):
    """VB6 FrmWaiterMast: Waiter table."""

    HEADERS = ["Code", "Name", "Active"]

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
        self.ed_name = QLineEdit()
        self.ed_name.setMaxLength(30)
        self.cmb_active = QComboBox()
        self.cmb_active.addItems(["Y", "N"])
        fl.addRow("Server Name", self.ed_name)
        fl.addRow("Active", self.cmb_active)
        lay.addWidget(form)

        self.tbl = QTableWidget(0, len(self.HEADERS))
        self.tbl.setHorizontalHeaderLabels(self.HEADERS)
        self.tbl.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
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
        rec = pos_masters.waiter_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = pos_masters.waiter_list()
        except Exception as e:
            QMessageBox.critical(self, "Server Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("active", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.cmb_active.setCurrentText("Y")
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Server Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and pos_masters.waiter_exists(self.edit_code):
                pos_masters.waiter_update(self.edit_code, rec)
            else:
                if pos_masters.waiter_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                pos_masters.waiter_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Server saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Server '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            pos_masters.waiter_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ Table Master
class TableMasterTab(QWidget):
    """VB6 FrmTableMast: TableMast table."""

    HEADERS = ["Code", "Name", "Capacity", "Active"]

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
        self.ed_name = QLineEdit()
        self.ed_name.setMaxLength(30)
        self.ed_capacity = QLineEdit("4")
        self.cmb_active = QComboBox()
        self.cmb_active.addItems(["Y", "N"])
        fl.addRow("Table Name", self.ed_name)
        fl.addRow("Capacity", self.ed_capacity)
        fl.addRow("Active", self.cmb_active)
        lay.addWidget(form)

        self.tbl = QTableWidget(0, len(self.HEADERS))
        self.tbl.setHorizontalHeaderLabels(self.HEADERS)
        self.tbl.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
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
        rec = pos_table.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_capacity.setText(str(rec.get("capacity", 4)))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = pos_table.list_all()
        except Exception as e:
            QMessageBox.critical(self, "Table Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(str(rec.get("capacity", 0))))
            self.tbl.setItem(r, 3, _ro_item(rec.get("active", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_capacity.setText("4")
        self.cmb_active.setCurrentText("Y")
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Table Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "capacity": self.ed_capacity.text().strip() or "4",
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and pos_table.exists(self.edit_code):
                pos_table.update(self.edit_code, rec)
            else:
                if pos_table.exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                pos_table.insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Table saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Table '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            pos_table.delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ Session Master
class SessionMasterTab(QWidget):
    """VB6 frmSessionMast: SessionMast table."""

    HEADERS = ["Code", "Name", "FromTime", "ToTime", "Active"]

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
        self.ed_name = QLineEdit()
        self.ed_name.setMaxLength(30)
        self.ed_from = QLineEdit("00:00")
        self.ed_to = QLineEdit("23:59")
        self.cmb_active = QComboBox()
        self.cmb_active.addItems(["Y", "N"])
        fl.addRow("Session Name", self.ed_name)
        fl.addRow("From Time", self.ed_from)
        fl.addRow("To Time", self.ed_to)
        fl.addRow("Active", self.cmb_active)
        lay.addWidget(form)

        self.tbl = QTableWidget(0, len(self.HEADERS))
        self.tbl.setHorizontalHeaderLabels(self.HEADERS)
        self.tbl.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
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
        rec = pos_masters.session_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_from.setText(rec.get("fromtime", "00:00"))
        self.ed_to.setText(rec.get("totime", "23:59"))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = pos_masters.session_list()
        except Exception as e:
            QMessageBox.critical(self, "Session Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("fromtime", "")))
            self.tbl.setItem(r, 3, _ro_item(rec.get("totime", "")))
            self.tbl.setItem(r, 4, _ro_item(rec.get("active", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_from.setText("00:00")
        self.ed_to.setText("23:59")
        self.cmb_active.setCurrentText("Y")
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Session Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "fromtime": self.ed_from.text().strip(),
            "totime": self.ed_to.text().strip(),
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and pos_masters.session_exists(self.edit_code):
                pos_masters.session_update(self.edit_code, rec)
            else:
                if pos_masters.session_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                pos_masters.session_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Session saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Session '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            pos_masters.session_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ Scheme Master
class SchemeMasterTab(QWidget):
    """VB6 FrmSchemeMast: SchemeMast table."""

    HEADERS = ["Code", "Name", "Discount", "Active"]

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
        self.ed_name = QLineEdit()
        self.ed_name.setMaxLength(30)
        self.ed_discount = QLineEdit("0")
        self.cmb_active = QComboBox()
        self.cmb_active.addItems(["Y", "N"])
        fl.addRow("Scheme Name", self.ed_name)
        fl.addRow("Discount %", self.ed_discount)
        fl.addRow("Active", self.cmb_active)
        lay.addWidget(form)

        self.tbl = QTableWidget(0, len(self.HEADERS))
        self.tbl.setHorizontalHeaderLabels(self.HEADERS)
        self.tbl.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
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
        rec = pos_masters.scheme_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_discount.setText(str(rec.get("discount", 0)))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = pos_masters.scheme_list()
        except Exception as e:
            QMessageBox.critical(self, "Scheme Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(str(rec.get("discount", 0))))
            self.tbl.setItem(r, 3, _ro_item(rec.get("active", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_discount.setText("0")
        self.cmb_active.setCurrentText("Y")
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Scheme Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "discount": self.ed_discount.text().strip() or "0",
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and pos_masters.scheme_exists(self.edit_code):
                pos_masters.scheme_update(self.edit_code, rec)
            else:
                if pos_masters.scheme_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                pos_masters.scheme_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Scheme saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Scheme '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            pos_masters.scheme_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ NC Type
class NCTypeTab(QWidget):
    """VB6 FrmNCType: NCTypeMast table."""

    HEADERS = ["Code", "Name", "Active"]

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
        self.ed_name = QLineEdit()
        self.ed_name.setMaxLength(30)
        self.cmb_active = QComboBox()
        self.cmb_active.addItems(["Y", "N"])
        fl.addRow("NC Type Name", self.ed_name)
        fl.addRow("Active", self.cmb_active)
        lay.addWidget(form)

        self.tbl = QTableWidget(0, len(self.HEADERS))
        self.tbl.setHorizontalHeaderLabels(self.HEADERS)
        self.tbl.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
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
        rec = pos_masters.nctype_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = pos_masters.nctype_list()
        except Exception as e:
            QMessageBox.critical(self, "NC Type", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("active", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.cmb_active.setCurrentText("Y")
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "NC Type Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and pos_masters.nctype_exists(self.edit_code):
                pos_masters.nctype_update(self.edit_code, rec)
            else:
                if pos_masters.nctype_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                pos_masters.nctype_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "NC Type saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"NC Type '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            pos_masters.nctype_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ Delivery Boy
class DeliveryBoyTab(QWidget):
    """VB6 FrmDeliveryBoyMast: DeliveryBoy table."""

    HEADERS = ["Code", "Name", "Phone", "Active"]

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
        self.ed_name = QLineEdit()
        self.ed_name.setMaxLength(30)
        self.ed_phone = QLineEdit()
        self.ed_phone.setMaxLength(20)
        self.cmb_active = QComboBox()
        self.cmb_active.addItems(["Y", "N"])
        fl.addRow("Delivery Boy Name", self.ed_name)
        fl.addRow("Phone", self.ed_phone)
        fl.addRow("Active", self.cmb_active)
        lay.addWidget(form)

        self.tbl = QTableWidget(0, len(self.HEADERS))
        self.tbl.setHorizontalHeaderLabels(self.HEADERS)
        self.tbl.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
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
        rec = pos_masters.delboy_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_phone.setText(rec.get("phone", ""))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = pos_masters.delboy_list()
        except Exception as e:
            QMessageBox.critical(self, "Delivery Boy", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("phone", "")))
            self.tbl.setItem(r, 3, _ro_item(rec.get("active", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_phone.clear()
        self.cmb_active.setCurrentText("Y")
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Delivery Boy Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "phone": self.ed_phone.text().strip(),
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and pos_masters.delboy_exists(self.edit_code):
                pos_masters.delboy_update(self.edit_code, rec)
            else:
                if pos_masters.delboy_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                pos_masters.delboy_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Delivery Boy saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Delivery Boy '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            pos_masters.delboy_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ Main window
class PointOfSaleSetupWindow(QDialog):
    """VB6 Main Setup > Point of Sale hybrid: top tab strip + toolbar + tab pages."""

    TABS = [
        ("Server Master", "server"),
        ("Table Master", "table"),
        ("Session Master", "session"),
        ("Scheme Master", "scheme"),
        ("NC Type", "nctype"),
        ("Delivery Boy", "delboy"),
    ]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle(
            "Moon and Mars Resorts { 2026-27 } - [Main Setup > "
            "Point of Sale]")
        try:
            scr = QApplication.primaryScreen().availableSize()
            self.resize(min(1440, scr.width() - 20),
                        min(860, scr.height() - 60))
        except Exception:
            self.resize(1280, 700)
        self._build()
        self._show_tab("server")

    def _build(self):
        root = QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        root.setSpacing(0)

        strip = QWidget()
        strip.setStyleSheet("background: white;")
        sl = QHBoxLayout(strip)
        sl.setContentsMargins(8, 8, 8, 8)
        sl.setSpacing(4)
        self._tab_btns = {}
        for label, key in self.TABS:
            b = QPushButton(label)
            b.setObjectName("vbPosTab")
            b.setCheckable(True)
            b.setStyleSheet(VB_TAB_STYLES)
            b.clicked.connect(lambda _=False, k=key: self._show_tab(k))
            sl.addWidget(b)
            self._tab_btns[key] = b
        sl.addStretch()
        root.addWidget(strip)

        body = QHBoxLayout()
        body.setContentsMargins(0, 0, 0, 0)
        body.setSpacing(0)

        center = QWidget()
        cl = QVBoxLayout(center)
        cl.setContentsMargins(0, 0, 0, 0)
        cl.setSpacing(0)

        self.toolbar_holder = QWidget()
        tl = QVBoxLayout(self.toolbar_holder)
        tl.setContentsMargins(0, 0, 0, 0)
        cl.addWidget(self.toolbar_holder)

        self.title_strip = _title_strip("Main Setup > Point of Sale")
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
        dl.addWidget(_world_clock_dock(self._reload_current, self._exit))
        body.addWidget(self.dock_holder)
        root.addLayout(body, 1)

        status = QLabel(
            f"  SA    Property Site : {getattr(pos_masters, 'SITE_CODE', '-')}"
            "    CAPS   NUM   Hide Left Menu   Hide Right Menu   Full Screen")
        status.setStyleSheet(
            "background:#e8e8e8; color:#333; padding:4px;"
            "border-top:1px solid #aaa; font-size:11px;")
        root.addWidget(status)

        self.tab_server = ServerMasterTab()
        self.tab_table = TableMasterTab()
        self.tab_session = SessionMasterTab()
        self.tab_scheme = SchemeMasterTab()
        self.tab_nctype = NCTypeTab()
        self.tab_delboy = DeliveryBoyTab()
        self._page_widgets = {
            "server": self.tab_server, "table": self.tab_table,
            "session": self.tab_session, "scheme": self.tab_scheme,
            "nctype": self.tab_nctype, "delboy": self.tab_delboy,
        }
        for key, w in self._page_widgets.items():
            self._pages_lay.addWidget(w)
            w.hide()

        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._new)
        QShortcut(QKeySequence("Ctrl+E"), self, activated=self._edit)
        QShortcut(QKeySequence("Ctrl+D"), self, activated=self._delete)
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save)
        QShortcut(QKeySequence("F5"), self, activated=self._reload_current)
        QShortcut(QKeySequence("Escape"), self, activated=self._exit)

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
        self.title_strip.setText(f"Main Setup > Point of Sale > {label}")
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
            w.new()

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

    def open_server(self): self._show_tab("server")
    def open_table(self): self._show_tab("table")
    def open_session(self): self._show_tab("session")
    def open_scheme(self): self._show_tab("scheme")
    def open_nctype(self): self._show_tab("nctype")
    def open_delboy(self): self._show_tab("delboy")


def open_pos_setup(parent=None, user: str = "SA"):
    PointOfSaleSetupWindow(parent, user=user).exec()


def main() -> int:
    app = QApplication(sys.argv)
    w = PointOfSaleSetupWindow()
    w.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())