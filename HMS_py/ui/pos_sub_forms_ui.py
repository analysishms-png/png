"""POS Sub-Forms UI (VB6: Bill Reprint, Split Bill, KOT Transfer port)."""
from __future__ import annotations
import sys, os
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from PyQt6.QtWidgets import (QMainWindow, QWidget, QVBoxLayout, QHBoxLayout,
    QTableWidget, QTableWidgetItem, QPushButton, QLineEdit, QLabel,
    QMessageBox, QGroupBox, QFormLayout, QDateEdit, QHeaderView)
from PyQt6.QtCore import Qt, QDate
from PyQt6.QtGui import QColor, QFont
from core import db
from ui.desktop_style import make_vb6_header
from ui.theme import palette


class BillReprintWindow(QMainWindow):
    """Bill Reprint (VB6: POS Bill Reprint)."""
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("POS Bill Reprint")
        self.resize(800, 500)
        self._build_ui()
        self._load_data()

    def _build_ui(self):
        central = QWidget(); self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        layout.addWidget(make_vb6_header("POS Bill Reprint"))

        search_lay = QHBoxLayout()
        self.dt_from = QDateEdit(); self.dt_from.setCalendarPopup(True)
        self.dt_from.setDate(QDate.currentDate())
        self.dt_to = QDateEdit(); self.dt_to.setCalendarPopup(True)
        self.dt_to.setDate(QDate.currentDate())
        self.btn_search = QPushButton("Search")
        self.btn_search.setToolTip("Search bills within the selected date range")
        self.btn_search.clicked.connect(self._load_data)
        search_lay.addWidget(QLabel("From:")); search_lay.addWidget(self.dt_from)
        search_lay.addWidget(QLabel("To:")); search_lay.addWidget(self.dt_to)
        search_lay.addWidget(self.btn_search)
        layout.addLayout(search_lay)

        self.table = QTableWidget()
        self.table.setColumnCount(5)
        self.table.setHorizontalHeaderLabels(["DocId", "Date", "Outlet", "Amount", "Status"])
        self.table.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
        self.table.setAlternatingRowColors(True)
        layout.addWidget(self.table)

        btn_lay = QHBoxLayout()
        self.btn_reprint = QPushButton("Reprint Selected Bill")
        self.btn_reprint.setToolTip("Reprint the selected bill using Crystal Reports")
        self.btn_reprint.setProperty("success", True)
        self.btn_exit = QPushButton("Exit")
        self.btn_exit.setToolTip("Close the Bill Reprint window")
        self.btn_reprint.clicked.connect(self._reprint)
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_reprint); btn_lay.addWidget(self.btn_exit)
        layout.addLayout(btn_lay)

    def _load_data(self):
        try:
            rows = db.query(
                "SELECT TOP 100 S1.DocId, S1.VDate, D.Name, S1.NetAmt, S1.DelFlag "
                "FROM Sale1 S1 LEFT JOIN Depart D ON S1.RestCode = D.Code "
                "WHERE S1.VDate BETWEEN ? AND ? ORDER BY S1.DocId DESC",
                (self.dt_from.date().toPyDate(), self.dt_to.date().toPyDate()))
            self.table.setRowCount(len(rows))
            for i, r in enumerate(rows):
                for j, v in enumerate([r[0] or "", str(r[1] or ""), r[2] or "",
                                       str(r[3] or 0), r[4] or ""]):
                    it = QTableWidgetItem(str(v))
                    it.setForeground(QColor(palette()["text"]))
                    self.table.setItem(i, j, it)
        except Exception:
            pass

    def _reprint(self):
        row = self.table.currentRow()
        if row < 0:
            QMessageBox.warning(self, "Select", "Pehle bill select karo"); return
        docid = self.table.item(row, 0).text()
        QMessageBox.information(self, "Reprint",
            f"Bill {docid} reprint.\n\nVB6 me Crystal Report se print hota tha.")


class SplitBillWindow(QMainWindow):
    """Split Sale Bill (VB6: Split Sale Bill)."""
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Split Sale Bill")
        self.resize(800, 500)
        self._build_ui()

    def _build_ui(self):
        central = QWidget(); self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        layout.addWidget(make_vb6_header("Split Sale Bill"))

        form = QGroupBox("Split Details")
        form_lay = QFormLayout(form)
        self.txt_docid = QLineEdit(); self.txt_docid.setPlaceholderText("Original Bill DocId")
        form_lay.addRow("Bill DocId:", self.txt_docid)
        layout.addWidget(form)

        info = QLabel("Original bill ko do parts me split karega.\n"
                      "Pehle bill ke items select karo jo naye bill me jayenge.")
        info.setWordWrap(True); layout.addWidget(info)

        self.table = QTableWidget()
        self.table.setColumnCount(5)
        self.table.setHorizontalHeaderLabels(["SNo", "Item", "Qty", "Rate", "Select"])
        self.table.setAlternatingRowColors(True)
        layout.addWidget(self.table)

        btn_lay = QHBoxLayout()
        self.btn_split = QPushButton("Split Bill")
        self.btn_split.setToolTip("Split the original bill into two separate bills")
        self.btn_split.setProperty("role", "warning")
        self.btn_exit = QPushButton("Exit")
        self.btn_exit.setToolTip("Close the Split Bill window")
        self.btn_split.clicked.connect(self._split)
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_split); btn_lay.addWidget(self.btn_exit)
        layout.addLayout(btn_lay)

    def _split(self):
        docid = self.txt_docid.text().strip()
        if not docid:
            QMessageBox.warning(self, "Input", "Bill DocId zaroori hai"); return
        QMessageBox.information(self, "Info",
            "Split Bill: Selected items ko naye bill me move karo.\n\n"
            "VB6 me yeh complex operation tha - original void + 2 new bills.")


def open_bill_reprint(parent=None):
    w = BillReprintWindow(parent); w.show(); return w

def open_split_bill(parent=None):
    w = SplitBillWindow(parent); w.show(); return w


class GravyItemWindow(QMainWindow):
    """Gravy Item Entry (VB6: RsGravyItemEntry) — ItemMast.GravyItem='Yes'
    items ka master (add/edit/delete), code site[:2]+6-digit auto."""

    COLS = ["Code", "Name", "Kitchen", "Unit", "Rate", "DispCode"]

    def __init__(self, parent=None, user="SA"):
        super().__init__(parent)
        self.setWindowTitle("Gravy Item Entry")
        self.resize(880, 560)
        self._user = user
        self._kitchens: list[dict] = []
        self._build_ui()
        self._reload()

    def _build_ui(self):
        from PyQt6.QtWidgets import (QComboBox, QDialog, QDoubleSpinBox,
                                     QFormLayout, QVBoxLayout, QWidget)
        central = QWidget(); self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        title = QLabel("Gravy Item Entry")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        self.table = QTableWidget()
        self.table.setColumnCount(len(self.COLS))
        self.table.setHorizontalHeaderLabels(self.COLS)
        self.table.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.ResizeToContents)
        self.table.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.table.setSelectionMode(QTableWidget.SelectionMode.SingleSelection)
        self.table.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.table.itemSelectionChanged.connect(self._on_row)
        layout.addWidget(self.table, 1)

        btn_lay = QHBoxLayout()
        self.btn_add = QPushButton("Add")
        self.btn_edit = QPushButton("Edit")
        self.btn_del = QPushButton("Delete")
        self.btn_del.setProperty("role", "danger")
        self.btn_exit = QPushButton("Exit")
        self.btn_add.clicked.connect(self._add)
        self.btn_edit.clicked.connect(self._edit)
        self.btn_del.clicked.connect(self._delete)
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_add); btn_lay.addWidget(self.btn_edit)
        btn_lay.addWidget(self.btn_del); btn_lay.addStretch()
        btn_lay.addWidget(self.btn_exit)
        layout.addLayout(btn_lay)
        self._dlg_cls = QDialog
        self._qform = QFormLayout
        self._combo = QComboBox
        self._spin = QDoubleSpinBox
        self._le_cls = QLineEdit

    def _reload(self):
        from HMS_py.core import gravy_item as gi
        try:
            self._kitchens = gi.list_kitchens()
            rows = gi.list_gravy_items()
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e)); return
        self.table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            vals = [r["code"], r["name"], r["kitchen"], r["unit"],
                    f"{r['salerate']:,.2f}", str(r["dispcode"])]
            for j, v in enumerate(vals):
                it = QTableWidgetItem(v)
                it.setForeground(QColor(palette()["text"]))
                self.table.setItem(i, j, it)
        self.btn_edit.setEnabled(False); self.btn_del.setEnabled(False)

    def _on_row(self):
        has = self.table.currentRow() >= 0
        self.btn_edit.setEnabled(has); self.btn_del.setEnabled(has)

    def _kitchen_code(self, combo):
        idx = combo.currentIndex()
        return self._kitchens[idx]["code"] if 0 <= idx < len(self._kitchens) \
            else ""

    def _item_dialog(self, rec: dict | None):
        """Add/Edit dialog; None rec = Add. Returns dict ya None."""
        from HMS_py.core import gravy_item as gi
        dlg = self._dlg_cls(self)
        dlg.setWindowTitle("Add Gravy Item" if rec is None
                           else f"Edit Gravy Item {rec['code']}")
        form = self._qform(dlg)
        txt_name = self._le_cls(); txt_name.setText(rec["name"] if rec else "")
        txt_disp = self._le_cls()
        txt_disp.setText(str(rec["dispcode"]) if rec else "9999")
        cmb_kit = self._combo()
        kit_rev = {k["code"]: i for i, k in enumerate(self._kitchens)}
        for k in self._kitchens:
            cmb_kit.addItem(k["name"], k["code"])
        if rec and rec["kitchen"] in kit_rev:
            cmb_kit.setCurrentIndex(kit_rev[rec["kitchen"]])
        cmb_unit = self._combo(); cmb_unit.setEditable(True)
        try:
            for u in gi.list_units():
                cmb_unit.addItem(u)
        except Exception:
            pass
        if rec:
            cmb_unit.setCurrentText(rec["unit"])
        cmb_group = self._combo(); cmb_group.setEditable(True)
        try:
            for g in gi.list_item_groups():
                cmb_group.addItem(g)
        except Exception:
            pass
        if rec:
            cmb_group.setCurrentText(rec["itemgroup"])
        cmb_cat = self._combo(); cmb_cat.setEditable(True)
        try:
            for c in gi.list_item_cats():
                cmb_cat.addItem(c)
        except Exception:
            pass
        if rec:
            cmb_cat.setCurrentText(rec["itemcatcode"])
        spn_rate = self._spin(); spn_rate.setRange(0, 10_000_000)
        spn_rate.setDecimals(2)
        spn_rate.setValue(float(rec["salerate"]) if rec else 0.0)
        form.addRow("Name*:", txt_name)
        form.addRow("Kitchen*:", cmb_kit)
        form.addRow("Unit*:", cmb_unit)
        form.addRow("Item Group*:", cmb_group)
        form.addRow("Item Category*:", cmb_cat)
        form.addRow("Sale Rate:", spn_rate)
        form.addRow("DispCode:", txt_disp)
        from PyQt6.QtWidgets import QDialogButtonBox
        bb = QDialogButtonBox(QDialogButtonBox.StandardButton.Ok
                              | QDialogButtonBox.StandardButton.Cancel)
        bb.accepted.connect(dlg.accept); bb.rejected.connect(dlg.reject)
        form.addRow(bb)
        if dlg.exec() != QDialog.DialogCode.Accepted:
            return None
        return {"name": txt_name.text().strip(),
                "kitchen": self._kitchen_code(cmb_kit),
                "unit": cmb_unit.currentText().strip(),
                "itemgroup": cmb_group.currentText().strip(),
                "itemcatcode": cmb_cat.currentText().strip(),
                "salerate": spn_rate.value(),
                "dispcode": int(txt_disp.text() or 9999)}

    def _add(self):
        from HMS_py.core import gravy_item as gi
        data = self._item_dialog(None)
        if not data:
            return
        # kitchen -> outlet pairing (VB6 Txt(3)/Txt(4) tags)
        rest = self._pair_outlet(data["kitchen"])
        try:
            code = gi.insert_gravy_item(
                data["name"], rest, data["unit"], data["itemgroup"],
                data["itemcatcode"], data["kitchen"], data["salerate"],
                data["dispcode"], user=self._user)
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e)); return
        QMessageBox.information(self, "Done",
                                f"Gravy item {code} add ho gaya (GravyItem='Yes').")
        self._reload()

    def _pair_outlet(self, kitchen: str) -> str:
        """Kitchen code ka outlet pair (KKMK -> KKM001 style): prefix +
        pehla OutletYN='Y' code jiska prefix kitchen se match karta hai;
        fallback: pehla outlet."""
        from HMS_py.core import menu_item_copy as mic
        try:
            outlets = mic.list_outlets()
        except Exception:
            outlets = []
        prefix = (kitchen[:4] or "").upper()
        for o in outlets:
            if o["code"].upper().startswith(prefix):
                return o["code"]
        return outlets[0]["code"] if outlets else kitchen

    def _edit(self):
        from HMS_py.core import gravy_item as gi
        row = self.table.currentRow()
        if row < 0:
            return
        code = self.table.item(row, 0).text()
        rec = next((r for r in gi.list_gravy_items()
                    if r["code"] == code), None)
        if not rec:
            QMessageBox.information(self, "Not found", "Item nahi mila")
            return
        data = self._item_dialog(rec)
        if not data:
            return
        try:
            gi.update_gravy_item(code, data["name"], rec["restcode"],
                                 data["unit"], data["itemgroup"],
                                 data["itemcatcode"], data["kitchen"],
                                 data["salerate"], data["dispcode"],
                                 user=self._user)
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e)); return
        QMessageBox.information(self, "Done", f"{code} update ho gaya.")
        self._reload()

    def _delete(self):
        from HMS_py.core import gravy_item as gi
        row = self.table.currentRow()
        if row < 0:
            return
        code = self.table.item(row, 0).text()
        reply = QMessageBox.question(self, "Confirm",
            f"Gravy item {code} delete karein?\n(Stock/BOM references ho "
            "to delete block hoga)")
        if reply != QMessageBox.StandardButton.Yes:
            return
        try:
            gi.delete_gravy_item(code)
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e)); return
        QMessageBox.information(self, "Done", f"{code} delete ho gaya.")
        self._reload()


def open_gravy_item_entry(parent=None, user="SA"):
    w = GravyItemWindow(parent, user=user); w.show(); return w
