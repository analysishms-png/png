"""Member Master UI (VB6: Main Setup -> Members Mgmt -> Member Master).

VB6 MembershipMast.frm bahut bada form hai (member + family + addresses +
photo/signature). Yahan pehla port: SubGroup-backed member CRUD jo VB6 ke
search/save filter ko hi follow karta hai.

VB6 evidence (MembershipMast.frm loc_136CCD6 / loc_F27E36):
    Select ... From SubGroup Where CompanyType in
      (SELECT Code FROM MemCatMast WHERE Corporate='N')
i.e. members SubGroup me hi rehte hain (alag table nahi) aur CompanyType
se category milti hai.

Modes:
  - Member Master        -> Corporate='N' category codes (live: KK0002, 37 rows)
  - Corporate Member     -> CompanyType='Corporate' (live: 1089 rows)

Run: python -m HMS_py.ui.member_master_ui
"""
from __future__ import annotations
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtWidgets import QApplication, QMainWindow, QMessageBox

from HMS_py.core import fa_masters_ops as fmo
from HMS_py.core import menu as menu_core
from HMS_py.ui.base_master import BaseMasterForm, Field, MasterConfig


class _MemberAPI:
    """BaseMasterForm API over fa_masters_ops member CRUD (mode-aware)."""

    def __init__(self, corporate: bool = False):
        self.corporate = bool(corporate)

    def list_all(self, cn=None, limit: int = 5000):
        return fmo.member_list(corporate=self.corporate, cn=cn, limit=limit)

    def get(self, code, cn=None):
        return fmo.member_get(code, cn=cn)

    def exists(self, code, cn=None):
        return fmo.member_get(code, cn=cn) is not None

    def insert(self, rec, cn=None, commit=True):
        return fmo.member_insert(rec, corporate=self.corporate, cn=cn,
                                 commit=commit)

    def update(self, code, rec, cn=None, commit=True):
        return fmo.member_update(code, rec, corporate=self.corporate, cn=cn,
                                 commit=commit)

    def delete(self, code, cn=None, commit=True):
        # fa_masters_ops.subgroup_delete ledger-postings guard lagata hai
        return fmo.member_delete(code, cn=cn, commit=commit)


def member_master_config(corporate: bool = False) -> MasterConfig:
    title = ("Corporate Member Master" if corporate
             else "Member Master")
    return MasterConfig(
        title=f"{title} - HMS_py",
        columns=[("Code", "code"), ("Name", "name"), ("Under", "under"),
                 ("Category", "companytype"), ("Mobile", "mobile"),
                 ("Active", "active")],
        fields=[
            Field("code", "Member Code", max_len=10),
            Field("name", "Member Name", max_len=50, required=True),
            Field("group_code", "A/c Group Code", max_len=6, required=True),
            Field("companytype", "Category Code", max_len=8,
                  default=("Corporate" if corporate else "")),
            Field("add1", "Address", max_len=60),
            Field("city_code", "City Code", max_len=6),
            Field("phone", "Phone", max_len=20),
            Field("mobile", "Mobile", max_len=20),
            Field("email", "E-Mail", max_len=60),
            Field("active", "Active 1/0", max_len=1, default="1"),
        ],
        api=_MemberAPI(corporate=corporate),
        # delete guard: fa_masters_ops ka ledger-postings guard hi protection
        delete_guard=None,
        sample_prefix="PYT",
    )


def _open(corporate: bool, parent=None, user: str = "SA"):
    cfg = member_master_config(corporate=corporate)
    form_name = cfg.title.split(" - ", 1)[0].strip()
    if not menu_core.menu_name_allowed(form_name, user):
        QMessageBox.warning(parent, "Access denied",
                            f"{form_name} ko aapke user rights mein nahi hai.")
        return
    BaseMasterForm(cfg, parent).exec()


def open_member_master(parent=None, corporate: bool = False,
                       user: str = "SA"):
    """VB6 MembershipMast -> member master CRUD (Member Billing nahi)."""
    _open(corporate=corporate, parent=parent, user=user)


def open_corporate_member_master(parent=None, user: str = "SA"):
    _open(corporate=True, parent=parent, user=user)


if __name__ == "__main__":
    app = QApplication.instance() or QApplication([])
    win = QMainWindow()
    open_member_master(win)
