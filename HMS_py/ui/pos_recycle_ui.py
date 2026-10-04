"""POS Recycle UI (VB6: FrmPOSRecycleData, menu leaf "POS Recycle").

VB6 form: HMS_REVERSE_ENGINEERING/HMS/FrmPOSRecycleData.frm, caption
"Recycle Outlet Data" (MDI child, WindowState=2). Dispatcher sets CAPTION
to the menu leaf (ModuleAdd.bas loc_1E43E26: var_90.CAPTION = arg_10).

Dispatch + guard (ModuleAdd.bas):
  loc_1E43E03  If (var_188 = "POS Recycle") Then
  loc_1E43E0E    If (MemVar_1F920B8 = 1) Then New FrmPOSRecycleData.Show
  loc_1E43E5A    Else MsgBox "Only Supervisor is Authorised." (&H10)
  MemVar_1F920B8 = UserMast.Label (frmCompany.frm loc_19589B6); opener
  yahi gate enforce karta hai (is_supervisor).

VB6 screens mapped:
  Form_Load (loc_E997EC) -> grid setup Proc_230_12 (loc_118B616, 5 cols:
  [tick] RestCode/Outlet/RestType/LogSite_Code) + fill Proc_230_13
  (loc_110EC76 Depart outlets query -> ops.list_outlets).
  Check1 "All" (loc_F675EC): checked -> grid disable (All-branch).
  Grid tick: Space ya col0 click se Wingdings 'ü' toggle (loc_FDB1B0),
  shift+click se range (VB6 drag-select ka equivalent).
  CmdDelete (loc_F34AD0): MsgBox "R U Sure To Delete Data?" vbCrLf
  "It Will Not Recover Again." (&H24 vbYesNo+vbCritical, 7=vbNo ->
  abort) -> Label1 "Deleting..." -> BeginTrans -> per selected outlet
  Proc_230_14 (loc_13C71F8, 14 stmts) -> CommitTrans -> Label1
  "Deletion Completed." + processed rows CellBackColor=&H80FF
  (loc_11F1180). Kuch select na ho -> MsgBox "Select Outlet"
  (loc_11F13F3, vbInformation). Exit (loc_E16041) = unload.

Tables: Depart, KOT, PayCharge, POS_SBill, Sale1, Sale2, SplitedSunTran,
SplitSale1, SplitSale2, SplitStock, Stock, SunTran, VOUCHER_PREFIX.

Deviations / known gaps:
- Date range VB6 me globals the (MemVar_1F920F4/1F920FC = Company
  Start_Dt/End_Dt); yahan From/To date edits (default wahi Company FY)
  editable — galat range se accidental purge rok sake.
- Check1 "All" VB6 me grid ke upar HIDE hota hai (loc_118B9ED); port me
  visible + functional (VB6 handlers exist karte hain).
- Confirm dialog ke pehle read-only row preview (ops.count_pending) —
  VB6 me nahi tha, safety add. Icon critical+Yes/No = &H24 parity.
- Supervisor gate: known non-supervisor user block (VB6 text); unknown
  headless user (PYADMIN) allow (VB6 me aisa user hota hi nahi).
- Depart.ShortName khali ho to operation abort (VB6 chup-chaap 'K'/'N'/
  'B' bina suffix ke DELETE chalata — port unsafe nahi chalata).
- Grid ki 5 columns dikhai jaati hain; VB6 widths ambiguous the (col0
  600 twips, Outlet 4500 twips, baaki 0) — widths approximated.
- Hidden controls skipped: Command1 "Serialize Bill", CmdDeletez/
  CmdExitz (Visible=0), TopCtrl1.
- Audit: VB6 SQL me koi U_Name/U_EntDt nahi — port bhi nahi jodta.

Run: python -m HMS_py.ui.pos_recycle_ui
"""
from __future__ import annotations
import os
import sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import QDate, Qt
from PyQt6.QtGui import QColor, QFont
from PyQt6.QtWidgets import (QApplication, QCheckBox, QDateEdit, QHBoxLayout,
                             QHeaderView, QLabel, QMainWindow, QMessageBox,
                             QPushButton, QTableWidget, QTableWidgetItem,
                             QVBoxLayout, QWidget)

from HMS_py.core import pos_recycle_ops as ops

COLS = ["", "RestCode", "Outlet", "RestType", "LogSite_Code"]
# VB6 processed-row mark: CellBackColor = &H80FF (loc_11F1180/loc_10281A2)
# -> VB6 BGR: R=FF G=80 B=00 -> RGB(255,128,0).
DONE_COLOR = QColor(255, 128, 0)


class PosRecycleWindow(QMainWindow):
    """VB6 FrmPOSRecycleData port — candidate grid + destructive recycle."""

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self._user = user
        self._rows: list[dict] = []
        self._anchor: int | None = None   # VB6 global_52 (range anchor)
        self.setWindowTitle("POS Recycle - HMS_py")
        self.resize(1000, 640)
        self._build()
        self.refresh()

    # ── UI build (VB6 form layout ka Qt equivalent) ──────────────
    def _build(self):
        central = QWidget()
        self.setCentralWidget(central)
        lay = QVBoxLayout(central)

        hdr = QLabel("Recycle Outlet Data")
        hdr.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        hdr.setAlignment(Qt.AlignmentFlag.AlignCenter)
        lay.addWidget(hdr)

        warn = QLabel(
            "DESTRUCTIVE: selected outlets ki POS data date-range me "
            "permanently DELETE hota hai (VB6 FrmPOSRecycleData). "
            "Recover nahi ho sakta.")
        warn.setWordWrap(True)
        warn.setStyleSheet("color:#b00000; font-weight:bold;")
        lay.addWidget(warn)

        # date range (VB6 MemVar_1F920F4/1F920FC = Company Start/End_Dt)
        d1, d2 = ops.default_date_range()
        dates = QHBoxLayout()
        dates.addWidget(QLabel("From"))
        self.dt_from = QDateEdit(QDate(d1.year, d1.month, d1.day))
        dates.addWidget(self.dt_from)
        dates.addWidget(QLabel("To"))
        self.dt_to = QDateEdit(QDate(d2.year, d2.month, d2.day))
        dates.addWidget(self.dt_to)
        for dt in (self.dt_from, self.dt_to):
            dt.setCalendarPopup(True)
            dt.setDisplayFormat("dd/MM/yyyy")
        self.btn_refresh = QPushButton("Refresh")
        self.btn_refresh.setToolTip(
            "VB6 Form_Load (loc_E997EC) wala Depart outlets query dobara "
            "chalao")
        self.btn_refresh.clicked.connect(self.refresh)
        dates.addWidget(self.btn_refresh)
        dates.addStretch()
        lay.addLayout(dates)

        # Check1 "All" (VB6 loc_F675EC; VB6 ise hide karta hai loc_118B9ED)
        self.chk_all = QCheckBox("All")
        self.chk_all.setToolTip(
            "Sabhi outlets recycle karo (VB6 Check1). On hone par grid "
            "disable ho jata hai.")
        self.chk_all.toggled.connect(self._on_all_toggled)
        lay.addWidget(self.chk_all)

        # GridSel (VB6 MSHFlexGrid, 5 cols)
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
        for c in range(1, len(COLS)):
            hdrz.setSectionResizeMode(c, QHeaderView.ResizeMode.Stretch)
        self.grid.cellClicked.connect(self._on_cell_clicked)
        lay.addWidget(self.grid, 1)

        # Label1 status (VB6 "Deleting..." / "Deletion Completed.")
        self.status = QLabel("")
        self.status.setStyleSheet("font-weight:bold; color:#005500;")
        lay.addWidget(self.status)

        btns = QHBoxLayout()
        btns.addStretch()
        self.btn_delete = QPushButton("  Delete  ")
        self.btn_delete.setProperty("accent", True)
        self.btn_delete.setToolTip(
            "VB6 CmdDelete (loc_F34AD0): confirm -> transaction -> "
            "14 statements per outlet")
        self.btn_delete.clicked.connect(self._on_delete)
        btns.addWidget(self.btn_delete)
        self.btn_exit = QPushButton("  Exit  ")
        self.btn_exit.clicked.connect(self.close)   # loc_E16041 unload
        btns.addWidget(self.btn_exit)
        lay.addLayout(btns)

    # ── Form_Load fill (loc_110EC76) ─────────────────────────────
    def refresh(self):
        try:
            self._rows = ops.list_outlets()
        except Exception as e:
            self._rows = []
            QMessageBox.critical(self, "POS Recycle", str(e))
        self._anchor = None
        self.grid.setRowCount(0)
        font = QFont("Wingdings", 14)
        for rec in self._rows:
            i = self.grid.rowCount()
            self.grid.insertRow(i)
            vals = ["", rec["code"], rec["name"], rec["resttype"],
                    rec["logsite"]]
            for c, v in enumerate(vals):
                item = QTableWidgetItem(v)
                if c == 0:
                    item.setFont(font)
                    item.setTextAlignment(Qt.AlignmentFlag.AlignCenter)
                    item.setToolTip("Tick (Space/click) = is outlet ko "
                                    "recycle karna hai")
                self.grid.setItem(i, c, item)
        self.status.setText(f"Ready — {len(self._rows)} outlet(s) loaded.")

    # ── tick helpers (VB6 Wingdings ü toggle, loc_FDB1B0) ─────────
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
            # VB6 drag-select (loc_1027FB1..loc_10281AC): anchor..row range
            a, b = sorted((self._anchor, row))
            for r in range(a, b + 1):
                self._set_tick(r, True)
        else:
            self._set_tick(row, not self._is_ticked(row))
        self._anchor = row   # VB6 global_52 = GridSel.Row (loc_E5D9BA)

    def keyPressEvent(self, event):
        # VB6 GridSel KeyCode=&H20 + Col=0 -> toggle tick (loc_FDB1B0)
        if (event.key() == Qt.Key.Key_Space
                and self.grid.currentColumn() == 0
                and self.grid.currentRow() >= 0):
            r = self.grid.currentRow()
            self._set_tick(r, not self._is_ticked(r))
            self._anchor = r
            return
        super().keyPressEvent(event)

    def _on_all_toggled(self, checked: bool):
        # VB6 Check1_Click (loc_F674CF): checked -> GridSel.Enabled=False
        self.grid.setEnabled(not checked)

    # ── selection (VB6 Proc_230_15, loc_11F0FDA) ─────────────────
    def _selection(self) -> tuple[list[int], list[dict]]:
        idxs: list[int] = []
        recs: list[dict] = []
        all_mode = self.chk_all.isChecked()   # VB6 CInt(Check1.Value)=1
        for i, rec in enumerate(self._rows):
            # VB6: col1 (RestCode) aur col4 (LogSite) dono non-empty
            if not rec["code"] or not rec["logsite"]:
                continue
            if all_mode or self._is_ticked(i):
                idxs.append(i)
                recs.append(rec)
        return idxs, recs

    def _dates(self):
        return (self.dt_from.date().toPyDate(),
                self.dt_to.date().toPyDate())

    # ── Delete (VB6 CmdDelete loc_F34AD0) ─────────────────────────
    def _on_delete(self):
        idxs, recs = self._selection()
        if not recs:
            # VB6 loc_11F13F3: MsgBox "Select " & TextMatrix(0, 2)
            # (= "Outlet"), &H40 vbInformation
            QMessageBox.information(self, "POS Recycle", "Select Outlet")
            return
        d1, d2 = self._dates()
        if d1 > d2:
            QMessageBox.critical(self, "POS Recycle",
                                 "Date From > Date To")
            return
        # read-only preview (VB6 me nahi — safety add)
        try:
            pending = ops.count_pending(recs, d1, d2)
        except Exception as e:
            QMessageBox.critical(self, "POS Recycle", str(e))
            return

        # VB6 loc_F34AFD: "R U Sure To Delete Data?" vbCrLf
        # "It Will Not Recover Again." MsgBox &H24 = vbYesNo+vbCritical,
        # 7 (vbNo) -> Exit Sub
        box = QMessageBox(self)
        box.setIcon(QMessageBox.Icon.Critical)
        box.setWindowTitle("Recycle Outlet Data")
        box.setText("R U Sure To Delete Data?\n"
                    "It Will Not Recover Again.")
        detail = [f"Outlets: {len(recs)}"]
        detail += [f"  {r['code']} ({r['logsite']})" for r in recs]
        detail.append(f"Range: {d1:%d/%m/%Y} .. {d2:%d/%m/%Y}")
        detail.append("Rows that WILL be affected:")
        detail += [f"  {k}: {v}" for k, v in pending.items() if v]
        detail.append(f"  TOTAL: {sum(pending.values())}")
        box.setInformativeText("\n".join(detail))
        yes = box.addButton("Yes", QMessageBox.ButtonRole.YesRole)
        no = box.addButton("No", QMessageBox.ButtonRole.NoRole)
        box.setDefaultButton(no)
        box.exec()
        if box.clickedButton() is not yes:
            return   # VB6: If MsgBox(...) = 7 Then Exit Sub

        self.btn_delete.setEnabled(False)
        self.status.setText("Deleting...")   # loc_F34B2A
        QApplication.processEvents()         # VB6 Label1.Refresh
        try:
            result = ops.perform_recycle(recs, d1, d2, user=self._user)
        except Exception as e:
            self.status.setText("Deletion failed — transaction rolled back.")
            QMessageBox.critical(self, "POS Recycle",
                                 f"Rolled back (VB6 loc_F34BD2).\n{e}")
            return
        finally:
            self.btn_delete.setEnabled(True)

        self.status.setText("Deletion Completed.")   # loc_F34BA8
        for i in idxs:   # VB6 CellBackColor=&H80FF (loc_11F1180)
            for c in range(len(COLS)):
                it = self.grid.item(i, c)
                if it is not None:
                    it.setBackground(DONE_COLOR)
        lines = [f"{k}: {v}" for k, v in result["counts"].items()]
        QMessageBox.information(
            self, "Deletion Completed.",
            f"Outlets processed: {result['outlets']}\n"
            + "\n".join(lines)
            + f"\nTotal rows affected: {result['total']}")


def open_pos_recycle(parent=None, user="SA"):
    """VB6 dispatch port (ModuleAdd.bas loc_1E43E03/loc_1E43E0E).

    Supervisor gate (MemVar_1F920B8=1, UserMast.Label): non-supervisor
    ko VB6 text "Only Supervisor is Authorised." dikhakar block; unknown
    headless user allow. Widget construct/show/return.
    """
    gate = ops.is_supervisor(user)
    if gate is False:
        QMessageBox.critical(parent, "POS Recycle",
                             "Only Supervisor is Authorised.")
        return None
    w = PosRecycleWindow(parent, user=user)
    w.show()
    return w


if __name__ == "__main__":
    app = QApplication(sys.argv)
    win = open_pos_recycle()
    if win is None:
        sys.exit(1)
    sys.exit(app.exec())
