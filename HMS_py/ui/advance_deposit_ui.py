"""Advance Deposit (VB6 frmAdvanceDepDialog - menu leaf "Advance Deposit").

VB6 flow:
  1. Occupied room / reservation pick (RoomMast inner join RoomOcc, ya
     Booking) - loc ke `Select T.Type+T.RoomCat+... From RoomMast T inner
     join RoomOcc on RoomOcc.RoomNo=T.Code`
  2. RoomCat se minadv (`Select minadv from roomCat where Code=...`)
  3. Pay code combo - `SELECT Code,Name,PayType FROM RevMast Where
     PayType<>'Hold' ...`
  4. Save -> PayCharge row (VType 'ADRES', loc_15F09D7) + (reservation par)
     `Update Booking Set Guarantee='Y' where Docid=...`
  5. Pehle se liya advance - `Select count(*)/sum(AmtCr) From PayCharge
     Where RefDocid=...`

Run: python -m HMS_py.ui.advance_deposit_ui
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import QDate, Qt
from PyQt6.QtGui import QColor
from PyQt6.QtWidgets import (QApplication, QComboBox, QDialog,
                             QDoubleSpinBox, QFormLayout, QGroupBox,
                             QHBoxLayout, QHeaderView, QLabel, QLineEdit,
                             QMessageBox, QPushButton, QTableWidget,
                             QTableWidgetItem, QVBoxLayout, QWidget,
                             QDateEdit, QTabWidget)

from HMS_py.core import pos_advance as _adv
from HMS_py.ui import theme as _theme


def _mk_table(cols) -> QTableWidget:
    t = QTableWidget(0, len(cols))
    t.setHorizontalHeaderLabels(cols)
    t.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
    t.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
    t.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
    t.setAlternatingRowColors(True)
    t.verticalHeader().setVisible(False)
    return t


def _fill(t: QTableWidget, rows) -> None:
    pal = _theme.palette()["text"]
    t.setRowCount(0)
    for vals in rows:
        i = t.rowCount()
        t.insertRow(i)
        for c, v in enumerate(vals):
            it = QTableWidgetItem("" if v is None else str(v))
            it.setForeground(QColor(pal))
            it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
            t.setItem(i, c, it)


class AdvanceDepositDialog(QDialog):
    RES_COLS = ["DocId", "VNo", "Party", "Status", "Guarantee", "Date"]
    ROOM_COLS = ["Room", "Name", "Type", "Cat", "Folio", "GuestProf"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Advance Deposit (VB6 frmAdvanceDepDialog)")
        self.resize(980, 640)
        self._res: list[dict] = []
        self._rooms: list[dict] = []
        self._codes: list[dict] = []
        self._build_ui()
        self._load_meta()

    # ------------------------------------------------------------------ ui
    def _build_ui(self):
        outer = QVBoxLayout(self)
        self.tabs = QTabWidget()
        outer.addWidget(self.tabs)
        self.tabs.addTab(self._tab_reservation(), "Reservation")
        self.tabs.addTab(self._tab_room(), "Occupied Room")

        grp = QGroupBox("Payment")
        f = QFormLayout(grp)
        self.cmb_pay = QComboBox()
        self.cmb_pay.setMinimumWidth(300)
        self.spn_amt = QDoubleSpinBox()
        self.spn_amt.setRange(0.0, 10 ** 9)
        self.spn_amt.setDecimals(2)
        self.spn_amt.setValue(0.0)
        self.dt = QDateEdit(QDate.currentDate())
        self.dt.setCalendarPopup(True)
        self.ed_remarks = QLineEdit()
        self.ed_remarks.setPlaceholderText("Comments")
        self.lbl_paid = QLabel("-")
        f.addRow("Pay Code:", self.cmb_pay)
        f.addRow("Amount:", self.spn_amt)
        f.addRow("Date:", self.dt)
        f.addRow("Comments:", self.ed_remarks)
        f.addRow("Already received:", self.lbl_paid)
        outer.addWidget(grp)

        row = QHBoxLayout()
        b_save = QPushButton("Save Advance")
        b_save.setProperty("success", True)
        b_save.setToolTip("VB6: Insert Into PayCharge (ADRES) + Booking "
                          "Guarantee='Y'")
        b_save.clicked.connect(self._save)
        b_ref = QPushButton("Refresh")
        b_ref.clicked.connect(self._load_meta)
        b_exit = QPushButton("Exit")
        b_exit.clicked.connect(self.close)
        for b in (b_save, b_ref, b_exit):
            row.addWidget(b)
        row.addStretch()
        outer.addLayout(row)
        self.lbl_status = QLabel("Ready")
        outer.addWidget(self.lbl_status)

    def _tab_reservation(self) -> QWidget:
        w = QWidget()
        v = QVBoxLayout(w)
        self.tbl_res = _mk_table(self.RES_COLS)
        v.addWidget(self.tbl_res, stretch=1)
        self.tbl_res.itemSelectionChanged.connect(self._update_paid)
        return w

    def _tab_room(self) -> QWidget:
        w = QWidget()
        v = QVBoxLayout(w)
        self.tbl_room = _mk_table(self.ROOM_COLS)
        v.addWidget(self.tbl_room, stretch=1)
        self.tbl_room.itemSelectionChanged.connect(self._update_paid)
        return w

    # --------------------------------------------------------------- loads
    def _load_meta(self):
        try:
            self._codes = _adv.rev_pay_codes()
        except Exception as exc:
            self._codes = []
            self.lbl_status.setText(f"Pay codes fail: {exc}")
        self.cmb_pay.clear()
        for c in self._codes:
            self.cmb_pay.addItem(f"{c['name']} [{c['code']}]", c["code"])

        try:
            self._res = _adv.reservations()
        except Exception as exc:
            self._res = []
            self.lbl_status.setText(f"Booking load fail: {exc}")
        _fill(self.tbl_res, [
            (r["docid"], r["vno"], r["party"], r["status"],
             r["guarantee"], r["vdate"]) for r in self._res])

        try:
            self._rooms = _adv.occupied_rooms()
        except Exception as exc:
            self._rooms = []
            self.lbl_status.setText(f"RoomOcc load fail: {exc}")
        _fill(self.tbl_room, [
            (r["code"], r["name"], r["type"], r["roomcat"], r["foliono"],
             r["guestprof"]) for r in self._rooms])
        self._update_paid()

    def _current_ref(self) -> str:
        if self.tabs.currentIndex() == 0:
            r = self.tbl_res.currentRow()
            return self._res[r]["docid"] if 0 <= r < len(self._res) else ""
        return ""  # room tab: reservation ref nahi, sirf folio advance

    def _update_paid(self, *_):
        ref = self._current_ref()
        if not ref:
            self.lbl_paid.setText("-")
            return
        try:
            info = _adv.paid_against_ref(ref)
        except Exception as exc:
            self.lbl_paid.setText(f"fail: {exc}")
            return
        self.lbl_paid.setText(
            f"{info['count']} line(s) / {info['amount']:.2f}")

    # -------------------------------------------------------------- action
    def _save(self):
        amount = self.spn_amt.value()
        paycode = self.cmb_pay.currentData()
        paytype = ""
        for c in self._codes:
            if c["code"] == paycode:
                paytype = c["paytype"]
        ref = self._current_ref()
        roomno, roomcat, roomtype, foliono, guestprof = "", "", "", 0, ""
        if self.tabs.currentIndex() == 1:
            r = self.tbl_room.currentRow()
            if 0 <= r < len(self._rooms):
                rec = self._rooms[r]
                roomno, roomcat = rec["code"], rec["roomcat"]
                roomtype, foliono = rec["type"], rec["foliono"]
                guestprof = rec["guestprof"]
        if amount <= 0:
            QMessageBox.information(self, self.windowTitle(),
                                    "Amount > 0 hona chahiye")
            return
        if not paycode:
            QMessageBox.information(self, self.windowTitle(),
                                    "Pay Code select karo")
            return
        if not ref and not roomno:
            QMessageBox.information(self, self.windowTitle(),
                                    "Reservation ya occupied room select karo")
            return
        try:
            res = _adv.receive_advance(
                refdocid=ref, amount=amount, paycode=paycode,
                paytype=paytype, vtype="ADRES",
                vdate=self.dt.date().toPyDate(),
                comments=self.ed_remarks.text().strip(),
                roomno=roomno, roomcat=roomcat, roomtype=roomtype,
                foliono=foliono, guestprof=guestprof,
                set_guarantee=bool(ref))
        except Exception as exc:
            QMessageBox.critical(self, self.windowTitle(),
                                 f"Save fail: {exc}")
            return
        self.lbl_status.setText(
            f"Saved {res['docid']} (VNo {res['vno']}) - "
            f"{amount:.2f} advance")
        QMessageBox.information(
            self, self.windowTitle(),
            f"Advance {amount:.2f} saved\nDocId: {res['docid']}")
        self.spn_amt.setValue(0.0)
        self._load_meta()


def open_advance_deposit(parent=None):
    """Menu leaf 'Advance Deposit' -> VB6 frmAdvanceDepDialog."""
    dlg = AdvanceDepositDialog(parent)
    dlg.exec()
    return dlg


def main() -> int:
    app = QApplication(sys.argv)
    d = AdvanceDepositDialog()
    d.show()
    return app.exec()


if __name__ == "__main__":
    os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
    sys.exit(main())
