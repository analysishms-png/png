"""Assign Delivery UI (VB6: RsAssignDelivery, menu leaf "Assign Delivery").

VB6 form ka caption "Member Category Wise Revenue" (stale) hai, par asli
kaam: baki hue bills (Sale1/SplitSale1 jin par DeliBoy nahi) pe delivery
boy assign karna + AssignDelivery browser.

VB6 refs: RsAssignDelivery.frm loc_109E614 (browse), loc_141E214
(unassigned picker), loc_14BB527 (insert), loc_115A697 (delete);
ModuleAdd.bas:3854 (caption dispatcher -> New RsAssignDelivery).

Run: python -m HMS_py.ui.pos_delivery_ui
"""
from __future__ import annotations
import os, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

from datetime import date

from PyQt6.QtWidgets import (QApplication, QDialog, QVBoxLayout, QHBoxLayout,
                              QTableWidget, QTableWidgetItem, QPushButton,
                              QLabel, QLineEdit, QMessageBox, QHeaderView,
                              QComboBox, QDateEdit, QTabWidget, QWidget,
                              QFormLayout, QGroupBox)
from PyQt6.QtCore import Qt, QDate
from PyQt6.QtGui import QColor

from HMS_py.core import depart as _depart
from HMS_py.core.pos_delivery import (AssignDelAPI, assign_bill,
                                      browse_assignments, delivery_boys,
                                      unassigned_bills)
from HMS_py.ui import theme as _theme


def _mk_table(cols) -> QTableWidget:
    t = QTableWidget(0, len(cols))
    t.setHorizontalHeaderLabels(cols)
    t.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
    t.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
    t.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
    t.setAlternatingRowColors(True)
    t.verticalHeader().setVisible(False)
    return t


def _fill(t: QTableWidget, rows, values):
    t.setRowCount(0)
    pal = _theme.palette()["text"]
    for rec, vals in zip(rows, values):
        i = t.rowCount()
        t.insertRow(i)
        for c, v in enumerate(vals):
            item = QTableWidgetItem("" if v is None else str(v))
            item.setForeground(QColor(pal))
            t.setItem(i, c, item)


class PosDeliveryDialog(QDialog):
    BILL_COLS = ["DocId", "VNo", "VType", "Bill Date", "Outlet", "Net Amt"]
    ASSIGNED_COLS = ["Bill_No", "Bill_Date", "Deli_Date", "Delivery_Boy",
                     "Bill Amt", "Remark", "DocId"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Assign Delivery (VB6 RsAssignDelivery)")
        self.resize(1060, 700)
        self._bills: list[dict] = []
        self._assigned: list[dict] = []
        self._setup_ui()
        self._refresh_meta()
        self._load_bills()
        self._load_assigned()

    # ---------------------------------------------------------- setup
    def _setup_ui(self):
        outer = QVBoxLayout(self)
        self.tabs = QTabWidget()
        outer.addWidget(self.tabs)
        self.tabs.addTab(self._tab_assign(), "Assign Bills")
        self.tabs.addTab(self._tab_assigned(), "Assigned (Browser)")

        self.lbl_status = QLabel("Ready")
        outer.addWidget(self.lbl_status)
        btn_exit = QPushButton("Exit")
        btn_exit.setToolTip("Close Assign Delivery")
        btn_exit.clicked.connect(self.close)
        row = QHBoxLayout()
        row.addStretch()
        row.addWidget(btn_exit)
        outer.addLayout(row)

    def _filter_row(self, on_refresh):
        """(layout, cmb_depart, ed_from, ed_to) - dono tab ke liye alag
        widgets (ek hi naam par overwrite ho jaata)."""
        row = QHBoxLayout()
        ed_from = QDateEdit(QDate.currentDate())
        ed_from.setCalendarPopup(True)
        ed_to = QDateEdit(QDate.currentDate())
        ed_to.setCalendarPopup(True)
        cmb = QComboBox()
        cmb.setMinimumWidth(220)
        btn = QPushButton("Show")
        btn.setToolTip("Date range + department ke hisaab se load karo")
        btn.clicked.connect(on_refresh)
        row.addWidget(QLabel("From:"))
        row.addWidget(ed_from)
        row.addWidget(QLabel("To:"))
        row.addWidget(ed_to)
        row.addWidget(QLabel("Department:"))
        row.addWidget(cmb)
        row.addWidget(btn)
        row.addStretch()
        return row, cmb, ed_from, ed_to

    def _tab_assign(self) -> QWidget:
        w = QWidget()
        v = QVBoxLayout(w)
        fr, self.cmb_depart, self.ed_from, self.ed_to = \
            self._filter_row(self._load_bills)
        v.addLayout(fr)
        self.tbl_bills = _mk_table(self.BILL_COLS)
        v.addWidget(self.tbl_bills, stretch=1)

        grp = QGroupBox("Delivery Boy")
        f = QFormLayout(grp)
        # editable: live DB me DeliveryBoy master khali hai (0 rows)
        self.cmb_boy = QComboBox()
        self.cmb_boy.setEditable(True)
        self.cmb_boy.setMinimumWidth(260)
        self.ed_remark = QLineEdit()
        self.ed_remark.setPlaceholderText("Remark (optional)")
        f.addRow("Delivery Boy:", self.cmb_boy)
        f.addRow("Remark:", self.ed_remark)
        v.addWidget(grp)

        btns = QHBoxLayout()
        b_assign = QPushButton("Assign Selected")
        b_assign.setToolTip("Chune hue bill par VB6 ki tarah Insert Into "
                            "AssignDelivery karo")
        b_assign.clicked.connect(self._do_assign)
        b_sel = QPushButton("Select All")
        b_sel.clicked.connect(lambda: self.tbl_bills.selectAll())
        b_ref = QPushButton("Refresh")
        b_ref.clicked.connect(self._load_bills)
        for b in (b_assign, b_sel, b_ref):
            btns.addWidget(b)
        btns.addStretch()
        v.addLayout(btns)
        return w

    def _tab_assigned(self) -> QWidget:
        w = QWidget()
        v = QVBoxLayout(w)
        fr, self.cmb_depart2, self.ed_from2, self.ed_to2 = \
            self._filter_row(self._load_assigned)
        v.addLayout(fr)
        self.tbl_assigned = _mk_table(self.ASSIGNED_COLS)
        v.addWidget(self.tbl_assigned, stretch=1)
        btns = QHBoxLayout()
        b_del = QPushButton("Mark Delivered")
        b_del.setToolTip("Selected assignment ka Ddate aaj kar do")
        b_del.clicked.connect(self._mark_delivered)
        b_del2 = QPushButton("Delete Assignment")
        b_del2.setToolTip("VB6 loc_115A697: Delete From AssignDelivery")
        b_del2.clicked.connect(self._delete_assignment)
        b_ref = QPushButton("Refresh")
        b_ref.clicked.connect(self._load_assigned)
        for b in (b_del, b_del2, b_ref):
            btns.addWidget(b)
        btns.addStretch()
        v.addLayout(btns)
        return w

    # ---------------------------------------------------------- meta
    def _fill_depart(self, cmb: QComboBox):
        cur = cmb.currentData()
        cmb.blockSignals(True)
        cmb.clear()
        cmb.addItem("All departments", "")
        for c in self._dep_codes:
            cmb.addItem(c, c)
        if cur:
            i = cmb.findData(cur)
            if i >= 0:
                cmb.setCurrentIndex(i)
        cmb.blockSignals(False)

    def _refresh_meta(self):
        self._dep_codes = []
        try:
            self._dep_codes = [d.get("code", "")
                               for d in _depart.list_all() if d.get("code")]
        except Exception:
            self._dep_codes = []
        self._fill_depart(self.cmb_depart)
        self._fill_depart(self.cmb_depart2)
        try:
            self._boys = delivery_boys()
        except Exception:
            self._boys = []
        self.cmb_boy.clear()
        for b in self._boys:
            self.cmb_boy.addItem(f"{b['code']} {b['name']}".strip(), b["code"])
        if not self._boys:
            self.cmb_boy.lineEdit().setPlaceholderText(
                "DeliveryBoy master khali hai - code type karo")

    # ---------------------------------------------------------- loads
    @staticmethod
    def _qdate(qd) -> date:
        # PyQt6 QDate me toPython() nahi hota
        return date(qd.year(), qd.month(), qd.day())

    def _dates(self, tab: QWidget):
        if tab is self.tabs.widget(0):
            return (self._qdate(self.ed_from.date()),
                    self._qdate(self.ed_to.date()))
        return (self._qdate(self.ed_from2.date()),
                self._qdate(self.ed_to2.date()))

    def _dep_of(self, tab: QWidget) -> str:
        cmb = self.cmb_depart if tab is self.tabs.widget(0) \
            else self.cmb_depart2
        return str(cmb.currentData() or "")

    def _load_bills(self):
        try:
            tab = self.tabs.widget(0)
            d1, d2 = self._dates(tab)
            dep = self._dep_of(tab) or None
            self._bills = unassigned_bills(depart_code=dep, date_from=d1,
                                           date_to=d2)
            _fill(self.tbl_bills, self._bills,
                  [[b["docid"], b["vno"], b["vtype"], b["vdate"],
                    b["restcode"], b["netamt"]] for b in self._bills])
            self.lbl_status.setText(
                f"{len(self._bills)} unassigned bill (VB6 Sale1/SplitSale1 "
                f"query)")
        except Exception as e:
            QMessageBox.warning(self, "Error", str(e))

    def _load_assigned(self):
        try:
            tab = self.tabs.widget(1)
            d1, d2 = self._dates(tab)
            dep = self._dep_of(tab) or None
            self._assigned = browse_assignments(date_from=d1, date_to=d2,
                                                depart_code=dep)
            _fill(self.tbl_assigned, self._assigned,
                  [[a["vno"], a["vdate"], a["ddate"], a["deliboy_name"],
                    a["billamt"], a["remark"], a["docid"]]
                   for a in self._assigned])
            self.lbl_status.setText(f"{len(self._assigned)} assigned bill")
        except Exception as e:
            QMessageBox.warning(self, "Error", str(e))

    # ---------------------------------------------------------- actions
    def _selected_rows(self, tbl: QTableWidget) -> list[int]:
        sm = tbl.selectionModel()
        if sm is None:
            return []
        return sorted({i.row() for i in sm.selectedRows()})

    def _do_assign(self):
        rows = self._selected_rows(self.tbl_bills)
        if not rows:
            QMessageBox.information(self, "Info", "Pehle bill select karo.")
            return
        boy = (self.cmb_boy.currentData() or self.cmb_boy.currentText()
               or "").strip()
        if not boy:
            QMessageBox.information(self, "Info", "Delivery boy zaroori hai.")
            return
        remark = self.ed_remark.text().strip()
        done, errs = 0, []
        for r in rows:
            if r >= len(self._bills):
                continue
            try:
                assign_bill(self._bills[r], boy, remark=remark)
                done += 1
            except Exception as e:
                errs.append(f"row {r + 1}: {e}")
        self._load_bills()
        self._load_assigned()
        msg = f"{done} bill assign hue"
        if errs:
            msg += f" ({len(errs)} fail: {errs[0]})"
        self.lbl_status.setText(msg)

    def _mark_delivered(self):
        rows = self._selected_rows(self.tbl_assigned)
        if not rows:
            QMessageBox.information(self, "Info", "Pehle row select karo.")
            return
        for r in rows:
            if r >= len(self._assigned):
                continue
            a = self._assigned[r]
            try:
                AssignDelAPI.update(a["docid"], {
                    "deliboy": a.get("deliboy", ""),
                    "billamt": a.get("billamt", 0),
                    "remark": a.get("remark", ""),
                    "ddate": str(date.today()),
                })
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))
                return
        self._load_assigned()

    def _delete_assignment(self):
        rows = self._selected_rows(self.tbl_assigned)
        if not rows:
            QMessageBox.information(self, "Info", "Pehle row select karo.")
            return
        if QMessageBox.question(
                self, "Confirm",
                f"{len(rows)} assignment delete karein?",
                QMessageBox.StandardButton.Yes |
                QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return
        for r in rows:
            if r >= len(self._assigned):
                continue
            try:
                AssignDelAPI.delete(self._assigned[r]["docid"])
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))
                return
        self._load_assigned()

    def _refresh(self):
        self._refresh_meta()
        self._load_bills()
        self._load_assigned()


def open_pos_delivery(parent=None):
    dlg = PosDeliveryDialog(parent)
    dlg.exec()
    return dlg


if __name__ == "__main__":
    app = QApplication(sys.argv)
    w = PosDeliveryDialog()
    w.show()
    raise SystemExit(app.exec())
