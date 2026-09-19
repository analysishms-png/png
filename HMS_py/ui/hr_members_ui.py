"""HR/Payroll + Members Management UI (VB6: Main Setup -> HR/Payroll + Members Mgmt).

HR/Payroll forms:
  - EmpCategory: Employee category CRUD (BaseMasterForm)
  - Holiday: Holiday calendar (date-PK, BaseMasterForm)
  - Employee: Full employee browser + edit (custom form - 66 cols)

Members Mgmt forms:
  - MemCatMast: Member category CRUD (BaseMasterForm)
  - FacilityMast: Club facility CRUD (BaseMasterForm)

Run: python -m HMS_py.ui.hr_members_ui
"""
from __future__ import annotations
import datetime, os, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QFont, QShortcut, QKeySequence
from PyQt6.QtWidgets import (QApplication, QDialog, QFormLayout, QHBoxLayout,
                             QLabel, QLineEdit, QMainWindow, QMessageBox,
                             QPushButton, QTableWidget, QTableWidgetItem,
                             QVBoxLayout, QWidget)
from HMS_py.core.hr_masters import EmpCatAPI, HolidayAPI, EmployeeAPI
from HMS_py.core.members_masters import MemCatAPI, FacilityAPI
from HMS_py.ui.base_master import BaseMasterForm, Field, MasterConfig, make_delete_guard


# ══════════════════════════════════════════════════════════════
#  BaseMasterForm configs (simple tables)
# ══════════════════════════════════════════════════════════════

def empcat_config() -> MasterConfig:
    return MasterConfig(
        title="Employee Category Master - HMS_py",
        columns=[("Code","code"),("Name","name"),("Type","type")],
        fields=[
            Field("code","Category Code", max_len=6, required=True),
            Field("name","Category Name", max_len=30, required=True),
            Field("type","Type", max_len=10),
        ],
        api=EmpCatAPI,
        delete_guard=make_delete_guard("PYT"),
    )


def holiday_config() -> MasterConfig:
    return MasterConfig(
        title="Holiday Master - HMS_py",
        columns=[("Date","code"),("Remarks","name")],
        fields=[
            Field("code","Date (YYYY-MM-DD)", max_len=10, required=True),
            Field("name","Remarks / Holiday Name", max_len=100, required=True),
        ],
        api=HolidayAPI,
        delete_guard=None,
    )


def memcat_config() -> MasterConfig:
    return MasterConfig(
        title="Member Category Master - HMS_py",
        columns=[("Code","code"),("Name","name"),("Short","short"),
                 ("Subscription","subscription"),("Status","status")],
        fields=[
            Field("code","Category Code", max_len=6, required=True),
            Field("name","Category Name", max_len=30, required=True),
            Field("short","Short Name", max_len=6),
            Field("subscription","Subscription Amount", default="0"),
            Field("corporate","Corporate Amount", default="0"),
            Field("childage","Child Age Limit", default="0"),
            Field("fbilling","F-Billing Y/N", max_len=1, default="N"),
            Field("status","Status", max_len=10),
            Field("messac","Mess A/C Y/N", max_len=1, default="N"),
            Field("surcharge","Surcharge %", default="0"),
        ],
        api=MemCatAPI,
        delete_guard=make_delete_guard("PYT"),
    )


def facility_config() -> MasterConfig:
    return MasterConfig(
        title="Facility Master (Members) - HMS_py",
        columns=[("Code","code"),("Name","name"),("ChargeType","chargetype"),
                 ("Unit","chargeunit"),("Rate","unitrate"),("Active","active")],
        fields=[
            Field("code","Facility Code", max_len=6, required=True),
            Field("name","Facility Name", max_len=30, required=True),
            Field("short","Short Name", max_len=6),
            Field("chargetype","Charge Type", max_len=10),
            Field("chargeunit","Charge Unit", max_len=10),
            Field("accode","A/C Code", max_len=10),
            Field("taxstru","Tax Structure", max_len=6),
            Field("unitrate","Unit Rate", default="0"),
            Field("active","Active Y/N", max_len=1, default="Y"),
            Field("roundoff","Round Off", default="0"),
            Field("saccode","SAC Code", max_len=20),
        ],
        api=FacilityAPI,
        delete_guard=make_delete_guard("PYT"),
    )


# ══════════════════════════════════════════════════════════════
#  Employee Browser (custom - too many cols for plain BaseMaster)
# ══════════════════════════════════════════════════════════════

def _cell(val) -> QTableWidgetItem:
    if isinstance(val, (datetime.date, datetime.datetime)):
        val = f"{val:%d/%b/%Y}"
    it = QTableWidgetItem("" if val is None else str(val))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    it.setForeground(QColor("#111111"))
    return it


class EmployeeForm(QDialog):
    """Employee Master browser + New/Edit (core HR fields).
    VB6 pattern: TopCtrl Idle/Add/Edit states."""

    COLS = ["Code","Name","Sex","Designation","Category",
            "Department","Joining","Phone","PAN","Active"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Employee Master - HMS_py")
        self.resize(1050, 620)
        self.state = "Idle"
        self.edit_code = None
        root = QVBoxLayout(self)

        # grid
        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels(self.COLS)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.cellDoubleClicked.connect(lambda *_: self._edit())
        root.addWidget(self.tbl)

        # form fields
        form = QFormLayout()
        self.eds = {}
        for lbl, key, mx in [
            ("Emp Code *",      "code",        6),
            ("Name *",          "name",        50),
            ("Sex (M/F)",       "sex",         1),
            ("Designation",     "designation", 30),
            ("Category Code",   "category",    6),
            ("Department Code", "dept",        6),
            ("Joining (YYYY-MM-DD)", "joining", 10),
            ("Phone",           "phone",       20),
            ("PAN",             "pan",         15),
            ("Active Y/N",      "active",      1),
        ]:
            e = QLineEdit(); e.setMaxLength(mx)
            form.addRow(lbl, e); self.eds[key] = e
        self.eds["active"].setText("Y")
        root.addLayout(form)

        # buttons
        btns = QHBoxLayout()
        self.btnNew    = QPushButton("New")
        self.btnEdit   = QPushButton("Edit")
        self.btnSave   = QPushButton("Save")
        self.btnCancel = QPushButton("Cancel")
        self.btnExit   = QPushButton("Exit")
        self.lblState  = QLabel("State: Idle")
        for b in (self.btnNew, self.btnEdit, self.btnSave,
                  self.btnCancel, self.btnExit):
            btns.addWidget(b)
        btns.addWidget(self.lblState)
        root.addLayout(btns)

        self.btnNew.clicked.connect(self._new)
        self.btnEdit.clicked.connect(self._edit)
        self.btnSave.clicked.connect(self._save)
        self.btnCancel.clicked.connect(self._cancel)
        self.btnExit.clicked.connect(self.reject)
        QShortcut(QKeySequence("F5"), self, activated=self.reload)
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._new)
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save)

        self._set_state(False)
        self.reload()

    def reload(self):
        rows = EmployeeAPI.list_all()
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            for c, k in enumerate(["code","name","sex","designation",
                                    "category","dept","joining",
                                    "phone","pan","active"]):
                self.tbl.setItem(r, c, _cell(rec.get(k, "")))
        if rows: self.tbl.selectRow(0)

    def _set_state(self, enabled: bool):
        for e in self.eds.values(): e.setEnabled(enabled)
        self.btnNew.setEnabled(not enabled)
        self.btnEdit.setEnabled(not enabled)
        self.btnSave.setEnabled(enabled)
        self.btnCancel.setEnabled(enabled)
        self.state = ("Add" if enabled and not self.edit_code
                      else "Edit" if enabled else "Idle")
        self.lblState.setText(f"State: {self.state}")

    def _clear(self):
        for k, e in self.eds.items():
            e.setText("Y" if k == "active" else "")

    def _new(self):
        self.edit_code = None
        self._clear()
        self._set_state(True)
        self.eds["code"].setFocus()

    def _edit(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Edit", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        rec = EmployeeAPI.get(code)
        if not rec: return
        self.edit_code = code
        for k, e in self.eds.items():
            v = rec.get(k, "")
            e.setText(str(v) if v is not None else "")
        self.eds["code"].setEnabled(False)
        self._set_state(True)
        self.state = "Edit"
        self.lblState.setText("State: Edit")
        self.eds["code"].setEnabled(False)

    def _save(self):
        rec = {k: e.text().strip() for k, e in self.eds.items()}
        if not rec["code"]:
            QMessageBox.warning(self, "Save", "Code zaroori hai"); return
        if not rec["name"]:
            QMessageBox.warning(self, "Save", "Name zaroori hai"); return
        try:
            if self.state == "Add":
                if EmployeeAPI.exists(rec["code"]):
                    QMessageBox.warning(self, "Save",
                                        f"Code '{rec['code']}' pehle se hai")
                    return
                EmployeeAPI.insert(rec)
            else:
                EmployeeAPI.update(self.edit_code, rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e)); return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}"); return
        self.edit_code = None
        self._set_state(False)
        self.reload()

    def _cancel(self):
        self.edit_code = None
        self._clear()
        self._set_state(False)


# ══════════════════════════════════════════════════════════════
#  open helpers
# ══════════════════════════════════════════════════════════════

def _open(cfg_fn, parent=None):
    BaseMasterForm(cfg_fn(), parent).exec()

def open_empcat(parent=None):   _open(empcat_config, parent)
def open_holiday(parent=None):  _open(holiday_config, parent)
def open_employee(parent=None): EmployeeForm(parent).exec()
def open_memcat(parent=None):   _open(memcat_config, parent)
def open_facility(parent=None): _open(facility_config, parent)


# ══════════════════════════════════════════════════════════════
#  Standalone launcher
# ══════════════════════════════════════════════════════════════

class HRMembersLauncher(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("HMS_py - HR/Payroll + Members Masters")
        self.resize(360, 300)
        c = QWidget(); lay = QVBoxLayout(c)
        for lbl, fn in (
            ("Employee Category Master",  open_empcat),
            ("Holiday Master",            open_holiday),
            ("Employee Master",           open_employee),
            ("─── Members Mgmt ───",      None),
            ("Member Category Master",    open_memcat),
            ("Facility Master",           open_facility),
        ):
            if fn is None:
                lay.addWidget(QLabel(lbl))
            else:
                b = QPushButton(lbl); b.clicked.connect(fn); lay.addWidget(b)
        self.setCentralWidget(c)


def main() -> int:
    app = QApplication(sys.argv)
    w = HRMembersLauncher(); w.show()
    return app.exec()

if __name__ == "__main__":
    raise SystemExit(main())
