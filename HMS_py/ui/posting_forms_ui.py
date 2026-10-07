"""PARTIAL bucket UI ports — Wave 6 (posting/settlement batch).

VB6 originals (../FODER/*.frm) -> windows here:
  fdPostChrg       -> PostChrgWindow          ('Post Charges /Payments'
                                               batch posting for a date)
  fdPaymentCharge  -> PaymentChargeWindow     ('Post Charges & Payment' —
                                               REC receipt register view)
  FdReSetlement    -> ReSettlementWindow      ('Post Charges/Payment' —
                                               re-settle of checked-out folio)
  FdRevCheckOut    -> RevCheckOutWindow       ('Check Out Cancel')

Core ops (verified signatures):
  HMS_py.core.nightaudit — post_room_charges_for_date (batch engine,
                          progress cb, eligible/posted/skipped), get_inhouse_rooms,
                          billed_folios_for_date (fdPostChrg pre-flight guard),
                          get_night_audit_flags (RoomChrgPostingType gate)
  HMS_py.core.folio    — post_room_charge, receive_payment, list_payments,
                         settle_folio, delete_settle, folio_balance (float),
                         folio_charges
  HMS_py.core.checkout — list_checked_out, reverse_checkout

VB6 evidence (frm line refs):
  fdPostChrg.frm: caption 'Post Charges /Payments'; Txt(0) 'Date For'
    default = MemVar business date; Cmd(1) 'Post Charges' ->
    Proc_62_23 pre-flight (billed-room guard, exact message 'There is some
    unsettled guest bill, First Settle it then Process this operation') ->
    gate RoomChrgPostingType='While Printing Bill' exits ->
    per-room lblDisplay 'Posting Charges For Room : <RoomNo>' ->
    'Posting Room Charges Completed'. No confirm dialog, no amount field.
  fdPaymentCharge.frm:4467,4579,4721... — 7x 'Insert Into PayCharge
    (DocId,SNo,...AmtCr/AmtDr...)' 35-col patterns (payments/charges).
  FdReSetlement.frm:3718,3870 — PayCharge INSERT + SettleDate col;
    :3806 'Update Voucher_Prefix Set Start_Srl_No=...' (bill-no engine).
  FdRevCheckOut.frm:1419-1496 — RoomOcc.ChkOutDate clear; :1424 RoomMast
    ROOMSTAT='D'; :1490 'Update PayCharge Set SettleDate=Null';
    :1496 ModeSet=''+Bill_No reset; checkout.reverse_checkout ports all.
"""

from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(
    0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
)

from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import (
    QApplication,
    QComboBox,
    QDateEdit,
    QHBoxLayout,
    QLabel,
    QLineEdit,
    QMainWindow,
    QMessageBox,
    QPushButton,
    QTableWidget,
    QTableWidgetItem,
    QVBoxLayout,
    QWidget,
)

from HMS_py.core import checkout, db, folio, nightaudit, roomstatus
from HMS_py.ui.desktop_style import make_vb6_header
from HMS_py.ui.theme import palette


def _cell(val, editable: bool = False) -> QTableWidgetItem:
    if val is None:
        val = ""
    it = QTableWidgetItem(str(val))
    it.setFlags(
        it.flags()
        | (Qt.ItemFlag.ItemIsEditable if editable else Qt.ItemFlag.ItemIsSelectable)
    )
    return it


def _fill_grid(grid: QTableWidget, headers: list[str], rows: list[list]):
    grid.clear()
    grid.setColumnCount(len(headers))
    grid.setHorizontalHeaderLabels(headers)
    grid.setRowCount(0)
    for r in rows:
        row = grid.rowCount()
        grid.insertRow(row)
        for c, v in enumerate(r):
            grid.setItem(row, c, _cell(v))
    grid.resizeColumnsToContents()


def _title(text: str) -> QLabel:
    """VB6-hybrid chrome: blue gradient header + cream title strip."""
    return make_vb6_header(text)


def _msgbox_err(w, e: Exception):
    QMessageBox.critical(w, "Error", f"{type(e).__name__}: {e}")


def _d(v):
    if isinstance(v, datetime.datetime):
        return v.date()
    return v


class _StatusBar:
    def _say(self, msg: str):
        self.statusBar().showMessage(msg, 8000)


# ────────────────────────────────────────────────────────────────
# 1. Post Charges /Payments (fdPostChrg -> nightaudit batch engine)
# ────────────────────────────────────────────────────────────────
class PostChrgWindow(QMainWindow, _StatusBar):
    """VB6 fdPostChrg: batch room-charge posting for a business date.
    Manual single-charge entry ka VB6 fdPostChrg me koi entry point nahi
    tha (wo fdPaymentCharge/fdReceipt ka kaam hai) - isliye yahan sirf
    batch posting hai."""

    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Post Charges /Payments")
        self.resize(980, 540)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget()
        self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Post Charges /Payments"))
        top = QHBoxLayout()
        top.addWidget(QLabel("Date For"))
        self.dt = QDateEdit()
        self.dt.setCalendarPopup(True)
        self.dt.setDisplayFormat("dd/MM/yyyy")
        bd = None
        try:
            bd = datetime.datetime.strptime(
                str(db.get_business_date()).strip(), "%d/%b/%Y"
            ).date()
        except Exception:
            bd = None
        self.dt.setDate(bd or datetime.date.today())
        top.addWidget(self.dt)
        b = QPushButton("Post Charges")
        b.clicked.connect(self._post)
        top.addWidget(b)
        b2 = QPushButton("Refresh")
        b2.clicked.connect(self._fill)
        top.addWidget(b2)
        b3 = QPushButton("Exit")
        b3.clicked.connect(self.close)
        top.addWidget(b3)
        top.addStretch(1)
        lay.addLayout(top)
        self.lbl_display = QLabel("")
        self.lbl_display.setStyleSheet(
            "color:#b00000; font-weight:bold; font-size:13px;"
        )
        lay.addWidget(self.lbl_display)
        self.grid = QTableWidget()
        self.grid.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        lay.addWidget(self.grid)
        self.lbl_bal = QLabel("")
        lay.addWidget(self.lbl_bal)

    def _vdate(self) -> datetime.date:
        qd = self.dt.date()
        return datetime.date(qd.year(), qd.month(), qd.day())

    def _fill(self):
        try:
            vdate = self._vdate()
            rooms = nightaudit.get_inhouse_rooms(vdate)
            billed = {r["folio"] for r in nightaudit.billed_folios_for_date(vdate)}
            posted = set()
            rows_pc = db.query(
                "SELECT DISTINCT FolioNo FROM PayCharge WHERE Vtype = 'RC' "
                "AND Vdate = ? AND Site_Code = ?",
                (vdate, db.get_site_code()),
            )
            posted = {r[0] for r in rows_pc}
            out = []
            for r in rooms:
                if r["folio"] in billed:
                    status = "Billed — settle first"
                elif r["folio"] in posted:
                    status = "Posted"
                else:
                    status = "To post"
                out.append(
                    [
                        r["roomno"],
                        r["folio"],
                        r["guest"],
                        f"{r['roomrate']:.2f}",
                        r["plancode"],
                        status,
                    ]
                )
            _fill_grid(
                self.grid, ["Room", "Folio", "Guest", "Rate", "Plan", "Status"], out
            )
            self._say(f"{len(rooms)} in-house room(s) for {vdate}")
        except Exception as e:
            _msgbox_err(self, e)

    def _post(self):
        vdate = self._vdate()
        try:
            # VB6 Cmd(1) pre-flight: billed rooms block posting
            # (Proc_62_23) - exact VB6 message.
            billed = nightaudit.billed_folios_for_date(vdate)
            if billed:
                rooms = ", ".join(str(b["roomno"]) for b in billed)
                QMessageBox.warning(
                    self,
                    "Post Charges",
                    "There is some unsettled guest bill,\n"
                    "First Settle it then Process this operation\n\n"
                    f"Re-Check Room No : {rooms}",
                )
                self.lbl_display.setText("Blocked: unsettled guest bill")
                self._fill()
                return

            # Enviro gate (VB6 TopCtrl_UnknownEvent_16 first lines)
            flags = nightaudit.get_night_audit_flags()
            if flags.get("room_chrg_type") == "While Printing Bill":
                QMessageBox.information(
                    self,
                    "Post Charges",
                    "Room charge posting type = 'While Printing Bill'. "
                    "Posting disabled (VB6 enviro gate).",
                )
                self.lbl_display.setText(
                    "Posting disabled: RoomChrgPostingType = 'While Printing Bill'"
                )
                return

            inhouse = nightaudit.get_inhouse_rooms(vdate)
            already = {
                r[0]
                for r in db.query(
                    "SELECT DISTINCT FolioNo FROM PayCharge WHERE Vtype = 'RC' "
                    "AND Vdate = ? AND Site_Code = ?",
                    (vdate, db.get_site_code()),
                )
            }
            to_post = [
                r for r in inhouse if r["folio"] not in already and r["roomrate"] > 0
            ]
            if not to_post:
                msg = (
                    "Nothing to post for "
                    f"{vdate} — all rooms already posted or no charge."
                )
                self.lbl_display.setText("Nothing to post")
                QMessageBox.information(self, "Post Charges", msg)
                self._fill()
                return

            def _prog(done, total, roomno):
                # VB6 lblDisplay exact text
                self.lbl_display.setText(f"Posting Charges For Room : {roomno}")
                QApplication.processEvents()

            try:
                res = nightaudit.post_room_charges_for_date(
                    vdate, user=self.user, progress=_prog
                )
            except nightaudit.PostingBlockedError as be:
                # Engine-level whole-posting abort (VB6 MsgBox + Exit Sub
                # parity: billed-folio guard / missing room-disc account).
                QMessageBox.warning(self, "Post Charges", str(be))
                self.lbl_display.setText(f"Blocked: {be}")
                self._fill()
                return
            if res.get("notice"):
                # G12 early exit (RoomChrgPostingType = 'While Printing Bill'):
                # success-with-notice, zero rows.
                QMessageBox.information(self, "Post Charges", res["notice"])
                self.lbl_display.setText(res["notice"])
                self._fill()
                return
            self.lbl_display.setText("Posting Room Charges Completed")
            summary = (
                f"Eligible: {res.get('eligible', 0)}\n"
                f"Posted: {res.get('posted', 0)}\n"
                f"Already posted: {res.get('skipped', 0)}"
            )
            if res.get("posted", 0) == 0:
                QMessageBox.information(
                    self,
                    "Post Charges",
                    f"Nothing to post — all already posted.\n\n{summary}",
                )
            else:
                QMessageBox.information(
                    self,
                    "Post Charges",
                    f"Room charges posted for {vdate}.\n\n{summary}",
                )
            self._fill()
        except Exception as e:
            self.lbl_display.setText("Posting failed")
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 2. Payments register (fdPaymentCharge REC view -> folio.list_payments)
# ────────────────────────────────────────────────────────────────
class PaymentChargeWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Post Charges & Payment — Receipts")
        self.resize(1000, 560)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget()
        self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Post Charges & Payment — Receipts"))
        top = QHBoxLayout()
        top.addWidget(QLabel("Folio"))
        self.txt_folio = QLineEdit()
        self.txt_folio.setPlaceholderText("folio no (blank = list only)")
        top.addWidget(self.txt_folio)
        top.addWidget(QLabel("Amount"))
        self.txt_amt = QLineEdit()
        top.addWidget(self.txt_amt)
        top.addWidget(QLabel("Mode"))
        self.cmb_mode = QComboBox()
        self.cmb_mode.addItems(["KKCASH", "KKCARD", "KKUPI"])
        top.addWidget(self.cmb_mode)
        for cap, fn in (
            ("Receive", self._receive),
            ("Refresh", self._fill),
            ("Exit", self.close),
        ):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            top.addWidget(b)
        lay.addLayout(top)
        self.grid = QTableWidget()
        self.grid.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        lay.addWidget(self.grid)

    def _fill(self):
        try:
            rows = folio.list_payments(top=200)
            _fill_grid(
                self.grid,
                [
                    "DocId",
                    "VNo",
                    "Date",
                    "Guest",
                    "Comments",
                    "Code",
                    "Type",
                    "Amount",
                    "Folio",
                ],
                [
                    [
                        r["docid"],
                        r["vno"],
                        _d(r["vdate"]),
                        r["guestprof"],
                        r["comments"],
                        r["paycode"],
                        r["paytype"],
                        f"{r['amt']:.2f}",
                        r["folio"],
                    ]
                    for r in rows
                ],
            )
            self._say(f"{len(rows)} receipt(s)")
        except Exception as e:
            _msgbox_err(self, e)

    def _receive(self):
        try:
            fno = int(self.txt_folio.text().strip())
            amt = float(self.txt_amt.text().strip())
        except ValueError:
            QMessageBox.warning(
                self, "Receive", "Folio no aur amount numeric hone chahiye."
            )
            return
        if (
            QMessageBox.question(
                self,
                "Receive Payment",
                f"Folio #{fno} pe {self.cmb_mode.currentText()} "
                f"{amt:.2f} receive karna hai?",
            )
            != QMessageBox.StandardButton.Yes
        ):
            return
        try:
            n = folio.receive_payment(
                fno, amt, paycode=self.cmb_mode.currentText(), user=self.user
            )
            self._say(f"Payment posted ({n} row(s))")
            self._fill()
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 3. Re-Settlement (FdReSetlement — settle of checked-out folio)
# ────────────────────────────────────────────────────────────────
class ReSettlementWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Post Charges/Payment (Re-Settlement)")
        self.resize(1000, 560)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget()
        self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Re-Settlement (checked-out folios)"))
        top = QHBoxLayout()
        for cap, fn in (
            ("Refresh", self._fill),
            ("Re-Settle Selected", self._resettle),
            ("Cancel Settle-Row", self._cancel_settle),
            ("Exit", self.close),
        ):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            top.addWidget(b)
        top.addStretch(1)
        lay.addLayout(top)
        self.grid = QTableWidget()
        self.grid.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        lay.addWidget(self.grid)
        self.lbl_bal = QLabel("")
        lay.addWidget(self.lbl_bal)

    def _fill(self):
        try:
            rows = checkout.list_checked_out(top=200)
            _fill_grid(
                self.grid,
                ["Folio", "Guest", "Departure", "ChkOutDate", "ChkOutUser"],
                [
                    [
                        r["folio"],
                        r["name"],
                        _d(r["depdate"]),
                        _d(r["checkout_date"]),
                        r["checkout_user"],
                    ]
                    for r in rows
                ],
            )
            self._say(f"{len(rows)} checked-out folio(s)")
        except Exception as e:
            _msgbox_err(self, e)

    def _sel_folio(self) -> int | None:
        r = self.grid.currentRow()
        if r < 0:
            QMessageBox.warning(self, "Select", "Pehle row select karo.")
            return None
        return int(self.grid.item(r, 0).text())

    def _resettle(self):
        fno = self._sel_folio()
        if fno is None:
            return
        try:
            bal = float(folio.folio_balance(fno))
        except Exception as e:
            _msgbox_err(self, e)
            return
        if (
            QMessageBox.question(
                self,
                "Re-Settle",
                f"Folio #{fno} (balance {bal:.2f}) re-settle karna hai?",
            )
            != QMessageBox.StandardButton.Yes
        ):
            return
        try:
            bill = folio.settle_folio(fno, user=self.user)
            self._say(f"Folio #{fno} settled -> bill_no={bill}")
            self.lbl_bal.setText(f"Bill No: {bill}")
        except Exception as e:
            _msgbox_err(self, e)

    def _cancel_settle(self):
        fno = self._sel_folio()
        if fno is None:
            return
        if (
            QMessageBox.question(
                self,
                "Cancel Settle-Row",
                f"Folio #{fno} ka settle-row cancel karna hai?",
            )
            != QMessageBox.StandardButton.Yes
        ):
            return
        try:
            n = folio.delete_settle(fno, user=self.user)
            self._say(f"Folio #{fno} settle-row cancelled ({n} row(s))")
            self.lbl_bal.setText("")
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 4. Check Out Cancel (FdRevCheckOut -> checkout.reverse_checkout)
# ────────────────────────────────────────────────────────────────
class RevCheckOutWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Check Out Cancel")
        self.resize(1000, 560)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget()
        self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Check Out Cancel"))
        top = QHBoxLayout()
        for cap, fn in (
            ("Refresh", self._fill),
            ("Cancel Check-Out", self._reverse),
            ("Exit", self.close),
        ):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            top.addWidget(b)
        top.addStretch(1)
        lay.addLayout(top)
        self.grid = QTableWidget()
        self.grid.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        lay.addWidget(self.grid)
        self.lbl_note = QLabel(
            "VB6 rule: reverse pe RoomStat='D' (Dirty) ho jata hai aur "
            "PayCharge settle-marks reverse hote hain."
        )
        self.lbl_note.setStyleSheet("color:#666;")
        lay.addWidget(self.lbl_note)

    def _fill(self):
        try:
            rows = checkout.list_checked_out(top=200)
            _fill_grid(
                self.grid,
                ["Folio", "Guest", "Departure", "ChkOutDate", "ChkOutUser"],
                [
                    [
                        r["folio"],
                        r["name"],
                        _d(r["depdate"]),
                        _d(r["checkout_date"]),
                        r["checkout_user"],
                    ]
                    for r in rows
                ],
            )
            self._say(f"{len(rows)} checked-out folio(s)")
        except Exception as e:
            _msgbox_err(self, e)

    def _reverse(self):
        r = self.grid.currentRow()
        if r < 0:
            QMessageBox.warning(self, "Select", "Pehle row select karo.")
            return
        fno = int(self.grid.item(r, 0).text())
        name = self.grid.item(r, 1).text()
        if (
            QMessageBox.question(
                self,
                "Check Out Cancel",
                f"Folio #{fno} ({name}) ka check-out cancel karna hai?",
            )
            != QMessageBox.StandardButton.Yes
        ):
            return
        try:
            checkout.reverse_checkout(fno, user=self.user)
            self._say(f"Folio #{fno} re-opened (settle-marks reversed)")
            self._fill()
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# Openers (shell registry pattern)
# ────────────────────────────────────────────────────────────────
def open_post_chrg(parent=None, user: str = "PYADMIN"):
    return PostChrgWindow(parent, user=user)


def open_payment_charge(parent=None, user: str = "PYADMIN"):
    return PaymentChargeWindow(parent, user=user)


def open_re_settlement(parent=None, user: str = "PYADMIN"):
    return ReSettlementWindow(parent, user=user)


def open_rev_checkout(parent=None, user: str = "PYADMIN"):
    return RevCheckOutWindow(parent, user=user)


if __name__ == "__main__":
    app = QApplication(sys.argv)
    app.setPalette(palette())
    for fn in (
        open_post_chrg,
        open_payment_charge,
        open_re_settlement,
        open_rev_checkout,
    ):
        w = fn()
        w.show()
        app.processEvents()
        w.close()
    print("posting_forms_ui smoke OK")
