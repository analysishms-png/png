"""Front Office UI — Professional Check-In Browser + Guest Profile.

VB6 parity (fdCheckIn.frm / fdWalkInEntry.frm / fdDisplayFolio.frm):
  • Left panel: in-house folio grid with Room / Guest / Arrival / Departure /
    Balance colour-coded (green=settled, orange=outstanding, red=overdue).
  • Right panel: selected folio detail — room info, guest info, charge summary.
  • Toolbar: New Check-In | Refresh | Amend Departure | Room Change |
    Apply Discount | Merge Folio | Print Folio | Close.
  • Status bar mirrors VB6 LblStatus (house count).
  • New Check-In dialog: full VB6 fdWalkInEntry field set (Guest Name,
    GuestProf, Arrival, Departure, Room, Adults, Children, Plan, Rate code …).
  • FO-BUG-007 FIX: PYT* guard removed from normal workflow — users can
    check-in any guest.  Delete still keeps PYT* guard (test safety).

Run: python -m HMS_py.ui.frontoffice
"""
from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt, QDate, QTimer, QSize
from PyQt6.QtGui import QColor, QFont, QShortcut, QKeySequence, QIcon, QBrush
from PyQt6.QtWidgets import (
    QApplication, QDateEdit, QDialog, QFormLayout, QFrame,
    QGroupBox, QHBoxLayout, QHeaderView, QInputDialog, QLabel,
    QLineEdit, QMessageBox, QPushButton, QSizePolicy,
    QSplitter, QTableWidget, QTableWidgetItem, QTabWidget,
    QVBoxLayout, QWidget, QScrollArea, QGridLayout, QComboBox,
    QSpinBox, QDoubleSpinBox, QStatusBar,
)

from HMS_py.core import checkin, guestprof, checkout as co_mod
from HMS_py.ui import theme as _theme
from HMS_py.ui.base_master import BaseMasterForm, Field, MasterConfig, make_delete_guard
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action

# ─── colour helpers ────────────────────────────────────────────────────────
_PAL = _theme.palette


def _cell(val, align=Qt.AlignmentFlag.AlignLeft) -> QTableWidgetItem:
    if isinstance(val, (datetime.date, datetime.datetime)):
        val = f"{val:%d/%b/%Y}"
    it = QTableWidgetItem("" if val is None else str(val))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    it.setForeground(QColor(_PAL()["text"]))
    it.setTextAlignment(align | Qt.AlignmentFlag.AlignVCenter)
    return it


def _cell_color(val, color: str, bold: bool = False) -> QTableWidgetItem:
    it = _cell(val)
    it.setForeground(QColor(color))
    if bold:
        f = it.font(); f.setBold(True); it.setFont(f)
    return it


def _header_label(text: str) -> QLabel:
    lbl = QLabel(text)
    lbl.setStyleSheet(
        "background: qlineargradient(x1:0,y1:0,x2:0,y2:1,"
        f"stop:0 {_PAL()['header_grad_top']},"
        f"stop:1 {_PAL()['header_grad_bottom']});"
        "color: #1e3a5f; font-size: 12pt; font-weight: bold;"
        "padding: 8px 16px; border-bottom: 2px solid #2563eb;")
    lbl.setAlignment(Qt.AlignmentFlag.AlignCenter)
    return lbl


def _section_label(text: str) -> QLabel:
    lbl = QLabel(text)
    lbl.setStyleSheet(
        "color: #1e3a5f; font-size: 10pt; font-weight: bold;"
        f"background: {_PAL()['header_grad_top']};"
        "padding: 4px 8px; border-radius: 3px; margin-top: 4px;")
    return lbl


def _separator() -> QFrame:
    f = QFrame()
    f.setFrameShape(QFrame.Shape.HLine)
    f.setStyleSheet(f"color: {_PAL()['border_strong']};")
    return f


def _toolbar_btn(text: str, tip: str = "", role: str = "normal",
                 icon_text: str = "") -> QPushButton:
    b = QPushButton(f"{icon_text}  {text}".strip() if icon_text else text)
    b.setToolTip(tip)
    b.setMinimumHeight(34)
    b.setMinimumWidth(120)
    p = _PAL()
    st = _theme.status_colors()
    if role == "primary":
        b.setStyleSheet(
            f"QPushButton{{background:{p['accent']};color:white;"
            f"font-weight:bold;border:none;border-radius:5px;padding:5px 14px;}}"
            f"QPushButton:hover{{background:{p['accent_hover']};}}"
            f"QPushButton:pressed{{background:#1e40af;}}")
    elif role == "danger":
        b.setStyleSheet(
            f"QPushButton{{background:{st['danger']};color:white;"
            f"font-weight:bold;border:none;border-radius:5px;padding:5px 14px;}}"
            f"QPushButton:hover{{background:{st['danger_dark'] if 'danger_dark' in st else '#b91c1c'};}}")
    elif role == "warning":
        b.setStyleSheet(
            f"QPushButton{{background:{st['warning']};color:white;"
            f"font-weight:bold;border:none;border-radius:5px;padding:5px 14px;}}"
            f"QPushButton:hover{{background:#b45309;}}")
    else:
        b.setStyleSheet(
            f"QPushButton{{background:{p['surface_solid']};color:{p['text']};"
            f"border:1px solid {p['border_strong']};border-radius:5px;padding:5px 14px;}}"
            f"QPushButton:hover{{background:{p['surface_hover']};border-color:{p['accent']};}}")
    mark_desktop_action(b)
    return b


# ─── Guest Profile Config ───────────────────────────────────────────────────
def guestprof_config() -> MasterConfig:
    return MasterConfig(
        title="Guest Profile - HMS Front Office",
        columns=[("Code", "code"), ("Name", "name"), ("Add1", "add1"),
                 ("City", "city"), ("Phone", "phone"), ("Mobile", "mobile")],
        fields=[
            Field("code", "Code (auto if blank)",
                  max_len=guestprof.LIMITS["code"],
                  placeholder="Leave blank for auto (KK######)"),
            Field("name", "Full Name *", max_len=guestprof.LIMITS["name"],
                  required=True, placeholder="Guest full name"),
            Field("add1", "Address", max_len=guestprof.LIMITS["add1"]),
            Field("city", "City Code", max_len=guestprof.LIMITS["city"],
                  placeholder="e.g. KK0002"),
            Field("type", "Type", max_len=guestprof.LIMITS["type"],
                  placeholder="India or Foreign"),
            Field("phone", "Phone", max_len=guestprof.LIMITS["phone"]),
            Field("mobile", "Mobile", max_len=guestprof.LIMITS["mobile"]),
            Field("email", "Email", max_len=guestprof.LIMITS["email"]),
            Field("nationality", "Nationality",
                  max_len=guestprof.LIMITS["nationality"]),
        ],
        api=guestprof,
        delete_guard=make_delete_guard("PYT"),
    )


def open_guestprof(parent=None):
    BaseMasterForm(guestprof_config(), parent).exec()


# ─── Folio Detail Panel ─────────────────────────────────────────────────────
class FolioDetailPanel(QWidget):
    """Right panel — shows selected folio info + charge summary.
    VB6 fdDisplayFolio parity: Room, Guest, Dates, Balance, Charges table."""

    CHARGE_HDRS = ["Date", "Code", "Type", "Charge (Dr)", "Payment (Cr)", "Remarks"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self._build()

    def _build(self):
        lay = QVBoxLayout(self)
        lay.setContentsMargins(8, 4, 8, 4)
        lay.setSpacing(6)

        # ── Guest / Room Info ────────────────────────────────────
        info_box = QGroupBox("Folio Details")
        info_box.setStyleSheet(
            f"QGroupBox{{font-weight:bold;color:{_PAL()['text']};"
            f"border:1px solid {_PAL()['border_strong']};border-radius:5px;"
            f"margin-top:8px;padding:6px;}} "
            f"QGroupBox::title{{subcontrol-origin:margin;left:10px;padding:0 3px;}}")
        grid = QGridLayout(info_box)
        grid.setSpacing(6)

        def _lbl(t, bold=False):
            l = QLabel(t)
            l.setStyleSheet(f"color:{_PAL()['text_dim']};font-size:9pt;" +
                            ("font-weight:bold;" if bold else ""))
            return l

        def _val():
            v = QLabel("—")
            v.setStyleSheet(
                f"color:{_PAL()['text']};font-size:10pt;font-weight:bold;")
            v.setTextInteractionFlags(Qt.TextInteractionFlag.TextSelectableByMouse)
            return v

        self.lbl_folio = _val()
        self.lbl_room = _val()
        self.lbl_guest = _val()
        self.lbl_prof = _val()
        self.lbl_arr = _val()
        self.lbl_dep = _val()
        self.lbl_days = _val()
        self.lbl_rate = _val()

        for row, (caption, widget) in enumerate([
            ("Folio #",      self.lbl_folio),
            ("Room",         self.lbl_room),
            ("Guest",        self.lbl_guest),
            ("Guest Prof",   self.lbl_prof),
            ("Arrival",      self.lbl_arr),
            ("Departure",    self.lbl_dep),
            ("Days",         self.lbl_days),
            ("Rate Code",    self.lbl_rate),
        ]):
            grid.addWidget(_lbl(caption), row, 0)
            grid.addWidget(widget, row, 1)
        lay.addWidget(info_box)

        # ── Balance ──────────────────────────────────────────────
        bal_frame = QFrame()
        bal_frame.setStyleSheet(
            f"background:{_PAL()['surface_solid']};"
            f"border:1px solid {_PAL()['border_strong']};"
            "border-radius:5px; padding:6px;")
        bal_lay = QHBoxLayout(bal_frame)
        bal_lay.setSpacing(20)
        for attr, caption in [("lbl_dr", "Charges (Dr)"),
                               ("lbl_cr", "Payments (Cr)"),
                               ("lbl_bal", "Balance")]:
            col = QVBoxLayout()
            cap = QLabel(caption)
            cap.setStyleSheet(
                f"color:{_PAL()['text_dim']};font-size:8pt;font-weight:bold;")
            cap.setAlignment(Qt.AlignmentFlag.AlignCenter)
            val = QLabel("—")
            val.setStyleSheet("font-size:13pt;font-weight:bold;")
            val.setAlignment(Qt.AlignmentFlag.AlignCenter)
            setattr(self, attr, val)
            col.addWidget(cap); col.addWidget(val)
            bal_lay.addLayout(col)
        lay.addWidget(bal_frame)

        # ── Charges table ─────────────────────────────────────────
        lay.addWidget(_section_label("Charge / Payment Lines"))
        self.tbl_charges = QTableWidget(0, len(self.CHARGE_HDRS))
        self.tbl_charges.setHorizontalHeaderLabels(self.CHARGE_HDRS)
        self.tbl_charges.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl_charges.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl_charges.horizontalHeader().setStretchLastSection(True)
        self.tbl_charges.setAlternatingRowColors(True)
        self.tbl_charges.verticalHeader().setVisible(False)
        self.tbl_charges.setStyleSheet(
            f"QTableWidget{{gridline-color:{_PAL()['border']};"
            f"font-size:9pt;}} "
            f"QHeaderView::section{{background:{_PAL()['header_grad_top']};"
            f"color:{_PAL()['text']};font-weight:bold;padding:3px;border:none;"
            f"border-bottom:1px solid {_PAL()['border_strong']};}}"
            "QTableWidget::item{padding:2px;}")
        self.tbl_charges.setMaximumHeight(220)
        lay.addWidget(self.tbl_charges)

    def clear(self):
        for w in (self.lbl_folio, self.lbl_room, self.lbl_guest,
                  self.lbl_prof, self.lbl_arr, self.lbl_dep,
                  self.lbl_days, self.lbl_rate):
            w.setText("—")
        for w in (self.lbl_dr, self.lbl_cr, self.lbl_bal):
            w.setText("—")
            w.setStyleSheet("font-size:13pt;font-weight:bold;")
        self.tbl_charges.setRowCount(0)

    def load(self, rec: dict):
        self.lbl_folio.setText(str(rec.get("folio", "—")))
        self.lbl_room.setText(rec.get("roomno", "—") or "—")
        self.lbl_guest.setText(rec.get("name", "—"))
        self.lbl_prof.setText(rec.get("guestprof", "—"))
        arr = rec.get("arrdate") or rec.get("vdate")
        dep = rec.get("depdate")
        self.lbl_arr.setText(f"{arr:%d/%b/%Y}" if arr else "—")
        self.lbl_dep.setText(f"{dep:%d/%b/%Y}" if dep else "—")
        self.lbl_days.setText(str(rec.get("nodays", "—")))
        self.lbl_rate.setText(rec.get("ratecode", "—") or "—")

    def load_balance(self, bal: dict | None):
        if bal is None:
            for w in (self.lbl_dr, self.lbl_cr, self.lbl_bal):
                w.setText("—"); w.setStyleSheet("font-size:13pt;font-weight:bold;")
            return
        dr = float(bal.get("charges_dr") or 0)
        cr = float(bal.get("payments_cr") or 0)
        b = float(bal.get("balance") or 0)
        st = _theme.status_colors()
        self.lbl_dr.setText(f"₹{dr:,.2f}")
        self.lbl_dr.setStyleSheet(f"font-size:13pt;font-weight:bold;color:{st['danger_text']};")
        self.lbl_cr.setText(f"₹{cr:,.2f}")
        self.lbl_cr.setStyleSheet(f"font-size:13pt;font-weight:bold;color:{st['success_text']};")
        color = (st['danger_text'] if b > 0.005
                 else st['success_text'] if abs(b) < 0.005
                 else st['warning'])
        self.lbl_bal.setText(f"₹{b:,.2f}")
        self.lbl_bal.setStyleSheet(f"font-size:14pt;font-weight:bold;color:{color};")

    def load_charges(self, charges: list):
        self.tbl_charges.setRowCount(len(charges))
        st = _theme.status_colors()
        for r, ch in enumerate(charges):
            vdate = ch.get("vdate") or ch.get("date")
            date_str = f"{vdate:%d/%b/%Y}" if isinstance(vdate, (datetime.date, datetime.datetime)) else str(vdate or "")
            dr = float(ch.get("amt_dr") or ch.get("dr") or 0)
            cr = float(ch.get("amt_cr") or ch.get("cr") or 0)
            vals = [
                date_str,
                ch.get("paycode") or ch.get("code") or "",
                ch.get("paytype") or ch.get("type") or "",
                f"{dr:.2f}" if dr else "",
                f"{cr:.2f}" if cr else "",
                ch.get("remarks") or ch.get("comments") or "",
            ]
            for c, v in enumerate(vals):
                if c == 3 and dr > 0:
                    it = _cell_color(v, st["danger_text"])
                elif c == 4 and cr > 0:
                    it = _cell_color(v, st["success_text"])
                else:
                    it = _cell(v)
                self.tbl_charges.setItem(r, c, it)


# ─── New Check-In Dialog ────────────────────────────────────────────────────
class NewCheckInDialog(QDialog):
    """VB6 fdWalkInEntry parity — full check-in entry form.
    FO-BUG-007 FIX: PYT* guard removed from check-in (production guests allowed).
    """

    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "newCheckIn")
        self.setWindowTitle("New Check-In — Front Office")
        self.setModal(True)
        self.setMinimumWidth(620)
        self.result_folio: int | None = None
        self._build()

    def _build(self):
        root = QVBoxLayout(self)
        root.setSpacing(10)

        # Header
        root.addWidget(_header_label("New Check-In Entry"))

        # Scroll area for form
        scroll = QScrollArea()
        scroll.setWidgetResizable(True)
        scroll.setFrameShape(QFrame.Shape.NoFrame)
        content = QWidget()
        form_lay = QVBoxLayout(content)
        form_lay.setSpacing(8)
        scroll.setWidget(content)
        root.addWidget(scroll)

        p = _PAL()
        field_style = (
            f"QLineEdit, QDateEdit, QSpinBox, QDoubleSpinBox, QComboBox {{"
            f"background:{p['surface_solid']};color:{p['text']};"
            f"border:1px solid {p['border_strong']};border-radius:4px;"
            f"padding:5px 8px;font-size:10pt;}}"
            f"QLineEdit:focus, QDateEdit:focus, QSpinBox:focus, "
            f"QDoubleSpinBox:focus, QComboBox:focus {{"
            f"border:2px solid {p['accent']};}}"
            f"QLabel{{color:{p['text']};font-size:10pt;}}")
        content.setStyleSheet(field_style)

        # ── Section: Guest ────────────────────────────────────────
        form_lay.addWidget(_section_label("Guest Information"))
        g_form = QFormLayout(); g_form.setSpacing(8)

        self.ed_name = QLineEdit()
        self.ed_name.setMaxLength(50)
        self.ed_name.setPlaceholderText("Guest full name (required)")
        g_form.addRow("Guest Name *", self.ed_name)

        self.ed_code = QLineEdit()
        self.ed_code.setPlaceholderText("Leave blank → auto GuestProf code")
        g_form.addRow("GuestProf Code", self.ed_code)

        self.ed_city = QLineEdit()
        self.ed_city.setPlaceholderText("City code (e.g. KK0002)")
        g_form.addRow("City", self.ed_city)

        self.ed_book = QLineEdit()
        self.ed_book.setPlaceholderText("BookingDocId (from Reservation, optional)")
        g_form.addRow("Booking DocId", self.ed_book)
        form_lay.addLayout(g_form)

        # ── Section: Stay ─────────────────────────────────────────
        form_lay.addWidget(_section_label("Stay Details"))
        s_form = QFormLayout(); s_form.setSpacing(8)

        today = QDate.currentDate()
        self.de_arr = QDateEdit(today); self.de_arr.setCalendarPopup(True)
        self.de_arr.setDisplayFormat("dd/MMM/yyyy")
        s_form.addRow("Arrival Date", self.de_arr)

        self.de_dep = QDateEdit(today.addDays(1)); self.de_dep.setCalendarPopup(True)
        self.de_dep.setDisplayFormat("dd/MMM/yyyy")
        s_form.addRow("Departure Date", self.de_dep)

        self.sp_adult = QSpinBox(); self.sp_adult.setRange(1, 20); self.sp_adult.setValue(1)
        s_form.addRow("Adults", self.sp_adult)

        self.sp_child = QSpinBox(); self.sp_child.setRange(0, 10); self.sp_child.setValue(0)
        s_form.addRow("Children", self.sp_child)

        self.ed_chkintime = QLineEdit(datetime.datetime.now().strftime("%H:%M"))
        self.ed_chkintime.setPlaceholderText("HH:MM")
        s_form.addRow("Check-In Time", self.ed_chkintime)
        form_lay.addLayout(s_form)

        # ── Section: Room ─────────────────────────────────────────
        form_lay.addWidget(_section_label("Room & Rate"))
        r_form = QFormLayout(); r_form.setSpacing(8)

        self.ed_room = QLineEdit()
        self.ed_room.setPlaceholderText("Room No (blank = auto assign first free room)")
        r_form.addRow("Room No", self.ed_room)

        self.ed_rate = QLineEdit()
        self.ed_rate.setPlaceholderText("Rate code (optional)")
        r_form.addRow("Rate Code", self.ed_rate)

        self.ed_tarrif = QDoubleSpinBox()
        self.ed_tarrif.setRange(0, 999999); self.ed_tarrif.setDecimals(2)
        r_form.addRow("Room Tariff", self.ed_tarrif)

        self.ed_rack = QDoubleSpinBox()
        self.ed_rack.setRange(0, 999999); self.ed_rack.setDecimals(2)
        r_form.addRow("Rack Rate", self.ed_rack)

        self.ed_taxstru = QLineEdit()
        self.ed_taxstru.setPlaceholderText("Tax Structure code (optional)")
        r_form.addRow("Room Tax Stru", self.ed_taxstru)
        form_lay.addLayout(r_form)

        # ── Section: Plan ─────────────────────────────────────────
        form_lay.addWidget(_section_label("Plan / Package (Optional)"))
        pl_form = QFormLayout(); pl_form.setSpacing(8)

        self.ed_plan = QLineEdit(); self.ed_plan.setPlaceholderText("Plan code")
        pl_form.addRow("Plan Code", self.ed_plan)

        self.ed_planamt = QDoubleSpinBox()
        self.ed_planamt.setRange(0, 999999); self.ed_planamt.setDecimals(2)
        pl_form.addRow("Plan Amount", self.ed_planamt)

        self.ed_incinrate = QLineEdit(); self.ed_incinrate.setPlaceholderText("Y/N")
        self.ed_incinrate.setMaxLength(1)
        pl_form.addRow("Incl in Rate", self.ed_incinrate)

        self.ed_plandisc = QDoubleSpinBox()
        self.ed_plandisc.setRange(0, 100); self.ed_plandisc.setDecimals(2)
        pl_form.addRow("Plan Discount %", self.ed_plandisc)
        form_lay.addLayout(pl_form)

        # ── Buttons ───────────────────────────────────────────────
        root.addWidget(_separator())
        btns = QHBoxLayout(); btns.setSpacing(10)
        self.btn_save = _toolbar_btn("Save Check-In", "Save (Enter)", "primary")
        self.btn_cancel = _toolbar_btn("Cancel", "Discard (Esc)")
        btns.addStretch()
        btns.addWidget(self.btn_save)
        btns.addWidget(self.btn_cancel)
        root.addLayout(btns)

        self.btn_save.clicked.connect(self._save)
        self.btn_cancel.clicked.connect(self.reject)
        self.btn_save.setDefault(True)
        self.ed_name.setFocus()

        QShortcut(QKeySequence("Escape"), self, activated=self.reject)

    def _save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Check-In", "Guest Name zaroori hai")
            self.ed_name.setFocus(); return

        arr = self.de_arr.date().toPyDate()
        dep = self.de_dep.date().toPyDate()
        if dep <= arr:
            QMessageBox.warning(self, "Check-In",
                                "Departure date must be after Arrival date")
            return

        gcode = self.ed_code.text().strip()
        try:
            if not gcode:
                gcode = guestprof.next_code()
                guestprof.insert({"code": gcode, "name": name,
                                  "city": self.ed_city.text().strip()})

            planamt = self.ed_planamt.value() or None
            plandisc = self.ed_plandisc.value() or None
            tarrif = self.ed_tarrif.value() or None
            rack = self.ed_rack.value() or None

            self.result_folio = checkin.create_checkin(
                gcode, name, arr, dep,
                city=self.ed_city.text().strip(),
                bookingdocid=self.ed_book.text().strip(),
                roomno=self.ed_room.text().strip(),
                adult=self.sp_adult.value(),
                children=self.sp_child.value(),
                ratecode=self.ed_rate.text().strip(),
                chkintime=self.ed_chkintime.text().strip(),
                plancode=self.ed_plan.text().strip(),
                planamt=planamt,
                incinrate=self.ed_incinrate.text().strip(),
                plandisc=plandisc,
                roomtarrif=tarrif,
                rackrate=rack,
                roomtaxstru=self.ed_taxstru.text().strip(),
            )
            self.accept()
        except ValueError as e:
            QMessageBox.warning(self, "Check-In", str(e))
        except Exception as e:
            QMessageBox.critical(self, "Check-In — DB Error", str(e))


# ─── CheckIn Browser (Main Window) ─────────────────────────────────────────
class CheckInBrowser(QDialog):
    """Professional Front Office Check-In browser.

    Left: folio grid (Room | FolioNo | Guest | Arrival | Departure | Days | Balance)
    Right: FolioDetailPanel (room info + balance + charge lines)
    Bottom toolbar: all actions
    Status bar: house count
    """

    FOLIO_COLS = ["Room", "Folio #", "Guest Name", "Guest Prof",
                  "Arrival", "Departure", "Days", "Balance", "Status"]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        apply_desktop_surface(self, "checkInBrowser")
        self.setWindowTitle("Front Office — Check-In Browser")
        self.setMinimumSize(1200, 700)
        self._build()
        self._reload_timer = QTimer(self)
        self._reload_timer.setSingleShot(True)
        self._reload_timer.timeout.connect(self.reload)
        self.reload()

    def _build(self):
        p = _PAL()
        root = QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        root.setSpacing(0)

        # ── Header bar ────────────────────────────────────────────
        hdr = _header_label("  🏨  Front Office — Check-In Browser")
        hdr.setFixedHeight(52)
        root.addWidget(hdr)

        # ── Toolbar ───────────────────────────────────────────────
        tb = QFrame()
        tb.setStyleSheet(
            f"background:{p['header_grad_bottom']};"
            f"border-bottom:1px solid {p['border_strong']};")
        tb_lay = QHBoxLayout(tb)
        tb_lay.setContentsMargins(10, 6, 10, 6)
        tb_lay.setSpacing(8)

        self.btn_new    = _toolbar_btn("New Check-In", "Create new check-in (Ctrl+N)", "primary", "➕")
        self.btn_amend  = _toolbar_btn("Amend Departure", "Change departure date (Ctrl+A)", icon_text="✏️")
        self.btn_room   = _toolbar_btn("Room Change", "Move guest to another room", icon_text="🔄")
        self.btn_disc   = _toolbar_btn("Discount", "Apply room/service discount", icon_text="🏷️")
        self.btn_merge  = _toolbar_btn("Merge Folio", "Merge folios (Ctrl+M)", icon_text="🔗")
        self.btn_print  = _toolbar_btn("Print Folio", "Print folio bill (Ctrl+P)", icon_text="🖨️")
        self.btn_ref    = _toolbar_btn("Refresh", "Reload (F5)", icon_text="🔃")
        self.btn_close  = _toolbar_btn("Close", "Close window (Esc)", icon_text="✖")

        for b in (self.btn_new, self.btn_amend, self.btn_room, self.btn_disc,
                  self.btn_merge, self.btn_print, self.btn_ref, self.btn_close):
            tb_lay.addWidget(b)
        tb_lay.addStretch()

        # Search box
        self.ed_search = QLineEdit()
        self.ed_search.setPlaceholderText("🔍  Search guest / folio / room …")
        self.ed_search.setMinimumWidth(220)
        self.ed_search.setStyleSheet(
            f"background:{p['surface_solid']};color:{p['text']};"
            f"border:1px solid {p['border_strong']};border-radius:16px;"
            "padding:5px 14px;font-size:10pt;")
        self.ed_search.textChanged.connect(self._on_search)
        tb_lay.addWidget(self.ed_search)
        root.addWidget(tb)

        # ── Splitter: grid | detail ───────────────────────────────
        splitter = QSplitter(Qt.Orientation.Horizontal)
        splitter.setHandleWidth(4)
        root.addWidget(splitter, 1)

        # ── Left: folio grid ──────────────────────────────────────
        left = QWidget()
        left_lay = QVBoxLayout(left)
        left_lay.setContentsMargins(8, 6, 4, 6)
        left_lay.setSpacing(4)
        left_lay.addWidget(_section_label("In-House Guests"))

        self.tbl = QTableWidget(0, len(self.FOLIO_COLS))
        self.tbl.setHorizontalHeaderLabels(self.FOLIO_COLS)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.verticalHeader().setVisible(False)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setShowGrid(False)
        self.tbl.setStyleSheet(
            f"QTableWidget{{gridline-color:{p['border']};font-size:9.5pt;"
            f"selection-background-color:{p['accent_soft']};"
            f"selection-color:{p['text']};}}"
            f"QHeaderView::section{{background:{p['header_grad_top']};"
            f"color:{p['text']};font-weight:bold;padding:5px;"
            f"border:none;border-bottom:2px solid {p['accent']};}}"
            "QTableWidget::item{padding:4px;}"
            f"QTableWidget::item:selected{{background:{p['accent_soft']};"
            f"color:{p['text']};}}")
        # Column widths
        self.tbl.horizontalHeader().setSectionResizeMode(0, QHeaderView.ResizeMode.ResizeToContents)
        self.tbl.horizontalHeader().setSectionResizeMode(1, QHeaderView.ResizeMode.ResizeToContents)
        self.tbl.horizontalHeader().setSectionResizeMode(2, QHeaderView.ResizeMode.Stretch)
        self.tbl.currentCellChanged.connect(lambda r, c, pr, pc: self._on_row_changed(r))
        self.tbl.cellDoubleClicked.connect(self._on_amend)
        left_lay.addWidget(self.tbl)

        self._lbl_count = QLabel("0 in-house")
        self._lbl_count.setStyleSheet(f"color:{p['text_dim']};font-size:9pt;padding:2px;")
        left_lay.addWidget(self._lbl_count)

        splitter.addWidget(left)
        splitter.setStretchFactor(0, 3)

        # ── Right: detail panel ───────────────────────────────────
        self.detail = FolioDetailPanel()
        splitter.addWidget(self.detail)
        splitter.setStretchFactor(1, 2)

        # ── Status bar ────────────────────────────────────────────
        self.status = QStatusBar()
        self.status.setStyleSheet(
            f"background:{p['header_grad_bottom']};color:{p['text_dim']};"
            "font-size:9pt;border-top:1px solid #c0c0d0;")
        root.addWidget(self.status)

        # ── Signal wiring ─────────────────────────────────────────
        self.btn_new.clicked.connect(self._on_new)
        self.btn_amend.clicked.connect(self._on_amend)
        self.btn_room.clicked.connect(self._on_room_change)
        self.btn_disc.clicked.connect(self._on_discount)
        self.btn_merge.clicked.connect(self._on_merge)
        self.btn_print.clicked.connect(self._on_print)
        self.btn_ref.clicked.connect(self.reload)
        self.btn_close.clicked.connect(self.reject)

        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._on_new)
        QShortcut(QKeySequence("Ctrl+A"), self, activated=self._on_amend)
        QShortcut(QKeySequence("Ctrl+M"), self, activated=self._on_merge)
        QShortcut(QKeySequence("Ctrl+P"), self, activated=self._on_print)
        QShortcut(QKeySequence("F5"),     self, activated=self.reload)
        QShortcut(QKeySequence("Escape"), self, activated=self.reject)

        self._all_rows: list[dict] = []

    # ── Data loading ──────────────────────────────────────────────────────
    def reload(self, keep_folio: int | None = None):
        self.status.showMessage("Loading …")
        try:
            rows = checkin.list_checkins()
        except Exception as e:
            self.status.showMessage(f"Load error: {e}")
            return
        self._all_rows = rows
        self._populate(rows, keep_folio)

    def _populate(self, rows: list[dict], keep_folio: int | None = None):
        st = _theme.status_colors()
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            dep = rec.get("depdate")
            today = datetime.date.today()
            overdue = dep and isinstance(dep, datetime.date) and dep < today
            # Lazy balance — show placeholder; load on click
            vals = [
                rec.get("roomno", ""),
                rec["folio"],
                rec["name"],
                rec.get("guestprof", ""),
                rec.get("arrdate") or rec.get("vdate"),
                dep,
                rec.get("nodays", ""),
                "—",          # balance loaded on demand
                "Overdue" if overdue else "In-House",
            ]
            for c, v in enumerate(vals):
                if c == 8 and overdue:
                    it = _cell_color(v, st["danger_text"], bold=True)
                elif c == 1:
                    it = _cell(v, Qt.AlignmentFlag.AlignRight)
                elif c in (4, 5):
                    it = _cell(v)
                else:
                    it = _cell(v)
                self.tbl.setItem(r, c, it)
        self._lbl_count.setText(f"{len(rows)} in-house guest(s)")
        self.status.showMessage(f"Ready — {len(rows)} check-in(s) loaded")
        if keep_folio:
            for r, rec in enumerate(rows):
                if rec["folio"] == keep_folio:
                    self.tbl.selectRow(r); return
        if rows:
            self.tbl.selectRow(0)

    def _on_search(self, text: str):
        t = text.strip().lower()
        if not t:
            self._populate(self._all_rows)
            return
        filtered = [r for r in self._all_rows
                    if t in str(r.get("folio", "")).lower()
                    or t in (r.get("name") or "").lower()
                    or t in (r.get("roomno") or "").lower()
                    or t in (r.get("guestprof") or "").lower()]
        self._populate(filtered)

    def _on_row_changed(self, row: int):
        if row < 0 or row >= self.tbl.rowCount():
            self.detail.clear(); return
        rec = self._all_rows[row] if row < len(self._all_rows) else None
        if not rec:
            self.detail.clear(); return
        self.detail.load(rec)
        # Load balance + charges
        try:
            bal = co_mod.folio_balance(rec["folio"])
            self.detail.load_balance(bal)
            # Update balance cell in grid with colour
            b = bal["balance"]
            st = _theme.status_colors()
            color = (st["danger_text"] if b > 0.005
                     else st["success_text"] if abs(b) < 0.005
                     else st["warning"])
            it = _cell_color(f"₹{b:,.2f}", color, bold=True)
            self.tbl.setItem(row, 7, it)
        except Exception:
            self.detail.load_balance(None)
        # Charges
        try:
            from HMS_py.core import expenseentry
            charges = expenseentry.list_folio_charges(rec["folio"])
            self.detail.load_charges(charges)
        except Exception:
            try:
                from HMS_py.core import folio as folio_mod
                charges = folio_mod.charges_detail(rec["folio"])
                self.detail.load_charges(charges)
            except Exception:
                pass

    # ── Actions ───────────────────────────────────────────────────────────
    def _on_new(self):
        dlg = NewCheckInDialog(self)
        if dlg.exec() == QDialog.DialogCode.Accepted and dlg.result_folio:
            self.status.showMessage(
                f"✅  Check-In #{dlg.result_folio} saved successfully")
            self.reload(keep_folio=dlg.result_folio)

    def _selected(self) -> dict | None:
        r = self.tbl.currentRow()
        if r < 0 or r >= len(self._all_rows):
            return None
        return self._all_rows[r]

    def _on_amend(self):
        """Amend Departure (VB6 fdAmendEntry parity)."""
        rec = self._selected()
        if not rec:
            QMessageBox.information(self, "Amend", "Pehle folio select karo")
            return
        cur_dep = rec.get("depdate")
        dlg = QDialog(self)
        dlg.setWindowTitle(f"Amend Departure — Folio #{rec['folio']} ({rec['name']})")
        dlg.setModal(True)
        form = QFormLayout(dlg)
        de_new = QDateEdit()
        de_new.setCalendarPopup(True)
        de_new.setDisplayFormat("dd/MMM/yyyy")
        if isinstance(cur_dep, datetime.date):
            de_new.setDate(QDate(cur_dep.year, cur_dep.month, cur_dep.day))
        else:
            de_new.setDate(QDate.currentDate().addDays(1))
        form.addRow(f"Current Departure: {cur_dep}", QLabel(""))
        form.addRow("New Departure Date *", de_new)
        btns = QHBoxLayout()
        ok = _toolbar_btn("Save", role="primary"); cancel = _toolbar_btn("Cancel")
        ok.clicked.connect(dlg.accept); cancel.clicked.connect(dlg.reject)
        btns.addStretch(); btns.addWidget(ok); btns.addWidget(cancel)
        main_lay = QVBoxLayout(); main_lay.addLayout(form); main_lay.addLayout(btns)
        QWidget().setLayout(dlg.layout()); dlg.setLayout(main_lay)
        if dlg.exec() != QDialog.DialogCode.Accepted:
            return
        new_dep = de_new.date().toPyDate()
        try:
            from HMS_py.core import folio as folio_mod
            folio_mod.amend_departure(rec["folio"], new_dep, user=self.user)
            self.status.showMessage(
                f"✅  Folio #{rec['folio']} departure amended to {new_dep:%d/%b/%Y}")
            self._reload_timer.start(300)
        except ValueError as e:
            QMessageBox.warning(self, "Amend Departure", str(e))
        except Exception as e:
            QMessageBox.critical(self, "Amend Departure", f"DB error: {e}")

    def _on_room_change(self):
        """Room Change (VB6 fdRoomChange parity)."""
        rec = self._selected()
        if not rec:
            QMessageBox.information(self, "Room Change", "Pehle folio select karo")
            return
        from HMS_py.core import fo_ops
        try:
            free = fo_ops.free_rooms()
        except Exception:
            free = []
        new_room, ok = QInputDialog.getText(
            self, f"Room Change — {rec['name']}",
            f"Current Room: {rec.get('roomno', '?')}\n"
            f"Free rooms: {', '.join(free[:10]) if free else 'none found'}\n\n"
            "New Room No:")
        if not ok or not new_room.strip():
            return
        reason, ok2 = QInputDialog.getText(
            self, "Room Change", "Reason (optional):")
        if not ok2:
            return
        try:
            result = fo_ops.room_change(
                rec["docid"], new_room.strip(),
                reason=reason.strip(), user=self.user)
            self.status.showMessage(
                f"✅  Room changed: {result['old_room']} → {result['new_room']}"
                f" (Folio #{result['folio']})")
            self._reload_timer.start(300)
        except ValueError as e:
            QMessageBox.warning(self, "Room Change", str(e))
        except Exception as e:
            QMessageBox.critical(self, "Room Change", f"DB error: {e}")

    def _on_discount(self):
        rec = self._selected()
        if not rec:
            QMessageBox.information(self, "Discount", "Pehle folio select karo")
            return
        from HMS_py.core import folio as folio_mod
        dlg = QDialog(self)
        dlg.setWindowTitle(f"Apply Discount — Folio #{rec['folio']}")
        dlg.setModal(True)
        form = QFormLayout()
        sp_ro = QDoubleSpinBox(); sp_ro.setRange(0, 100); sp_ro.setSuffix(" %"); sp_ro.setDecimals(2)
        sp_rs = QDoubleSpinBox(); sp_rs.setRange(0, 100); sp_rs.setSuffix(" %"); sp_rs.setDecimals(2)
        form.addRow("Room Discount %", sp_ro)
        form.addRow("Service Discount %", sp_rs)
        btns = QHBoxLayout()
        ok = _toolbar_btn("Apply", role="primary"); cancel = _toolbar_btn("Cancel")
        ok.clicked.connect(dlg.accept); cancel.clicked.connect(dlg.reject)
        btns.addStretch(); btns.addWidget(ok); btns.addWidget(cancel)
        lay = QVBoxLayout(dlg); lay.addLayout(form); lay.addLayout(btns)
        if dlg.exec() != QDialog.DialogCode.Accepted:
            return
        try:
            folio_mod.apply_discount(rec["folio"], sp_ro.value(), sp_rs.value(), user=self.user)
            self.status.showMessage(f"✅  Discount applied on Folio #{rec['folio']}")
        except Exception as e:
            QMessageBox.critical(self, "Discount", str(e))

    def _on_merge(self):
        rec = self._selected()
        if not rec:
            QMessageBox.information(self, "Merge Folio", "Pehle folio select karo")
            return
        target, ok = QInputDialog.getInt(
            self, "Merge Folio",
            f"Source: Folio #{rec['folio']} — {rec['name']}\n"
            "Target Folio No:")
        if not ok:
            return
        try:
            from HMS_py.core import folio as folio_mod
            folio_mod.merge_folio(rec["folio"], target, user=self.user)
            self.status.showMessage(
                f"✅  Folio #{rec['folio']} merged into #{target}")
        except Exception as e:
            QMessageBox.critical(self, "Merge Folio", str(e))

    def _on_print(self):
        rec = self._selected()
        if not rec:
            QMessageBox.information(self, "Print", "Pehle folio select karo")
            return
        try:
            bal = co_mod.folio_balance(rec["folio"])
            from HMS_py.core import folio as folio_mod
            charges = folio_mod.charges_detail(rec["folio"])
        except Exception as e:
            QMessageBox.critical(self, "Print", str(e)); return
        from HMS_py.ui import print_preview as _pp
        text = _build_folio_bill_text(rec["folio"], bal, charges)
        _pp.preview_text(text, f"Folio Bill #{rec['folio']}", self)


def _build_folio_bill_text(folio_no: int, bal: dict, charges: list) -> str:
    """VB6 FomBill print parity — text-based folio bill."""
    from HMS_py.ui import print_preview as _pp
    lines = []
    co = _pp.company_header()
    if co:
        lines.append(co); lines.append("=" * 66)
    lines.append(f"{'GUEST FOLIO BILL':^66}")
    lines.append("-" * 66)
    lines.append(f"Folio No : {folio_no}")
    lines.append(f"Guest    : {bal.get('name', '')}")
    lines.append(f"Departure: {bal.get('depdate', '')}")
    lines.append("-" * 66)
    rows = []
    for ch in charges:
        vdate = ch.get("vdate") or ch.get("date") or ""
        if isinstance(vdate, (datetime.date, datetime.datetime)):
            vdate = f"{vdate:%d/%b/%Y}"
        rows.append([
            str(vdate),
            str(ch.get("paycode") or ch.get("code") or ""),
            f"{float(ch.get('amt_dr') or ch.get('dr') or 0):.2f}",
            f"{float(ch.get('amt_cr') or ch.get('cr') or 0):.2f}",
            str(ch.get("remarks") or ch.get("comments") or ""),
        ])
    lines.append(_pp.grid_to_text(["Date", "Code", "Dr", "Cr", "Remarks"], rows))
    lines.append("-" * 66)
    lines.append(f"{'Total Charges (Dr)':<40}: {float(bal.get('charges_dr') or 0):>10,.2f}")
    lines.append(f"{'Total Payments (Cr)':<40}: {float(bal.get('payments_cr') or 0):>10,.2f}")
    lines.append(f"{'Balance Due':<40}: {float(bal.get('balance') or 0):>10,.2f}")
    lines.append("")
    return "\n".join(lines)


def open_checkin(parent=None, user: str = "SA"):
    CheckInBrowser(parent, user=user).exec()


def main() -> int:
    app = QApplication(sys.argv)
    w = CheckInBrowser()
    w.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
