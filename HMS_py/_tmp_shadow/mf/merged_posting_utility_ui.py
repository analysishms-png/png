"""Posting Utility (VB6 fdNDAcPostChrg) -> PyQt6.

Menu: Night Audit > "Account Posting" (MDIForm1 NightAuditoR_Click index 3;
VB6 form caption "Posting Utility" menu caption se override hota hai).

VB6 behavior:
  Form_Load : Txt(0)=From Date, Txt(2)=To Date (period ke andar),
              PBar1 hidden, lblDisplay status line.
  Cmd index 1 (Post) -> TopCtrl1_UnknownEvent_16:
      "A/C Posting Started..." -> Enviro.Postingtype read ->
      'Daily Bill wise Posting' -> har date Proc_96_14 (lblDisplay
      "A/C Posting For Date <d>") -> "A/C Posting Completed."
      else -> ek baar Proc_96_16 (summary).
  Cmd index 3 : Old Bill No/New Bill No ->
      Update PayCharge Set bill_no='<new>' where bill_no='<old>'.
  Cmd index 0 : Exit.

Core: HMS_py.core.nightaudit.account_posting / rename_bill_no.
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import QDate, Qt
from PyQt6.QtGui import QFont
from PyQt6.QtWidgets import (QApplication, QDateEdit, QDialog, QFormLayout,
                             QGroupBox, QHBoxLayout, QLabel, QLineEdit,
                             QMainWindow, QMessageBox, QProgressBar, QPushButton,
                             QVBoxLayout, QWidget)

from HMS_py.core import nightaudit as na
from HMS_py.ui.desktop_style import make_vb6_header
from HMS_py.ui.theme import palette


def _title(text: str) -> QLabel:
    """VB6-hybrid chrome: blue gradient header + cream title strip."""
    return make_vb6_header(text)


class PostingUtilityWindow(QMainWindow):
    def __init__(self, parent=None, user: str | None = None):
        super().__init__(parent)
        self.user = user or na.USER
        self.setWindowTitle("Posting Utility")
        self.resize(720, 420)
        self._build()
        self._load_mode()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Posting Utility"))

        doc = QGroupBox("Posting Period")
        fl = QFormLayout(doc)
        self.dt_from = QDateEdit(QDate.currentDate())
        self.dt_from.setCalendarPopup(True)
        self.dt_to = QDateEdit(QDate.currentDate())
        self.dt_to.setCalendarPopup(True)
        self.lbl_mode = QLabel("-")
        self.lbl_mode.setStyleSheet("color:%s;" % palette()["text"])
        fl.addRow("From Date:", self.dt_from)
        fl.addRow("To Date:", self.dt_to)
        fl.addRow("Posting Type:", self.lbl_mode)
        lay.addWidget(doc)

        bill = QGroupBox("Bill No. Rename")
        bl = QFormLayout(bill)
        self.txt_old_bill = QLineEdit()
        self.txt_new_bill = QLineEdit()
        bl.addRow("Old Bill No:", self.txt_old_bill)
        bl.addRow("New Bill No:", self.txt_new_bill)
        lay.addWidget(bill)

        self.lbl_display = QLabel("Ready.")
        self.lbl_display.setStyleSheet(
            "color:%s; padding:4px;" % palette()["text"])
        self.pbar = QProgressBar()
        self.pbar.setVisible(False)
        lay.addWidget(self.lbl_display)
        lay.addWidget(self.pbar)

        btns = QHBoxLayout()
        for cap, fn in (("Post", self._post),
                        ("Rename Bill No", self._rename),
                        ("Exit", self.close)):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            btns.addWidget(b)
        lay.addLayout(btns)
        lay.addStretch(1)

    def _load_mode(self):
        try:
            flags = na.get_night_audit_flags()
            self.lbl_mode.setText(str(flags.get("posting_type") or "-"))
        except Exception as e:
            self.lbl_mode.setText(f"(Enviro read error: {e})")

    def _set_busy(self, busy: bool):
        for w in (self.dt_from, self.dt_to):
            w.setEnabled(not busy)
        self.pbar.setVisible(busy)

    def _post(self):
        d1 = self.dt_from.date().toPyDate()
        d2 = self.dt_to.date().toPyDate()
        if d1 > d2:
            QMessageBox.warning(self, "Posting Utility",
                                "Please check Posting Dates")
            return
        self._set_busy(True)
        self.lbl_display.setText("A/C Posting Started...")
        QApplication.processEvents()

        def progress(done, total, date):
            self.pbar.setMaximum(max(total, 1))
            self.pbar.setValue(done)
            self.lbl_display.setText(f"A/C Posting For Date {date}")
            QApplication.processEvents()

        try:
            res = na.account_posting(d1, d2, user=self.user,
                                     progress=progress)
            self.pbar.setValue(self.pbar.maximum() or 1)
            self.lbl_display.setText("A/C Posting Completed.")
            QMessageBox.information(
                self, "Posting Utility",
                "A/C Posting Completed.\n"
                f"Mode: {res['mode']}\nDates: {res['dates']}\n"
                f"Room charges: {res['room_posted']} posted, "
                f"{res['room_skipped']} skipped\n"
                f"POS revenue: {res['pos_posted']} posted, "
                f"{res['pos_skipped']} skipped")
        except Exception as e:
            self.lbl_display.setText(f"Posting error: {e}")
            QMessageBox.critical(self, "Error", str(e))
        finally:
            self._set_busy(False)

    def _rename(self):
        try:
            n = na.rename_bill_no(self.txt_old_bill.text(),
                                  self.txt_new_bill.text())
            QMessageBox.information(self, "Bill No Rename",
                                    f"{n} PayCharge row(s) renamed.")
            self.txt_old_bill.clear()
            self.txt_new_bill.clear()
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))


def open_posting_utility(parent=None, user: str | None = None):
    w = PostingUtilityWindow(parent, user=user)
    w.show()
    return w


# =====================================================    """

    def __init__(self, parent=None, user: str | None = None):
        super().__init__(parent)
        self.user = user or na.USER
        self.setWindowTitle("Night Audit Process")
        self.resize(720, 420)
        self._build()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Night Audit Process"))

        doc = QGroupBox("Audit Period")
        fl = QFormLayout(doc)
        self.dt_from = QDateEdit(QDate.currentDate())
        self.dt_from.setCalendarPopup(True)
        self.dt_to = QDateEdit(QDate.currentDate())
        self.dt_to.setCalendarPopup(True)
        self.lbl_flags = QLabel("-")
        self.lbl_flags.setStyleSheet("color:%s;" % palette()["text"])
        self.lbl_flags.setWordWrap(True)
        fl.addRow("From Date:", self.dt_from)
        fl.addRow("To Date:", self.dt_to)
        fl.addRow("Enviro Flags:", self.lbl_flags)
        lay.addWidget(doc)

        self.lbl_display = QLabel("Ready.")
        self.lbl_display.setStyleSheet(
            "color:%s; padding:4px;" % palette()["text"])
        self.pbar = QProgressBar()
        self.pbar.setVisible(False)
        lay.addWidget(self.lbl_display)
        lay.addWidget(self.pbar)

        btns = QHBoxLayout()
        for cap, fn in (("Run Night Audit", self._run),
                        ("Refresh Flags", self._load_flags),
                        ("Exit", self.close)):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            btns.addWidget(b)
        lay.addLayout(btns)
        lay.addStretch(1)
        self._load_flags()

    def _load_flags(self):
        try:
            f = na.get_night_audit_flags()
            self.lbl_flags.setText(
                "KOT@NA=%s | POSBill@NA=%s | NoShow@NA=%s | Posting=%s" % (
                    f.get("kot_at_na"), f.get("pos_bill_at_na"),
                    f.get("noshow_at_na"), f.get("posting_type")))
        except Exception as e:
            self.lbl_flags.setText(f"(Enviro read error: {e})")

    def _run(self):
        d1 = self.dt_from.date().toPyDate()
        d2 = self.dt_to.date().toPyDate()
        if d1 > d2:
            QMessageBox.warning(self, "Night Audit Process",
                                "Please check Audit Dates")
            return
        if QMessageBox.question(
                self, "Night Audit...",
                "This Process is very critical\nMake sure that all the "
                "billings are stopped and no transactions have been made "
                "during Night Audit process.\n\nContinue with Night Audit "
                "Process ?") != QMessageBox.StandardButton.Yes:
            return
        self.pbar.setVisible(True)
        self.lbl_display.setText("Night Audit Started...")
        QApplication.processEvents()

        try:
            res = na.run_night_audit(d1, d2, user=self.user)
            self.pbar.setValue(self.pbar.maximum() or 1)
            self.lbl_display.setText("Night Audit Completed..")
            errs = res.get("errors") or []
            msg = ("Night Audit Completed..\n"
                   f"Dates: {res.get('dates_processed', [])}\n"
                   f"Room charges: {res.get('room_charges_posted', 0)}\n"
                   f"POS revenue: {res.get('pos_revenue_posted', 0)}")
            if errs:
                msg += "\n\nSkipped/Errors:\n" + "\n".join(errs[:8])
                QMessageBox.warning(self, "Night Audit Process", msg)
            else:
                QMessageBox.information(self, "Night Audit Process", msg)
        except Exception as e:
            self.lbl_display.setText(f"Night audit error: {e}")
            QMessageBox.critical(self, "Error", str(e))
        finally:
            self.pbar.setVisible(False)


def open_night_audit_process(parent=None, user: str | None = None):
    w = NightAuditProcessWindow(parent, user=user)
    w.show()
    return w


# =====================================================    """

    def __init__(self, parent=None, user: str | None = None):
        super().__init__(parent)
        self.user = user or na.USER
        self.setWindowTitle("Reverse Night Audit")
        self.resize(640, 320)
        self._build()
        self._load_date()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Reverse Night Audit"))

        doc = QGroupBox("Reverse")
        fl = QFormLayout(doc)
        self.lbl_date = QLabel("-")
        self.lbl_date.setStyleSheet(
            "color:#c00000; font-size:16px; font-weight:bold;")
        fl.addRow("For Date :", self.lbl_date)
        lay.addWidget(doc)

        note = QLabel(
            "Reverse = Enviro NCur ko ek din peeche karna (business date "
            "rollback). VB6 me PayCharge delete NAHI hota — sirf date "
            "wapas jaati hai. 01/Apr (FY start) se pehle reverse nahi hota.")
        note.setWordWrap(True)
        note.setStyleSheet("color:%s; padding:4px;" % palette()["text"])
        lay.addWidget(note)

        self.lbl_display = QLabel(".")
        self.lbl_display.setStyleSheet(
            "color:#ff0000; font-weight:bold; padding:4px;")
        lay.addWidget(self.lbl_display)

        btns = QHBoxLayout()
        b_run = QPushButton("Reverse Night Audit")
        b_run.clicked.connect(self._reverse)
        b_exit = QPushButton("Exit")
        b_exit.clicked.connect(self.close)
        btns.addWidget(b_run)
        btns.addWidget(b_exit)
        btns.addStretch(1)
        lay.addLayout(btns)
        lay.addStretch(1)

    def _load_date(self):
        try:
            from HMS_py.core import db
            rows = db.query(
                "SELECT [NCur] FROM Enviro WHERE LogSite_Code = ? OR "
                "LogSite_Code = 'HO'", (na.SITE_CODE,))
            self.lbl_date.setText(str(rows[0][0]) if rows else "-")
        except Exception as e:
            self.lbl_date.setText(f"(error: {e})")

    def _reverse(self):
        if QMessageBox.question(
                self, "Reverse Night Audit",
                "This Process is very critical\nMake sure that all the "
                "billings are stopped and no transactions have been made "
                "during Night Audit process.\n\nContinue with Night Audit "
                "Process ?") != QMessageBox.StandardButton.Yes:
            return
        try:
            res = na.reverse_night_audit(user=self.user)
        except ValueError as e:
            self.lbl_display.setText(str(e))
            QMessageBox.warning(self, "Reverse Night Audit", str(e))
            return
        except Exception as e:
            self.lbl_display.setText(f"Reverse error: {e}")
            QMessageBox.critical(self, "Error", str(e))
            return
        self.lbl_display.setText(
            f"Reverse Night Audit for Date : {res['from_date']}")
        self._load_date()
        QMessageBox.information(
            self, "Reverse Night Audit",
            f"Business date {res['from_date']} -> {res['to_date']} "
            "rollback ho gaya.")


def open_reverse_night_audit(parent=None, user: str | None = None):
    w = ReverseNightAuditWindow(parent, user=user)
    w.show()
    return w


if __name__ == "__main__":
    app = QApplication(sys.argv)
    w = PostingUtilityWindow()
    w.show()
    sys.exit(app.exec())
