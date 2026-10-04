"""Card transaction screens (VB6: SmartCardRecharge / SmartCardRefund /
SmartCardLostReIssue).

VB6 routing (MDIForm1.frm EXTSCOP_Click):
    Index 3 -> MemVar_1F92358 -> SmartCardRecharge      "Card Recharge"
    Index 4 -> MemVar_1F9236C -> SmartCardRefund        "Card Refund"
    Index 5 -> MemVar_1F92380 -> SmartCardLostReIssue   "Card Re-Issue"
(ModuleAdd.bas:2470 / 2476 / 2482)

Hardware note: VB6 me card *reader* par balance chip-me likha jaata hai
(ModuleSmartCard.Proc_275_3 / Proc_275_7 - "Reader Not Connected"). Python
port me reader nahi hai, isliye card ko Code/SerialNo se select kiya jaata
hai; DB effects (SmartCardLedger + SmartCardRegistration) VB6 ke bilkul
barabar hain. SmartCardTransaction table is DB me hai hi nahi, isliye VB6
ka hidden "CmdPosting" (LS_Posting batch) skip kiya gaya hai.

Run: python -m HMS_py.ui.smartcard_txn_ui
"""
from __future__ import annotations
import os
import sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

from PyQt6.QtCore import QDate, Qt
from PyQt6.QtWidgets import (
    QApplication, QDateEdit, QDialog, QFormLayout, QGroupBox,
    QHBoxLayout, QHeaderView, QLabel, QLineEdit, QMessageBox, QPushButton,
    QTableWidget, QTableWidgetItem, QVBoxLayout, QWidget)

from HMS_py.core import menu as menu_core
from HMS_py.core import smartcard_ops as sc


# ---------------------------------------------------------------- card pick
def pick_card(parent=None, term: str = "", title: str = "Select Card") -> dict | None:
    """SmartCardRegistration list se card choose karo (VB6 card-scan ka
    Python equivalent). Selected card ki dict wapas, ya None."""
    dlg = QDialog(parent)
    dlg.setWindowTitle(title)
    dlg.resize(860, 440)
    lay = QVBoxLayout(dlg)

    search = QLineEdit(term)
    search.setPlaceholderText("Code / Name / Card No / Serial No ...")
    lay.addWidget(search)

    cols = ["Code", "Card Type", "Card No", "Name", "Serial No",
            "Member", "Curr Bal", "Secur Bal", "Valid Upto", "Blocked"]
    tbl = QTableWidget(0, len(cols), dlg)
    tbl.setHorizontalHeaderLabels(cols)
    tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
    tbl.setSelectionMode(QTableWidget.SelectionMode.SingleSelection)
    tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
    tbl.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.ResizeToContents)
    lay.addWidget(tbl)

    status = QLabel("")
    lay.addWidget(status)

    btns = QHBoxLayout()
    b_sel = QPushButton("Select")
    b_cancel = QPushButton("Cancel")
    btns.addWidget(b_sel)
    btns.addWidget(b_cancel)
    btns.addStretch(1)
    lay.addLayout(btns)

    def _fill():
        rows = sc.search_reg(search.text().strip(), limit=500) \
            if search.text().strip() else sc.list_all_reg(limit=500)
        tbl.setRowCount(0)
        for r in rows:
            row = tbl.rowCount()
            tbl.insertRow(row)
            vals = [r["code"], r["cardtype"], r["cardno"], r["name"],
                    r["serialno"], r["membercode"],
                    f"{float(r['currbal'] or 0):.2f}",
                    f"{float(r['securbal'] or 0):.2f}",
                    r["validupto"].strftime("%d/%m/%Y")
                    if hasattr(r["validupto"], "strftime") else "",
                    r["blockedyn"]]
            for col, v in enumerate(vals):
                tbl.setItem(row, col, QTableWidgetItem(str(v)))
            tbl.item(row, 0).setData(Qt.ItemDataRole.UserRole, r["code"])
        status.setText(f"{len(rows)} card(s)")

    def _selected() -> dict | None:
        row = tbl.currentRow()
        if row < 0:
            return None
        code = tbl.item(row, 0).data(Qt.ItemDataRole.UserRole)
        return sc.get_reg(code)

    def _accept():
        rec = _selected()
        if rec:
            dlg.accept()

    search.textChanged.connect(lambda _t: _fill())
    tbl.doubleClicked.connect(lambda _i: _accept())
    b_sel.clicked.connect(_accept)
    b_cancel.clicked.connect(dlg.reject)

    _fill()
    if term:
        for row in range(tbl.rowCount()):
            if (tbl.item(row, 0).text() or "").lower() == term.lower():
                tbl.selectRow(row)
                break
    if dlg.exec() != QDialog.DialogCode.Accepted:
        return None
    return _selected()


def _f(val, default=0.0) -> float:
    try:
        return round(float(str(val).strip() or 0), 2)
    except (TypeError, ValueError):
        return default


# ------------------------------------------------------------- base dialog
class _CardTxnDialog(QDialog):
    """Recharge / Refund dono ke liye common frame (VB6 ka card header +
    amount fields). Subclass `_fields()` aur `_save()` override karta hai."""

    def __init__(self, parent=None, user: str = "SA", code: str = ""):
        super().__init__(parent)
        self.user = user
        self.card: dict | None = None
        self.result_data: dict | None = None
        self.setWindowTitle(self.TITLE)
        self.resize(720, 560)
        self._build()
        if code:
            self._load(code)
        self.refresh()

    # ---- widgets
    def _build(self):
        outer = QVBoxLayout(self)

        # header: card details
        hdr = QGroupBox("Card Details")
        hf = QFormLayout(hdr)
        self.lbl_code = QLabel("-")
        self.lbl_type = QLabel("-")
        self.lbl_no = QLabel("-")
        self.lbl_name = QLabel("-")
        self.lbl_serial = QLabel("-")
        self.lbl_member = QLabel("-")
        self.lbl_valid = QLabel("-")
        self.lbl_curr = QLabel("0.00")
        self.lbl_secur = QLabel("0.00")
        for lbl, val in (("Code", self.lbl_code), ("Card Type", self.lbl_type),
                         ("Card No", self.lbl_no), ("Name", self.lbl_name),
                         ("Serial No", self.lbl_serial),
                         ("Member", self.lbl_member),
                         ("Valid Upto", self.lbl_valid),
                         ("Current Balance", self.lbl_curr),
                         ("Current Security Balance", self.lbl_secur)):
            hf.addRow(lbl + " :", val)
        outer.addWidget(hdr)

        self.btn_pick = QPushButton("Select Card ...")
        self.btn_pick.clicked.connect(self._on_pick)
        outer.addWidget(self.btn_pick)

        # entry fields
        box = QGroupBox(self.FIELD_TITLE)
        bf = QFormLayout(box)
        self.edits: dict[str, QWidget] = {}
        for key, label, widget in self._fields():
            self.edits[key] = widget
            bf.addRow(label + " :", widget)
        outer.addWidget(box)

        self.lbl_note = QLabel("")
        self.lbl_note.setWordWrap(True)
        outer.addWidget(self.lbl_note)

        btns = QHBoxLayout()
        self.btn_save = QPushButton("Save")
        self.btn_save.clicked.connect(self._on_save)
        self.btn_close = QPushButton("Close")
        self.btn_close.clicked.connect(self.reject)
        btns.addWidget(self.btn_save)
        btns.addStretch(1)
        btns.addWidget(self.btn_close)
        outer.addLayout(btns)

    def _fields(self):  # pragma: no cover - abstract
        raise NotImplementedError

    # ---- data
    def _load(self, code: str):
        rec = sc.get_reg(code)
        if not rec:
            QMessageBox.warning(self, self.TITLE, f"Card '{code}' nahi mila.")
            return
        self.card = rec
        self.refresh()

    def _on_pick(self):
        rec = pick_card(self, title="Select Card")
        if rec:
            self.card = rec
            self.refresh()

    def refresh(self):
        c = self.card
        self.lbl_code.setText(c["code"] if c else "-")
        self.lbl_type.setText(c["cardtype"] if c else "-")
        self.lbl_no.setText(c["cardno"] if c else "-")
        self.lbl_name.setText(c["name"] if c else "-")
        self.lbl_serial.setText(c["serialno"] if c else "-")
        self.lbl_member.setText(c["membercode"] if c else "-")
        vu = c["validupto"] if c else None
        self.lbl_valid.setText(
            vu.strftime("%d/%m/%Y") if hasattr(vu, "strftime") else "-")
        self.lbl_curr.setText(f"{float(c['currbal'] or 0):.2f}" if c else "0.00")
        self.lbl_secur.setText(f"{float(c['securbal'] or 0):.2f}" if c else "0.00")

    def _on_save(self):  # pragma: no cover - abstract
        raise NotImplementedError

    def _guard_card(self) -> bool:
        if not self.card:
            QMessageBox.warning(self, self.TITLE, "Please Scan Card First.")
            return False
        return True


# ------------------------------------------------------------- Recharge
class RechargeDialog(_CardTxnDialog):
    TITLE = "Card Recharge - HMS_py"
    FIELD_TITLE = "Recharge Details"

    def _fields(self):
        self.ed_cash = QLineEdit("0")
        self.ed_secur = QLineEdit("0")
        self.ed_narr = QLineEdit("")
        self.ed_narr.setPlaceholderText("optional (default: Agnst. Recharge <Card No>)")
        return [("cash", "Recharge Amount", self.ed_cash),
                ("secur", "Security Amount", self.ed_secur),
                ("narr", "Narration", self.ed_narr)]

    def _on_save(self):
        if not self._guard_card():
            return
        cash, secur = _f(self.ed_cash.text()), _f(self.ed_secur.text())
        if cash == 0 and secur == 0:
            QMessageBox.information(self, self.TITLE,
                                    "Both of Amount Should Not be Zero.")
            return
        try:
            res = sc.recharge_card(self.card["code"], cash, secur,
                                   self.ed_narr.text().strip(),
                                   user=self.user)
        except Exception as e:
            QMessageBox.critical(self, self.TITLE, f"Transaction Failed.\n{e}")
            return
        self.result_data = res
        QMessageBox.information(
            self, "Recharge",
            f"Process Completed Successfully.\n"
            f"DocId : {res['docid']}   V.No: {res['vno']}\n"
            f"New Balance     : {res['new_curr']:.2f}\n"
            f"New Security    : {res['new_secur']:.2f}")
        self._load(self.card["code"])
        self.ed_cash.setText("0")
        self.ed_secur.setText("0")


# --------------------------------------------------------------- Refund
class RefundDialog(_CardTxnDialog):
    TITLE = "Card Refund - HMS_py"
    FIELD_TITLE = "Refund Details"

    def _fields(self):
        self.ed_cash = QLineEdit("0")
        self.ed_secur = QLineEdit("0")
        self.ed_narr = QLineEdit("")
        self.ed_narr.setPlaceholderText("optional (default: Agnst. Refund <Card No>)")
        return [("cash", "Refund Amount", self.ed_cash),
                ("secur", "Security Refund", self.ed_secur),
                ("narr", "Narration", self.ed_narr)]

    def _on_save(self):
        if not self._guard_card():
            return
        cash, secur = _f(self.ed_cash.text()), _f(self.ed_secur.text())
        if cash == 0 and secur == 0:
            QMessageBox.information(self, self.TITLE,
                                    "Both of Amount Should Not be Zero.")
            return
        try:
            res = sc.refund_card(self.card["code"], cash, secur,
                                 self.ed_narr.text().strip(), user=self.user)
        except Exception as e:
            QMessageBox.critical(self, self.TITLE, f"Transaction Failed.\n{e}")
            return
        self.result_data = res
        QMessageBox.information(
            self, "Refund",
            f"Process Completed Successfully.\n"
            f"DocId : {res['docid']}   V.No: {res['vno']}\n"
            f"New Balance     : {res['new_curr']:.2f}\n"
            f"New Security    : {res['new_secur']:.2f}")
        self._load(self.card["code"])
        self.ed_cash.setText("0")
        self.ed_secur.setText("0")

    def _build(self):
        super()._build()
        btn = QPushButton("Waive-off All Cash Card Balance")
        btn.clicked.connect(self._on_waive)
        self.layout().insertWidget(3, btn)

    def _on_waive(self):
        ans = QMessageBox.question(
            self, " Waive-off Message",
            "Process will Waive-off All Cash Card Balance.",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No)
        if ans != QMessageBox.StandardButton.Yes:
            return
        try:
            res = sc.waive_off_all(user=self.user)
        except Exception as e:
            QMessageBox.critical(self, self.TITLE, f"Transaction Failed.\n{e}")
            return
        QMessageBox.information(
            self, "Process completed successfully",
            f"{res['cards']} card(s) waived off, "
            f"{res['ledger_rows']} ledger row(s).")
        if self.card:
            self._load(self.card["code"])


# -------------------------------------------------------------- Re-Issue
class ReIssueDialog(_CardTxnDialog):
    TITLE = "Card Re-Issue - HMS_py"
    FIELD_TITLE = "New Card Details"

    def _fields(self):
        self.ed_serial = QLineEdit("")
        self.ed_serial.setPlaceholderText("New card ka Serial / HW Id")
        self.ed_iss = QDateEdit(QDate.currentDate())
        self.ed_iss.setCalendarPopup(True)
        self.ed_iss.setDisplayFormat("dd/MM/yyyy")
        self.ed_valid = QDateEdit(QDate.currentDate().addYears(1))
        self.ed_valid.setCalendarPopup(True)
        self.ed_valid.setDisplayFormat("dd/MM/yyyy")
        self.ed_remark = QLineEdit("")
        return [("serial", "New Serial No", self.ed_serial),
                ("iss", "Issue Date", self.ed_iss),
                ("valid", "Valid Upto Date", self.ed_valid),
                ("remark", "Remark", self.ed_remark)]

    def refresh(self):
        super().refresh()
        # VB6: naya issue date default aaj, valid upto aaj + 1 saal
        if self.card and not self.ed_serial.text():
            self.ed_iss.setDate(QDate.currentDate())
            self.ed_valid.setDate(QDate.currentDate().addYears(1))

    def _on_save(self):
        if not self._guard_card():
            return
        new_serial = self.ed_serial.text().strip()
        if not new_serial:
            QMessageBox.warning(self, self.TITLE, "Please Scan New Card First.")
            return
        try:
            res = sc.reissue_card(
                self.card["code"], new_serial,
                self.ed_iss.date().toPython(),
                self.ed_valid.date().toPython(),
                self.ed_remark.text().strip(), user=self.user)
        except Exception as e:
            QMessageBox.critical(self, self.TITLE, f"Transaction Failed.\n{e}")
            return
        self.result_data = res
        QMessageBox.information(
            self, "Card Re-Issue",
            f"Process Completed Successfully.\n"
            f"Trans Id : {res['trans_id']}\n"
            f"Old Serial : {res['old_serial']}\n"
            f"New Serial : {res['new_serial']}\n"
            f"Registration rows : {res['registration_rows']}")
        self._load(self.card["code"])


# ------------------------------------------------------- card statement
# VB6 routing (ModuleAdd.bas:2493 / 2497):
#   "Card Statement (MINI)" -> ModuleSmartCard.Proc_275_18 (ek din, Type
#                              RCARDC/RCARDS/CARDEXP, site filter)
#   "Card Statement (FULL)" -> ModuleSmartCard.Proc_275_22 (poori history)
# Dono pehle card verify karte hain (Proc_275_12) - yahan pick_card().
_STMT_FULL = ("cardtype", "name", "cardno", "vdate", "vtype", "vno",
              "narration", "amtcr", "amtdr")
_STMT_MINI = ("cardtype", "cardno", "relationship", "member", "name",
              "vdate", "vtype", "vno", "narration", "amtcr", "amtdr",
              "u_entdt", "prebalance")
_HEADERS = {"cardtype": "Card Type", "name": "Name", "cardno": "Card No",
            "vdate": "V Date", "vtype": "V Type", "vno": "V No",
            "narration": "Narration", "amtcr": "Amt Cr", "amtdr": "Amt Dr",
            "relationship": "Relationship", "member": "Member",
            "u_entdt": "Ent Dt", "prebalance": "Pre Balance"}


class CardStatementDialog(QDialog):
    """Card Statement - VB6 MINI (Proc_275_18) / FULL (Proc_275_22)."""

    def __init__(self, parent=None, user: str = "SA", mini: bool = False):
        super().__init__(parent)
        self.user = user
        self.mini = mini
        self.card: dict | None = None
        self.setWindowTitle("Card Statement (MINI)" if mini
                            else "Card Statement (FULL)")
        self.resize(1040, 560)
        self._build()
        self._run()

    def _build(self):
        lay = QVBoxLayout(self)
        top = QHBoxLayout()
        b_pick = QPushButton("Select Card")
        b_pick.clicked.connect(self._on_pick)
        top.addWidget(b_pick)
        self.lbl_card = QLabel("(koi card nahi chuna)")
        top.addWidget(self.lbl_card, 1)
        if self.mini:
            top.addWidget(QLabel("Date"))
            self.ed_date = QDateEdit(QDate.currentDate())
            self.ed_date.setCalendarPopup(True)
            self.ed_date.setDisplayFormat("dd/MM/yyyy")
            self.ed_date.dateChanged.connect(lambda _d: self._run())
            top.addWidget(self.ed_date)
        else:
            self.ed_date = None
        b_run = QPushButton("Show")
        b_run.clicked.connect(self._run)
        top.addWidget(b_run)
        b_csv = QPushButton("CSV")
        b_csv.clicked.connect(self._csv)
        top.addWidget(b_csv)
        b_close = QPushButton("Close")
        b_close.clicked.connect(self.close)
        top.addWidget(b_close)
        lay.addLayout(top)

        keys = _STMT_MINI if self.mini else _STMT_FULL
        self.keys = keys
        self.grid = QTableWidget(0, len(keys), self)
        self.grid.setHorizontalHeaderLabels([_HEADERS[k] for k in keys])
        self.grid.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.grid.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.grid.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.ResizeToContents)
        lay.addWidget(self.grid)
        self.lbl_status = QLabel("")
        lay.addWidget(self.lbl_status)

    def _on_pick(self):
        c = pick_card(self)
        if not c:
            return
        self.card = c
        self.lbl_card.setText(
            f"{c.get('code')}  {c.get('name')}  ({c.get('cardno')})")
        self._run()

    def _run(self):
        if not self.card:
            self.grid.setRowCount(0)
            self.lbl_status.setText("Card chuno (VB6 me scan hota tha)")
            return
        try:
            vdate = (self.ed_date.date().toPyDate()
                     if self.ed_date is not None else None)
            rows = sc.card_statement(self.card["code"], mini=self.mini,
                                     vdate=vdate)
        except Exception as e:
            QMessageBox.critical(self, "Card Statement", str(e))
            return
        self.grid.setRowCount(0)
        for r in rows:
            i = self.grid.rowCount()
            self.grid.insertRow(i)
            for c, k in enumerate(self.keys):
                v = r.get(k, "")
                self.grid.setItem(i, c, QTableWidgetItem(str(v)))
        self.lbl_status.setText(
            f"{len(rows)} row(s) — {'ek din' if self.mini else 'poori history'}"
            f" — read-only")

    def _csv(self):
        if self.grid.rowCount() == 0:
            QMessageBox.information(self, "CSV", "Pehle statement chalao")
            return
        import csv
        from PyQt6.QtWidgets import QFileDialog
        name = ("card_statement_mini" if self.mini
                else "card_statement_full")
        path, _ = QFileDialog.getSaveFileName(self, "Export CSV",
                                              f"{name}.csv", "CSV (*.csv)")
        if not path:
            return
        with open(path, "w", newline="", encoding="utf-8") as fh:
            w = csv.writer(fh)
            w.writerow([_HEADERS[k] for k in self.keys])
            for i in range(self.grid.rowCount()):
                w.writerow([(self.grid.item(i, c).text()
                             if self.grid.item(i, c) else "")
                            for c in range(len(self.keys))])
        QMessageBox.information(self, "CSV", f"Exported -> {path}")


# ---------------------------------------------------------------- openers
def _open(dlg_cls, parent, user: str, form_name: str, **kw):
    if not menu_core.menu_name_allowed(form_name, user):
        QMessageBox.warning(parent, "Access denied",
                            f"{form_name} ko aapke user rights mein nahi hai.")
        return None
    dlg = dlg_cls(parent, user=user, **kw)
    dlg.exec()
    return dlg


def open_card_recharge(parent=None, user: str = "SA"):
    """VB6 SmartCardRecharge (EXTSCOP Index 3) -> menu leaf 'Card Recharge'."""
    return _open(RechargeDialog, parent, user, "Card Recharge")


def open_card_refund(parent=None, user: str = "SA"):
    """VB6 SmartCardRefund (EXTSCOP Index 4) -> menu leaf 'Card Refund'."""
    return _open(RefundDialog, parent, user, "Card Refund")


def open_card_re_issue(parent=None, user: str = "SA"):
    """VB6 SmartCardLostReIssue (EXTSCOP Index 5) -> 'Card Re-Issue'."""
    return _open(ReIssueDialog, parent, user, "Card Re-Issue")


def open_card_statement_mini(parent=None, user: str = "SA"):
    """VB6 ModuleAdd.bas:2493 -> Proc_275_18 (MINI statement)."""
    return _open(CardStatementDialog, parent, user,
                 "Card Statement (MINI)", mini=True)


def open_card_statement_full(parent=None, user: str = "SA"):
    """VB6 ModuleAdd.bas:2497 -> Proc_275_22 (FULL statement)."""
    return _open(CardStatementDialog, parent, user,
                 "Card Statement (FULL)", mini=False)


if __name__ == "__main__":  # pragma: no cover - manual run
    app = QApplication(sys.argv)
    w = RechargeDialog(None)
    w.show()
    sys.exit(app.exec())
