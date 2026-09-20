"""POS Setup Masters UI (VB6: Main Setup -> Point of Sale).

VB6 pattern: BaseMasterForm configs for all POS setup tables that exist in DB.
Tables: SessionMast, SchemeMast, DeliveryBoy, ItemCatMast
Note: OutletMast/ServerMast/TableMast do not exist - Depart table is the outlet
(already wired as Department in p2_masters.py -> open_depart).

Run: python -m HMS_py.ui.pos_masters_ui
"""
from __future__ import annotations
import os, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

from PyQt6.QtWidgets import (QApplication, QMainWindow, QPushButton,
                             QVBoxLayout, QWidget, QMessageBox)
from HMS_py.core import menu as menu_core
from HMS_py.core.pos_masters import (SessionAPI, SchemeAPI, DelBoyAPI, ItemCatAPI,
                                       NCTypeAPI, WaiterAPI, ShiftAPI, ComboAPI)
from HMS_py.core.smartcard import SmartCardAPI
from HMS_py.ui.base_master import BaseMasterForm, Field, MasterConfig, make_delete_guard


# ── Session Master ────────────────────────────────────────────
def session_config() -> MasterConfig:
    return MasterConfig(
        title="Session Master (POS) - HMS_py",
        columns=[("Code","code"),("Name","name"),
                 ("From","fromtime"),("To","totime")],
        fields=[
            Field("code","Session Code", max_len=6, required=True),
            Field("name","Session Name", max_len=30, required=True),
            Field("fromtime","From Time (HH:MM)", max_len=10),
            Field("totime","To Time (HH:MM)", max_len=10),
        ],
        api=SessionAPI,
        delete_guard=make_delete_guard("PYT"),
    )


# ── Scheme Master ────────────────────────────────────────────
def scheme_config() -> MasterConfig:
    return MasterConfig(
        title="Scheme Master (POS Promotions) - HMS_py",
        columns=[("Code","code"),("Name","name"),
                 ("Start","startdate"),("End","enddate"),("Active","active")],
        fields=[
            Field("code","Scheme Code", max_len=6, required=True),
            Field("name","Scheme Name", max_len=30, required=True),
            Field("startdate","Start Date (YYYY-MM-DD)"),
            Field("enddate","End Date (YYYY-MM-DD)"),
            Field("fromtime","From Time", max_len=10),
            Field("totime","To Time", max_len=10),
            Field("days","Days (SMTWTFS)", max_len=7),
            Field("active","Active Y/N", max_len=1, default="Y"),
        ],
        api=SchemeAPI,
        delete_guard=make_delete_guard("PYT"),
    )


# ── Delivery Boy Master ───────────────────────────────────────
def delboy_config() -> MasterConfig:
    return MasterConfig(
        title="Delivery Boy Master (POS) - HMS_py",
        columns=[("Code","code"),("Name","name"),("Active","active")],
        fields=[
            Field("code","Code", max_len=6, required=True),
            Field("name","Name", max_len=30, required=True),
            Field("active","Active Y/N", max_len=1, default="Y"),
        ],
        api=DelBoyAPI,
        delete_guard=make_delete_guard("PYT"),
    )


# ── Item Category Master ──────────────────────────────────────
def itemcat_config() -> MasterConfig:
    return MasterConfig(
        title="Item Category Master (POS) - HMS_py",
        columns=[("Code","code"),("Name","name"),("CatType","cattype"),
                 ("Outlet","rest"),("TaxStru","taxstru"),("Status","status")],
        fields=[
            Field("code","Category Code", max_len=6, required=True),
            Field("name","Category Name", max_len=30, required=True),
            Field("cattype","Category Type", max_len=10),
            Field("rest","Outlet/RestCode (FK)", max_len=6),
            Field("taxstru","Tax Structure Code", max_len=6),
            Field("acname","A/C Name", max_len=10),
            Field("revcode","Revenue Code", max_len=6),
            Field("drcr","Dr/Cr", max_len=2, default="Dr"),
            Field("outletyn","Outlet Y/N", max_len=1, default="N"),
            Field("status","Status", max_len=10),
            Field("roundoff","Round Off", default="0"),
            Field("taxp","Tax %", default="0"),
        ],
        api=ItemCatAPI,
        delete_guard=make_delete_guard("PYT"),
    )


# ── NC Type Master ──────────────────────────────────────────────
def nctype_config() -> MasterConfig:
    return MasterConfig(
        title="NC Type Master (POS) - HMS_py",
        columns=[("NCType","code"),("NC%","ncper")],
        fields=[
            Field("code","NC Type Code", max_len=10, required=True),
            Field("ncper","NC Percentage", default="0"),
        ],
        api=NCTypeAPI,
        delete_guard=make_delete_guard("PYT"),
    )


# ── Waiter / Server Master ─────────────────────────────────────
def waiter_config() -> MasterConfig:
    return MasterConfig(
        title="Server / Waiter Master (POS) - HMS_py",
        columns=[("Code","code"),("Name","name"),("Active","active")],
        fields=[
            Field("code","Code", max_len=6, required=True),
            Field("name","Name", max_len=30, required=True),
            Field("active","Active Y/N", max_len=1, default="Y"),
        ],
        api=WaiterAPI,
        delete_guard=make_delete_guard("PYT"),
    )


# ── Shift Master ───────────────────────────────────────────────
def shift_config() -> MasterConfig:
    return MasterConfig(
        title="Shift Master (POS) - HMS_py",
        columns=[("Code","code"),("Name","name"),
                 ("From","fromtime"),("To","totime")],
        fields=[
            Field("code","Shift Code", max_len=6, required=True),
            Field("name","Shift Name", max_len=30, required=True),
            Field("fromtime","From Time (HH:MM)", max_len=10),
            Field("totime","To Time (HH:MM)", max_len=10),
        ],
        api=ShiftAPI,
        delete_guard=make_delete_guard("PYT"),
    )


# ── Combo Pack Master ──────────────────────────────────────────
def combo_config() -> MasterConfig:
    return MasterConfig(
        title="Combo Pack Master (POS) - HMS_py",
        columns=[("Code","code"),("Name","name"),("Rate","rate"),("Active","active")],
        fields=[
            Field("code","Combo Code", max_len=10, required=True),
            Field("name","Combo Name", max_len=50, required=True),
            Field("rate","Rate", default="0"),
            Field("active","Active Y/N", max_len=1, default="Y"),
        ],
        api=ComboAPI,
        delete_guard=make_delete_guard("PYT"),
    )


# ── open helpers ──────────────────────────────────────────────
def _open(cfg_fn, parent=None, user: str = "SA"):
    cfg = cfg_fn()
    form_name = cfg.title.split(" - ", 1)[0].strip()
    if not menu_core.menu_name_allowed(form_name, user):
        QMessageBox.warning(parent, "Access denied",
                            f"{form_name} ko aapke user rights mein nahi hai.")
        return
    BaseMasterForm(cfg, parent).exec()

def open_session(parent=None, user: str = "SA"):
    _open(session_config, parent, user)

def open_scheme(parent=None, user: str = "SA"):
    _open(scheme_config, parent, user)

def open_delboy(parent=None, user: str = "SA"):
    _open(delboy_config, parent, user)

def open_itemcat(parent=None, user: str = "SA"):
    _open(itemcat_config, parent, user)

def open_nctype(parent=None, user: str = "SA"):
    _open(nctype_config, parent, user)

def open_waiter(parent=None, user: str = "SA"):
    _open(waiter_config, parent, user)

def open_shift(parent=None, user: str = "SA"):
    _open(shift_config, parent, user)

def open_combo(parent=None, user: str = "SA"):
    _open(combo_config, parent, user)


# ── Smart Card Master ──────────────────────────────────────────
def smartcard_config() -> MasterConfig:
    return MasterConfig(
        title="Smart Card Master (POS) - HMS_py",
        columns=[("Code","code"),("Name","name"),("Active","active"),
                 ("Refundable","refundable")],
        fields=[
            Field("code","Card Code", max_len=6, required=True),
            Field("name","Card Name", max_len=30, required=True),
            Field("cardtype","Card Type", max_len=6),
            Field("shortname","Short Name", max_len=6),
            Field("fromdate","Valid From", max_len=10),
            Field("todate","Valid To", max_len=10),
            Field("accode","A/C Code", max_len=10),
            Field("taxstru","Tax Structure", max_len=6),
            Field("taxable","Taxable Y/N", max_len=1, default="N"),
            Field("active","Active Y/N", max_len=1, default="Y"),
            Field("refundable","Refundable Y/N", max_len=1, default="N"),
            Field("deposit","Deposit Required Y/N", max_len=1, default="N"),
            Field("depositamount","Deposit Amount", default="0"),
            Field("servicecharge","Service Charge Y/N", max_len=1, default="N"),
            Field("discount","Discount %", default="0"),
            Field("surcharge","Surcharge %", default="0"),
            Field("accountposting","A/C Posting Y/N", max_len=1, default="N"),
            Field("accountcode","Account Code", max_len=10),
            Field("acflag","A/C Flag Y/N", max_len=1, default="N"),
            Field("creditflag","Credit Flag Y/N", max_len=1, default="N"),
        ],
        api=SmartCardAPI,
        delete_guard=make_delete_guard("PYT"),
    )

def open_smartcard(parent=None, user: str = "SA"):
    _open(smartcard_config, parent, user)


# ── Standalone launcher ───────────────────────────────────────
class POSMastersLauncher(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("HMS_py - POS Setup Masters")
        self.resize(340, 220)
        c = QWidget(); lay = QVBoxLayout(c)
        for lbl, fn in (
            ("Session Master (POS)",      open_session),
            ("Scheme Master (Promotions)", open_scheme),
            ("Delivery Boy Master",        open_delboy),
            ("Item Category Master",       open_itemcat),
            ("NC Type Master",             open_nctype),
            ("Server / Waiter Master",     open_waiter),
            ("Shift Master",               open_shift),
            ("Combo Pack Master",          open_combo),
            ("Smart Card Master",          open_smartcard),
        ):
            b = QPushButton(lbl); b.clicked.connect(fn); lay.addWidget(b)
        self.setCentralWidget(c)


def main() -> int:
    app = QApplication(sys.argv)
    w = POSMastersLauncher(); w.show()
    return app.exec()

if __name__ == "__main__":
    raise SystemExit(main())
