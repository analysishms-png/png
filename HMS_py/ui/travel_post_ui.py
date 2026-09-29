"""Travel Agency Posting UI (VB6: TravelAgencyPost, menu leaf same name).

VB6 form ka kaam: kisi Travel Agency (SubGroup CompanyType='Travel Agency')
ke folios ka commission calculate karke Travel1/Travel2 + 2 LEDGER rows
post karna. Grid 9 cols: Sr.No | Guest(hidden) | Name | No.Days | Room Rate
| Total | Comm.% | Commission | Post. CmdFill ke baad Comm.% (col6) edit
karke Post (col8) me 'Y' type karna zaroori hai - validation wahi maangta
hai ("Commission% is Zero" / "No Posting to Save.").

VB6 refs: TravelAgencyPost.frm (fill loc_1441116, save loc_15CB2D0,
delete loc_1250ED8, search loc_EC7992, agency list loc_1134036);
ModuleAdd.bas:3186 dispatcher.

Run: python -m HMS_py.ui.travel_post_ui
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__)))))

import datetime

from PyQt6.QtWidgets import (QApplication, QDialog, QVBoxLayout, QHBoxLayout,
                              QGridLayout, QTableWidget, QTableWidgetItem,
                              QPushButton, QLabel, QLineEdit, QMessageBox,
                              QHeaderView, QComboBox, QDateEdit, QInputDialog,
                              QAbstractItemView)
from PyQt6.QtCore import Qt, QDate
from PyQt6.QtGui import QColor

from HMS_py.core import travel_post as tp
from HMS_py.ui import theme as _theme


def _qdate(d) -> QDate:
    """QDate -> python date (QDate me toPython() nahi hota)."""
    return datetime.date(d.year(), d.month(), d.day())


class TravelAgencyPostDialog(QDialog):
    GRID_COLS = list(tp.GRID_COLS)

    def __init__(self, parent=None, user=None):
        super().__init__(parent)
        self.setWindowTitle("Travel Agency Posting")
        self.user = user or "PYADMIN"
        self._rows: list[dict] = []
        self._agencies: list[dict] = []
        self._commac = ""
        self._build()

    # ------------------------------------------------------------------ UI
    def _build(self):
        root = QVBoxLayout(self)

        # --- header (Txt 0=DocId 1=VrNo 2=VrDate 3=Agency 4=From 5=To)
        grid = QGridLayout()
        self.lbl_docid = QLabel("-")
        self.ed_srno = QLineEdit()
        self.ed_srno.setPlaceholderText("Sr. No.")
        self.lbl_vprefix = QLabel("-")
        self.dt_vdate = QDateEdit(QDate.currentDate())
        self.dt_vdate.setDisplayFormat("dd/MM/yyyy")
        self.cmb_agency = QComboBox()
        self.cmb_agency.setEditable(True)
        self.cmb_agency.setInsertPolicy(QComboBox.InsertPolicy.NoInsert)
        self.dt_from = QDateEdit(QDate.currentDate())
        self.dt_from.setDisplayFormat("dd/MM/yyyy")
        self.dt_to = QDateEdit(QDate.currentDate())
        self.dt_to.setDisplayFormat("dd/MM/yyyy")
        self.lbl_commac = QLabel("Commission A/c: -")

        grid.addWidget(QLabel("Doc Id"), 0, 0)
        grid.addWidget(self.lbl_docid, 0, 1)
        grid.addWidget(QLabel("Sr. No."), 0, 2)
        grid.addWidget(self.ed_srno, 0, 3)
        grid.addWidget(QLabel("V. Prefix"), 0, 4)
        grid.addWidget(self.lbl_vprefix, 0, 5)
        grid.addWidget(QLabel("Vr. Date"), 0, 6)
        grid.addWidget(self.dt_vdate, 0, 7)
        grid.addWidget(QLabel("Travel Agency"), 1, 0)
        grid.addWidget(self.cmb_agency, 1, 1, 1, 3)
        grid.addWidget(QLabel("From Date"), 1, 4)
        grid.addWidget(self.dt_from, 1, 5)
        grid.addWidget(QLabel("To Date"), 1, 6)
        grid.addWidget(self.dt_to, 1, 7)
        grid.addWidget(self.lbl_commac, 2, 0, 1, 4)
        root.addLayout(grid)

        # --- buttons
        row = QHBoxLayout()
        self.btn_fill = QPushButton("&Fill")
        self.btn_save = QPushButton("&Save")
        self.btn_delete = QPushButton("&Delete")
        self.btn_search = QPushButton("&Search")
        self.btn_new = QPushButton("&New")
        self.btn_close = QPushButton("&Close")
        for b in (self.btn_fill, self.btn_save, self.btn_delete,
                  self.btn_search, self.btn_new, self.btn_close):
            row.addWidget(b)
        row.addStretch(1)
        root.addLayout(row)
        self.btn_fill.clicked.connect(self.on_fill)
        self.btn_save.clicked.connect(self.on_save)
        self.btn_delete.clicked.connect(self.on_delete)
        self.btn_search.clicked.connect(self.on_search)
        self.btn_new.clicked.connect(self.on_new)
        self.btn_close.clicked.connect(self.close)

        # --- grid
        self.tbl = QTableWidget(0, len(self.GRID_COLS))
        self.tbl.setHorizontalHeaderLabels(self.GRID_COLS)
        self.tbl.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.Stretch)
        self.tbl.setSelectionBehavior(
            QAbstractItemView.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.verticalHeader().setVisible(False)
        # VB6 col1 (Guest code) width 0 - hidden
        self.tbl.setColumnHidden(tp.COL_GUEST, True)
        self.tbl.cellDoubleClicked.connect(self._on_cell_double)
        root.addWidget(self.tbl)

        self._load_agencies()
        self._refresh_header()

    def _load_agencies(self):
        try:
            self._agencies = tp.agency_list()
        except Exception as e:
            self._agencies = []
            self.lbl_commac.setText(f"Agency list load nahi hui: {e}")
        self.cmb_agency.clear()
        for a in self._agencies:
            self.cmb_agency.addItem(f"{a['name']}  [{a['code']}]", a["code"])
        try:
            self._commac = tp.commission_ac()
        except Exception:
            self._commac = ""
        self._update_status()

    # ------------------------------------------------------------- helpers
    def _agency_code(self) -> str:
        i = self.cmb_agency.currentIndex()
        if i >= 0:
            code = self.cmb_agency.itemData(i)
            if code:
                return str(code)
        return self.cmb_agency.currentText().strip()

    def _refresh_header(self):
        """VB6 CmdFill focus: next Vr. No. + V. Prefix from Voucher_Prefix."""
        try:
            num = tp.next_number(_qdate(self.dt_vdate.date()))
        except Exception:
            self.lbl_docid.setText("-")
            self.lbl_vprefix.setText("-")
            return
        self.lbl_docid.setText(num["docid"])
        self.lbl_vprefix.setText(num["prefix"])
        if str(num.get("method", "")).lower() == "automatic":
            self.ed_srno.setText(str(num["vno"]))

    def _clear_grid(self):
        self.tbl.setRowCount(0)
        self._rows = []

    def _show_rows(self, rows):
        pal = _theme.palette()["text"]
        self._rows = rows
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            vals = (rec.get("sno", r + 1), rec.get("guest", ""),
                    rec.get("guest_name", ""), rec.get("nodays", 0),
                    f"{float(rec.get('roomrate') or 0):.2f}",
                    f"{float(rec.get('total') or 0):.2f}",
                    f"{float(rec.get('commper') or 0):.2f}",
                    f"{float(rec.get('commamt') or 0):.2f}",
                    rec.get("post", ""))
            for c, v in enumerate(vals):
                item = QTableWidgetItem("" if v is None else str(v))
                item.setForeground(QColor(pal))
                self.tbl.setItem(r, c, item)

    def _cell_text(self, row: int, col: int) -> str:
        it = self.tbl.item(row, col)
        return it.text() if it else ""

    def _set_cell_text(self, row: int, col: int, text: str):
        it = self.tbl.item(row, col)
        if it is None:
            it = QTableWidgetItem()
            pal = _theme.palette()["text"]
            it.setForeground(QColor(pal))
            self.tbl.setItem(row, col, it)
        it.setText(str(text))

    # ------------------------------------------------------------- actions
    def _on_cell_double(self, r: int, c: int):
        # VB6: col6 (Comm.%) edit -> col7 recompute; col8 (Post) 'Y' toggle
        if c == tp.COL_PER:
            cur = self._cell_text(r, c) or "0"
            try:
                val, ok = QInputDialog.getDouble(
                    self, "Comm.%", "Commission %", float(cur), 0, 100, 2)
            except Exception:
                return
            if not ok:
                return
            self._rows[r]["commper"] = val
            tp.recompute(self._rows[r])
            self._set_cell_text(r, tp.COL_PER, f"{val:.2f}")
            self._set_cell_text(
                r, tp.COL_AMT, f"{float(self._rows[r]['commamt']):.2f}")
        elif c == tp.COL_POST:
            cur = str(self._rows[r].get("post") or "").strip().upper()
            new = "" if cur == "Y" else "Y"
            self._rows[r]["post"] = new
            self._set_cell_text(r, tp.COL_POST, new)
        else:
            return
        self._update_status()

    def _update_status(self):
        tot = sum(float(r.get("commamt") or 0) for r in self._rows
                  if str(r.get("post") or "").strip().upper() == "Y")
        self.lbl_commac.setText(
            f"Commission A/c: {self._commac or '(set nahi hai)'}   |   "
            f"Posted commission: {tot:.2f}")

    def on_fill(self):
        code = self._agency_code()
        if not code:
            QMessageBox.information(self, "Info", "Travel Agency select karo.")
            return
        try:
            rows = tp.fill_guests(code, _qdate(self.dt_from.date()),
                                  _qdate(self.dt_to.date()))
        except Exception as e:
            QMessageBox.warning(self, "Fill", str(e))
            return
        if not rows:
            self._clear_grid()
            QMessageBox.information(
                self, "Fill", "Is range me koi folio nahi mila.")
            return
        self._show_rows(rows)
        # VB6 CmdFill: Row=1, Col=6 (Comm.% cell par focus)
        self.tbl.setCurrentCell(0, tp.COL_PER)

    def on_save(self):
        code = self._agency_code()
        if not code:
            QMessageBox.information(self, "Info", "Travel Agency select karo.")
            return
        if QMessageBox.question(
                self, "Save Data", "Save Record ?",
                QMessageBox.StandardButton.Yes |
                QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return
        try:
            res = tp.save_post(
                code, _qdate(self.dt_vdate.date()),
                _qdate(self.dt_from.date()), _qdate(self.dt_to.date()),
                self._rows)
        except Exception as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        QMessageBox.information(
            self, "Save", f"Saved: {res['docid']}  (Commission {res['commission']:.2f})")
        # VB6 save ke baad naya vno/docid
        self._refresh_header()
        for r in self._rows:
            r["post"] = ""
        self._show_rows(self._rows)

    def on_delete(self):
        docid = self.lbl_docid.text().strip()
        if not docid or docid == "-":
            QMessageBox.information(self, "Info", "Pehle posting select karo.")
            return
        if QMessageBox.question(
                self, "Confirmation", "Delete Record ?",
                QMessageBox.StandardButton.Yes |
                QMessageBox.StandardButton.No) != QMessageBox.StandardButton.Yes:
            return
        try:
            tp.delete_post(docid)
        except Exception as e:
            QMessageBox.warning(self, "Delete", str(e))
            return
        self._clear_grid()
        self._refresh_header()

    def on_search(self):
        from PyQt6.QtWidgets import QDialog as _QD
        try:
            rows = tp.search_list()
        except Exception as e:
            QMessageBox.warning(self, "Search", str(e))
            return
        if not rows:
            QMessageBox.information(self, "Search", "No Records To Search.")
            return
        dlg = _QD(self)
        dlg.setWindowTitle("Search - Travel Agency Posting")
        lay = QVBoxLayout(dlg)
        tbl = QTableWidget(len(rows), 5)
        tbl.setHorizontalHeaderLabels(
            ["Doc Id", "V. No.", "V. Date", "Travel Agency", "From", "To"])
        tbl.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.Stretch)
        pal = _theme.palette()["text"]
        for i, r in enumerate(rows):
            vals = (r["docid"], r["vno"],
                    r["vdate"].strftime("%d/%m/%Y") if hasattr(r["vdate"],
                                                             "strftime")
                    else r["vdate"], r["agency"],
                    r["fromdate"].strftime("%d/%m/%Y") if hasattr(
                        r["fromdate"], "strftime") else r["fromdate"],
                    r["todate"].strftime("%d/%m/%Y") if hasattr(
                        r["todate"], "strftime") else r["todate"])
            for c, v in enumerate(vals):
                it = QTableWidgetItem("" if v is None else str(v))
                it.setForeground(QColor(pal))
                tbl.setItem(i, c, it)
        lay.addWidget(tbl)
        pick: list[dict] = []

        def _accept(r_, c_):
            if 0 <= r_ < len(rows):
                pick.append(rows[r_])
                dlg.accept()

        tbl.cellDoubleClicked.connect(_accept)
        dlg.exec()
        if pick:
            self._load(pick[0]["docid"])

    def on_new(self):
        self._clear_grid()
        self._refresh_header()

    def _load(self, docid: str):
        try:
            rec = tp.load_post(docid)
        except Exception as e:
            QMessageBox.warning(self, "Load", str(e))
            return
        h = rec["header"]
        self.lbl_docid.setText(h["docid"])
        self.lbl_vprefix.setText(h["prefix"])
        self.ed_srno.setText(str(h["vno"]))
        if hasattr(h["vdate"], "year"):
            self.dt_vdate.setDate(QDate(h["vdate"].year, h["vdate"].month,
                                        h["vdate"].day))
        for key, widget in (("fromdate", self.dt_from), ("todate", self.dt_to)):
            v = h.get(key)
            if hasattr(v, "year"):
                widget.setDate(QDate(v.year, v.month, v.day))
        idx = self.cmb_agency.findData(h["agency"])
        if idx >= 0:
            self.cmb_agency.setCurrentIndex(idx)
        self._show_rows(rec["lines"])


def open_travel_agency_posting(parent=None, user=None):
    dlg = TravelAgencyPostDialog(parent, user=user)
    dlg.exec()
    return dlg


if __name__ == "__main__":
    app = QApplication(sys.argv)
    w = TravelAgencyPostDialog()
    w.show()
    raise SystemExit(app.exec())
