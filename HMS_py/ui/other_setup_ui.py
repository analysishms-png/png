"""Main Setup > Members Mgmt + Banquet + Inventory + HR/Payroll + EPABX — tabbed windows.

VB6 MDIForm1 'Main Setup' sub-menus:
  Members Mgmt: Category Master | Member Master | Corporate Member Master |
    Revenue Master | Facility Master | Category wise Revenue |
    Category wise Facility | Member Bill Sundry Setting | Environment Settings |
    Member Age Wise Revenue | Member Select Category
  Banquet: Events | Venue Features | Venue Master | Menu Category | Item Group |
    Menu Item | Catalog Master | Banquet Bill Sundry Setting
  Inventory: Party Master | Department | Item Group | Item Category | Item Entry |
    Consumption Master | Purchase Sundry Setting | Location Master | Opening Stock |
    Item List | Shift Master | Enviro Inventry
  HR/Payroll: Designation Master | Category Master | Holiday Master | Employee Master
  EPABX: Call Type Master | Extension Master | Call Codes Master | Call Control Master
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

from HMS_py.core import (banquet_masters, epabx_masters, hr_masters,
                         members_masters)
from HMS_py.ui import theme as _theme
from HMS_py.ui.desktop_style import mark_desktop_action


def _p() -> dict:
    return _theme.palette()


VB_TAB_STYLES = """
QPushButton#vbMsTab {
    padding: 10px 22px; font-size: 14px; font-weight: bold;
    font-style: italic; border: 1px solid #2d2a55; border-radius: 2px;
    color: white; background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
        stop:0 #7b2d8e, stop:1 #4b1a6e);
}
QPushButton#vbMsTab:hover { background: #8b3da0; }
QPushButton#vbMsTab:checked {
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


# ================================================================ Members Mgmt
class MembersMgmtWindow(QDialog):
    """VB6 Main Setup > Members Mgmt hybrid: top tab strip + toolbar + tab pages."""

    TABS = [
        ("Category Master", "memcat"),
        ("Revenue Master", "memrev"),
        ("Facility Master", "facility"),
    ]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle(
            "Moon and Mars Resorts { 2026-27 } - [Main Setup > "
            "Members Mgmt]")
        try:
            scr = QApplication.primaryScreen().availableSize()
            self.resize(min(1440, scr.width() - 20),
                        min(860, scr.height() - 60))
        except Exception:
            self.resize(1280, 700)
        self._build()
        self._show_tab("memcat")

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
            b.setObjectName("vbMsTab")
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

        self.title_strip = _title_strip("Main Setup > Members Mgmt")
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
            f"  SA    Property Site : {getattr(members_masters, 'SITE_CODE', '-')}"
            "    CAPS   NUM   Hide Left Menu   Hide Right Menu   Full Screen")
        status.setStyleSheet(
            "background:#e8e8e8; color:#333; padding:4px;"
            "border-top:1px solid #aaa; font-size:11px;")
        root.addWidget(status)

        self.tab_memcat = _MembersCategoryTab()
        self.tab_memrev = _MembersRevenueTab()
        self.tab_facility = _MembersFacilityTab()
        self._page_widgets = {
            "memcat": self.tab_memcat, "memrev": self.tab_memrev,
            "facility": self.tab_facility,
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
        self.title_strip.setText(f"Main Setup > Members Mgmt > {label}")
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


class _MembersCategoryTab(QWidget):
    """VB6 MemCatMast: MemCatMast table."""

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
        fl.addRow("Category Name", self.ed_name)
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
        rec = members_masters.memcat_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = members_masters.memcat_list()
        except Exception as e:
            QMessageBox.critical(self, "Category Master", f"DB error: {e}")
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
            QMessageBox.warning(self, "Save", "Category Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and members_masters.memcat_exists(self.edit_code):
                members_masters.memcat_update(self.edit_code, rec)
            else:
                if members_masters.memcat_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                members_masters.memcat_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Category saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Category '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            members_masters.memcat_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


class _MembersRevenueTab(QWidget):
    """VB6 MemRevMast: MemRevMast table."""

    HEADERS = ["Code", "Name", "Rate", "Active"]

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
        self.ed_rate = QLineEdit("0")
        self.cmb_active = QComboBox()
        self.cmb_active.addItems(["Y", "N"])
        fl.addRow("Revenue Name", self.ed_name)
        fl.addRow("Rate", self.ed_rate)
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
        rec = members_masters.memrev_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_rate.setText(str(rec.get("rate", 0)))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = members_masters.memrev_list()
        except Exception as e:
            QMessageBox.critical(self, "Revenue Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(str(rec.get("rate", 0))))
            self.tbl.setItem(r, 3, _ro_item(rec.get("active", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_rate.setText("0")
        self.cmb_active.setCurrentText("Y")
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Revenue Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or members_masters.memrev_next_code(),
            "name": name,
            "rate": self.ed_rate.text().strip() or "0",
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and members_masters.memrev_exists(self.edit_code):
                members_masters.memrev_update(self.edit_code, rec)
            else:
                if members_masters.memrev_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                members_masters.memrev_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Revenue saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Revenue '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            members_masters.memrev_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


class _MembersFacilityTab(QWidget):
    """VB6 MemFacilityMast: MemFacilityMast table."""

    HEADERS = ["Code", "Name", "Rate", "Active"]

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
        self.ed_rate = QLineEdit("0")
        self.cmb_active = QComboBox()
        self.cmb_active.addItems(["Y", "N"])
        fl.addRow("Facility Name", self.ed_name)
        fl.addRow("Rate", self.ed_rate)
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
        rec = members_masters.facility_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_rate.setText(str(rec.get("rate", 0)))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = members_masters.facility_list()
        except Exception as e:
            QMessageBox.critical(self, "Facility Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(str(rec.get("rate", 0))))
            self.tbl.setItem(r, 3, _ro_item(rec.get("active", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_rate.setText("0")
        self.cmb_active.setCurrentText("Y")
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Facility Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "rate": self.ed_rate.text().strip() or "0",
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and members_masters.facility_exists(self.edit_code):
                members_masters.facility_update(self.edit_code, rec)
            else:
                if members_masters.facility_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                members_masters.facility_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Facility saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Facility '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            members_masters.facility_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ Banquet
class BanquetSetupWindow(QDialog):
    """VB6 Main Setup > Banquet hybrid: top tab strip + toolbar + tab pages."""

    TABS = [
        ("Venue Features", "venfeature"),
        ("Venue Master", "venue"),
        ("Menu Category", "menucat"),
        ("Item Group", "itemgrp"),
        ("Menu Item", "menuitem"),
        ("Catalog Master", "catalog"),
    ]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle(
            "Moon and Mars Resorts { 2026-27 } - [Main Setup > "
            "Banquet]")
        try:
            scr = QApplication.primaryScreen().availableSize()
            self.resize(min(1440, scr.width() - 20),
                        min(860, scr.height() - 60))
        except Exception:
            self.resize(1280, 700)
        self._build()
        self._show_tab("venfeature")

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
            b.setObjectName("vbMsTab")
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

        self.title_strip = _title_strip("Main Setup > Banquet")
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
            f"  SA    Property Site : {getattr(banquet_masters, 'SITE_CODE', '-')}"
            "    CAPS   NUM   Hide Left Menu   Hide Right Menu   Full Screen")
        status.setStyleSheet(
            "background:#e8e8e8; color:#333; padding:4px;"
            "border-top:1px solid #aaa; font-size:11px;")
        root.addWidget(status)

        self.tab_venfeature = _VenueFeaturesTab()
        self.tab_venue = _VenueMasterTab()
        self.tab_menucat = _MenuCategoryTab()
        self.tab_itemgrp = _ItemGroupTab()
        self.tab_menuitem = _MenuItemTab()
        self.tab_catalog = _CatalogMasterTab()
        self._page_widgets = {
            "venfeature": self.tab_venfeature, "venue": self.tab_venue,
            "menucat": self.tab_menucat, "itemgrp": self.tab_itemgrp,
            "menuitem": self.tab_menuitem, "catalog": self.tab_catalog,
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
        self.title_strip.setText(f"Main Setup > Banquet > {label}")
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


class _VenueFeaturesTab(QWidget):
    """VB6 FrmVenueFeat: VenueFeatures table."""

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
        fl.addRow("Feature Name", self.ed_name)
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
        rec = banquet_masters.venfeature_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = banquet_masters.venfeature_list()
        except Exception as e:
            QMessageBox.critical(self, "Venue Features", f"DB error: {e}")
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
            QMessageBox.warning(self, "Save", "Feature Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and banquet_masters.venfeature_exists(self.edit_code):
                banquet_masters.venfeature_update(self.edit_code, rec)
            else:
                if banquet_masters.venfeature_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                banquet_masters.venfeature_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Venue Feature saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Venue Feature '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            banquet_masters.venfeature_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


class _VenueMasterTab(QWidget):
    """VB6 FrmVenueMast: VenueMast table."""

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
        self.ed_capacity = QLineEdit("0")
        self.cmb_active = QComboBox()
        self.cmb_active.addItems(["Y", "N"])
        fl.addRow("Venue Name", self.ed_name)
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
        rec = banquet_masters.groupprof_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_capacity.setText(str(rec.get("capacity", 0)))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = banquet_masters.groupprof_list()
        except Exception as e:
            QMessageBox.critical(self, "Venue Master", f"DB error: {e}")
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
        self.ed_capacity.setText("0")
        self.cmb_active.setCurrentText("Y")
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Venue Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "capacity": self.ed_capacity.text().strip() or "0",
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and banquet_masters.groupprof_exists(self.edit_code):
                banquet_masters.groupprof_update(self.edit_code, rec)
            else:
                if banquet_masters.groupprof_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                banquet_masters.groupprof_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Venue saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Venue '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            banquet_masters.groupprof_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


class _MenuCategoryTab(QWidget):
    """VB6 FrmHallItemCatMast: HallItemCatMast table."""

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
        fl.addRow("Category Name", self.ed_name)
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
        rec = banquet_masters.functype_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = banquet_masters.functype_list()
        except Exception as e:
            QMessageBox.critical(self, "Menu Category", f"DB error: {e}")
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
            QMessageBox.warning(self, "Save", "Category Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and banquet_masters.functype_exists(self.edit_code):
                banquet_masters.functype_update(self.edit_code, rec)
            else:
                if banquet_masters.functype_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                banquet_masters.functype_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Menu Category saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Menu Category '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            banquet_masters.functype_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


class _ItemGroupTab(QWidget):
    """VB6 FrmHallItemGroupMast: HallItemGroupMast table."""

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
        fl.addRow("Group Name", self.ed_name)
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
        rec = banquet_masters.functype_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = banquet_masters.functype_list()
        except Exception as e:
            QMessageBox.critical(self, "Item Group", f"DB error: {e}")
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
            QMessageBox.warning(self, "Save", "Group Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and banquet_masters.functype_exists(self.edit_code):
                banquet_masters.functype_update(self.edit_code, rec)
            else:
                if banquet_masters.functype_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                banquet_masters.functype_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Item Group saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Item Group '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            banquet_masters.functype_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


class _MenuItemTab(QWidget):
    """VB6 FrmHallMenuItem: HallMenuItem table."""

    HEADERS = ["Code", "Name", "Rate", "Active"]

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
        self.ed_rate = QLineEdit("0")
        self.cmb_active = QComboBox()
        self.cmb_active.addItems(["Y", "N"])
        fl.addRow("Item Name", self.ed_name)
        fl.addRow("Rate", self.ed_rate)
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
        rec = banquet_masters.functype_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_rate.setText(str(rec.get("rate", 0)))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = banquet_masters.functype_list()
        except Exception as e:
            QMessageBox.critical(self, "Menu Item", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(str(rec.get("rate", 0))))
            self.tbl.setItem(r, 3, _ro_item(rec.get("active", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_rate.setText("0")
        self.cmb_active.setCurrentText("Y")
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Item Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "rate": self.ed_rate.text().strip() or "0",
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and banquet_masters.functype_exists(self.edit_code):
                banquet_masters.functype_update(self.edit_code, rec)
            else:
                if banquet_masters.functype_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                banquet_masters.functype_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Menu Item saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Menu Item '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            banquet_masters.functype_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


class _CatalogMasterTab(QWidget):
    """VB6 HallMenuCatalog: CatalogMast table."""

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
        fl.addRow("Catalog Name", self.ed_name)
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
        rec = banquet_masters.catalog_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = banquet_masters.catalog_list()
        except Exception as e:
            QMessageBox.critical(self, "Catalog Master", f"DB error: {e}")
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
            QMessageBox.warning(self, "Save", "Catalog Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and banquet_masters.catalog_exists(self.edit_code):
                banquet_masters.catalog_update(self.edit_code, rec)
            else:
                if banquet_masters.catalog_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                banquet_masters.catalog_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Catalog saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Catalog '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            banquet_masters.catalog_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ HR/Payroll
class HRPayrollSetupWindow(QDialog):
    """VB6 Main Setup > HR/Payroll hybrid: top tab strip + toolbar + tab pages."""

    TABS = [
        ("Designation Master", "desig"),
        ("Category Master", "empcat"),
        ("Holiday Master", "holiday"),
        ("Employee Master", "employee"),
    ]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle(
            "Moon and Mars Resorts { 2026-27 } - [Main Setup > "
            "HR/Payroll]")
        try:
            scr = QApplication.primaryScreen().availableSize()
            self.resize(min(1440, scr.width() - 20),
                        min(860, scr.height() - 60))
        except Exception:
            self.resize(1280, 700)
        self._build()
        self._show_tab("desig")

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
            b.setObjectName("vbMsTab")
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

        self.title_strip = _title_strip("Main Setup > HR/Payroll")
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
            f"  SA    Property Site : {getattr(hr_masters, 'SITE_CODE', '-')}"
            "    CAPS   NUM   Hide Left Menu   Hide Right Menu   Full Screen")
        status.setStyleSheet(
            "background:#e8e8e8; color:#333; padding:4px;"
            "border-top:1px solid #aaa; font-size:11px;")
        root.addWidget(status)

        self.tab_desig = _DesignationTab()
        self.tab_empcat = _EmployeeCategoryTab()
        self.tab_holiday = _HolidayTab()
        self.tab_employee = _EmployeeTab()
        self._page_widgets = {
            "desig": self.tab_desig, "empcat": self.tab_empcat,
            "holiday": self.tab_holiday, "employee": self.tab_employee,
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
        self.title_strip.setText(f"Main Setup > HR/Payroll > {label}")
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


class _DesignationTab(QWidget):
    """VB6 PrDesigMast: Desig table."""

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
        fl.addRow("Designation Name", self.ed_name)
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
        rec = hr_masters.desig_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = hr_masters.desig_list()
        except Exception as e:
            QMessageBox.critical(self, "Designation Master", f"DB error: {e}")
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
            QMessageBox.warning(self, "Save", "Designation Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and hr_masters.desig_exists(self.edit_code):
                hr_masters.desig_update(self.edit_code, rec)
            else:
                if hr_masters.desig_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                hr_masters.desig_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Designation saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Designation '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            hr_masters.desig_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


class _EmployeeCategoryTab(QWidget):
    """VB6 PrCategoryMast: EmpCategory table."""

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
        fl.addRow("Category Name", self.ed_name)
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
        rec = hr_masters.empcat_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = hr_masters.empcat_list()
        except Exception as e:
            QMessageBox.critical(self, "Category Master", f"DB error: {e}")
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
            QMessageBox.warning(self, "Save", "Category Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and hr_masters.empcat_exists(self.edit_code):
                hr_masters.empcat_update(self.edit_code, rec)
            else:
                if hr_masters.empcat_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                hr_masters.empcat_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Category saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Category '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            hr_masters.empcat_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


class _HolidayTab(QWidget):
    """VB6 FrmHoliday: Holiday table."""

    HEADERS = ["Code", "Name", "Date", "Active"]

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
        self.ed_date = QLineEdit()
        self.cmb_active = QComboBox()
        self.cmb_active.addItems(["Y", "N"])
        fl.addRow("Holiday Name", self.ed_name)
        fl.addRow("Date", self.ed_date)
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
        rec = hr_masters.holiday_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_date.setText(str(rec.get("date", "")))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = hr_masters.holiday_list()
        except Exception as e:
            QMessageBox.critical(self, "Holiday Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(str(rec.get("date", ""))))
            self.tbl.setItem(r, 3, _ro_item(rec.get("active", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_date.clear()
        self.cmb_active.setCurrentText("Y")
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Holiday Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "date": self.ed_date.text().strip(),
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and hr_masters.holiday_exists(self.edit_code):
                hr_masters.holiday_update(self.edit_code, rec)
            else:
                if hr_masters.holiday_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                hr_masters.holiday_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Holiday saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Holiday '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            hr_masters.holiday_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


class _EmployeeTab(QWidget):
    """VB6 FrmEmployee: Employee table."""

    HEADERS = ["Code", "Name", "Designation", "Department", "Active"]

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
        self.ed_desig = QLineEdit()
        self.ed_desig.setMaxLength(6)
        self.ed_dept = QLineEdit()
        self.ed_dept.setMaxLength(6)
        self.cmb_active = QComboBox()
        self.cmb_active.addItems(["Y", "N"])
        fl.addRow("Employee Name", self.ed_name)
        fl.addRow("Designation", self.ed_desig)
        fl.addRow("Department", self.ed_dept)
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
        rec = hr_masters.emp_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_desig.setText(rec.get("desig", ""))
        self.ed_dept.setText(rec.get("dept", ""))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = hr_masters.emp_list()
        except Exception as e:
            QMessageBox.critical(self, "Employee Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("desig", "")))
            self.tbl.setItem(r, 3, _ro_item(rec.get("dept", "")))
            self.tbl.setItem(r, 4, _ro_item(rec.get("active", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.ed_name.clear()
        self.ed_desig.clear()
        self.ed_dept.clear()
        self.cmb_active.setCurrentText("Y")
        self.state = "Add"
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Employee Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "desig": self.ed_desig.text().strip(),
            "dept": self.ed_dept.text().strip(),
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and hr_masters.emp_exists(self.edit_code):
                hr_masters.emp_update(self.edit_code, rec)
            else:
                if hr_masters.emp_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                hr_masters.emp_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Employee saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Employee '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            hr_masters.emp_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ EPABX
class EPABXSetupWindow(QDialog):
    """VB6 Main Setup > EPABX hybrid: top tab strip + toolbar + tab pages."""

    TABS = [
        ("Call Type Master", "calltype"),
        ("Extension Master", "telext"),
        ("Call Codes Master", "callcode"),
    ]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle(
            "Moon and Mars Resorts { 2026-27 } - [Main Setup > "
            "EPABX]")
        try:
            scr = QApplication.primaryScreen().availableSize()
            self.resize(min(1440, scr.width() - 20),
                        min(860, scr.height() - 60))
        except Exception:
            self.resize(1280, 700)
        self._build()
        self._show_tab("calltype")

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
            b.setObjectName("vbMsTab")
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

        self.title_strip = _title_strip("Main Setup > EPABX")
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
            f"  SA    Property Site : {getattr(epabx_masters, 'SITE_CODE', '-')}"
            "    CAPS   NUM   Hide Left Menu   Hide Right Menu   Full Screen")
        status.setStyleSheet(
            "background:#e8e8e8; color:#333; padding:4px;"
            "border-top:1px solid #aaa; font-size:11px;")
        root.addWidget(status)

        self.tab_calltype = _CallTypeTab()
        self.tab_telext = _TelExtTab()
        self.tab_callcode = _CallCodeTab()
        self._page_widgets = {
            "calltype": self.tab_calltype, "telext": self.tab_telext,
            "callcode": self.tab_callcode,
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
        self.title_strip.setText(f"Main Setup > EPABX > {label}")
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


class _CallTypeTab(QWidget):
    """VB6 TelCallTypeMast: TelCallType table."""

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
        fl.addRow("Call Type Name", self.ed_name)
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
        rec = epabx_masters.calltype_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = epabx_masters.calltype_list()
        except Exception as e:
            QMessageBox.critical(self, "Call Type Master", f"DB error: {e}")
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
            QMessageBox.warning(self, "Save", "Call Type Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and epabx_masters.calltype_exists(self.edit_code):
                epabx_masters.calltype_update(self.edit_code, rec)
            else:
                if epabx_masters.calltype_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                epabx_masters.calltype_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Call Type saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Call Type '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            epabx_masters.calltype_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


class _TelExtTab(QWidget):
    """VB6 TelExtensionMast: TelExt table."""

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
        fl.addRow("Extension Name", self.ed_name)
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
        rec = epabx_masters.telext_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = epabx_masters.telext_list()
        except Exception as e:
            QMessageBox.critical(self, "Extension Master", f"DB error: {e}")
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
            QMessageBox.warning(self, "Save", "Extension Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and epabx_masters.telext_exists(self.edit_code):
                epabx_masters.telext_update(self.edit_code, rec)
            else:
                if epabx_masters.telext_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                epabx_masters.telext_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Extension saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Extension '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            epabx_masters.telext_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


class _CallCodeTab(QWidget):
    """VB6 TelCallCodeMast: TelCallCode table."""

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
        fl.addRow("Call Code Name", self.ed_name)
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
        rec = epabx_masters.callcode_get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.cmb_active.setCurrentText(rec.get("active", "Y"))
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = epabx_masters.callcode_list()
        except Exception as e:
            QMessageBox.critical(self, "Call Codes Master", f"DB error: {e}")
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
            QMessageBox.warning(self, "Save", "Call Code Name zaroori hai")
            return
        rec = {
            "code": self.edit_code or name.upper()[:6],
            "name": name,
            "active": self.cmb_active.currentText(),
        }
        try:
            if self.edit_code and epabx_masters.callcode_exists(self.edit_code):
                epabx_masters.callcode_update(self.edit_code, rec)
            else:
                if epabx_masters.callcode_exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                epabx_masters.callcode_insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Call Code saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Call Code '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            epabx_masters.callcode_delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ================================================================ Open helpers
def open_members_mgmt(parent=None, user: str = "SA"):
    MembersMgmtWindow(parent, user=user).exec()


def open_banquet_setup(parent=None, user: str = "SA"):
    BanquetSetupWindow(parent, user=user).exec()


def open_hr_payroll_setup(parent=None, user: str = "SA"):
    HRPayrollSetupWindow(parent, user=user).exec()


def open_epabx_setup(parent=None, user: str = "SA"):
    EPABXSetupWindow(parent, user=user).exec()


def main() -> int:
    app = QApplication(sys.argv)
    w = MembersMgmtWindow()
    w.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())