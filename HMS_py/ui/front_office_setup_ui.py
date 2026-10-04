"""Main Setup > Front Office — VB6-hybrid tabbed window (screenshot parity).

VB6 MDIForm1 'Main Setup' > 'Front Office' sub-menu:
  Country Master | State Master | City Master | Market Segment |
  Business Source | Guest Status | Charge Master | Fixed Charge |
  Package Master | Plan Master | Season Master | Room Features |
  Room Category | Room Master | Company Master | Forex Master |
  Guest History | Room Display

Data sources (live core modules — koi invented table nahi):
  - Country Master   -> core.country (Country table)
  - State Master     -> core.state (State table)
  - City Master      -> core.city (City table)
  - Market Segment   -> core.marketsegment (MarketSeg table)
  - Business Source  -> core.businesssource (BussSource table)
  - Guest Status     -> core.gueststatus (GuestStat table)
  - Charge Master    -> core.fixcharge (FixedCharge table)
  - Package Master   -> core.packagemaster (PlanMast Plan_Package='Package')
  - Plan Master      -> core.plans (PlanMast Plan_Package='Plan')
  - Season Master    -> core.seasonmaster (SeasonMast table)
  - Room Category    -> core.roomcategory (RoomCat table)
  - Room Master      -> core.roommaster (RoomMast table)
  - Company Master   -> core.companymaster (GroupProf table)
  - Forex Master     -> core.forexmaster (ForEx table)
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

from HMS_py.core import (businesssource, city, companymaster, country,
                         fixcharge, forexmaster, gueststatus, marketsegment,
                         packagemaster, plans, roomcategory, roommaster,
                         seasonmaster, state)
from HMS_py.ui import theme as _theme
from HMS_py.ui.desktop_style import mark_desktop_action


def _p() -> dict:
    return _theme.palette()


VB_TAB_STYLES = """
QPushButton#vbFoTab {
    padding: 10px 22px; font-size: 14px; font-weight: bold;
    font-style: italic; border: 1px solid #2d2a55; border-radius: 2px;
    color: white; background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
        stop:0 #7b2d8e, stop:1 #4b1a6e);
}
QPushButton#vbFoTab:hover { background: #8b3da0; }
QPushButton#vbFoTab:checked {
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


# ================================================================ Country Master
class CountryTab(QWidget):
    """VB6 FaCountryMast: Country table."""

    HEADERS = ["Code", "Name", "ShortName", "Type", "Nationality"]

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
        self.ed_name.setMaxLength(country.LIMITS["name"])
        self.ed_short = QLineEdit()
        self.ed_short.setMaxLength(country.LIMITS["short"])
        self.cmb_type = QComboBox()
        self.cmb_type.addItems(["India", "Foreign"])
        self.ed_nationality = QLineEdit()
        self.ed_nationality.setMaxLength(country.LIMITS["nationality"])
        fl.addRow("Country Name", self.ed_name)
        fl.addRow("Short Name", self.ed_short)
        fl.addRow("Country Type", self.cmb_type)
        fl.addRow("Nationality", self.ed_nationality)
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
        rec = country.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_short.setText(rec.get("short", ""))
        self.cmb_type.setCurrentText(rec.get("type", "India"))
        self.ed_nationality.setText(rec.get("nationality", ""))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = country.list_all()
        except Exception as e:
            QMessageBox.critical(self, "Country Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("short", "")))
            self.tbl.setItem(r, 3, _ro_item(rec.get("type", "")))
            self.tbl.setItem(r, 4, _ro_item(rec.get("nationality", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_short.clear()
        self.cmb_type.setCurrentText("India")
        self.ed_nationality.clear()
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Country Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "short": self.ed_short.text().strip(),
            "type": self.cmb_type.currentText(),
            "nationality": self.ed_nationality.text().strip(),
        }
        try:
            if self.edit_code and country.exists(self.edit_code):
                country.update(self.edit_code, rec)
            else:
                if country.exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                country.insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Country saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Country '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            country.delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ State Master
class StateTab(QWidget):
    """VB6 FaStateMast: State table."""

    HEADERS = ["Code", "Name", "ShortName", "Country"]

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
        self.ed_name.setMaxLength(state.LIMITS["name"])
        self.ed_short = QLineEdit()
        self.ed_short.setMaxLength(state.LIMITS["short"])
        self.ed_country = QLineEdit()
        self.ed_country.setMaxLength(state.LIMITS["country"])
        fl.addRow("State Name", self.ed_name)
        fl.addRow("Short Name", self.ed_short)
        fl.addRow("Country Code", self.ed_country)
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
        rec = state.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_short.setText(rec.get("short", ""))
        self.ed_country.setText(rec.get("country", ""))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = state.list_all()
        except Exception as e:
            QMessageBox.critical(self, "State Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("short", "")))
            self.tbl.setItem(r, 3, _ro_item(rec.get("country", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_short.clear()
        self.ed_country.clear()
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "State Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "short": self.ed_short.text().strip(),
            "country": self.ed_country.text().strip(),
        }
        try:
            if self.edit_code and state.exists(self.edit_code):
                state.update(self.edit_code, rec)
            else:
                if state.exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                state.insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "State saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"State '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            state.delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ City Master
class CityTab(QWidget):
    """VB6 FaCityMast: City table."""

    HEADERS = ["CityCode", "CityName", "ShortName", "ZipCode", "State"]

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
        self.ed_name.setMaxLength(city.LIMITS["name"])
        self.ed_short = QLineEdit()
        self.ed_short.setMaxLength(city.LIMITS["short"])
        self.ed_zip = QLineEdit()
        self.ed_zip.setMaxLength(city.LIMITS["zip"])
        self.ed_state = QLineEdit()
        self.ed_state.setMaxLength(city.LIMITS["state"])
        fl.addRow("City Name", self.ed_name)
        fl.addRow("Short Name", self.ed_short)
        fl.addRow("Zip Code", self.ed_zip)
        fl.addRow("State Code", self.ed_state)
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
        rec = city.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_short.setText(rec.get("short", ""))
        self.ed_zip.setText(rec.get("zip", ""))
        self.ed_state.setText(rec.get("state", ""))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = city.list_all()
        except Exception as e:
            QMessageBox.critical(self, "City Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("short", "")))
            self.tbl.setItem(r, 3, _ro_item(rec.get("zip", "")))
            self.tbl.setItem(r, 4, _ro_item(rec.get("state", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_short.clear()
        self.ed_zip.clear()
        self.ed_state.clear()
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "City Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "short": self.ed_short.text().strip(),
            "zip": self.ed_zip.text().strip(),
            "state": self.ed_state.text().strip(),
        }
        try:
            if self.edit_code and city.exists(self.edit_code):
                city.update(self.edit_code, rec)
            else:
                if city.exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                city.insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "City saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"City '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            city.delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ Market Segment
class MarketSegmentTab(QWidget):
    """VB6 FrmMarketSeg: MarketSeg table."""

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
        self.ed_name.setMaxLength(marketsegment.LIMITS["name"])
        self.cmb_active = QComboBox()
        self.cmb_active.addItems(["Y", "N"])
        fl.addRow("Segment Name", self.ed_name)
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
        rec = marketsegment.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = marketsegment.list_all()
        except Exception as e:
            QMessageBox.critical(self, "Market Segment", f"DB error: {e}")
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
            QMessageBox.warning(self, "Save", "Segment Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:5],
            "name": name,
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and marketsegment.exists(self.edit_code):
                marketsegment.update(self.edit_code, rec)
            else:
                if marketsegment.exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                marketsegment.insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Market Segment saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Market Segment '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            marketsegment.delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ Business Source
class BusinessSourceTab(QWidget):
    """VB6 FrmBusinessSrc: BussSource table."""

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
        self.ed_name.setMaxLength(businesssource.LIMITS["name"])
        self.cmb_active = QComboBox()
        self.cmb_active.addItems(["Y", "N"])
        fl.addRow("Source Name", self.ed_name)
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
        rec = businesssource.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = businesssource.list_all()
        except Exception as e:
            QMessageBox.critical(self, "Business Source", f"DB error: {e}")
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
            QMessageBox.warning(self, "Save", "Source Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:5],
            "name": name,
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and businesssource.exists(self.edit_code):
                businesssource.update(self.edit_code, rec)
            else:
                if businesssource.exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                businesssource.insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Business Source saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Business Source '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            businesssource.delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ Guest Status
class GuestStatusTab(QWidget):
    """VB6 FrmGuestStat: GuestStat table."""

    HEADERS = ["Code", "Name"]

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
        self.ed_name.setMaxLength(gueststatus.LIMITS["name"])
        fl.addRow("Status Name", self.ed_name)
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
        rec = gueststatus.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = gueststatus.list_all()
        except Exception as e:
            QMessageBox.critical(self, "Guest Status", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Status Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
        }
        try:
            if self.edit_code and gueststatus.exists(self.edit_code):
                gueststatus.update(self.edit_code, rec)
            else:
                if gueststatus.exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                gueststatus.insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Guest Status saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Guest Status '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            gueststatus.delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ Charge Master (Fixed Charge)
class ChargeMasterTab(QWidget):
    """VB6 frmFixedChargeMast: FixedCharge table."""

    HEADERS = ["Code", "Name", "RevCode", "TaxInc", "FlatRate"]

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
        self.ed_name.setMaxLength(fixcharge.LIMITS["name"])
        self.ed_sname = QLineEdit()
        self.ed_sname.setMaxLength(fixcharge.LIMITS["sname"])
        self.ed_revcode = QLineEdit()
        self.ed_revcode.setMaxLength(fixcharge.LIMITS["revcode"])
        self.cmb_taxinc = QComboBox()
        self.cmb_taxinc.addItems(["Y", "N"])
        self.ed_taxstru = QLineEdit()
        self.ed_taxstru.setMaxLength(fixcharge.LIMITS["taxstru"])
        self.ed_flatrate = QLineEdit("0")
        fl.addRow("Charge Name", self.ed_name)
        fl.addRow("Short Name", self.ed_sname)
        fl.addRow("Revenue Code", self.ed_revcode)
        fl.addRow("Tax Included", self.cmb_taxinc)
        fl.addRow("Tax Structure", self.ed_taxstru)
        fl.addRow("Flat Rate", self.ed_flatrate)
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
        rec = fixcharge.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_sname.setText(rec.get("sname", ""))
        self.ed_revcode.setText(rec.get("revcode", ""))
        self.cmb_taxinc.setCurrentText(rec.get("taxinc", "N"))
        self.ed_taxstru.setText(rec.get("taxstru", ""))
        self.ed_flatrate.setText(str(rec.get("flatrate", 0)))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = fixcharge.list_all()
        except Exception as e:
            QMessageBox.critical(self, "Charge Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("revcode", "")))
            self.tbl.setItem(r, 3, _ro_item(rec.get("taxinc", "")))
            self.tbl.setItem(r, 4, _ro_item(f"{float(rec.get('flatrate') or 0):.2f}"))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_sname.clear()
        self.ed_revcode.clear()
        self.cmb_taxinc.setCurrentText("N")
        self.ed_taxstru.clear()
        self.ed_flatrate.setText("0")
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Charge Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:5],
            "name": name,
            "sname": self.ed_sname.text().strip(),
            "revcode": self.ed_revcode.text().strip(),
            "taxinc": self.cmb_taxinc.currentText(),
            "taxstru": self.ed_taxstru.text().strip(),
            "flatrate": self.ed_flatrate.text().strip() or "0",
        }
        try:
            if self.edit_code and fixcharge.exists(self.edit_code):
                fixcharge.update(self.edit_code, rec)
            else:
                if fixcharge.exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                fixcharge.insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Charge saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Charge '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            fixcharge.delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ Room Category
class RoomCategoryTab(QWidget):
    """VB6 FrmRoomCatMast: RoomCat table."""

    HEADERS = ["Code", "Name", "ShortName", "MaxPerson", "RevCode"]

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
        self.ed_name.setMaxLength(roomcategory.LIMITS["name"])
        self.ed_short = QLineEdit()
        self.ed_short.setMaxLength(roomcategory.LIMITS["short"])
        self.ed_maxperson = QLineEdit("2")
        self.ed_revcode = QLineEdit()
        self.ed_revcode.setMaxLength(roomcategory.LIMITS["revcode"])
        fl.addRow("Category Name", self.ed_name)
        fl.addRow("Short Name", self.ed_short)
        fl.addRow("Max Person", self.ed_maxperson)
        fl.addRow("Revenue Code", self.ed_revcode)
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
        rec = roomcategory.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_short.setText(rec.get("short", ""))
        self.ed_maxperson.setText(str(rec.get("maxperson", 2)))
        self.ed_revcode.setText(rec.get("revcode", ""))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = roomcategory.list_all()
        except Exception as e:
            QMessageBox.critical(self, "Room Category", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("short", "")))
            self.tbl.setItem(r, 3, _ro_item(str(rec.get("maxperson", 0))))
            self.tbl.setItem(r, 4, _ro_item(rec.get("revcode", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_short.clear()
        self.ed_maxperson.setText("2")
        self.ed_revcode.clear()
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Category Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:5],
            "name": name,
            "short": self.ed_short.text().strip(),
            "maxperson": self.ed_maxperson.text().strip() or "2",
            "revcode": self.ed_revcode.text().strip(),
        }
        try:
            if self.edit_code and roomcategory.exists(self.edit_code):
                roomcategory.update(self.edit_code, rec)
            else:
                if roomcategory.exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                roomcategory.insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Room Category saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Room Category '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            roomcategory.delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ Room Master
class RoomMasterTab(QWidget):
    """VB6 FrmRoomMast: RoomMast table."""

    HEADERS = ["RoomNo", "Name", "Category", "RevCode", "RoomStat"]

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
        self.ed_name.setMaxLength(roommaster.LIMITS["name"])
        self.ed_roomcat = QLineEdit()
        self.ed_roomcat.setMaxLength(roommaster.LIMITS["roomcat"])
        self.ed_revcode = QLineEdit()
        self.ed_revcode.setMaxLength(roommaster.LIMITS["revcode"])
        self.ed_taxstru = QLineEdit()
        self.ed_taxstru.setMaxLength(roommaster.LIMITS["taxstru"])
        self.ed_roomstat = QLineEdit()
        fl.addRow("Room Name", self.ed_name)
        fl.addRow("Category Code", self.ed_roomcat)
        fl.addRow("Revenue Code", self.ed_revcode)
        fl.addRow("Tax Structure", self.ed_taxstru)
        fl.addRow("Room Stat", self.ed_roomstat)
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
        rec = roommaster.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_roomcat.setText(rec.get("roomcat", ""))
        self.ed_revcode.setText(rec.get("revcode", ""))
        self.ed_taxstru.setText(rec.get("taxstru", ""))
        self.ed_roomstat.setText(rec.get("roomstat", ""))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = roommaster.list_all()
        except Exception as e:
            QMessageBox.critical(self, "Room Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("roomcat", "")))
            self.tbl.setItem(r, 3, _ro_item(rec.get("revcode", "")))
            self.tbl.setItem(r, 4, _ro_item(rec.get("roomstat", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_roomcat.clear()
        self.ed_revcode.clear()
        self.ed_taxstru.clear()
        self.ed_roomstat.clear()
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Room Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:5],
            "name": name,
            "roomcat": self.ed_roomcat.text().strip(),
            "revcode": self.ed_revcode.text().strip(),
            "taxstru": self.ed_taxstru.text().strip(),
            "roomstat": self.ed_roomstat.text().strip(),
        }
        try:
            if self.edit_code and roommaster.exists(self.edit_code):
                roommaster.update(self.edit_code, rec)
            else:
                if roommaster.exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                roommaster.insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Room saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Room '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            roommaster.delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ Company Master
class CompanyMasterTab(QWidget):
    """VB6 CompMast: GroupProf table."""

    HEADERS = ["Code", "Name", "City", "Phone", "Contact"]

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
        self.ed_name.setMaxLength(companymaster.LIMITS.get("name", 50))
        self.ed_add1 = QLineEdit()
        self.ed_add1.setMaxLength(companymaster.LIMITS.get("add1", 50))
        self.ed_add2 = QLineEdit()
        self.ed_add2.setMaxLength(companymaster.LIMITS.get("add2", 50))
        self.ed_city = QLineEdit()
        self.ed_city.setMaxLength(companymaster.LIMITS.get("city", 6))
        self.ed_phone = QLineEdit()
        self.ed_phone.setMaxLength(companymaster.LIMITS.get("phone", 35))
        self.ed_contact = QLineEdit()
        self.ed_contact.setMaxLength(companymaster.LIMITS.get("contact", 35))
        fl.addRow("Company Name", self.ed_name)
        fl.addRow("Address 1", self.ed_add1)
        fl.addRow("Address 2", self.ed_add2)
        fl.addRow("City Code", self.ed_city)
        fl.addRow("Phone", self.ed_phone)
        fl.addRow("Contact Person", self.ed_contact)
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
        rec = companymaster.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_add1.setText(rec.get("add1", ""))
        self.ed_add2.setText(rec.get("add2", ""))
        self.ed_city.setText(rec.get("city", ""))
        self.ed_phone.setText(rec.get("phone", ""))
        self.ed_contact.setText(rec.get("contact", ""))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = companymaster.list_all()
        except Exception as e:
            QMessageBox.critical(self, "Company Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("city", "")))
            self.tbl.setItem(r, 3, _ro_item(rec.get("phone", "")))
            self.tbl.setItem(r, 4, _ro_item(rec.get("contact", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_add1.clear()
        self.ed_add2.clear()
        self.ed_city.clear()
        self.ed_phone.clear()
        self.ed_contact.clear()
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Company Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:8],
            "name": name,
            "add1": self.ed_add1.text().strip(),
            "add2": self.ed_add2.text().strip(),
            "city": self.ed_city.text().strip(),
            "phone": self.ed_phone.text().strip(),
            "contact": self.ed_contact.text().strip(),
        }
        try:
            if self.edit_code and companymaster.exists(self.edit_code):
                companymaster.update(self.edit_code, rec)
            else:
                if companymaster.exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                companymaster.insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Company saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Company '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            companymaster.delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ Forex Master
class ForexMasterTab(QWidget):
    """VB6 FrmForeignExMast: ForEx table."""

    HEADERS = ["Code", "Name", "Rate"]

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
        self.ed_name.setMaxLength(forexmaster.LIMITS["name"])
        self.ed_rate = QLineEdit("0")
        fl.addRow("Currency Name", self.ed_name)
        fl.addRow("Exchange Rate", self.ed_rate)
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
        rec = forexmaster.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_rate.setText(str(rec.get("rate", 0)))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = forexmaster.list_all()
        except Exception as e:
            QMessageBox.critical(self, "Forex Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(f"{float(rec.get('rate') or 0):.4f}"))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_rate.setText("0")
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Currency Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "rate": self.ed_rate.text().strip() or "0",
        }
        try:
            if self.edit_code and forexmaster.exists(self.edit_code):
                forexmaster.update(self.edit_code, rec)
            else:
                if forexmaster.exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                forexmaster.insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Forex saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Forex '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            forexmaster.delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ Main window
class FrontOfficeSetupWindow(QDialog):
    """VB6 Main Setup > Front Office hybrid: top tab strip + toolbar + tab pages."""

    TABS = [
        ("Country Master", "country"),
        ("State Master", "state"),
        ("City Master", "city"),
        ("Market Segment", "mktseg"),
        ("Business Source", "bussrc"),
        ("Guest Status", "gueststat"),
        ("Charge Master", "charge"),
        ("Room Category", "roomcat"),
        ("Room Master", "room"),
        ("Company Master", "company"),
        ("Forex Master", "forex"),
    ]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle(
            "Moon and Mars Resorts { 2026-27 } - [Main Setup > "
            "Front Office]")
        try:
            scr = QApplication.primaryScreen().availableSize()
            self.resize(min(1440, scr.width() - 20),
                        min(860, scr.height() - 60))
        except Exception:
            self.resize(1280, 700)
        self._build()
        self._show_tab("country")

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
            b.setObjectName("vbFoTab")
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

        self.title_strip = _title_strip("Main Setup > Front Office")
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
            f"  SA    Property Site : {getattr(country, 'SITE_CODE', '-')}"
            "    CAPS   NUM   Hide Left Menu   Hide Right Menu   Full Screen")
        status.setStyleSheet(
            "background:#e8e8e8; color:#333; padding:4px;"
            "border-top:1px solid #aaa; font-size:11px;")
        root.addWidget(status)

        self.tab_country = CountryTab()
        self.tab_state = StateTab()
        self.tab_city = CityTab()
        self.tab_mktseg = MarketSegmentTab()
        self.tab_bussrc = BusinessSourceTab()
        self.tab_gueststat = GuestStatusTab()
        self.tab_charge = ChargeMasterTab()
        self.tab_roomcat = RoomCategoryTab()
        self.tab_room = RoomMasterTab()
        self.tab_company = CompanyMasterTab()
        self.tab_forex = ForexMasterTab()
        self._page_widgets = {
            "country": self.tab_country, "state": self.tab_state,
            "city": self.tab_city, "mktseg": self.tab_mktseg,
            "bussrc": self.tab_bussrc, "gueststat": self.tab_gueststat,
            "charge": self.tab_charge, "roomcat": self.tab_roomcat,
            "room": self.tab_room, "company": self.tab_company,
            "forex": self.tab_forex,
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
        self.title_strip.setText(f"Main Setup > Front Office > {label}")
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

    def open_country(self): self._show_tab("country")
    def open_state(self): self._show_tab("state")
    def open_city(self): self._show_tab("city")
    def open_market_segment(self): self._show_tab("mktseg")
    def open_business_source(self): self._show_tab("bussrc")
    def open_guest_status(self): self._show_tab("gueststat")
    def open_charge_master(self): self._show_tab("charge")
    def open_room_category(self): self._show_tab("roomcat")
    def open_room_master(self): self._show_tab("room")
    def open_company_master(self): self._show_tab("company")
    def open_forex_master(self): self._show_tab("forex")


def open_front_office_setup(parent=None, user: str = "SA"):
    FrontOfficeSetupWindow(parent, user=user).exec()


def main() -> int:
    app = QApplication(sys.argv)
    w = FrontOfficeSetupWindow()
    w.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())