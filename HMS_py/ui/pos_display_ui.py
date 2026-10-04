"""Display Table (VB6: RsPOSDisplay / RsTouchDisplayTB - POS display board).

Teen panel, bilkul VB6 ki tarah:
  1. Table status grid  - RoomMast(Type='TB') + pending KOT, DispColor
     colours se (Occupied / Billed / Vacant)
  2. UNSETTLED BILL     - Sale1 jin par PayCharge hi nahi laga
  3. PENDING ORDER      - PackingOrder + PackingOrderDetail

VB6 refs: RsPOSDisplay.frm loc_F50B2E (legend), RsTouchDisplayTB.frm
loc_FFB561 (unsettled), Timer1 auto-refresh; menu leaf "Display Table"
(pehle registry tuple me _coming_soon par tha).

Run: python -m HMS_py.ui.pos_display_ui
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt, QTimer
from PyQt6.QtGui import QColor
from PyQt6.QtWidgets import (QApplication, QComboBox, QHBoxLayout,
                             QHeaderView, QLabel, QMainWindow, QPushButton,
                             QTableWidget, QTableWidgetItem, QTabWidget,
                             QVBoxLayout, QWidget)

from HMS_py.core import pos_display as _pdis
from HMS_py.ui import theme as _theme

# VB6 DispColor.Color int -> #RRGGBB
_DEFAULT_LEGEND = ((8421631, "Occupied"), (8453888, "Vacant"),
                   (16776960, "Billed"))


def _to_hex(color) -> str:
    try:
        v = int(color)
    except (TypeError, ValueError):
        return "#555555"
    return f"#{v & 0xFFFFFF:06x}"


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
            item = QTableWidgetItem("" if v is None else str(v))
            item.setForeground(QColor(pal))
            item.setFlags(item.flags() & ~Qt.ItemFlag.ItemIsEditable)
            t.setItem(i, c, item)


class PosDisplayWindow(QMainWindow):
    TABLE_COLS = ["Table", "Name", "Status", "Steward", "Time", "KOT DocId"]
    BILL_COLS = ["Bill No", "Table", "Steward", "Balance Amt", "DocId"]
    ORDER_COLS = ["Order No", "Customer", "Phone", "Address",
                  "Delivery Date", "DocId"]
    REFRESH_MS = 15000  # VB6 Timer1

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Display Table (VB6 RsPOSDisplay)")
        self.resize(1180, 720)
        self._legend: dict[str, str] = {}
        self._build_ui()
        self.refresh()
        self._timer = QTimer(self)
        self._timer.timeout.connect(self.refresh)
        self._timer.start(self.REFRESH_MS)

    # ------------------------------------------------------------------ ui
    def _build_ui(self):
        central = QWidget()
        self.setCentralWidget(central)
        lay = QVBoxLayout(central)

        bar = QHBoxLayout()
        bar.addWidget(QLabel("Outlet:"))
        self.cmb_outlet = QComboBox()
        self.cmb_outlet.setMinimumWidth(260)
        self.cmb_outlet.currentIndexChanged.connect(self.refresh)
        bar.addWidget(self.cmb_outlet)
        btn_refresh = QPushButton("Refresh")
        btn_refresh.setToolTip("Board dobara load karo (VB6 Timer1)")
        btn_refresh.clicked.connect(self.refresh)
        bar.addWidget(btn_refresh)
        btn_exit = QPushButton("Exit")
        btn_exit.setToolTip("Display Table board band karo")
        btn_exit.clicked.connect(self.close)
        bar.addWidget(btn_exit)
        bar.addStretch()
        lay.addLayout(bar)

        # legend: VB6 DispColor ke label colours
        self.legend_bar = QHBoxLayout()
        lay.addLayout(self.legend_bar)

        self.lbl_counts = QLabel("—")
        lay.addWidget(self.lbl_counts)

        self.tabs = QTabWidget()
        self.tbl_tables = _mk_table(self.TABLE_COLS)
        self.tbl_bills = _mk_table(self.BILL_COLS)
        self.tbl_orders = _mk_table(self.ORDER_COLS)
        self.tabs.addTab(self._wrap(self.tbl_tables), "Table Status")
        self.tabs.addTab(self._wrap(self.tbl_bills), "Unsettled Bill")
        self.tabs.addTab(self._wrap(self.tbl_orders), "Pending Order")
        lay.addWidget(self.tabs, stretch=1)

        self.statusBar().showMessage("Ready")

    @staticmethod
    def _wrap(tbl: QTableWidget) -> QWidget:
        w = QWidget()
        v = QVBoxLayout(w)
        v.setContentsMargins(0, 0, 0, 0)
        v.addWidget(tbl)
        return w

    def _fill_outlets(self):
        cur = self.cmb_outlet.currentData()
        self.cmb_outlet.blockSignals(True)
        self.cmb_outlet.clear()
        try:
            rows = _pdis.outlets()
        except Exception as exc:
            rows = []
            self.statusBar().showMessage(f"Outlet load fail: {exc}")
        for rec in rows:
            self.cmb_outlet.addItem(
                f"{rec['name']}  [{rec['code']}]", rec["code"])
        if cur:
            i = self.cmb_outlet.findData(cur)
            if i >= 0:
                self.cmb_outlet.setCurrentIndex(i)
        self.cmb_outlet.blockSignals(False)

    def _fill_legend(self):
        while self.legend_bar.count():
            item = self.legend_bar.takeAt(0)
            w = item.widget()
            if w is not None:
                w.deleteLater()
        try:
            rows = _pdis.legend()
        except Exception:
            rows = []
        if not rows:
            rows = [{"color": c, "detail": d} for c, d in _DEFAULT_LEGEND]
        for rec in rows:
            hexc = _to_hex(rec["color"])
            lbl = QLabel(f"  {rec['detail']}  ")
            # dark text on VB6 ka bright colour (WCAG readability)
            lum = (int(hexc[1:3], 16) * 299 + int(hexc[3:5], 16) * 587
                   + int(hexc[5:7], 16) * 114) // 1000
            lbl.setStyleSheet(
                f"background:{hexc}; color:{'#000' if lum > 140 else '#fff'};"
                "padding:4px 10px; font-weight:bold;")
            self.legend_bar.addWidget(lbl)
            self._legend[rec["detail"].strip().lower()] = hexc
        self.legend_bar.addStretch()

    # -------------------------------------------------------------- refresh
    def refresh(self, *_):
        rest = self.cmb_outlet.currentData() or ""
        errs = []
        try:
            tables = _pdis.table_status(rest) if rest else []
        except Exception as exc:
            tables, errs = [], f"tables: {exc}"
        _fill(self.tbl_tables, [
            (t["code"], t["name"], t["status"], t["waiter"],
             t["vtime"], t["docid"]) for t in tables])
        # DispColor se status cell ka rang (VB6 FGrid cell coloring)
        for r, t in enumerate(tables):
            hexc = self._legend.get(t["status"].lower())
            if hexc and self.tbl_tables.item(r, 2) is not None:
                self.tbl_tables.item(r, 2).setBackground(QColor(hexc))
                lum = (int(hexc[1:3], 16) * 299 + int(hexc[3:5], 16) * 587
                       + int(hexc[5:7], 16) * 114) // 1000
                self.tbl_tables.item(r, 2).setForeground(
                    QColor("#000000" if lum > 140 else "#ffffff"))
        counts: dict[str, int] = {}
        for t in tables:
            counts[t["status"]] = counts.get(t["status"], 0) + 1
        self.lbl_counts.setText(
            "   ".join(f"{k}: {v}" for k, v in sorted(counts.items()))
            or "koi table nahi")

        try:
            bills = _pdis.unsettled_bills(rest) if rest else []
        except Exception as exc:
            bills, errs = [], (errs or "") + f" bills: {exc}"
        _fill(self.tbl_bills, [
            (b["billno"], b["tableno"], b["steward"], f"{b['balance']:.2f}",
             b["docid"]) for b in bills])

        try:
            orders = _pdis.pending_orders()
        except Exception as exc:
            orders, errs = [], (errs or "") + f" orders: {exc}"
        _fill(self.tbl_orders, [
            (o["orderno"], o["custname"], o["phoneno"], o["address"],
             o["delivery"], o["docid"]) for o in orders])

        self.statusBar().showMessage(
            f"tables={len(tables)} unsettled={len(bills)} "
            f"orders={len(orders)}" + (f" | {errs}" if errs else ""))


def open_display_table(parent=None):
    """Menu leaf 'Display Table' -> VB6 RsPOSDisplay/RsTouchDisplayTB."""
    win = PosDisplayWindow(parent)
    win.show()
    return win


def main() -> int:
    app = QApplication(sys.argv)
    open_display_table()
    return app.exec()


if __name__ == "__main__":
    os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
    sys.exit(main())
