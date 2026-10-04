"""POS Bill Deletion UI (VB6: FrmPOSBillDeletion, menu leaf "POS Bill Deletion").

VB6 form: HMS_REVERSE_ENGINEERING/HMS/FrmPOSBillDeletion.frm (decompiled),
caption "POS Bill Deletion" (MDI child). Dispatcher (ModuleAdd.bas):
  loc_1E4A1AB  Loop Until (var_188 = "POS Bill Deletion")
  loc_1E4A1B4    Set var_90 = New FrmPOSBillDeletion
  loc_1E4A1C3    var_90.CAPTION = arg_10
  loc_1E4A1CC    var_90.Show
MDI entry: MDIForm1.frm UTL_Click idx &H15 (MDIForm1.frm:4228).
Koi supervisor gate NAHI (sirf New + CAPTION + Show) — pos_recycle ke
ULAT. Verified SQL: HMS_REVERSE_ENGINEERING/02_Main_Setup/sql/queries.sql
line 6190 (# ### FrmPOSBillDeletion, 44 statement(s)).

VB6 screens mapped:
  Form_Load (loc_F92710): outlets (Depart, ops.list_outlets) + paymodes
    (RevMast, ops.list_paymodes) + grid setup Proc_179_23 (loc_11BC878,
    6 cols: [tick] Bill No / DocId (width 0 = HIDDEN) / Bill Date /
    Bill Amount / PayType; FixedRows=1; Check1 "All" col0 par overlay)
    + CmdDelete disabled.
  CmdFill (loc_1191BAC): validations (exact order/messages =
    ops.validate_fill) -> Label1 "Processing..." -> Proc_179_24
    (loc_1319CD8) candidate fill = ops.fill_candidates -> CmdDelete
    enable (loc_131984B) -> Label1 khali (loc_1191B7B).
  Check1 "All" (loc_F68A7C): on -> GridSel.Enabled=False (All-branch).
  Grid tick: col0 click / Space se Wingdings 'ü' toggle + shift-click
    se range (VB6 GridSel_UnknownEvent_A/10, loc_1014B90 / loc_1069BC0;
    anchor = global_52, loc_E5CD9E).
  CmdDelete (loc_1167180): [PORT ADD: confirm dialog] -> Label1
    "Deleting..." -> BEGIN -> ops.delete_bills (TempPosDel clear ->
    cascade -> insert -> renumber -> propagate -> VOUCHER_PREFIX ->
    COMMIT/ROLLBACK) -> Label1 "Deletion Completed." (loc_1167149) +
    processed rows CellBackColor=&H80FF (VB6 Proc_179_28 loc_11A7F1C).
    Kuch select na ho -> MsgBox "Select Bill No" (loc_11A8158,
    &H40 vbInformation). Exit (loc_E15894) = unload.

Tables: Depart, RevMast, Sale1, Sale2, SunTran, Stock, PayCharge,
GuestReward, AssignDelivery, KOT, TempPosDel, VOUCHER_PREFIX.

Deviations / known gaps:
- VB6 delete par KOI confirmation MsgBox NAHI — port me critical icon
  Yes/No confirm + read-only row preview (ops.count_pending) ADD kiya
  (safety; ops module me documented).
- Payment Mode sirf validate hota hai; VB6 ke kisi bhi delete/fill SQL
  me paymode/PayType filter NAHI (44 verified stmts). Port bhi
  validate-only.
- Tick condition VB6 GridSel handlers decompile me garbled (PayType=
  "Cash" par centred) — port me koi bhi row tick ho sakti hai; delete
  loop VB6 me bhi sirf DocId non-empty check karta hai (Proc_179_28).
- Selection khaali ho to VB6 All-mode me chup-chaap renumber chalta tha
  (loc_11A8111 ka msg sirf non-All mode me); port dono mode me "Select
  Bill No" dikhakar abort (VB6 fall-through renumber skip).
- global_80 (renumber base) VB6 Fill ke time set hota hai (loc_13195D8);
  port delete transaction ke andar dobara compute karta hai (fresher).
- Hidden CmdSerialize (Ctrl+H -> Visible=True, loc_12C0488: InputBox
  "Start Bill No."/"Please Input Valid Bill No.", Drop/Create TempPosDel
  + batch renumber Proc_179_30) PORT NAHI — menu feature nahi.
- Check1 "All" VB6 me col0 ke upar overlay hota hai (loc_11BC81D);
  port me grid ke upar ek normal checkbox (same semantics).
- Shell wiring: ui/shell.py abhi "POS Bill Deletion" ko _coming_soon
  dikhata hai (is round me shell edit FORBIDDEN tha).

Run: python -m HMS_py.ui.pos_bill_deletion_ui
"""
from __future__ import annotations
import os
import sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import QDate, Qt
from PyQt6.QtGui import QColor, QFont
from PyQt6.QtWidgets import (QApplication, QCheckBox, QComboBox, QDateEdit,
                             QHBoxLayout, QHeaderView, QLabel, QMainWindow,
                             QMessageBox, QPushButton, QTableWidget,
                             QTableWidgetItem, QVBoxLayout, QWidget)

from HMS_py.core import pos_bill_deletion_ops as ops

COLS = ["", "Bill No", "DocId", "Bill Date", "Bill Amount", "PayType"]
DOCID_COL = 2   # VB6 ColWidth(2)=0 (hidden, loc_11BC565)
# VB6 processed-row mark: CellBackColor = &H80FF (loc_11A7F1C) ->
# VB6 BGR: R=FF G=80 B=00 -> RGB(255,128,0).
DONE_COLOR = QColor(255, 128, 0)


class PosBillDeletionWindow(QMainWindow):
    """VB6 FrmPOSBillDeletion port — candidate grid + destructive delete."""

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self._user = user
        self._rows: list[dict] = []
        self._anchor: int | None = None   # VB6 global_52 (range anchor)
        self.setWindowTitle("POS Bill Deletion - HMS_py")
        self.resize(1080, 680)
        self._build()

    # ── UI build (VB6 form layout ka Qt equivalent) ──────────────
    def _build(self):
        central = QWidget()
        self.setCentralWidget(central)
        lay = QVBoxLayout(central)

        hdr = QLabel("POS Bill Deletion")
        hdr.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        hdr.setAlignment(Qt.AlignmentFlag.AlignCenter)
        lay.addWidget(hdr)

        warn = QLabel(
            "DESTRUCTIVE: selected bills ki rows 8 tables se permanently "
            "DELETE hoti hain aur uske baad From Date..FY End tak ke saare "
            "bills compact renumber hote hain (VB6 FrmPOSBillDeletion). "
            "Recover nahi ho sakta.")
        warn.setWordWrap(True)
        warn.setStyleSheet("color:#b00000; font-weight:bold;")
        lay.addWidget(warn)

        # Filters (VB6 Txt(0)=From Date, Txt(1)=To Date, Txt(2)=Outlet,
        # Txt(3)=Payment Mode; defaults = FY dates MemVar_1F920F4/1F920FC)
        d1, d2 = ops.default_date_range()
        filt = QHBoxLayout()
        filt.addWidget(QLabel("From"))
        self.dt_from = QDateEdit(QDate(d1.year, d1.month, d1.day))
        filt.addWidget(self.dt_from)
        filt.addWidget(QLabel("To"))
        self.dt_to = QDateEdit(QDate(d2.year, d2.month, d2.day))
        filt.addWidget(self.dt_to)
        for dt in (self.dt_from, self.dt_to):
            dt.setCalendarPopup(True)
            dt.setDisplayFormat("dd/MM/yyyy")

        filt.addWidget(QLabel("Outlet"))
        self.cmb_outlet = QComboBox()
        self.cmb_outlet.setMinimumWidth(190)
        filt.addWidget(self.cmb_outlet)
        filt.addWidget(QLabel("Payment Mode"))
        self.cmb_pay = QComboBox()
        self.cmb_pay.setMinimumWidth(150)
        filt.addWidget(self.cmb_pay)

        self.btn_fill = QPushButton("  Fill  ")
        self.btn_fill.setToolTip(
            "VB6 CmdFill (loc_1191BAC): validate -> Proc_179_24 fill")
        self.btn_fill.clicked.connect(self._on_fill)
        filt.addWidget(self.btn_fill)
        filt.addStretch()
        lay.addLayout(filt)

        # Check1 "All" (VB6 loc_F68A7C: checked -> grid disable)
        self.chk_all = QCheckBox("All")
        self.chk_all.setToolTip(
            "Saari bills delete karo (VB6 Check1). On hone par grid "
            "disable ho jata hai.")
        self.chk_all.toggled.connect(self._on_all_toggled)
        lay.addWidget(self.chk_all)

        # GridSel (VB6 MSHFlexGrid, 6 cols; DocId hidden)
        self.grid = QTableWidget(0, len(COLS))
        self.grid.setHorizontalHeaderLabels(COLS)
        self.grid.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.grid.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.grid.setAlternatingRowColors(True)
        self.grid.verticalHeader().setVisible(False)
        hdrz = self.grid.horizontalHeader()
        hdrz.setSectionResizeMode(0, QHeaderView.ResizeMode.Fixed)
        self.grid.setColumnWidth(0, 36)   # VB6 ColWidth(0)=600 twips ~ 40px
        self.grid.setColumnWidth(1, 110)  # "Bill No" 1300 twips
        self.grid.setColumnWidth(3, 110)  # "Bill Date" 1600 twips
        self.grid.setColumnWidth(4, 110)  # "Bill Amount" 1600 twips
        self.grid.setColumnWidth(5, 95)   # "PayType" 1100 twips
        self.grid.setColumnHidden(DOCID_COL, True)   # VB6 width 0
        for c in (1, 3, 4, 5):
            hdrz.setSectionResizeMode(c, QHeaderView.ResizeMode.Fixed)
        self.grid.cellClicked.connect(self._on_cell_clicked)
        lay.addWidget(self.grid, 1)

        # Label1 status (VB6 "Processing..." / "Deleting..." /
        # "Deletion Completed.")
        self.status = QLabel("")
        self.status.setStyleSheet("font-weight:bold; color:#005500;")
        lay.addWidget(self.status)

        btns = QHBoxLayout()
        btns.addStretch()
        self.btn_delete = QPushButton("  Delete  ")
        self.btn_delete.setEnabled(False)   # VB6 Form_Load loc_F926F3
        self.btn_delete.setToolTip(
            "VB6 CmdDelete (loc_1167180): confirm -> transaction -> "
            "cascade + renumber + propagate + VOUCHER_PREFIX")
        self.btn_delete.clicked.connect(self._on_delete)
        btns.addWidget(self.btn_delete)
        self.btn_exit = QPushButton("  Exit  ")
        self.btn_exit.clicked.connect(self.close)   # loc_E15894 unload
        btns.addWidget(self.btn_exit)
        lay.addLayout(btns)

        self._load_filters()

    # ── Form_Load outlets/paymodes fill (loc_F92621 / loc_F92693) ─
    def _load_filters(self):
        try:
            outlets = ops.list_outlets()
            paymodes = ops.list_paymodes()
        except Exception as e:
            QMessageBox.critical(self, "POS Bill Deletion", str(e))
            return
        self.cmb_outlet.clear()
        self.cmb_outlet.addItem("(select outlet)", "")
        for o in outlets:
            self.cmb_outlet.addItem(o["name"], o["code"])  # Text=Name, data=Code
        self.cmb_pay.clear()
        self.cmb_pay.addItem("(select paymode)", "")
        for p in paymodes:
            self.cmb_pay.addItem(p["name"], p["code"])

    # ── Fill (VB6 CmdFill loc_1191BAC) ───────────────────────────
    def _on_fill(self):
        d1 = self.dt_from.date().toPyDate()
        d2 = self.dt_to.date().toPyDate()
        err = ops.validate_fill(d1, d2, self.cmb_outlet.currentData(),
                                self.cmb_pay.currentData())
        if err:
            # VB6: MsgBox &H10, title "Validation Error" (MainLib.bas:415)
            QMessageBox.critical(self, "Validation Error", err)
            return
        self.chk_all.setChecked(False)   # Proc_179_23: Check1.Value = 0
        self.status.setText("Processing...")   # loc_1191AFF
        QApplication.processEvents()           # Label1.Refresh
        try:
            rows = ops.fill_candidates(
                d1, d2, str(self.cmb_outlet.currentData()))
        except Exception as e:
            self._rows = []
            self.grid.setRowCount(0)
            self.btn_delete.setEnabled(False)
            self.status.setText("")
            QMessageBox.critical(self, "POS Bill Deletion", str(e))
            return
        self._rows = rows
        self._anchor = None
        self.grid.setRowCount(0)
        font = QFont("Wingdings", 14)
        for rec in rows:
            i = self.grid.rowCount()
            self.grid.insertRow(i)
            vals = ["", str(rec["vno"]), rec["docid"],
                    rec["vdate"].strftime("%d/%m/%Y"),
                    f"{rec['amount']:.2f}", rec["paytype"]]
            for c, v in enumerate(vals):
                item = QTableWidgetItem(v)
                if c == 0:
                    item.setFont(font)
                    item.setTextAlignment(Qt.AlignmentFlag.AlignCenter)
                    item.setToolTip("Tick (Space/click) = is bill ko "
                                    "delete karna hai")
                elif c == 4:
                    item.setTextAlignment(
                        Qt.AlignmentFlag.AlignRight
                        | Qt.AlignmentFlag.AlignVCenter)
                self.grid.setItem(i, c, item)
        self.status.setText(f"{len(rows)} bill(s) loaded.")
        # VB6: CmdDelete enable sirf candidates milne par (loc_131984B)
        self.btn_delete.setEnabled(bool(rows))

    # ── tick helpers (VB6 Wingdings ü toggle, loc_1014B04) ───────
    def _is_ticked(self, row: int) -> bool:
        it = self.grid.item(row, 0)
        return bool(it) and it.text() == ops.TICK

    def _set_tick(self, row: int, on: bool):
        it = self.grid.item(row, 0)
        if it is not None:
            it.setText(ops.TICK if on else "")

    def _on_cell_clicked(self, row: int, col: int):
        if col != 0:
            self._anchor = row
            return
        mods = QApplication.keyboardModifiers()
        if mods & Qt.KeyboardModifier.ShiftModifier and self._anchor is not None:
            # VB6 drag-select (loc_1069A00 anchor..RowSel loop)
            a, b = sorted((self._anchor, row))
            for r in range(a, b + 1):
                self._set_tick(r, True)
        else:
            self._set_tick(row, not self._is_ticked(row))
        self._anchor = row   # VB6 global_52 (loc_E5CD9E)

    def keyPressEvent(self, event):
        # VB6 GridSel KeyCode=&H20 + Col=0 -> toggle tick (loc_1014B90)
        if (event.key() == Qt.Key.Key_Space
                and self.grid.currentColumn() == 0
                and self.grid.currentRow() >= 0):
            r = self.grid.currentRow()
            self._set_tick(r, not self._is_ticked(r))
            self._anchor = r
            return
        super().keyPressEvent(event)

    def _on_all_toggled(self, checked: bool):
        # VB6 Check1_Click (loc_F68A7C): checked -> GridSel.Enabled=False
        self.grid.setEnabled(not checked)

    # ── selection (VB6 Proc_179_28, loc_11A81CC) ─────────────────
    def _selection(self) -> tuple[list[int], list[str]]:
        idxs: list[int] = []
        ids: list[str] = []
        all_mode = self.chk_all.isChecked()   # VB6 CInt(Check1.Value)=1
        for i in range(self.grid.rowCount()):
            it = self.grid.item(i, DOCID_COL)
            docid = it.text() if it else ""
            if not docid.strip():
                continue      # VB6: TextMatrix(row,2) <> "" only
            if all_mode or self._is_ticked(i):
                idxs.append(i)
                ids.append(docid)
        return idxs, ids

    def _dates(self):
        return (self.dt_from.date().toPyDate(),
                self.dt_to.date().toPyDate())

    # ── Delete (VB6 CmdDelete loc_1167180) ───────────────────────
    def _on_delete(self):
        idxs, docids = self._selection()
        if not docids:
            # VB6 loc_11A8158: MsgBox "Select " & TextMatrix(0,1)
            # (= "Bill No"), &H40 vbInformation
            QMessageBox.information(self, "POS Bill Deletion",
                                    "Select Bill No")
            return
        d1, d2 = self._dates()
        rest_code = str(self.cmb_outlet.currentData() or "")
        try:
            # read-only preview (VB6 me nahi — safety add)
            pending = ops.count_pending(docids, d1, d2, rest_code)
        except Exception as e:
            QMessageBox.critical(self, "POS Bill Deletion", str(e))
            return

        # PORT ADD (VB6 me koi confirm nahi): critical Yes/No + preview
        box = QMessageBox(self)
        box.setIcon(QMessageBox.Icon.Critical)
        box.setWindowTitle("POS Bill Deletion")
        box.setText("Selected bills permanently DELETE kare jaayenge.\n"
                    "Aage ki bills renumber ho jaayengi. Continue?")
        detail = [f"Bills selected: {len(docids)}",
                  f"Outlet: {self.cmb_outlet.currentText()} ({rest_code})",
                  f"Range: {d1:%d/%m/%Y} .. {d2:%d/%m/%Y}",
                  "Rows that WILL be affected:"]
        detail += [f"  {k}: {v}" for k, v in pending.items() if v]
        detail.append(f"  TOTAL: {sum(pending.values())}")
        box.setInformativeText("\n".join(detail))
        yes = box.addButton("Yes", QMessageBox.ButtonRole.YesRole)
        no = box.addButton("No", QMessageBox.ButtonRole.NoRole)
        box.setDefaultButton(no)
        box.exec()
        if box.clickedButton() is not yes:
            return

        self.btn_delete.setEnabled(False)
        self.status.setText("Deleting...")   # loc_1166E2F
        QApplication.processEvents()         # Label1.Refresh
        try:
            result = ops.delete_bills(docids, d1, d2, rest_code,
                                      user=self._user)
        except Exception as e:
            self.status.setText("Deletion failed — transaction rolled back.")
            QMessageBox.critical(self, "POS Bill Deletion",
                                 f"Rolled back (VB6 loc_1167164).\n{e}")
            return
        finally:
            self.btn_delete.setEnabled(True)

        self.status.setText("Deletion Completed.")   # loc_1167149
        for i in idxs:   # VB6 CellBackColor=&H80FF (loc_11A7F1C)
            for c in range(len(COLS)):
                it = self.grid.item(i, c)
                if it is not None:
                    it.setBackground(DONE_COLOR)
        ren = result["renumber"]
        lines = [f"{k}: {v}" for k, v in result["counts"].items() if v]
        QMessageBox.information(
            self, "Deletion Completed.",
            f"Bills deleted: {result['bills']}\n"
            f"Renumbered: {ren['moved']} bill(s) "
            f"(base {ren['base']} -> last {ren['last']})\n"
            + "\n".join(lines)
            + f"\nTotal rows affected: {result['total']}")


def open_pos_bill_deletion(parent=None, user="SA"):
    """VB6 dispatch port (ModuleAdd.bas loc_1E4A1AB/loc_1E4A1B4/1E4A1CC).

    VB6 me koi guard nahi (sirf New + CAPTION + Show) — widget
    construct/show/return.
    """
    w = PosBillDeletionWindow(parent, user=user)
    w.show()
    return w


if __name__ == "__main__":
    app = QApplication(sys.argv)
    win = open_pos_bill_deletion()
    sys.exit(app.exec())
