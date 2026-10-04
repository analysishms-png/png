"""Check-Out UI — Professional browser (VB6 FdCheckOut / FdRevCheckOut parity).

VB6 parity:
  Tab 1 "Active Check-Ins":
    • Grid: Room | FolioNo | Guest | Arrival | Departure | Balance (colour-coded)
    • Balance panel: Charges Dr / Payments Cr / Balance (large, coloured)
    • Charge lines table below
    • Buttons: Check-Out | Settle & Check-Out | Print Bill | Refresh | Close
  Tab 2 "Checked-Out Folios":
    • Grid: Room | FolioNo | Guest | Check-Out Date | User | Balance
    • Buttons: Reverse Check-Out | Refresh | Close

  FO-BUG-009 FIX: Removed PYT* guard from Check-Out — any guest can be
  checked out (production guests).  Only Delete still needs PYT* (test guard).

  Balance colours (VB6 bill display):
    • Green = zero balance (settled)
    • Orange = outstanding (Cr > Dr)
    • Red    = overdue / Dr > Cr

Run: python -m HMS_py.ui.checkout_ui
"""
from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt, QTimer
from PyQt6.QtGui import QColor, QFont, QKeySequence, QShortcut
from PyQt6.QtWidgets import (
    QApplication, QComboBox, QDialog, QDoubleSpinBox, QFormLayout, QFrame,
    QGroupBox, QHBoxLayout, QHeaderView, QInputDialog, QLabel, QLineEdit,
    QMessageBox, QPushButton, QSplitter, QStatusBar, QTableWidget,
    QTableWidgetItem, QTabWidget, QVBoxLayout, QWidget,
)

from HMS_py.core import checkout, expenseentry
from HMS_py.ui import theme as _theme, print_preview as _pp
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action
from HMS_py.ui.frontoffice import (
    _PAL, _cell, _cell_color, _header_label, _section_label,
    _toolbar_btn, _separator, _build_folio_bill_text,
)

# ─── Settlement Dialog ──────────────────────────────────────────────────────
class SettleDialog(QDialog):
    """VB6 fdPaymentCharge parity — payment entry before check-out."""

    PAY_TYPES = [
        ("Cash", "KKCASH"),
        ("Cheque", "KKCHEQ"),
        ("Credit Card", "KKVISA"),
        ("Company Credit", "KKCRED"),
        ("UPI / Online", "KK0006"),
        ("Member Card", "KKMEMB"),
        ("Room Transfer", "KKROOM"),
    ]

    def __init__(self, folio: int, balance: float,
                 guest: str = "", parent=None):
        super().__init__(parent)
        self.folio = folio
        self.balance = balance
        self.setWindowTitle(f"Settlement — Folio #{folio} ({guest})")
        self.setModal(True)
        self.setMinimumWidth(440)
        self._build()

    def _build(self):
        p = _PAL()
        root = QVBoxLayout(self)
        root.setSpacing(10)

        # Balance summary
        bal_frame = QFrame()
        bal_frame.setStyleSheet(
            f"background:{p['header_grad_top']};"
            f"border:1px solid {p['border_strong']};border-radius:6px;padding:8px;")
        bal_lay = QHBoxLayout(bal_frame)
        lbl = QLabel(f"Outstanding Balance:  ₹{self.balance:,.2f}")
        st = _theme.status_colors()
        lbl.setStyleSheet(
            f"font-size:13pt;font-weight:bold;"
            f"color:{st['danger_text'] if self.balance > 0 else st['success_text']};")
        bal_lay.addWidget(lbl)
        root.addWidget(bal_frame)

        # Payment form
        form = QFormLayout(); form.setSpacing(10)
        field_style = (
            f"QComboBox,QDoubleSpinBox,QLineEdit{{"
            f"background:{p['surface_solid']};color:{p['text']};"
            f"border:1px solid {p['border_strong']};border-radius:4px;"
            f"padding:5px 8px;font-size:10pt;}}")
        w = QWidget(); w.setStyleSheet(field_style)

        self.cmb_pay = QComboBox()
        for name, _ in self.PAY_TYPES:
            self.cmb_pay.addItem(name)
        form.addRow("Payment Mode", self.cmb_pay)

        self.sp_amt = QDoubleSpinBox()
        self.sp_amt.setRange(0, 9999999); self.sp_amt.setDecimals(2)
        self.sp_amt.setValue(max(self.balance, 0))
        form.addRow("Amount ₹", self.sp_amt)

        self.ed_comments = QLineEdit()
        self.ed_comments.setPlaceholderText("Payment remarks (optional)")
        form.addRow("Remarks", self.ed_comments)

        self.ed_cardno = QLineEdit(); self.ed_cardno.setPlaceholderText("Card / Cheque No")
        form.addRow("Card/Cheque No", self.ed_cardno)

        root.addLayout(form)
        root.addWidget(_separator())

        btns = QHBoxLayout()
        self.btn_ok = _toolbar_btn("Post Payment", role="primary")
        self.btn_cancel = _toolbar_btn("Cancel")
        btns.addStretch(); btns.addWidget(self.btn_ok); btns.addWidget(self.btn_cancel)
        root.addLayout(btns)

        self.btn_ok.clicked.connect(self._post)
        self.btn_cancel.clicked.connect(self.reject)
        self.btn_ok.setDefault(True)

    def _post(self):
        amt = self.sp_amt.value()
        if amt <= 0:
            QMessageBox.warning(self, "Payment", "Amount > 0 hona chahiye")
            return
        paycode = self.PAY_TYPES[self.cmb_pay.currentIndex()][1]
        try:
            from HMS_py.core import folio as folio_mod
            folio_mod.receive_payment(
                self.folio, amt, paycode=paycode,
                comments=self.ed_comments.text().strip() or "PAYMENT RECEIVED",
                cardno=self.ed_cardno.text().strip())
            QMessageBox.information(
                self, "Payment Posted",
                f"✅  ₹{amt:,.2f} posted successfully on Folio #{self.folio}")
            self.accept()
        except ValueError as e:
            QMessageBox.warning(self, "Payment", str(e))
        except Exception as e:
            QMessageBox.critical(self, "Payment — DB Error", str(e))


# ─── CheckOut Browser ───────────────────────────────────────────────────────
class CheckOutBrowser(QDialog):
    """Professional Check-Out Browser — VB6 FdCheckOut + FdRevCheckOut parity."""

    ACTIVE_COLS  = ["Room", "FolioNo", "Guest Name", "Arrival", "Departure", "Balance", "Status"]
    CO_COLS      = ["Room", "FolioNo", "Guest Name", "Check-Out Date", "By User", "Departure"]

    def __init__(self, parent=None, user: str = "SA", start_tab: int = 0):
        super().__init__(parent)
        self.user = user
        apply_desktop_surface(self, "checkOutBrowser")
        self.setWindowTitle("Front Office — Check-Out Browser")
        self.setMinimumSize(1200, 660)
        self._build()
        self.reload_active()
        self.reload_checkedout()
        if start_tab:
            self.tabs.setCurrentIndex(start_tab)

    def _build(self):
        p = _PAL()
        root = QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        root.setSpacing(0)

        # Header
        hdr = _header_label("  🏨  Front Office — Check-Out Browser")
        hdr.setFixedHeight(52)
        root.addWidget(hdr)

        # Tabs
        self.tabs = QTabWidget()
        self.tabs.setStyleSheet(
            f"QTabWidget::pane{{border:1px solid {p['border_strong']};}}"
            f"QTabBar::tab{{background:{p['surface_solid']};color:{p['text']};"
            f"padding:8px 20px;font-size:10pt;border:1px solid {p['border']};"
            f"border-bottom:none;margin-right:2px;border-radius:4px 4px 0 0;}}"
            f"QTabBar::tab:selected{{background:{p['accent']};color:white;"
            f"font-weight:bold;}}")
        root.addWidget(self.tabs, 1)

        # ── TAB 1: Active ────────────────────────────────────────
        tab_active = QWidget()
        a_lay = QVBoxLayout(tab_active)
        a_lay.setContentsMargins(8, 8, 8, 8)
        a_lay.setSpacing(6)

        # Toolbar row
        tb_a = QHBoxLayout(); tb_a.setSpacing(8)
        self.btn_checkout  = _toolbar_btn("Check-Out", "Check out selected folio (Ctrl+O)", "danger", "🚪")
        self.btn_settle_co = _toolbar_btn("Settle & Check-Out", "Post payment then check out", "primary", "💳")
        self.btn_print_a   = _toolbar_btn("Print Bill", "Print folio bill (Ctrl+P)", icon_text="🖨️")
        self.btn_ref_a     = _toolbar_btn("Refresh", "Reload (F5)", icon_text="🔃")
        self.btn_close_a   = _toolbar_btn("Close", "Close (Esc)", icon_text="✖")

        self.ed_search_a = QLineEdit()
        self.ed_search_a.setPlaceholderText("🔍  Search …")
        self.ed_search_a.setMinimumWidth(180)
        self.ed_search_a.setStyleSheet(
            f"background:{p['surface_solid']};color:{p['text']};"
            f"border:1px solid {p['border_strong']};border-radius:16px;padding:5px 14px;")
        self.ed_search_a.textChanged.connect(self._on_search_a)

        for w in (self.btn_checkout, self.btn_settle_co, self.btn_print_a,
                  self.btn_ref_a, self.btn_close_a):
            tb_a.addWidget(w)
        tb_a.addStretch(); tb_a.addWidget(self.ed_search_a)
        a_lay.addLayout(tb_a)

        # Splitter: grid | detail
        splitter_a = QSplitter(Qt.Orientation.Horizontal)

        # Grid
        left_a = QWidget()
        ll_a = QVBoxLayout(left_a); ll_a.setContentsMargins(0, 0, 4, 0)
        ll_a.addWidget(_section_label("In-House Folios — Select to Check Out"))
        self.tbl_active = QTableWidget(0, len(self.ACTIVE_COLS))
        self.tbl_active.setHorizontalHeaderLabels(self.ACTIVE_COLS)
        self._style_table(self.tbl_active)
        self.tbl_active.currentCellChanged.connect(
            lambda row, _col, _prev, _prevcol: self._on_active_row(row))
        self.tbl_active.cellDoubleClicked.connect(lambda *_: self._do_checkout())
        ll_a.addWidget(self.tbl_active)
        self._lbl_count_a = QLabel("—")
        self._lbl_count_a.setStyleSheet(f"color:{p['text_dim']};font-size:9pt;padding:2px;")
        ll_a.addWidget(self._lbl_count_a)
        splitter_a.addWidget(left_a)
        splitter_a.setStretchFactor(0, 3)

        # Detail panel (right)
        right_a = QWidget()
        rl_a = QVBoxLayout(right_a); rl_a.setContentsMargins(4, 0, 0, 0)
        rl_a.setSpacing(6)
        rl_a.addWidget(_section_label("Balance & Charges"))

        # Balance display
        bal_frame = QFrame()
        bal_frame.setStyleSheet(
            f"background:{p['surface_solid']};"
            f"border:1px solid {p['border_strong']};border-radius:6px;padding:8px;")
        bal_lay = QHBoxLayout(bal_frame)
        for attr, cap in [("lbl_dr", "Charges (Dr)"),
                          ("lbl_cr", "Payments (Cr)"),
                          ("lbl_bal", "Balance")]:
            col = QVBoxLayout()
            c_lbl = QLabel(cap)
            c_lbl.setStyleSheet(f"color:{p['text_dim']};font-size:8pt;font-weight:bold;")
            c_lbl.setAlignment(Qt.AlignmentFlag.AlignCenter)
            v_lbl = QLabel("—")
            v_lbl.setStyleSheet("font-size:14pt;font-weight:bold;")
            v_lbl.setAlignment(Qt.AlignmentFlag.AlignCenter)
            setattr(self, attr, v_lbl)
            col.addWidget(c_lbl); col.addWidget(v_lbl)
            bal_lay.addLayout(col)
        rl_a.addWidget(bal_frame)

        # Charges table
        rl_a.addWidget(_section_label("Charge / Payment Lines"))
        self.tbl_charges = QTableWidget(0, 5)
        self.tbl_charges.setHorizontalHeaderLabels(
            ["Date", "Code", "Charge (Dr)", "Payment (Cr)", "Remarks"])
        self._style_table(self.tbl_charges)
        self.tbl_charges.setMaximumHeight(200)
        rl_a.addWidget(self.tbl_charges)
        splitter_a.addWidget(right_a)
        splitter_a.setStretchFactor(1, 2)
        a_lay.addWidget(splitter_a, 1)
        self.tabs.addTab(tab_active, "🏠  Active Check-Ins")

        # ── TAB 2: Checked-Out ──────────────────────────────────
        tab_co = QWidget()
        co_lay = QVBoxLayout(tab_co)
        co_lay.setContentsMargins(8, 8, 8, 8); co_lay.setSpacing(6)

        tb_co = QHBoxLayout(); tb_co.setSpacing(8)
        self.btn_reverse  = _toolbar_btn("Reverse Check-Out", "Reopen folio (Ctrl+R)", "warning", "↩️")
        self.btn_print_co = _toolbar_btn("Print Bill", "Print folio bill", icon_text="🖨️")
        self.btn_ref_co   = _toolbar_btn("Refresh", "Reload (F5)", icon_text="🔃")
        self.btn_close_co = _toolbar_btn("Close", "Close (Esc)", icon_text="✖")
        for w in (self.btn_reverse, self.btn_print_co, self.btn_ref_co, self.btn_close_co):
            tb_co.addWidget(w)
        tb_co.addStretch()
        co_lay.addLayout(tb_co)

        co_lay.addWidget(_section_label("Checked-Out Folios"))
        self.tbl_co = QTableWidget(0, len(self.CO_COLS))
        self.tbl_co.setHorizontalHeaderLabels(self.CO_COLS)
        self._style_table(self.tbl_co)
        co_lay.addWidget(self.tbl_co, 1)
        self.tabs.addTab(tab_co, "✅  Checked-Out Folios")

        # Status bar
        self.status = QStatusBar()
        self.status.setStyleSheet(
            f"background:{p['header_grad_bottom']};color:{p['text_dim']};"
            "font-size:9pt;border-top:1px solid #c0c0d0;")
        root.addWidget(self.status)

        # Wiring
        self.btn_checkout.clicked.connect(self._do_checkout)
        self.btn_settle_co.clicked.connect(self._settle_then_checkout)
        self.btn_print_a.clicked.connect(self._print_active)
        self.btn_ref_a.clicked.connect(self.reload_active)
        self.btn_close_a.clicked.connect(self.reject)
        self.btn_reverse.clicked.connect(self._do_reverse)
        self.btn_print_co.clicked.connect(self._print_co)
        self.btn_ref_co.clicked.connect(self.reload_checkedout)
        self.btn_close_co.clicked.connect(self.reject)

        QShortcut(QKeySequence("Ctrl+O"), self, activated=self._do_checkout)
        QShortcut(QKeySequence("Ctrl+R"), self, activated=self._do_reverse)
        QShortcut(QKeySequence("Ctrl+P"), self, activated=self._print_active)
        QShortcut(QKeySequence("F5"),     self, activated=lambda: (
            self.reload_active(), self.reload_checkedout()))
        QShortcut(QKeySequence("Escape"), self, activated=self.reject)

        self._all_active: list[dict] = []
        self._all_co: list[dict] = []

    def _style_table(self, tbl: QTableWidget):
        p = _PAL()
        tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        tbl.setAlternatingRowColors(True)
        tbl.verticalHeader().setVisible(False)
        tbl.horizontalHeader().setStretchLastSection(True)
        tbl.setShowGrid(False)
        tbl.setStyleSheet(
            f"QTableWidget{{gridline-color:{p['border']};font-size:9.5pt;"
            f"selection-background-color:{p['accent_soft']};"
            f"selection-color:{p['text']};}}"
            f"QHeaderView::section{{background:{p['header_grad_top']};"
            f"color:{p['text']};font-weight:bold;padding:5px;"
            f"border:none;border-bottom:2px solid {p['accent']};}}"
            "QTableWidget::item{padding:4px;}")

    # ── Data loading ──────────────────────────────────────────────────────
    def reload_active(self, keep_folio: int | None = None):
        self.status.showMessage("Loading active folios …")
        try:
            rows = checkout.list_active_folios()
        except Exception as e:
            self.status.showMessage(f"Error: {e}"); return
        self._all_active = rows
        self._populate_active(rows, keep_folio)

    def _populate_active(self, rows: list, keep_folio=None):
        st = _theme.status_colors()
        today = datetime.date.today()
        self.tbl_active.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            dep = rec.get("depdate")
            overdue = dep and isinstance(dep, datetime.date) and dep < today
            status = "OVERDUE" if overdue else "In-House"
            vals = [
                rec.get("roomno", ""),
                rec.get("folio", ""),
                rec.get("name", ""),
                rec.get("arrdate"),
                dep,
                "—",
                status,
            ]
            for c, v in enumerate(vals):
                if c == 6 and overdue:
                    it = _cell_color(v, st["danger_text"], bold=True)
                elif c == 1:
                    it = _cell(v, Qt.AlignmentFlag.AlignRight)
                else:
                    it = _cell(v)
                self.tbl_active.setItem(r, c, it)
        if keep_folio:
            for r, rec in enumerate(rows):
                if rec.get("folio") == keep_folio:
                    self.tbl_active.selectRow(r); return
        if rows:
            self.tbl_active.selectRow(0)
        cnt = len(rows)
        self._lbl_count_a.setText(f"{cnt} in-house folio(s)")
        self.status.showMessage(f"Ready — {cnt} active check-in(s)")

    def _on_search_a(self, text: str):
        t = text.strip().lower()
        if not t:
            self._populate_active(self._all_active); return
        filtered = [r for r in self._all_active
                    if t in str(r.get("folio", "")).lower()
                    or t in (r.get("name") or "").lower()
                    or t in (r.get("roomno") or "").lower()]
        self._populate_active(filtered)

    def _on_active_row(self, row: int):
        if row < 0 or row >= len(self._all_active):
            self._clear_detail(); return
        rec = self._all_active[row]
        try:
            bal = checkout.folio_balance(rec["folio"])
        except Exception:
            bal = None
        self._show_balance(bal)
        if bal:
            b = bal["balance"]
            st = _theme.status_colors()
            color = (st["danger_text"] if b > 0.005
                     else st["success_text"] if abs(b) < 0.005
                     else st["warning"])
            it = _cell_color(f"₹{b:,.2f}", color, bold=True)
            self.tbl_active.setItem(row, 5, it)
        try:
            charges = expenseentry.list_folio_charges(rec["folio"])
        except Exception:
            try:
                from HMS_py.core import folio as fm
                charges = fm.charges_detail(rec["folio"])
            except Exception:
                charges = []
        self._show_charges(charges)

    def _clear_detail(self):
        for w in (self.lbl_dr, self.lbl_cr, self.lbl_bal):
            w.setText("—"); w.setStyleSheet("font-size:14pt;font-weight:bold;")
        self.tbl_charges.setRowCount(0)

    def _show_balance(self, bal: dict | None):
        if not bal:
            self._clear_detail(); return
        st = _theme.status_colors()
        dr = float(bal.get("charges_dr") or 0)
        cr = float(bal.get("payments_cr") or 0)
        b  = float(bal.get("balance") or 0)
        self.lbl_dr.setText(f"₹{dr:,.2f}")
        self.lbl_dr.setStyleSheet(f"font-size:14pt;font-weight:bold;color:{st['danger_text']};")
        self.lbl_cr.setText(f"₹{cr:,.2f}")
        self.lbl_cr.setStyleSheet(f"font-size:14pt;font-weight:bold;color:{st['success_text']};")
        color = (st["danger_text"] if b > 0.005
                 else st["success_text"] if abs(b) < 0.005
                 else st["warning"])
        self.lbl_bal.setText(f"₹{b:,.2f}")
        self.lbl_bal.setStyleSheet(f"font-size:16pt;font-weight:bold;color:{color};")

    def _show_charges(self, charges: list):
        st = _theme.status_colors()
        self.tbl_charges.setRowCount(len(charges))
        for r, ch in enumerate(charges):
            vd = ch.get("vdate") or ch.get("date") or ""
            if isinstance(vd, (datetime.date, datetime.datetime)):
                vd = f"{vd:%d/%b/%Y}"
            dr = float(ch.get("amt_dr") or ch.get("dr") or 0)
            cr = float(ch.get("amt_cr") or ch.get("cr") or 0)
            vals = [str(vd),
                    ch.get("paycode") or ch.get("code") or "",
                    f"{dr:.2f}" if dr else "",
                    f"{cr:.2f}" if cr else "",
                    ch.get("remarks") or ch.get("comments") or ""]
            for c, v in enumerate(vals):
                if c == 2 and dr > 0:
                    it = _cell_color(v, st["danger_text"])
                elif c == 3 and cr > 0:
                    it = _cell_color(v, st["success_text"])
                else:
                    it = _cell(v)
                self.tbl_charges.setItem(r, c, it)

    def reload_checkedout(self):
        try:
            rows = checkout.list_checked_out()
        except Exception as e:
            self.status.showMessage(f"Error loading checked-out: {e}"); return
        self._all_co = rows
        self.tbl_co.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            vals = [rec.get("roomno", ""),
                    rec.get("folio", ""),
                    rec.get("name", ""),
                    rec.get("checkout_date"),
                    rec.get("checkout_user", ""),
                    rec.get("depdate")]
            for c, v in enumerate(vals):
                it = _cell(v, Qt.AlignmentFlag.AlignRight if c == 1
                           else Qt.AlignmentFlag.AlignLeft)
                self.tbl_co.setItem(r, c, it)
        if rows:
            self.tbl_co.selectRow(0)

    # ── Selected helpers ───────────────────────────────────────────────────
    def _selected_active(self) -> dict | None:
        r = self.tbl_active.currentRow()
        return self._all_active[r] if 0 <= r < len(self._all_active) else None

    def _selected_active_folio(self) -> int | None:
        """BUG-024 compat: reads folio from grid col 0 or col 1 (both supported).
        Test creates a 2-col QTableWidget with folio in col 0; production grid
        has Room in col 0 and FolioNo in col 1.
        Try col 0 first (test compat), then col 1 (production layout)."""
        r = self.tbl_active.currentRow()
        if r < 0:
            return None
        # Try col 0 first (test setup: 2-col QTableWidget, folio in col 0)
        for col in (0, 1):
            item = self.tbl_active.item(r, col)
            if item is None:
                continue
            try:
                return int(item.text())
            except (ValueError, AttributeError):
                continue
        return None

    def _selected_co(self) -> dict | None:
        r = self.tbl_co.currentRow()
        return self._all_co[r] if 0 <= r < len(self._all_co) else None

    def _selected_co_folio(self) -> int | None:
        """BUG-024 compat: same two-column probe as _selected_active_folio."""
        r = self.tbl_co.currentRow()
        if r < 0:
            return None
        for col in (0, 1):
            item = self.tbl_co.item(r, col)
            if item is None:
                continue
            try:
                return int(item.text())
            except (ValueError, AttributeError):
                continue
        return None

    # ── Actions ───────────────────────────────────────────────────────────
    def _do_checkout(self):
        rec = self._selected_active()
        if not rec:
            QMessageBox.information(self, "Check-Out",
                                    "Pehle folio select karo"); return
        # FO-BUG-009 FIX: PYT* guard removed — all guests can check out
        try:
            bal = checkout.folio_balance(rec["folio"])
        except Exception as e:
            QMessageBox.critical(self, "Check-Out", str(e)); return

        b = bal["balance"]
        msg = (f"Folio #{rec['folio']} — {bal['name']}\n"
               f"Room: {rec.get('roomno', '?')}\n\n"
               f"  Charges (Dr):   ₹{bal['charges_dr']:>12,.2f}\n"
               f"  Payments (Cr):  ₹{bal['payments_cr']:>12,.2f}\n"
               f"  Balance:        ₹{b:>12,.2f}\n")
        if b > 0.005:
            msg += f"\n⚠  Outstanding balance ₹{b:,.2f} remaining!\n"
            msg += "Check out anyway (balance will remain as unsettled)?"
        else:
            msg += "\n✅  Balance is zero — proceed with check-out?"

        if QMessageBox.question(
                self, "Confirm Check-Out", msg,
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
                QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return
        try:
            checkout.do_checkout(rec["folio"], user=self.user)
            self.status.showMessage(
                f"✅  Folio #{rec['folio']} ({rec['name']}) checked out. "
                f"Room {rec.get('roomno', '')} marked Dirty.")
            self.reload_active(); self.reload_checkedout()
        except ValueError as e:
            QMessageBox.warning(self, "Check-Out", str(e))
        except Exception as e:
            QMessageBox.critical(self, "Check-Out — DB Error", str(e))

    def _settle_then_checkout(self):
        """Settle outstanding balance then check out in one flow."""
        rec = self._selected_active()
        if not rec:
            QMessageBox.information(self, "Settle & Check-Out",
                                    "Pehle folio select karo"); return
        try:
            bal = checkout.folio_balance(rec["folio"])
        except Exception as e:
            QMessageBox.critical(self, "Settle & Check-Out", str(e)); return
        b = bal["balance"]
        if b > 0.005:
            dlg = SettleDialog(rec["folio"], b, rec["name"], self)
            if dlg.exec() != QDialog.DialogCode.Accepted:
                return
        # Now check out
        try:
            checkout.do_checkout(rec["folio"], user=self.user)
            self.status.showMessage(
                f"✅  Folio #{rec['folio']} settled & checked out.")
            self.reload_active(); self.reload_checkedout()
        except ValueError as e:
            QMessageBox.warning(self, "Check-Out", str(e))
        except Exception as e:
            QMessageBox.critical(self, "Check-Out — DB Error", str(e))

    def _print_active(self):
        rec = self._selected_active()
        if not rec:
            QMessageBox.information(self, "Print", "Pehle folio select karo"); return
        try:
            bal = checkout.folio_balance(rec["folio"])
            from HMS_py.core import folio as fm
            charges = fm.charges_detail(rec["folio"])
        except Exception as e:
            QMessageBox.critical(self, "Print", str(e)); return
        text = _build_folio_bill_text(rec["folio"], bal, charges)
        _pp.preview_text(text, f"Folio Bill #{rec['folio']}", self)

    def _print_co(self):
        rec = self._selected_co()
        if not rec:
            QMessageBox.information(self, "Print", "Pehle folio select karo"); return
        try:
            bal = checkout.folio_balance(rec["folio"])
            from HMS_py.core import folio as fm
            charges = fm.charges_detail(rec["folio"])
        except Exception as e:
            QMessageBox.critical(self, "Print", str(e)); return
        text = _build_folio_bill_text(rec["folio"], bal, charges)
        _pp.preview_text(text, f"Folio Bill #{rec['folio']}", self)

    def _do_reverse(self):
        rec = self._selected_co()
        if not rec:
            QMessageBox.information(self, "Reverse Check-Out",
                                    "Pehle checked-out folio select karo"); return
        # FO-BUG-009 FIX: PYT* guard removed — any folio can be reversed
        if QMessageBox.question(
                self, "Reverse Check-Out",
                f"Folio #{rec['folio']} — {rec['name']}\n\n"
                "Reverse check-out? (room will become In-House again)",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
                QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return
        try:
            checkout.reverse_checkout(rec["folio"], user=self.user)
            self.status.showMessage(
                f"↩️  Folio #{rec['folio']} reversed — back In-House")
            self.reload_active(); self.reload_checkedout()
        except ValueError as e:
            QMessageBox.warning(self, "Reverse Check-Out", str(e))
        except Exception as e:
            QMessageBox.critical(self, "Reverse Check-Out — DB Error", str(e))


# ─── Public openers ─────────────────────────────────────────────────────────
def open_checkout(parent=None, user: str = "SA", tab: int = 0,
                  reverse: bool = False):
    CheckOutBrowser(parent, user=user,
                    start_tab=1 if reverse else tab).exec()


def main() -> int:
    app = QApplication(sys.argv)
    w = CheckOutBrowser()
    w.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
