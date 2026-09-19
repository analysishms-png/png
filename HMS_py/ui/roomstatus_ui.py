"""Room Status / Housekeeping UI (VB6: FO -> Room Status / HK Screen).

VB6 pattern:
  - Grid: all rooms, color-coded by status
    Green=Vacant, Red=Occupied, Yellow=Dirty, Gray=Maintenance
  - Click room -> show folio details (if occupied)
  - HK buttons: Mark Clean, Mark Dirty, Mark Maintenance
  - Summary bar: Total/Occupied/Vacant/Dirty/Maintenance + Occ%
  - PYT-guard: only status updates allowed (no folio writes here)

Run: python -m HMS_py.ui.roomstatus_ui
"""
from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QFont, QShortcut, QKeySequence
from PyQt6.QtWidgets import (QApplication, QDialog, QGroupBox, QHBoxLayout,
                             QLabel, QMessageBox, QPushButton,
                             QTableWidget, QTableWidgetItem, QVBoxLayout)

from HMS_py.core import roomstatus

# Status -> background color (VB6 room-rack color scheme)
STATUS_COLORS = {
    "Vacant":      "#c8f0c8",   # light green
    "Occupied":    "#f0c8c8",   # light red
    "Dirty":       "#fff0a0",   # yellow
    "Maintenance": "#d0d0d0",   # gray
    "Out of Order": "#b0b0b0",  # dark gray
}
STATUS_TEXT = {
    "Vacant": "#005500", "Occupied": "#880000",
    "Dirty": "#886600", "Maintenance": "#444444",
    "Out of Order": "#222222",
}


def _cell(val, bg: str = "#ffffff", fg: str = "#111111") -> QTableWidgetItem:
    if isinstance(val, (datetime.date, datetime.datetime)):
        val = f"{val:%d/%b/%Y}"
    it = QTableWidgetItem("" if val is None else str(val))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    it.setBackground(QColor(bg))
    it.setForeground(QColor(fg))
    return it


class RoomStatusForm(QDialog):
    """VB6 Room Status + HK Screen combined."""

    COLS = ["Room No", "Room Name", "Category", "Maid Station",
            "Status", "Folio", "Guest Name", "Departure", "Check-In"]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Room Status / Housekeeping - HMS_py")
        self.resize(1150, 680)

        root = QVBoxLayout(self)

        # ---- Summary bar ----
        self.grpSummary = QGroupBox("Occupancy Summary")
        sum_lay = QHBoxLayout(self.grpSummary)
        self.lblTotal = QLabel("Total: 0")
        self.lblOcc = QLabel("Occupied: 0")
        self.lblVac = QLabel("Vacant: 0")
        self.lblDirty = QLabel("Dirty: 0")
        self.lblMaint = QLabel("Maint/OOO: 0")
        self.lblPct = QLabel("Occ%: 0.0%")
        f = QFont("Segoe UI", 10, QFont.Weight.Bold)
        for lbl in (self.lblTotal, self.lblOcc, self.lblVac,
                    self.lblDirty, self.lblMaint, self.lblPct):
            lbl.setFont(f)
            sum_lay.addWidget(lbl)
        sum_lay.addStretch()
        root.addWidget(self.grpSummary)

        # ---- Room grid ----
        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels(self.COLS)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setAlternatingRowColors(False)  # we set colors manually
        self.tbl.cellClicked.connect(lambda *_: self._on_select())
        root.addWidget(self.tbl)

        # ---- Room detail label ----
        self.lblDetail = QLabel(
            "Room select karo (click) - HK buttons se status update karo")
        self.lblDetail.setWordWrap(True)
        self.lblDetail.setStyleSheet("padding:6px; background:#f0f0f0;")
        root.addWidget(self.lblDetail)

        # ---- HK action buttons ----
        hk_grp = QGroupBox("Housekeeping Actions (Room Status Update)")
        hk_lay = QHBoxLayout(hk_grp)
        self.btnVacant = QPushButton("Mark VACANT")
        self.btnVacant.setStyleSheet(
            "background:#27ae60; color:white; font-weight:bold; padding:6px;")
        self.btnDirty = QPushButton("Mark DIRTY")
        self.btnDirty.setStyleSheet(
            "background:#e67e22; color:white; font-weight:bold; padding:6px;")
        self.btnMaint = QPushButton("Mark MAINTENANCE")
        self.btnMaint.setStyleSheet(
            "background:#7f8c8d; color:white; font-weight:bold; padding:6px;")
        # P4-c: Maintenance/Out-of-Order VB6 me RoomBLockOut table se tha
        # (frm:883) - live table 0 rows, block-out UI P4-d me. Evidence:
        # core update_hk_status sirf Clean/Dirty (RoomStat varchar(1)).
        self.btnMaint.setEnabled(False)
        self.btnMaint.setToolTip(
            "RoomBLockOut block-out P4-d me (live table empty)")
        self.btnOOO = QPushButton("Mark OUT OF ORDER")
        self.btnOOO.setStyleSheet(
            "background:#c0392b; color:white; font-weight:bold; padding:6px;")
        self.btnOOO.setEnabled(False)
        self.btnOOO.setToolTip("RoomBLockOut block-out P4-d me")
        self.btnRefresh = QPushButton("Refresh (F5)")
        self.btnClose = QPushButton("Close")
        for b in (self.btnVacant, self.btnDirty, self.btnMaint,
                  self.btnOOO, self.btnRefresh, self.btnClose):
            hk_lay.addWidget(b)
        root.addWidget(hk_grp)

        # ---- signals ----
        self.btnVacant.clicked.connect(lambda: self._set_status("Vacant"))
        self.btnDirty.clicked.connect(lambda: self._set_status("Dirty"))
        self.btnMaint.clicked.connect(
            lambda: self._set_status("Maintenance"))
        self.btnOOO.clicked.connect(
            lambda: self._set_status("Out of Order"))
        self.btnRefresh.clicked.connect(self.reload)
        self.btnClose.clicked.connect(self.reject)

        QShortcut(QKeySequence("F5"), self, activated=self.reload)
        QShortcut(QKeySequence("Ctrl+V"), self,
                  activated=lambda: self._set_status("Vacant"))
        QShortcut(QKeySequence("Ctrl+D"), self,
                  activated=lambda: self._set_status("Dirty"))

        self.reload()

    # ---- data ----
    def reload(self):
        rows = roomstatus.room_rack()
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            stat = rec["status"] or "Vacant"
            bg = STATUS_COLORS.get(stat, "#ffffff")
            fg = STATUS_TEXT.get(stat, "#111111")
            dep = rec["dep"]
            vals = [
                rec["roomno"], rec["name"], rec["cat"],
                rec["maid"], stat,
                str(rec["folio"]) if rec["folio"] else "",
                rec["guest"], dep, rec["chk_in"] if rec["folio"] else "",
            ]
            for c, v in enumerate(vals):
                self.tbl.setItem(r, c, _cell(v, bg=bg, fg=fg))

        # summary
        s = roomstatus.housekeeping_summary()
        self.lblTotal.setText(f"Total: {s['total']}")
        self.lblOcc.setText(f"Occupied: {s['occupied']}")
        self.lblOcc.setStyleSheet(
            "color:#880000; font-weight:bold;" if s["occupied"] else "")
        self.lblVac.setText(f"Vacant: {s['vacant']}")
        self.lblVac.setStyleSheet("color:#005500; font-weight:bold;")
        self.lblDirty.setText(f"Dirty: {s['dirty']}")
        self.lblDirty.setStyleSheet(
            "color:#886600; font-weight:bold;" if s["dirty"] else "")
        self.lblMaint.setText(f"Maint/OOO: {s['maintenance']}")
        self.lblPct.setText(f"Occ%: {s['occ_pct']}%")
        if rows:
            self.tbl.selectRow(0)
            self._on_select()

    def _on_select(self):
        r = self.tbl.currentRow()
        if r < 0:
            return
        roomno = self.tbl.item(r, 0).text() if self.tbl.item(r, 0) else ""
        status = self.tbl.item(r, 4).text() if self.tbl.item(r, 4) else ""
        folio = self.tbl.item(r, 5).text() if self.tbl.item(r, 5) else ""
        guest = self.tbl.item(r, 6).text() if self.tbl.item(r, 6) else ""
        dep = self.tbl.item(r, 7).text() if self.tbl.item(r, 7) else ""
        if folio:
            self.lblDetail.setText(
                f"Room: {roomno} | Status: {status} | "
                f"Folio: #{folio} | Guest: {guest} | Dep: {dep}")
        else:
            self.lblDetail.setText(
                f"Room: {roomno} | Status: {status} | "
                "Vacant (koi active folio nahi)")

    def _selected_roomno(self) -> str | None:
        r = self.tbl.currentRow()
        if r < 0:
            return None
        it = self.tbl.item(r, 0)
        return it.text() if it else None

    def _set_status(self, new_status: str):
        roomno = self._selected_roomno()
        if not roomno:
            QMessageBox.information(
                self, "HK Update", "Pehle room select karo")
            return
        r = self.tbl.currentRow()
        curr = self.tbl.item(r, 4).text() if self.tbl.item(r, 4) else ""
        folio = self.tbl.item(r, 5).text() if self.tbl.item(r, 5) else ""

        # Occupied/Vacant room ko Dirty mark karna VB6 rule hai; aur
        # Maintenance/OOO abhi disable hain (RoomBLockOut P4-d me).
        if new_status not in ("Vacant", "Dirty"):
            QMessageBox.information(
                self, "HK Update",
                f"'{new_status}' abhi supported nahi "
                "(RoomBLockOut P4-d me aayega)")
            return
        if new_status == "Vacant" and folio:
            QMessageBox.warning(
                self, "HK Update",
                f"Room {roomno} occupied hai (Folio #{folio}).\n"
                "Check-Out ke baad hi Vacant mark ho sakta hai.")
            return

        if QMessageBox.question(
                self, "HK Status Update",
                f"Room {roomno}: '{curr}' -> '{new_status}'?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            roomstatus.update_hk_status(roomno, new_status, user=self.user)
        except ValueError as e:
            QMessageBox.warning(self, "HK Update", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "HK Update", f"DB error: {e}")
            return
        self.reload()


def open_roomstatus(parent=None, user: str = "SA"):
    RoomStatusForm(parent, user=user).exec()


def main() -> int:
    app = QApplication(sys.argv)
    w = RoomStatusForm()
    w.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
