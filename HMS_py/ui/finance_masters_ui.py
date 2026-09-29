"""Finance Masters UI - Ledger Accounts, Tax Master, Payment Type,
Market Segment, Business Source, Guest Status, Forex Master.

VB6 pattern: TopCtrl state-machine (BaseMasterForm engine use karo).
All MasterConfig-based except LedgerMast (extra search + group FK).

Run: python -m HMS_py.ui.finance_masters_ui
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import (QApplication, QMainWindow, QPushButton,
                             QVBoxLayout, QWidget)

from HMS_py.core import (ledger, taxmaster, paymenttype, marketsegment,
                         businesssource, gueststatus, forexmaster)
from HMS_py.ui.base_master import BaseMasterForm, Field, MasterConfig, \
    make_delete_guard


# ---- MasterConfig definitions ----

def taxmaster_config() -> MasterConfig:
    # VB6 FrmTaxMast: flat RevMast FieldType='T' (Name/Short/Ledger/...).
    # P0 fix: pehle LIMITS["taxtype"] KeyError se app crash hota tha.
    return MasterConfig(
        title="Tax Master - HMS_py",
        columns=[("TaxCode", "code"), ("TaxName", "name"),
                 ("Short", "short"), ("Ledger", "accode"),
                 ("Nature", "nature"), ("Active", "active")],
        fields=[
            Field("code", "Tax Code", max_len=taxmaster.LIMITS["code"],
                  required=True),
            Field("name", "Tax Name", max_len=taxmaster.LIMITS["name"],
                  required=True),
            Field("short", "Short Name",
                  max_len=taxmaster.LIMITS["short"]),
            Field("accode", "Ledger A/C (FK->SubGroup)",
                  max_len=taxmaster.LIMITS["accode"]),
            Field("payableac", "Payable A/C",
                  max_len=taxmaster.LIMITS["payableac"]),
            Field("unregisteredac", "Unregistered A/C",
                  max_len=taxmaster.LIMITS["unregisteredac"]),
            Field("sundry", "Sundry Code",
                  max_len=taxmaster.LIMITS["sundry"]),
            Field("nature", "Nature",
                  max_len=taxmaster.LIMITS["nature"]),
            Field("roundoff", "Round Off (Yes/No)",
                  max_len=taxmaster.LIMITS["roundoff"], default="No"),
            Field("active", "Active Y/N", max_len=1, default="Y"),
        ],
        api=taxmaster,
        delete_guard=make_delete_guard("PYT"),
    )


def paymenttype_config() -> MasterConfig:
    return MasterConfig(
        title="Payment Type Master - HMS_py",
        columns=[("Code", "code"), ("Name", "name"),
                 ("Category", "category"), ("Default", "isdefault"),
                 ("Active", "active")],
        fields=[
            Field("code", "Pay Code", max_len=paymenttype.LIMITS.get("code", 6),
                  required=True),
            Field("name", "Pay Name", max_len=paymenttype.LIMITS.get("name", 50),
                  required=True),
            Field("paytype", "Pay Type",
                  max_len=paymenttype.LIMITS.get("paytype", 15)),
            Field("category", "Category (CASH/CARD/CHEQUE/ONLINE/CREDIT)",
                  max_len=15),
            Field("isdefault", "Is Default (Y/N)", max_len=1, default="N"),
            Field("active", "Active Y/N", max_len=1, default="Y"),
        ],
        api=paymenttype,
        delete_guard=make_delete_guard("PYT"),
    )


def marketsegment_config() -> MasterConfig:
    return MasterConfig(
        title="Market Segment Master - HMS_py",
        columns=[("Code", "code"), ("Name", "name"), ("Active", "active")],
        fields=[
            Field("code", "Mkt Code",
                  max_len=marketsegment.LIMITS.get("code", 5), required=True),
            Field("name", "Mkt Name",
                  max_len=marketsegment.LIMITS.get("name", 20), required=True),
            Field("active", "Active Y/N", max_len=1, default="Y"),
        ],
        api=marketsegment,
        delete_guard=make_delete_guard("PYT"),
    )


def businesssource_config() -> MasterConfig:
    return MasterConfig(
        title="Business Source Master - HMS_py",
        columns=[("Code", "code"), ("Name", "name"), ("Active", "active")],
        fields=[
            Field("code", "Bus Code",
                  max_len=businesssource.LIMITS.get("code", 5), required=True),
            Field("name", "Bus Name",
                  max_len=businesssource.LIMITS.get("name", 20), required=True),
            Field("active", "Active Y/N", max_len=1, default="Y"),
        ],
        api=businesssource,
        delete_guard=make_delete_guard("PYT"),
    )


def gueststatus_config() -> MasterConfig:
    return MasterConfig(
        title="Guest Status Master - HMS_py",
        columns=[("Code", "code"), ("Name", "name"), ("Active", "active")],
        fields=[
            Field("code", "Status Code",
                  max_len=gueststatus.LIMITS.get("code", 6), required=True),
            Field("name", "Status Name",
                  max_len=gueststatus.LIMITS.get("name", 30), required=True),
            Field("active", "Active Y/N", max_len=1, default="Y"),
        ],
        api=gueststatus,
        delete_guard=make_delete_guard("PYT"),
    )


def forexmaster_config() -> MasterConfig:
    return MasterConfig(
        title="Forex Master (Currency) - HMS_py",
        columns=[("Code", "code"), ("Name", "name"),
                 ("Buy Rate", "buyrate"), ("Sell Rate", "sellrate"),
                 ("Equiv Unit", "equivunit"), ("Active", "active")],
        fields=[
            Field("code", "Curr Code",
                  max_len=forexmaster.LIMITS.get("code", 6), required=True),
            Field("name", "Currency Name",
                  max_len=forexmaster.LIMITS.get("name", 30), required=True),
            Field("buyrate", "Buy Rate", default="0"),
            Field("sellrate", "Sell Rate", default="0"),
            Field("equivunit", "Equiv Unit (1 USD = ?)", default="1"),
            Field("active", "Active Y/N", max_len=1, default="Y"),
        ],
        api=forexmaster,
        delete_guard=make_delete_guard("PYT"),
    )


def ledger_config() -> MasterConfig:
    """Ledger Accounts - extended fields for Finance."""
    return MasterConfig(
        title="Ledger Accounts - HMS_py",
        columns=[("LedCode", "code"), ("LedName", "name"),
                 ("Group", "group"), ("Nature", "nature"),
                 ("OpenBal", "openbal"), ("Active", "active")],
        fields=[
            Field("code", "Led Code",
                  max_len=ledger.LIMITS.get("code", 8), required=True),
            Field("name", "Led Name",
                  max_len=ledger.LIMITS.get("name", 75), required=True),
            Field("group", "Group Code (FK->ACGROUP)",
                  max_len=ledger.LIMITS.get("group", 6)),
            Field("nature", "Nature (D/C)", max_len=1),
            Field("openbal", "Opening Balance", default="0"),
            Field("openbaltype", "Bal Type (Dr/Cr)",
                  max_len=2, default="Dr"),
            Field("phone", "Phone", max_len=ledger.LIMITS.get("phone", 35)),
            Field("mobile", "Mobile", max_len=ledger.LIMITS.get("mobile", 24)),
            Field("email", "Email", max_len=ledger.LIMITS.get("email", 50)),
            Field("add1", "Address 1", max_len=ledger.LIMITS.get("add1", 50)),
            Field("add2", "Address 2", max_len=ledger.LIMITS.get("add2", 50)),
            Field("city", "City", max_len=ledger.LIMITS.get("city", 6)),
            Field("pan", "PAN", max_len=ledger.LIMITS.get("pan", 20)),
            Field("gstin", "GSTIN", max_len=ledger.LIMITS.get("gstin", 30)),
            Field("active", "Active Y/N", max_len=1, default="Y"),
        ],
        api=ledger,
        delete_guard=_ledger_delete_guard,
    )


def _ledger_delete_guard(code: str) -> str | None:
    """System ledgers protected; only PYT* test ledgers deletable."""
    if code.upper().startswith("PYT"):
        return None
    return ("Safety: sirf PYT* test-ledgers delete ho sakte hain.\n"
            "System/production ledgers protected hain.")


# ---- open_* helpers ----
def _open(cfg_fn, parent=None):
    BaseMasterForm(cfg_fn(), parent).exec()


def open_taxmaster(parent=None):
    _open(taxmaster_config, parent)


def open_paymenttype(parent=None):
    _open(paymenttype_config, parent)


def open_marketsegment(parent=None):
    _open(marketsegment_config, parent)


def open_businesssource(parent=None):
    _open(businesssource_config, parent)


def open_gueststatus(parent=None):
    _open(gueststatus_config, parent)


def open_forexmaster(parent=None):
    _open(forexmaster_config, parent)


def open_ledger(parent=None):
    _open(ledger_config, parent)


# ---- Plan Defination Master (VB6 FrmPlanPackMast) ----
def open_plan_definition(parent=None, user="SA"):
    """VB6 FrmPlanPackMast (Standard-mode Plan definition):
    header (name/total/percent/roomper) + Plan1 charge-lines grid with
    FixedCharge picker + VB6 code-gen. Child CRUD packagemaster.py se
    (delete-then-reinsert, already tested)."""
    from PyQt6.QtWidgets import (QCheckBox, QComboBox, QDialog,
                                 QDoubleSpinBox, QFormLayout, QHBoxLayout,
                                 QHeaderView, QLabel, QLineEdit, QMessageBox,
                                 QPushButton, QTableWidget, QTableWidgetItem,
                                 QVBoxLayout)
    from HMS_py.core import packagemaster, plan_definition as pd

    dlg = QDialog(parent)
    dlg.setWindowTitle("Plan Defination Master - HMS_py")
    dlg.resize(760, 560)
    lay = QVBoxLayout(dlg)

    sel = QHBoxLayout()
    sel.addWidget(QLabel("Plan:"))
    cmb_plan = QComboBox()
    try:
        for p in packagemaster.list_all(plan_package="Plan"):
            cmb_plan.addItem(f"{p['name']} ({p['code']})", p["code"])
    except Exception as e:
        QMessageBox.critical(dlg, "Error", str(e))
    btn_load = QPushButton("Load")
    btn_new = QPushButton("New Plan")
    sel.addWidget(cmb_plan, 1); sel.addWidget(btn_load); sel.addWidget(btn_new)
    lay.addLayout(sel)

    form = QFormLayout()
    txt_code = QLineEdit(); txt_code.setReadOnly(True)
    txt_name = QLineEdit(); txt_name.setMaxLength(25)
    spn_total = QDoubleSpinBox(); spn_total.setRange(0, 1e9); spn_total.setDecimals(2)
    chk_pct = QCheckBox("Percent App (RoomPer % of room rate)")
    spn_roomper = QDoubleSpinBox(); spn_roomper.setRange(0, 100); spn_roomper.setDecimals(2)
    form.addRow("Code:", txt_code)
    form.addRow("Name*:", txt_name)
    form.addRow("Total:", spn_total)
    form.addRow(chk_pct)
    form.addRow("Room Per (%):", spn_roomper)
    lay.addLayout(form)

    lay.addWidget(QLabel("Plan1 charge lines (ChrgCode FixedCharge se "
                         "aata hai — RevCode/amounts editable):"))
    tbl = QTableWidget(0, 6, dlg)
    tbl.setHorizontalHeaderLabels(
        ["ChrgCode", "RevCode", "FlatRate", "Adult", "Child", "NoOfDays"])
    tbl.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
    lay.addWidget(tbl, 1)

    brow = QHBoxLayout()
    brow.addWidget(QLabel("FixedCharge:"))
    cmb_fc = QComboBox()
    try:
        for fc in pd.list_fixed_charges():
            cmb_fc.addItem(f"{fc['name']} ({fc['code']})", fc["code"])
    except Exception:
        pass
    btn_addline = QPushButton("+ Add Line")
    btn_rmline = QPushButton("- Remove")
    brow.addWidget(cmb_fc, 1); brow.addWidget(btn_addline); brow.addWidget(btn_rmline)
    lay.addLayout(brow)

    btns = QHBoxLayout()
    btn_save = QPushButton("Save (replace)")
    btn_save.setProperty("role", "warning")
    btn_del = QPushButton("Delete Plan")
    btn_del.setProperty("role", "danger")
    btn_close = QPushButton("Close")
    btns.addWidget(btn_save); btns.addWidget(btn_del)
    btns.addStretch(); btns.addWidget(btn_close)
    lay.addLayout(btns)

    def _new_code():
        try:
            txt_code.setText(pd.next_plan_code())
        except Exception as e:
            QMessageBox.critical(dlg, "Error", str(e))

    def _load():
        code = cmb_plan.currentData()
        if not code:
            return
        rec = packagemaster.get(code, plan_package="Plan")
        if not rec:
            return
        txt_code.setText(rec["code"])
        txt_name.setText(rec["name"])
        spn_total.setValue(float(rec.get("total") or 0))
        pct = str(rec.get("percent_app") or "").strip().lower() == "yes"
        chk_pct.setChecked(pct)
        spn_roomper.setValue(float(rec.get("room_per") or 0))
        tbl.setRowCount(0)
        for r in pd.get_plan_display(code):
            row = tbl.rowCount(); tbl.insertRow(row)
            for col, val in enumerate([r["chrgcode"], r["revcode"],
                                       f"{r['flatrate']:g}", r["adult"],
                                       r["child"], r["nodays"]]):
                tbl.setItem(row, col, QTableWidgetItem(str(val)))

    def _new():
        txt_code.clear(); txt_name.clear()
        spn_total.setValue(0); chk_pct.setChecked(False)
        spn_roomper.setValue(0); tbl.setRowCount(0)
        _new_code()

    def _addline():
        code = cmb_fc.currentData()
        if not code:
            return
        row = tbl.rowCount(); tbl.insertRow(row)
        tbl.setItem(row, 0, QTableWidgetItem(code))
        for col in range(1, 6):
            tbl.setItem(row, col, QTableWidgetItem(""))

    def _rmline():
        row = tbl.currentRow()
        if row >= 0:
            tbl.removeRow(row)

    def _cellv(r, c):
        it = tbl.item(r, c)
        return it.text().strip() if it else ""

    def _save():
        code = txt_code.text().strip()
        name = txt_name.text().strip()
        if not code or not name:
            QMessageBox.warning(dlg, "Input",
                                "Code aur Name zaroori hain (New Plan dabao ya Load)")
            return
        try:
            pd.validate_percent_app(chk_pct.isChecked(), spn_roomper.value())
            rows = []
            for r in range(tbl.rowCount()):
                if not _cellv(r, 0):
                    continue
                rows.append({
                    "ChrgCode": _cellv(r, 0),
                    "RevCode": _cellv(r, 1),
                    "FlatRate": float(_cellv(r, 2) or 0),
                    "Adult": int(float(_cellv(r, 3) or 0)),
                    "Child": int(float(_cellv(r, 4) or 0)),
                    "NoOfDays": int(float(_cellv(r, 5) or 0)),
                    "TaxInc": "Yes", "TaxStru": "", "PrintOption": "",
                    "PostingMethod": "", "ChargeType": "",
                    "ExtraAdult": 0, "ExtraChild": 0,
                    "PlanPer": 0, "PerDayAmount": 0, "NetAmount": 0,
                    "FixRate": ""})
        except (ValueError, TypeError) as e:
            QMessageBox.warning(dlg, "Input", str(e)); return
        rec = {"code": code, "name": name,
               "total": spn_total.value(),
               "percent_app": "Yes" if chk_pct.isChecked() else "No",
               "room_per": spn_roomper.value(),
               "active": "Y"}
        existing = packagemaster.exists(code, plan_package="Plan")
        if QMessageBox.question(
                dlg, "Confirm",
                f"Plan {code} {'update' if existing else 'create'} karein?\n"
                f"({len(rows)} Plan1 lines, purani replace hongi)") \
                != QMessageBox.StandardButton.Yes:
            return
        try:
            packagemaster.save_with_children(
                rec, plan_rows=rows, token_rows=None,
                mode="update" if existing else "insert", kind="Plan")
        except Exception as e:
            QMessageBox.critical(dlg, "Error", str(e)); return
        QMessageBox.information(dlg, "Done", f"Plan {code} save ho gaya.")
        # reload combo + select
        cmb_plan.blockSignals(True); cmb_plan.clear()
        for p in packagemaster.list_all(plan_package="Plan"):
            cmb_plan.addItem(f"{p['name']} ({p['code']})", p["code"])
        idx = next((i for i in range(cmb_plan.count())
                    if cmb_plan.itemData(i) == code), -1)
        if idx >= 0:
            cmb_plan.setCurrentIndex(idx)
        cmb_plan.blockSignals(False)
        _load()

    def _delete():
        code = txt_code.text().strip()
        if not code:
            return
        if QMessageBox.question(
                dlg, "Confirm", f"Plan {code} + Plan1 lines delete karein?") \
                != QMessageBox.StandardButton.Yes:
            return
        try:
            packagemaster.delete(code)
        except Exception as e:
            QMessageBox.critical(dlg, "Error", str(e)); return
        QMessageBox.information(dlg, "Done", "Plan delete ho gaya.")
        cmb_plan.blockSignals(True); cmb_plan.clear()
        for p in packagemaster.list_all(plan_package="Plan"):
            cmb_plan.addItem(f"{p['name']} ({p['code']})", p["code"])
        cmb_plan.blockSignals(False)
        txt_code.clear(); txt_name.clear(); tbl.setRowCount(0)

    btn_load.clicked.connect(_load)
    btn_new.clicked.connect(_new)
    btn_addline.clicked.connect(_addline)
    btn_rmline.clicked.connect(_rmline)
    btn_save.clicked.connect(_save)
    btn_del.clicked.connect(_delete)
    btn_close.clicked.connect(dlg.reject)
    if cmb_plan.count():
        _load()
    dlg.exec()


# ---- Outlet Paycodes (VB6 FrmPayTypeMast DepartPay grid) ----
def open_outlet_paycodes(parent=None, user="SA"):
    """Per-paycode outlet-allowed grid (VB6 FrmPayTypeMast):
    paycode chuno -> departments checkbox grid -> save (delete+reinsert).
    Re-settlement/charge-posting combos is data se filter hote hain."""
    from PyQt6.QtWidgets import (QComboBox, QDialog, QHBoxLayout,
                                 QHeaderView, QLabel, QMessageBox,
                                 QTableWidget, QTableWidgetItem,
                                 QVBoxLayout)
    from HMS_py.core import depart_pay as dp

    dlg = QDialog(parent)
    dlg.setWindowTitle("Outlet Paycodes (DepartPay) - HMS_py")
    dlg.resize(620, 520)
    lay = QVBoxLayout(dlg)
    lay.addWidget(QLabel("Paycode ki outlet allow-list (VB6 "
                         "FrmPayTypeMast DepartPay grid). BANQ row "
                         "VB6 ki tarah auto rahegi."))
    top = QHBoxLayout()
    top.addWidget(QLabel("Pay Type (RevMast):"))
    cmb = QComboBox()
    try:
        for p in paymenttype.list_all():
            cmb.addItem(f"{p['name']} ({p['code']})", p["code"])
    except Exception as e:
        QMessageBox.critical(dlg, "Error", str(e))
    top.addWidget(cmb, 1)
    btn_load = QPushButton("Load")
    top.addWidget(btn_load)
    lay.addLayout(top)

    tbl = QTableWidget(0, 2, dlg)
    tbl.setHorizontalHeaderLabels(["Allowed", "Outlet / Department"])
    tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
    tbl.horizontalHeader().setSectionResizeMode(
        QHeaderView.ResizeMode.Stretch)
    lay.addWidget(tbl, 1)

    bottom = QHBoxLayout()
    btn_save = QPushButton("Save (replace)")
    btn_save.setProperty("role", "warning")
    btn_close = QPushButton("Close")
    bottom.addWidget(btn_save)
    bottom.addStretch()
    bottom.addWidget(btn_close)
    lay.addLayout(bottom)

    def _fill():
        code = cmb.currentData()
        if not code:
            return
        rows = dp.outlet_grid_for_paycode(code)
        tbl.setRowCount(len(rows))
        for i, r in enumerate(rows):
            it_chk = QTableWidgetItem("Y" if r["allowed"] else "-")
            it_chk.setData(Qt.ItemDataRole.UserRole, r["code"])
            tbl.setItem(i, 0, it_chk)
            tbl.setItem(i, 1, QTableWidgetItem(r["name"]))

    def _toggle():
        row = tbl.currentRow()
        if row < 0:
            return
        it = tbl.item(row, 0)
        it.setText("Y" if it.text() != "Y" else "-")

    def _save():
        code = cmb.currentData()
        if not code:
            return
        sel = [tbl.item(i, 0).data(Qt.ItemDataRole.UserRole)
               for i in range(tbl.rowCount())
               if tbl.item(i, 0).text() == "Y"]
        if QMessageBox.question(
                dlg, "Confirm",
                f"{code} ki outlet-list replace karein?\n"
                f"({len(sel)} outlets selected)") \
                != QMessageBox.StandardButton.Yes:
            return
        try:
            n = dp.set_for_paycode(code, sel, user=user)
        except Exception as e:
            QMessageBox.critical(dlg, "Error", str(e))
            return
        QMessageBox.information(
            dlg, "Done", f"{n} outlet rows save ho gayi (BANQ included).")
        _fill()

    btn_load.clicked.connect(_fill)
    tbl.doubleClicked.connect(_toggle)
    btn_save.clicked.connect(_save)
    btn_close.clicked.connect(dlg.reject)
    if cmb.count():
        _fill()
    dlg.exec()


# ---- standalone launcher ----
class FinanceMastersLauncher(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("HMS_py - Finance & FO Masters")
        self.resize(380, 400)
        central = QWidget()
        lay = QVBoxLayout(central)
        for label, fn in (
            ("Tax Master", open_taxmaster),
            ("Payment Type Master", open_paymenttype),
            ("Plan Defination Master", open_plan_definition),
            ("Outlet Paycodes (DepartPay)", open_outlet_paycodes),
            ("Market Segment Master", open_marketsegment),
            ("Business Source Master", open_businesssource),
            ("Guest Status Master", open_gueststatus),
            ("Forex Master (Currency)", open_forexmaster),
            ("Ledger Accounts", open_ledger),
        ):
            b = QPushButton(label)
            b.clicked.connect(fn)
            lay.addWidget(b)
        self.setCentralWidget(central)


def main() -> int:
    app = QApplication(sys.argv)
    w = FinanceMastersLauncher()
    w.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
