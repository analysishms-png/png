"""Front Office UI (P4-a): GuestProfile master + Check-In browser.

Run: python -m HMS_py.ui.frontoffice
Menu (Front Office module): leaves 'Guest Profile' / 'Check In' ke saath.
VB6 patterns: GuestProf Code auto KK######; CHK DocId 21-char; PYT-guard.
"""
from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtWidgets import (QDateEdit, QDialog, QFormLayout, QHBoxLayout,
                             QLabel, QLineEdit, QMessageBox, QPushButton,
                             QTableWidget, QTableWidgetItem, QVBoxLayout)
from PyQt6.QtCore import QDate, Qt
from PyQt6.QtGui import QColor

from HMS_py.core import checkin, guestprof
from HMS_py.ui import theme as _theme
from HMS_py.ui.base_master import (BaseMasterForm, Field, MasterConfig,
                                   make_delete_guard)


# ---------------- Guest Profile (BaseMasterForm config) ----------------
def guestprof_config() -> MasterConfig:
    return MasterConfig(
        title="Guest Profile (P4-a) - HMS_py",
        columns=[("Code", "code"), ("Name", "name"), ("Add1", "add1"),
                 ("City", "city"), ("Phone", "phone"), ("Mobile", "mobile")],
        fields=[
            Field("code", "Code (KK######, blank = auto)",
                  max_len=guestprof.LIMITS["code"],
                  placeholder="Leave blank for auto (KK######)"),
            Field("name", "Name", max_len=guestprof.LIMITS["name"],
                  required=True, placeholder="Guest full name"),
            Field("add1", "Address", max_len=guestprof.LIMITS["add1"],
                  placeholder="Guest address"),
            Field("city", "City Code", max_len=guestprof.LIMITS["city"],
                  placeholder="e.g. KK0002"),
            Field("type", "Type (India/Foreign)",
                  max_len=guestprof.LIMITS["type"],
                  placeholder="India or Foreign"),
            Field("phone", "Phone", max_len=guestprof.LIMITS["phone"],
                  placeholder="Landline number"),
            Field("mobile", "Mobile", max_len=guestprof.LIMITS["mobile"],
                  placeholder="Mobile number"),
            Field("email", "Email", max_len=guestprof.LIMITS["email"],
                  placeholder="guest@email.com"),
            Field("nationality", "Nationality",
                  max_len=guestprof.LIMITS["nationality"],
                  placeholder="e.g. Indian"),
        ],
        api=guestprof,
        delete_guard=make_delete_guard("PYT"),
    )


def open_guestprof(parent=None):
    BaseMasterForm(guestprof_config(), parent).exec()


# ---------------- Check-In browser (folio list + new) ----------------
class CheckInBrowser(QDialog):
    COLS = [("Folio", 0), ("VDate", 1), ("Name", 2), ("GuestCode", 3),
            ("City", 4), ("Days", 5), ("DepDate", 6), ("User", 7),
            ("AE", 8)]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Check-In Browser (P4-a) - HMS_py")
        self.resize(1060, 560)

        root = QVBoxLayout(self)
        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels([c[0] for c in self.COLS])
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setAlternatingRowColors(True)
        self._empty_label = QLabel("No check-ins found. Click 'New Check-In' to add one.")
        self._empty_label.setAlignment(Qt.AlignmentFlag.AlignCenter)
        self._empty_label.setStyleSheet(f"color:{_theme.palette()['text_dim']}; font-size:13px; padding:24px;")
        self.tbl.setEmptyStateMessage("")
        root.addWidget(self.tbl)
        root.addWidget(self._empty_label)

        self.lblState = QLabel(
            "State: Idle | New = PYT* test check-in (VB6 CHK doc-engine: "
            "DocId 21-char + FolioNo + FolioLog)")
        root.addWidget(self.lblState)

        btns = QHBoxLayout()
        self.btnNew = QPushButton("New Check-In")
        self.btnNew.setToolTip("Create a new check-in record (Ctrl+N)")
        self.btnRefresh = QPushButton("Refresh")
        self.btnRefresh.setToolTip("Reload check-in list from database (F5)")
        self.btnClose = QPushButton("Close")
        self.btnClose.setToolTip("Close this window (Esc)")
        for b in (self.btnNew, self.btnRefresh, self.btnClose):
            btns.addWidget(b)
        root.addLayout(btns)

        self.btnNew.clicked.connect(self._new)
        self.btnRefresh.clicked.connect(lambda: self.reload())
        self.btnClose.clicked.connect(self.reject)

        from PyQt6.QtGui import QShortcut, QKeySequence
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._new)
        QShortcut(QKeySequence("F5"), self, activated=lambda: self.reload())

        self.reload()

    def _new(self):
        dlg = QDialog(self)
        dlg.setWindowTitle("New Check-In (PYT test-data)")
        dlg.setModal(True)
        form = QFormLayout()
        ed_name = QLineEdit("PYT CheckIn Guest")
        ed_name.setMaxLength(50)
        ed_name.setPlaceholderText("Guest full name (required)")
        ed_code = QLineEdit("")
        ed_code.setPlaceholderText("blank = naya GuestProf auto (KK######)")
        de_arr = QDateEdit(QDate.currentDate()); de_arr.setCalendarPopup(True)
        de_dep = QDateEdit(QDate.currentDate().addDays(1))
        de_dep.setCalendarPopup(True)
        ed_city = QLineEdit("KK0002")
        ed_city.setPlaceholderText("City code (e.g. KK0002)")
        ed_book = QLineEdit("")
        ed_book.setPlaceholderText("BookingDocId (optional, Reservation se)")
        form.addRow("Guest Name (PYT*)", ed_name)
        form.addRow("GuestProf Code", ed_code)
        form.addRow("Arrival", de_arr)
        form.addRow("Departure", de_dep)
        form.addRow("City", ed_city)
        form.addRow("BookingDocId", ed_book)
        lay = QVBoxLayout(dlg)
        lay.addLayout(form)
        brow = QHBoxLayout()
        ok = QPushButton("Save"); ok.setToolTip("Save check-in record")
        cancel = QPushButton("Cancel"); cancel.setToolTip("Discard and close dialog")
        brow.addStretch(); brow.addWidget(ok); brow.addWidget(cancel)
        lay.addLayout(brow)
        ok.clicked.connect(dlg.accept); cancel.clicked.connect(dlg.reject)
        ok.setDefault(True)
        if dlg.exec() != QDialog.DialogCode.Accepted:
            return
        try:
            gcode = ed_code.text().strip()
            if not gcode:
                # auto guest profile (VB6 pattern KK###### + 1)
                gcode = guestprof.next_code()
                guestprof.insert({"code": gcode, "name": ed_name.text(),
                                  "city": ed_city.text().strip()})
            folio = checkin.create_checkin(
                gcode, ed_name.text(), de_arr.date().toPyDate(),
                de_dep.date().toPyDate(), city=ed_city.text().strip(),
                bookingdocid=ed_book.text().strip(), user=self.user)
        except ValueError as e:
            QMessageBox.warning(self, "New Check-In", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "New Check-In", f"DB error: {e}")
            return
        self.lblState.setText(
            f"State: Idle | Check-In #{folio} ho gaya (DocId "
            f"{checkin.make_docid(checkin.SITE_CODE, '2026', folio)})")
        self.reload(keep_folio=folio)

    def reload(self, keep_folio: int | None = None):
        rows = checkin.list_checkins()
        self.tbl.setRowCount(len(rows))
        self._empty_label.setVisible(len(rows) == 0)
        self.tbl.setVisible(len(rows) > 0)
        for r, row in enumerate(rows):
            vals = [row["folio"], row["vdate"], row["name"],
                    row["guestprof"], row["city"], row["nodays"],
                    row["depdate"], row["u_name"], row["u_ae"]]
            for c, v in enumerate(vals):
                if isinstance(v, (datetime.date, datetime.datetime)):
                    v = f"{v:%d/%b/%Y}"
                it = QTableWidgetItem("" if v is None else str(v))
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                it.setForeground(QColor(_theme.palette()["text"]))
                self.tbl.setItem(r, c, it)
        if keep_folio is not None:
            for r, row in enumerate(rows):
                if row["folio"] == keep_folio:
                    self.tbl.selectRow(r)
                    break
        elif rows:
            self.tbl.selectRow(0)


def open_checkin(parent=None, user: str = "SA"):
    CheckInBrowser(parent, user=user).exec()


def main() -> int:
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = CheckInBrowser()
    w.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
