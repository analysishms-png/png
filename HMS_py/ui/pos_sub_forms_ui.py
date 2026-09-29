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


class ConsumptionMasterWindow(QMainWindow):
    """Consumption Master (VB6: FrmConsumMast) — BOM recipe master.
    Finish item + outlet + date ke liye raw-material recipe define karo
    (Cost LPurRate se compute, ItemMast.PurchRate backfill)."""

    RECIPE_COLS = ["FinItem", "Outlet", "Date", "Finish Name",
                   "Raw rows"]
    RAW_COLS = ["", "Raw Item", "Name", "Qty", "Waste"]

    def __init__(self, parent=None, user="SA"):
        super().__init__(parent)
        self.setWindowTitle("Consumption Master")
        self.resize(920, 580)
        self._user = user
        self._build_ui()
        self._reload()

    def _build_ui(self):
        from PyQt6.QtWidgets import (QComboBox, QDateEdit, QFormLayout,
                                     QGroupBox, QTabWidget)
        from HMS_py.core import consumption_master as cm
        central = QWidget(); self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        title = QLabel("Consumption Master (BOM Recipes)")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        self.tabs = QTabWidget()
        self.tabs.setDocumentMode(True)

        # ── Tab 1: saved recipes ──
        w1 = QWidget(); l1 = QVBoxLayout(w1)
        self.recipe_table = QTableWidget(0, len(self.RECIPE_COLS))
        self.recipe_table.setHorizontalHeaderLabels(self.RECIPE_COLS)
        self.recipe_table.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.recipe_table.setSelectionMode(
            QTableWidget.SelectionMode.SingleSelection)
        self.recipe_table.setEditTriggers(
            QTableWidget.EditTrigger.NoEditTriggers)
        self.recipe_table.itemSelectionChanged.connect(self._on_recipe_row)
        l1.addWidget(self.recipe_table, 1)
        b1 = QHBoxLayout()
        self.btn_del_recipe = QPushButton("Delete Recipe")
        self.btn_del_recipe.setProperty("role", "danger")
        self.btn_del_recipe.setEnabled(False)
        self.btn_del_recipe.clicked.connect(self._delete_recipe)
        self.btn_exit = QPushButton("Exit")
        self.btn_exit.clicked.connect(self.close)
        b1.addWidget(self.btn_del_recipe); b1.addStretch()
        b1.addWidget(self.btn_exit)
        l1.addLayout(b1)
        self.tabs.addTab(w1, "Saved Recipes")

        # ── Tab 2: new/edit recipe ──
        w2 = QWidget(); l2 = QVBoxLayout(w2)
        form = QGroupBox("Recipe header")
        fl = QFormLayout(form)
        self.cmb_outlet = QComboBox()
        for o in cm.list_outlets():
            self.cmb_outlet.addItem(f"{o['name']} ({o['code']})", o["code"])
        self.cmb_outlet.currentIndexChanged.connect(self._fill_finish)
        self.cmb_fin = QComboBox()
        self.txt_finqty = QLineEdit("1")
        self.dt_app = QDateEdit(); self.dt_app.setCalendarPopup(True)
        self.dt_app.setDate(self.dt_app.date())
        fl.addRow("Outlet*:", self.cmb_outlet)
        fl.addRow("Finish item*:", self.cmb_fin)
        fl.addRow("FinQty (yield):", self.txt_finqty)
        fl.addRow("Applicable date:", self.dt_app)
        l2.addWidget(form)
        l2.addWidget(QLabel("Raw material rows (Store/Gravy items):"))
        self.raw_table = QTableWidget(0, len(self.RAW_COLS))
        self.raw_table.setHorizontalHeaderLabels(self.RAW_COLS)
        self.raw_table.setEditTriggers(
            QTableWidget.EditTrigger.NoEditTriggers)
        l2.addWidget(self.raw_table, 1)
        b2 = QHBoxLayout()
        self.btn_add_raw = QPushButton("Add Raw Item")
        self.btn_rm_raw = QPushButton("Remove Row")
        self.btn_save_recipe = QPushButton("Save Recipe")
        self.btn_save_recipe.setProperty("role", "warning")
        b2.addWidget(self.btn_add_raw)
        b2.addWidget(self.btn_rm_raw); b2.addStretch()
        b2.addWidget(self.btn_save_recipe)
        l2.addLayout(b2)
        self.tabs.addTab(w2, "New / Edit Recipe")
        layout.addWidget(self.tabs, 1)

        self.btn_add_raw.clicked.connect(self._add_raw)
        self.btn_rm_raw.clicked.connect(self._rm_raw)
        self.btn_save_recipe.clicked.connect(self._save_recipe)

    def _reload(self):
        from HMS_py.core import consumption_master as cm
        try:
            recipes = cm.list_recipes()
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e)); return
        t = self.recipe_table
        t.setRowCount(len(recipes))
        txt = palette()["text"]
        for i, r in enumerate(recipes):
            vals = [r["fin_item"], r["outlet"], r["app_date"],
                    r["fin_name"], str(r["raw_count"])]
            for j, v in enumerate(vals):
                it = QTableWidgetItem(v)
                it.setForeground(QColor(txt))
                t.setItem(i, j, it)
        self._recipes = recipes

    def _fill_finish(self):
        from HMS_py.core import consumption_master as cm
        code = self.cmb_outlet.currentData()
        self.cmb_fin.clear()
        if not code:
            return
        try:
            for f in cm.list_finish_items(code):
                self.cmb_fin.addItem(f"{f['name']} ({f['code']})", f["code"])
        except Exception:
            pass

    def _on_recipe_row(self):
        self.btn_del_recipe.setEnabled(self.recipe_table.currentRow() >= 0)

    def _add_raw(self):
        from HMS_py.core import consumption_master as cm
        code = self.cmb_outlet.currentData()
        try:
            raws = cm.list_raw_items(code or "")
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e)); return
        if not raws:
            QMessageBox.information(self, "Input",
                                    "Is outlet ke liye koi raw (Store/Gravy) "
                                    "items nahi mile"); return
        names = [f"{r['name']} ({r['code']})" for r in raws]
        from PyQt6.QtWidgets import QInputDialog
        choice, ok = QInputDialog.getItem(
            self, "Add Raw Item", "Raw item:", names, 0, False)
        if not ok:
            return
        idx = names.index(choice)
        raw = raws[idx]
        qty, ok = QInputDialog.getDouble(
            self, "Add Raw Item", "Quantity:", 1.0, 0.01, 1e9, 4)
        if not ok:
            return
        row = self.raw_table.rowCount()
        self.raw_table.insertRow(row)
        chk = QTableWidgetItem()
        chk.setFlags(chk.flags() | Qt.ItemFlag.ItemIsUserCheckable)
        chk.setCheckState(Qt.CheckState.Checked)
        self.raw_table.setItem(row, 0, chk)
        self.raw_table.setItem(row, 1, QTableWidgetItem(raw["code"]))
        self.raw_table.setItem(row, 2, QTableWidgetItem(raw["name"]))
        self.raw_table.setItem(row, 3, QTableWidgetItem(f"{qty:.4f}"))
        self.raw_table.setItem(row, 4, QTableWidgetItem("0.0000"))

    def _rm_raw(self):
        row = self.raw_table.currentRow()
        if row >= 0:
            self.raw_table.removeRow(row)

    def _save_recipe(self):
        from HMS_py.core import consumption_master as cm
        fin = self.cmb_fin.currentData()
        outlet = self.cmb_outlet.currentData()
        try:
            fin_qty = float(self.txt_finqty.text() or "1")
        except ValueError:
            QMessageBox.warning(self, "Input", "FinQty numeric hona chahiye")
            return
        raw_rows = []
        for row in range(self.raw_table.rowCount()):
            chk = self.raw_table.item(row, 0)
            if not chk or chk.checkState() != Qt.CheckState.Checked:
                continue
            try:
                qty = float(self.raw_table.item(row, 3).text())
                waste = float(self.raw_table.item(row, 4).text() or "0")
            except (ValueError, AttributeError):
                QMessageBox.warning(self, "Input",
                                    f"Row {row + 1}: qty/waste numeric hona "
                                    "chahiye")
                return
            raw_rows.append({"raw_item": self.raw_table.item(row, 1).text(),
                             "raw_qty": qty, "waste": waste})
        app_date = self.dt_app.date().toPyDate()
        reply = QMessageBox.question(
            self, "Confirm",
            f"Recipe save karein?\n{fin} @ {outlet} ({app_date})\n"
            "Purani recipe (same key) replace hogi.")
        if reply != QMessageBox.StandardButton.Yes:
            return
        try:
            res = cm.save_recipe(fin, outlet, fin_qty, app_date, raw_rows,
                                 user=self._user)
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e)); return
        QMessageBox.information(
            self, "Done",
            f"{res['rows_saved']} raw row(s) saved.\n"
            f"Cost per finished unit: {res['cost_per_unit']:,.4f}\n"
            "(ItemMast.PurchRate/LPurRate updated)")
        self.raw_table.setRowCount(0)
        self._reload()

    def _delete_recipe(self):
        from HMS_py.core import consumption_master as cm
        row = self.recipe_table.currentRow()
        if not (0 <= row < len(self._recipes)):
            return
        r = self._recipes[row]
        reply = QMessageBox.question(
            self, "Confirm",
            f"Recipe {r['fin_name']} @ {r['outlet']} "
            f"({r['app_date']}) delete karein?")
        if reply != QMessageBox.StandardButton.Yes:
            return
        import datetime as _dt
        y, m, d = (int(x) for x in r["app_date"].split("-")[:3])
        try:
            cm.delete_recipe(r["fin_item"], r["rest_code"],
                             _dt.date(y, m, d))
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e)); return
        self._reload()


def open_consumption_master(parent=None, user="SA"):
    w = ConsumptionMasterWindow(parent, user=user); w.show(); return w
