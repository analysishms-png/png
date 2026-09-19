"""POC: PlanMast (Company-Plan master) ka data PyQt6 grid mein.
Run: python -m HMS_py.poc_grid
Same DB as VB6 (Analysis.ini -> KailashData2526). READ-ONLY.
"""
import sys
import os

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from PyQt6.QtWidgets import (QApplication, QMainWindow, QTableWidget,
                             QTableWidgetItem, QLabel, QVBoxLayout, QWidget)
from PyQt6.QtGui import QFont
from PyQt6.QtCore import Qt

from HMS_py.core import db, plans


def main() -> int:
    cfg = db.load_config()
    app = QApplication(sys.argv)
    win = QMainWindow()
    win.setWindowTitle("HMS_py POC - PlanMast (Company-Plan Master)")
    win.resize(720, 480)

    central = QWidget()
    lay = QVBoxLayout(central)

    info = QLabel(f"Server: {cfg['server']}   |   Database: {cfg['database']}"
                  f"   |   Table: PlanMast   |   (VB6 wahi DB padhta hai)")
    info.setFont(QFont("Segoe UI", 9))
    lay.addWidget(info)

    rows = plans.list_plans()
    tbl = QTableWidget(len(rows), 5)
    tbl.setHorizontalHeaderLabels(
        ["Code", "Name", "Total", "Package", "Active"])
    tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
    tbl.setSelectionBehavior(
        QTableWidget.SelectionBehavior.SelectRows)
    tbl.horizontalHeader().setStretchLastSection(True)

    for r, row in enumerate(rows):
        for c, val in enumerate((row.Code, row.Name,
                                 f"{row.Total:.2f}" if row.Total else "0.00",
                                 row.Plan_Package or "", row.ActiveYN or "")):
            it = QTableWidgetItem(str(val))
            it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
            tbl.setItem(r, c, it)

    lay.addWidget(tbl)
    status = QLabel(f"Total plans: {len(rows)}   (read-only POC)")
    lay.addWidget(status)

    win.setCentralWidget(central)
    win.show()
    # offscreen smoke-test support: HMS_POC_SHOT env var se screenshot+exit
    shot = os.environ.get("HMS_POC_SHOT")
    if shot:
        from PyQt6.QtTest import QTest
        QTest.qWait(800)
        win.grab().save(shot)
        print("screenshot saved:", shot, "| rows:", len(rows))
        return 0
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
