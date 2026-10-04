"""Payment Receive Entry (POS) — VB6 RsPaymentReceice.frm UI port.

Menu leaf: Point Of Sale > POS Reports > "Payment Receive Entry (POS)".
Core SQL/transaction logic: HMS_py.core.rs_payment_receive (us module
docstring me poora VB6 evidence map hai — form loc_ coordinates + extracted
queries Report_Queries/Modules/RsPaymentReceice).

VB6 screen ka dhaancha (decompiled designer + TopCtrl events):
  * TopCtrl "AEDP" (Form_Load loc_134CCE3) = Add / Edit / Delete / Print;
    browse First/Prev/Next/Last + Find + Refresh + Exit (events 10..13,
    C=Delete, D=Edit, E=Unload, F=Find, 14=Print, 15=Refresh, 16=Save).
  * Header: LblFormCaption ("Payment Receive (POS)"), LblVPrefix, LblUser
    (Created By/Modified By), LblLDt (Last Update) — fill query 28 se.
  * Left: Party (AgAc), Amount, Narration (FrRem label), tender detail
    frames: FrTxnNo (Txn. No.), FrChqDet (Cheque No./Cheque Dt.),
    FrCCDet (C.C. No./Holder/Exp.Dt.), FrEmp (Staff), FrComp (Company),
    FrMember, FrSendRoom (Room No.#) + Batch No — ye sab designer
    captions hain aur save ke PayCharge INSERT (stmt 21) ke columns.
  * FGrid = payment lines (VB6 Cols=25; col0=SNo, col3=Payment Type,
    col8=Amount, col9=Date — Proc_339_76 loc_11C1E8E/11C1ECE/11C1F2C/
    11C1CFB). Port me baaki columns designer captions ke naam se hain.
  * GridSel = bills to adjust (VB6 Cols=8, Proc_339_83): tick col,
    Bill No, DocId, SNo, Bill Date, Bill Amount, PayType, CompCode.
  * Del_Click (loc_F94E1F) = payment LINE delete
    ("Are You Sure To Delete?" / "No Entries To Delete").
  * TopCtrl Delete (event C) = whole voucher delete ("Delete Record ?").

Documented gap (PRINTING_VERIFICATION.md): VB6 Print (event 14) Crystal
Reports POSPAYMENTRECIEPT.RPT + PosPaymentRecieptBillInfo subreport
chalata hai — .rpt port nahi hua, isliye Print button disabled hai
tooltip ke saath (fake print nahi dikhaya jaata).

Run: python -m HMS_py.ui.rs_payment_receive_ui
"""
from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import QDate, Qt
from PyQt6.QtGui import QColor
from PyQt6.QtWidgets import (QApplication, QComboBox, QDateEdit, QDialog,
                             QFormLayout, QGridLayout, QGroupBox,
                             QHBoxLayout, QHeaderView, QLabel, QLineEdit,
                             QMessageBox, QPushButton, QStyle, QTableWidget,
                             QTableWidgetItem, QVBoxLayout, QWidget)

from HMS_py.core import db
from HMS_py.core import rs_payment_receive as core
from HMS_py.ui import theme as _theme

# FGrid columns — index 0/3/8/9 VB6 se (Proc_339_76), baaki designer
# frame captions (FrTxnNo/FrChqDet/FrCCDet/FrEmp/FrComp/FrMember/FrRem).
LINE_COLS = ["SNo", "Payment Type", "Amount", "Date", "Txn. No.",
             "Cheque No.", "Cheque Dt.", "C.C. No.", "Holder", "Exp.Dt.",
             "Batch No", "Narration", "Staff", "Company", "Member",
             "Room No.#"]
# GridSel columns — Proc_339_83 loc_11B4CEE (Cols=8) ke exact headers
# ke saath; [0] = VB6 tick (WINGDINGS) column.
BILL_COLS = ["✓", "Bill No", "DocId", "SNo", "Bill Date", "Bill Amount",
             "PayType", "CompCode"]


def _mk_table(cols) -> QTableWidget:
    t = QTableWidget(0, len(cols))
    t.setHorizontalHeaderLabels(cols)
    t.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
    t.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
    t.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
    t.setAlternatingRowColors(True)
    t.verticalHeader().setVisible(False)
    return t


def _cell(v) -> QTableWidgetItem:
    if isinstance(v, datetime.datetime):
        v = v.strftime("%d/%m/%Y")
    elif isinstance(v, datetime.date):
        v = v.strftime("%d/%m/%Y")
    elif isinstance(v, float):
        v = f"{v:.2f}"
    it = QTableWidgetItem("" if v is None else str(v))
    it.setForeground(QColor(_theme.palette()["text"]))
    return it


def _fill(t: QTableWidget, rows, checkable: bool = False) -> None:
    pal = _theme.palette()["text"]
    t.setRowCount(0)
    for vals in rows:
        i = t.rowCount()
        t.insertRow(i)
        for c, v in enumerate(vals):
            if checkable and c == 0:
                it = QTableWidgetItem()
                it.setFlags(it.flags() | Qt.ItemFlag.ItemIsUserCheckable)
                it.setCheckState(Qt.CheckState.Checked if v
                                 else Qt.CheckState.Unchecked)
                it.setText("")
            else:
                it = _cell(v)
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
            it.setForeground(QColor(pal))
            t.setItem(i, c, it)


def _combo(items, placeholder: str = "(none)") -> QComboBox:
    cb = QComboBox()
    cb.addItem(placeholder, "")
    for code, name, *_rest in items:
        cb.addItem(f"{code} - {name}" if name else str(code), str(code))
    cb.setMinimumWidth(180)
    return cb


def _date_edit() -> QDateEdit:
    d = QDateEdit(QDate.currentDate())
    d.setCalendarPopup(True)
    d.setDisplayFormat("dd/MM/yyyy")
    return d


class PaymentReceivePosDialog(QDialog):
    """VB6 RsPaymentReceice — payment receive voucher (VType PPOS)."""

    def __init__(self, parent=None, user: str | None = None):
        super().__init__(parent)
        self.setWindowTitle("Payment Receive Entry (POS) "
                            "(VB6 RsPaymentReceice)")
        self.resize(1280, 760)
        self.user = user or core.USER
        self.mode = "view"              # view | add | edit
        self.docids: list[str] = []     # browse list
        self.idx = -1
        self.docid: str | None = None
        self.lines: list[dict] = []
        self.bills: list[dict] = []
        self._look: dict = {}
        self._build()
        self._load_lookups()
        self._on_refresh()

    # ─────────────────────────────────────────────────────────── layout
    def _build(self) -> None:
        v = QVBoxLayout(self)
        pal = _theme.palette()

        # header strip (VB6 LblFormCaption + LblVPrefix/User/LDt)
        head = QHBoxLayout()
        cap = QLabel("Payment Receive (POS)")
        cap.setStyleSheet(
            f"background: {pal['glass_tint']}; font-size: 18px; "
            f"font-weight: 700; padding: 4px 10px;")
        head.addWidget(cap)
        head.addStretch(1)
        self.lbl_prefix = QLabel("VPrefix: ")
        self.lbl_user = QLabel("")
        self.lbl_ldt = QLabel("")
        for lbl in (self.lbl_prefix, self.lbl_user, self.lbl_ldt):
            lbl.setStyleSheet(f"color: {pal['text_dim']};")
            head.addWidget(lbl)
        v.addLayout(head)

        # toolbar — VB6 TopCtrl order (New/Edit/Delete/Save + browse)
        v.addWidget(self._toolbar())

        # party + amount strip
        form = QGridLayout()
        self.cmb_outlet = QComboBox()
        self.cmb_outlet.setMinimumWidth(200)
        form.addWidget(QLabel("Outlet"), 0, 0)
        form.addWidget(self.cmb_outlet, 0, 1)
        self.cmb_party = QComboBox()
        self.cmb_party.setMinimumWidth(240)
        form.addWidget(QLabel("Party"), 0, 2)
        form.addWidget(self.cmb_party, 0, 3)
        form.addWidget(QLabel("Amount"), 0, 4)
        self.txt_amount = QLineEdit()
        self.txt_amount.setPlaceholderText("receipt total")
        form.addWidget(self.txt_amount, 0, 5)
        form.addWidget(QLabel("Narration"), 0, 6)
        self.txt_narr = QLineEdit()
        self.txt_narr.setMaxLength(35)          # FrRem Txt(18) MaxLength=35
        form.addWidget(self.txt_narr, 0, 7)
        self.lbl_bills_total = QLabel("Selected bills: 0.00")
        self.lbl_bills_total.setStyleSheet(f"color: {pal['text_dim']};")
        form.addWidget(self.lbl_bills_total, 1, 4, 1, 4)
        v.addLayout(form)

        mid = QHBoxLayout()

        # ── tender line editor (VB6 Fr* frames ke captions)
        grp = QGroupBox("Payment line")
        f = QFormLayout(grp)
        self.cmb_paytype = QComboBox()
        self.cmb_paytype.setMinimumWidth(200)
        f.addRow("Payment Type:", self.cmb_paytype)
        self.txt_line_amt = QLineEdit()
        self.txt_line_amt.setPlaceholderText("amount")
        f.addRow("Amount:", self.txt_line_amt)
        self.txt_tip = QLineEdit("0")
        f.addRow("Tip Amt:", self.txt_tip)
        self.txt_txn = QLineEdit()               # FrTxnNo
        self.txt_txn.setMaxLength(20)
        f.addRow("Txn. No.:", self.txt_txn)
        self.txt_chqno = QLineEdit()             # FrChqDet Txt(11)
        self.txt_chqno.setMaxLength(10)
        f.addRow("Cheque No.:", self.txt_chqno)
        self.txt_chqdt = _date_edit()            # FrChqDet Txt(12)
        f.addRow("Cheque Dt.:", self.txt_chqdt)
        self.txt_ccno = QLineEdit()              # FrCCDet
        self.txt_ccno.setMaxLength(20)
        f.addRow("C.C. No.:", self.txt_ccno)
        self.txt_holder = QLineEdit()            # FrCCDet
        self.txt_holder.setMaxLength(35)
        f.addRow("Holder:", self.txt_holder)
        self.txt_expdt = _date_edit()            # FrCCDet
        f.addRow("Exp.Dt.:", self.txt_expdt)
        self.txt_batch = QLineEdit()             # Batch No (smallint)
        f.addRow("Batch No:", self.txt_batch)
        self.cmb_staff = QComboBox()             # FrEmp
        self.cmb_staff.setMinimumWidth(190)
        f.addRow("Staff:", self.cmb_staff)
        self.cmb_company = QComboBox()           # FrComp
        self.cmb_company.setMinimumWidth(190)
        f.addRow("Company:", self.cmb_company)
        self.cmb_member = QComboBox()            # FrMember
        self.cmb_member.setMinimumWidth(190)
        f.addRow("Member:", self.cmb_member)
        self.cmb_room = QComboBox()              # FrSendRoom
        self.cmb_room.setMinimumWidth(190)
        f.addRow("Room No.#:", self.cmb_room)
        btns = QHBoxLayout()
        b_add = QPushButton("Add Line")
        b_add.setToolTip("Payment line grid me add (VB6 FGrid auto-append)")
        b_add.clicked.connect(self._add_line)
        b_rm = QPushButton("Remove Line")
        b_rm.setToolTip('VB6 Del_Click: "Are You Sure To Delete?"')
        b_rm.clicked.connect(self._remove_line)
        btns.addWidget(b_add)
        btns.addWidget(b_rm)
        btns.addStretch(1)
        f.addRow(btns)
        mid.addWidget(grp, 4)

        # ── payment lines grid (FGrid)
        col = QVBoxLayout()
        col.addWidget(QLabel("Payment details (FGrid)"))
        self.grid_lines = _mk_table(LINE_COLS)
        col.addWidget(self.grid_lines, 3)

        col.addWidget(QLabel("Bills to adjust (GridSel) — tick to allocate"))
        self.grid_bills = _mk_table(BILL_COLS)
        self.grid_bills.itemChanged.connect(self._bill_ticked)
        col.addWidget(self.grid_bills, 2)
        mid.addLayout(col, 7)
        v.addLayout(mid, 1)

        self.lbl_status = QLabel("Ready")
        self.lbl_status.setStyleSheet(f"color: {pal['text_dim']};")
        v.addWidget(self.lbl_status)

    def _toolbar(self) -> QWidget:
        """VB6 TopCtrl order — captions shell key-dispatch (F4..F11,
        Ctrl+N/S/E/D) ke liye bhi kaam aate hain."""
        bar = QWidget()
        lay = QHBoxLayout(bar)
        lay.setContentsMargins(4, 4, 4, 4)
        lay.setSpacing(4)
        style = bar.style()
        self._counter = QLabel("0 / 0")
        self._counter.setMinimumWidth(70)

        spec = (
            ("New", self._on_new, "New entry (Ctrl+N)",
             QStyle.StandardPixmap.SP_FileDialogNewFolder),
            ("Edit", self._on_edit, "Edit voucher (Ctrl+E)",
             QStyle.StandardPixmap.SP_DialogDetailedView
             if hasattr(QStyle.StandardPixmap, "SP_DialogDetailedView")
             else QStyle.StandardPixmap.SP_FileDialogDetailedView),
            ("Delete", self._on_delete, "Delete voucher (Ctrl+D)",
             QStyle.StandardPixmap.SP_TrashIcon),
            ("Save", self._on_save, "Save (Ctrl+S)",
             QStyle.StandardPixmap.SP_DialogSaveButton),
            ("Cancel", self._on_cancel, "Cancel current changes",
             QStyle.StandardPixmap.SP_DialogCancelButton),
            ("First", self._on_first, "First (F6)",
             QStyle.StandardPixmap.SP_MediaSkipBackward),
            ("Prev", self._on_prev, "Prev (F7)",
             QStyle.StandardPixmap.SP_MediaSeekBackward),
            ("Next", self._on_next, "Next (F8)",
             QStyle.StandardPixmap.SP_MediaSeekForward),
            ("Last", self._on_last, "Last (F9)",
             QStyle.StandardPixmap.SP_MediaSkipForward),
            ("Find", self._on_find, "Find (F4)",
             QStyle.StandardPixmap.SP_FileDialogContentsView),
        )
        for cap, fn, tip, icon in spec:
            b = QPushButton()
            b.setObjectName(f"posPayment{cap}")
            b.setAccessibleName(cap)
            b.setIcon(style.standardIcon(icon))
            b.setIconSize(b.iconSize().__class__(20, 20))
            b.setFixedSize(34, 30)
            b.setToolTip(tip)
            b.clicked.connect(fn)
            lay.addWidget(b)
        lay.addSpacing(8)
        lay.addWidget(QLabel("Browse"))
        lay.addWidget(self._counter)
        lay.addStretch(1)
        b_print = QPushButton("Print")
        b_print.setEnabled(False)
        b_print.setToolTip(
            "VB6 Crystal .RPT POSPAYMENTRECIEPT (+ PosPaymentRecieptBillInfo "
            "subreport) — .rpt port nahi hua; PRINTING_VERIFICATION.md me "
            "documented gap")
        lay.addWidget(b_print)
        b_exit = QPushButton("Exit")
        b_exit.setToolTip("Exit (Esc)")
        b_exit.clicked.connect(self.close)
        lay.addWidget(b_exit)
        return bar

    # ─────────────────────────────────────────────────────────── lookups
    def _load_lookups(self) -> None:
        try:
            self._look = {
                "outlets": core.outlets(),
                "pay": core.pay_types(),
                "emp": core.employees(),
                "corp": core.corporate_parties(),
                "mem": core.member_parties(),
                "party": core.billing_parties(),
                "room": core.occupied_rooms(),
            }
        except Exception as e:
            self.lbl_status.setText(f"Lookup load failed: {e}")
            self._look = {k: [] for k in
                          ("outlets", "pay", "emp", "corp", "mem",
                           "party", "room")}
        for cmb, key, ph in (
                (self.cmb_outlet, "outlets", "(select outlet)"),
                (self.cmb_party, "party", "(none)"),
                (self.cmb_paytype, "pay", "(select pay type)"),
                (self.cmb_staff, "emp", "(none)"),
                (self.cmb_company, "corp", "(none)"),
                (self.cmb_member, "mem", "(none)"),
                (self.cmb_room, "room", "(none)")):
            cmb.blockSignals(True)
            cmb.clear()
            cmb.addItem(ph, "")            # index 0 = placeholder
            for code, name, *_ in self._look.get(key, []):
                cmb.addItem(f"{code} - {name}" if name else str(code),
                            str(code))
            cmb.setCurrentIndex(0)
            cmb.blockSignals(False)
        # default outlet (core.default_outlet docstring dekho)
        try:
            dflt = core.default_outlet()
        except Exception:
            dflt = ""
        if dflt:
            for i in range(self.cmb_outlet.count()):
                if self.cmb_outlet.itemData(i) == dflt:
                    self.cmb_outlet.setCurrentIndex(i)
                    break
        self.cmb_party.currentIndexChanged.connect(self._party_changed)

    def _outlet(self) -> str:
        return self.cmb_outlet.currentData() or ""

    # ─────────────────────────────────────────────────────────── browse
    def _on_refresh(self) -> None:
        outlet = self._outlet()
        if not outlet:
            self.docids, self.idx, self.docid = [], -1, None
            self._set_counter()
            self._clear_form()
            self.lbl_status.setText(
                "Outlet select karo (VB6 global_52 = login department)")
            return
        try:
            date_from = datetime.date.today()   # browse query 10 (vdate>=)
            rows = core.browse(outlet, date_from=str(date_from))
            self.docids = [r["docid"] for r in rows]
            self.idx = -1
            if self.docids:
                self.idx = 0
                self._show(self.docids[0])
            else:
                self.docid = None
                self._clear_form()
            self._set_counter()
            self.lbl_status.setText(
                f"{len(self.docids)} voucher(s) for outlet {outlet}")
        except Exception as e:
            QMessageBox.critical(self, "Refresh", str(e))

    def _set_counter(self) -> None:
        n = len(self.docids)
        self._counter.setText(f"{0 if self.idx < 0 else self.idx + 1} / {n}")

    def _show(self, docid: str) -> None:
        lines = core.voucher_lines(docid)
        bills = core.adjusted_bills(docid)
        if not lines:
            QMessageBox.information(self, "Payment Receive",
                                    "Voucher lines not present")
            return
        self.docid, self.lines, self.bills, self.mode = docid, lines, bills, "view"
        h = lines[0]
        self.txt_amount.setText(f"{sum(float(l['amount']) for l in lines):.2f}")
        self.txt_narr.setText(h.get("comments") or "")
        self.lbl_prefix.setText(f"VPrefix: {h.get('vprefix') or ''}")
        ae = (h.get("u_ae") or "").upper()
        who = "Created By :   " if ae == "A" else (
            "Modified By :   " if ae == "E" else "User :   ")
        self.lbl_user.setText(who + (h.get("u_name") or ""))
        when = h.get("u_entdt")
        ldt = "Last Update :   " if ae == "E" else "entdt :   "
        self.lbl_ldt.setText(ldt + (when.strftime("%d/%m/%Y")
                                   if when else ""))
        self._select_code(self.cmb_party, h.get("agac") or "")
        self._party_changed()
        self._render()
        self.lbl_status.setText(f"Loaded {docid}")

    def _clear_form(self) -> None:
        self.docid, self.lines, self.bills = None, [], []
        self.txt_amount.clear()
        self.txt_narr.clear()
        self.lbl_prefix.setText("VPrefix: ")
        self.lbl_user.setText("")
        self.lbl_ldt.setText("")
        self._render()

    def _render(self) -> None:
        _fill(self.grid_lines, [
            (i, l.get("paytype") or "", l.get("amount") or 0.0,
             l.get("vdate") or l.get("date"), l.get("txnno") or "",
             l.get("chqno") or "", l.get("chqdate"), l.get("cardno") or "",
             l.get("cardholder") or "", l.get("expdate"),
             "" if l.get("batchno") in (None, "") else l.get("batchno"),
             l.get("comments") or "", l.get("empcode") or "",
             l.get("compcode") or "", l.get("guestprof") or "",
             l.get("roomno") or "")
            for i, l in enumerate(self.lines, start=1)])
        rows = []
        selected = {b["docid"] for b in self.bills}
        for b in self.bills:
            rows.append((True, b.get("vno"), b["docid"], b.get("sno"),
                         b.get("vdate"), b.get("amount"), b.get("paytype"),
                         b.get("subcode")))
        for b in getattr(self, "_open_bills", []):
            if b["docid"] not in selected:
                rows.append((False, b.get("vno"), b["docid"], b.get("sno"),
                             b.get("vdate"), b.get("amount"),
                             b.get("paytype"), b.get("compcode")))
        self.grid_bills.blockSignals(True)
        _fill(self.grid_bills, rows, checkable=True)
        self.grid_bills.blockSignals(False)
        self._update_bills_total()

    def _update_bills_total(self) -> None:
        tot = sum(float(b.get("amount") or 0) for b in self.bills)
        self.lbl_bills_total.setText(f"Selected bills: {tot:.2f}")

    def _bill_ticked(self, item: QTableWidgetItem) -> None:
        if item.column() != 0:
            return
        row = item.row()
        docid = self.grid_bills.item(row, 2).text()
        sno = int(self.grid_bills.item(row, 3).text() or 0)
        checked = item.checkState() == Qt.CheckState.Checked
        have = {b["docid"] for b in self.bills}
        src = next((b for b in getattr(self, "_open_bills", [])
                    if b["docid"] == docid), None)
        if checked and src and docid not in have:
            self.bills.append(dict(src))
        elif not checked:
            self.bills = [b for b in self.bills
                          if not (b["docid"] == docid and b["sno"] == sno)]
        self._update_bills_total()

    def _party_changed(self, *_):
        party = self.cmb_party.currentData() or ""
        outlet = self._outlet()
        try:
            self._open_bills = (core.open_bills(party, outlet)
                                if party else [])
        except Exception as e:
            self._open_bills = []
            self.lbl_status.setText(f"Bills load failed: {e}")
        self._render()

    @staticmethod
    def _select_code(cmb: QComboBox, code: str) -> None:
        for i in range(cmb.count()):
            if cmb.itemData(i) == code:
                cmb.setCurrentIndex(i)
                return
        cmb.setCurrentIndex(0)

    # ─────────────────────────────────────────────────────────── lines
    def _read_line(self) -> dict | None:
        pay_idx = self.cmb_paytype.currentIndex()
        if pay_idx <= 0:
            QMessageBox.warning(self, "Save Data",
                                "Payment type select karo")
            return None
        try:
            amt = float(self.txt_line_amt.text().strip() or "0")
        except ValueError:
            QMessageBox.warning(self, "Save Data",
                                "Amount numeric hona chahiye")
            return None
        if amt <= 0:
            QMessageBox.warning(self, "Save Data",
                                "Amount > 0 hona chahiye")
            return None
        paycode = self.cmb_paytype.currentData()
        paytype = (self.cmb_paytype.currentText().split(" - ", 1)[-1]
                   if " - " in self.cmb_paytype.currentText() else "")
        # RevMast dropdown (query 3) me PayType column ka value PayType hi
        # hai (Cash/Cheque/...) — VB6 bhi wahi likhta hai.
        rows = [r for r in self._look.get("pay", []) if str(r[0]) == paycode]
        if rows:
            paytype = rows[0][2] or paytype
        room = self.cmb_room.currentData() or ""
        return {
            "paycode": paycode, "paytype": paytype, "amount": amt,
            "billamount": amt,
            "tipamt": _f(self.txt_tip.text()),
            "comments": self.txt_narr.text().strip(),
            "txnno": self.txt_txn.text().strip(),
            "chqno": self.txt_chqno.text().strip(),
            "chqdate": self.txt_chqdt.date().toString("yyyy-MM-dd")
            if self.txt_chqno.text().strip() else "",
            "cardno": self.txt_ccno.text().strip(),
            "cardholder": self.txt_holder.text().strip(),
            "expdate": self.txt_expdt.date().toString("yyyy-MM-dd")
            if self.txt_ccno.text().strip() else "",
            "batchno": _int(self.txt_batch.text()),
            "empcode": self.cmb_staff.currentData() or "",
            "compcode": (self.cmb_company.currentData() or
                         self.cmb_member.currentData() or ""),
            "guestprof": self.cmb_member.currentData() or "",
            "roomno": room,
            "roomcat": "", "roomtype": "", "foliono": None,
            "agac": self.cmb_party.currentData() or "",
            "date": datetime.date.today(),
        }

    def _add_line(self) -> None:
        line = self._read_line()
        if line is None:
            return
        self.lines.append(line)
        # header Amount = grid total (VB6 "Amount Mismatched" guard se
        # pehle hi consistent rakho — field editable hai, sirf prefill)
        try:
            cur = float(self.txt_amount.text().strip() or "0")
        except ValueError:
            cur = 0.0
        if not self.txt_amount.text().strip():
            self.txt_amount.setText(
                f"{sum(float(l['amount']) for l in self.lines):.2f}")
        elif abs(cur - sum(float(l["amount"]) for l in self.lines)) > 0.005:
            pass   # user ka apna header amount — save par VB6 guard chalega
        self._render()
        self.lbl_status.setText(f"{len(self.lines)} payment line(s)")
        self.txt_line_amt.clear()

    def _remove_line(self) -> None:
        row = self.grid_lines.currentRow()
        if row < 0 or not self.lines:
            QMessageBox.critical(self, "Delete Module",
                                 "No Entries To Delete")
            return
        if QMessageBox.question(
                self, "Delete Entry !", "Are You Sure To Delete?",
                QMessageBox.StandardButton.Yes |
                QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return
        del self.lines[row]
        self._render()
        self.lbl_status.setText(f"{len(self.lines)} payment line(s)")

    # ─────────────────────────────────────────────────────────── TopCtrl
    def _on_new(self) -> None:
        self.mode, self.docid, self.lines, self.bills = "add", None, [], []
        self._clear_form()
        self._party_changed()
        self.lbl_user.setText("")
        self.lbl_ldt.setText("")
        self.cmb_party.setEnabled(True)
        self.grid_bills.setEnabled(True)
        self.lbl_status.setText("New entry (Ctrl+S = save)")

    def _on_edit(self) -> None:
        if not self.docid:
            QMessageBox.information(self, "Edit",
                                    "Pehle voucher select karo (browse)")
            return
        self.mode = "edit"
        # VB6 event D: party disabled + GridSel disabled, focus Amount
        self.cmb_party.setEnabled(False)
        self.grid_bills.setEnabled(False)
        self.lbl_user.setText("")
        self.lbl_ldt.setText("")
        self.txt_amount.setFocus()
        self.lbl_status.setText(f"Editing {self.docid}")

    def _on_cancel(self) -> None:
        self.mode = "view"
        self.cmb_party.setEnabled(True)
        self.grid_bills.setEnabled(True)
        if self.docid:
            self._show(self.docid)
        else:
            self._clear_form()
        self.lbl_status.setText("Cancelled")

    def _on_save(self) -> None:
        try:
            amount = float(self.txt_amount.text().strip() or "0")
        except ValueError:
            amount = None
        try:
            docid = core.save(
                lines=self.lines, bills=self.bills, amount=amount,
                outlet=self._outlet(),
                party=self.cmb_party.currentData() or "",
                docid=self.docid if self.mode == "edit" else None,
                user=self.user)
        except ValueError as e:
            QMessageBox.critical(self, "Save Data", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, " Deletion Error "
                                 if "DELETE" in str(e).upper() else "Save Data",
                                 str(e))
            return
        self.mode = "view"
        self.cmb_party.setEnabled(True)
        self.grid_bills.setEnabled(True)
        self._on_refresh()
        self.lbl_status.setText(f"Saved {docid}")

    def _on_delete(self) -> None:
        if not self.docid:
            QMessageBox.critical(self, "Delete Module",
                                 "No Entries To Delete")
            return
        if QMessageBox.question(
                self, "Confirmation", "Delete Record ?",
                QMessageBox.StandardButton.Yes |
                QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return
        try:
            n = core.delete_voucher(self.docid)
        except Exception as e:
            QMessageBox.critical(self, " Deletion Error ", str(e))
            return
        self.docid = None
        self._on_refresh()
        self.lbl_status.setText(f"Deleted {n} row(s)")

    def _on_first(self) -> None:
        if self.docids:
            self.idx = 0
            self._show(self.docids[0])
            self._set_counter()

    def _on_prev(self) -> None:
        if self.docids and self.idx > 0:
            self.idx -= 1
            self._show(self.docids[self.idx])
            self._set_counter()

    def _on_next(self) -> None:
        if self.docids and self.idx < len(self.docids) - 1:
            self.idx += 1
            self._show(self.docids[self.idx])
            self._set_counter()

    def _on_last(self) -> None:
        if self.docids:
            self.idx = len(self.docids) - 1
            self._show(self.docids[self.idx])
            self._set_counter()

    def _on_find(self) -> None:
        outlet = self._outlet()
        if not outlet:
            QMessageBox.information(self, "Find",
                                    "Pehle outlet select karo")
            return
        try:
            rows = core.search_list(outlet, wide=(self.user.upper() == "SA"))
        except Exception as e:
            QMessageBox.critical(self, "Validation", str(e))
            return
        if not rows:
            QMessageBox.information(self, "Information",
                                    "Records Not Present For Searching.")
            return
        items = [f"{r['docid']}  |  {r['vno']}  |  {r['party']}"
                 for r in rows]
        pick, ok = _pick(self, "Find", items)
        if ok and pick >= 0:
            docid = rows[pick]["docid"]
            if docid in self.docids:
                self.idx = self.docids.index(docid)
                self._show(docid)
                self._set_counter()


def _pick(parent, title: str, items: list[str]) -> tuple[int, bool]:
    from PyQt6.QtWidgets import QInputDialog
    item, ok = QInputDialog.getItem(parent, title, "Voucher:", items, 0,
                                    False)
    if not ok:
        return -1, False
    return items.index(item), True


def _f(v) -> float:
    try:
        return float(str(v).strip() or "0")
    except ValueError:
        return 0.0


def _int(v):
    try:
        return int(str(v).strip())
    except (TypeError, ValueError):
        return None


def open_payment_receive_pos(parent=None, user: str | None = None):
    """Shell registry opener (menu leaf 'Payment Receive Entry (POS)')."""
    dlg = PaymentReceivePosDialog(parent, user=user)
    dlg.exec()
    return dlg


def main() -> int:
    app = QApplication(sys.argv)
    app.setPalette(_theme.palette())
    dlg = PaymentReceivePosDialog()
    dlg.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
