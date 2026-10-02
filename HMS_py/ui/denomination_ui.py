"""Denomination Detail UI (VB6: FrmDenomination, POS Reports menu).

VB6 form: HMS_REVERSE_ENGINEERING/HMS/FrmDenomination.frm, caption
"DenominationDetails" (MDIForm1 loc_142D152 -> New FrmDenomination;
ModuleAdd.bas loc_1E47899 If var_188 = "Denomination Detail").

Layout: register list (Distinct Sno grouped) + detail grid for the
selected Sno + New (next Sno from DenominationFormat template) +
Delete (soft Delflag='Y'). Core: core/denomination.py.
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__)))))

import datetime

from PyQt6.QtWidgets import (QApplication, QDialog, QGridLayout, QHBoxLayout,
                             QLabel, QLineEdit, QMessageBox, QPushButton,
                             QTableWidget, QTableWidgetItem, QVBoxLayout)

from HMS_py.core import denomination as ops


def open_denomination_detail(parent=None, user: str = "SA"):
    dlg = DenominationDetailWindow(parent, user=user)
    dlg.exec()
    return dlg


class DenominationDetailWindow(QDialog):
    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Denomination Details")
        self.resize(760, 420)
        lay = QVBoxLayout(self)

        self.list_tbl = QTableWidget(0, 3)
        self.list_tbl.setHorizontalHeaderLabels(["Sno", "User", "Date"])
        lay.addWidget(QLabel("Registers (distinct Sno)"))
        lay.addWidget(self.list_tbl)

        self.detail_tbl = QTableWidget(0, 4)
        self.detail_tbl.setHorizontalHeaderLabels(
            ["Sno1", "DenominationType", "DenominationValue", "DenominationTotal"])
        lay.addWidget(QLabel("Detail rows for selected Sno"))
        lay.addWidget(self.detail_tbl)

        btns = QHBoxLayout()
        self.btn_new = QPushButton("New")
        self.btn_del = QPushButton("Delete")
        self.btn_refresh = QPushButton("Refresh")
        self.btn_close = QPushButton("Close")
        for b in (self.btn_new, self.btn_del, self.btn_refresh, self.btn_close):
            btns.addWidget(b)
        lay.addLayout(btns)

        self.list_tbl.cellClicked.connect(self._on_select)
        self.btn_new.clicked.connect(self._on_new)
        self.btn_del.clicked.connect(self._on_delete)
        self.btn_refresh.clicked.connect(self.reload)
        self.btn_close.clicked.connect(self.close)
        self.reload()

    def reload(self):
        rows = ops.list_registers()
        self.list_tbl.setRowCount(len(rows))
        for i, r in enumerate(rows):
            for j, v in enumerate(r[:3]):
                self.list_tbl.setItem(i, j, QTableWidgetItem(str(v)))
        self.detail_tbl.setRowCount(0)

    def _on_select(self, row, _col):
        item = self.list_tbl.item(row, 0)
        if not item:
            return
        sno = item.text()
        rows = ops.get_register_rows(sno)
        self.detail_tbl.setRowCount(len(rows))
        for i, r in enumerate(rows):
            for j, v in enumerate((r[1], r[4], r[5], r[7])):
                self.detail_tbl.setItem(i, j, QTableWidgetItem(str(v)))

    def _on_new(self):
        fmt = ops.list_format()
        if not fmt:
            QMessageBox.information(self, "New", "DenominationFormat is empty - add a template first.")
            return
        rows = []
        for f in fmt:
            sno1, typ, val, unit, total, rel, typ2 = f[0], f[1], f[2], f[3], f[4], f[5], f[6]
            rows.append({"Sno1": sno1, "DenominationType": typ,
                         "DenominationValue": val, "DenominationUnit": unit,
                         "DenominationTotal": total, "Relation": rel,
                         "Type": typ2})
        sno = ops.next_sno()
        n = ops.save_register(sno, datetime.date.today(), "", rows, user=self.user)
        QMessageBox.information(self, "New", f"Register Sno={sno}, {n} rows written.")
        self.reload()

    def _on_delete(self):
        item = self.list_tbl.currentItem()
        if not item:
            return
        row = item.row()
        sno = self.list_tbl.item(row, 0).text()
        if QMessageBox.question(self, "Delete Entry !", f"Delete register Sno={sno}?") != QMessageBox.StandardButton.Yes:
            return
        ops.delete_register(sno, reason="", user=self.user)
        self.reload()


if __name__ == "__main__":
    os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
    app = QApplication(sys.argv)
    DenominationDetailWindow().exec()
