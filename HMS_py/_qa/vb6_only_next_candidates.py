"""Analysis: vb6_only_tables (64) -> next portable form candidates.

Ranking inputs: live row-count (data in use?), which VB6 form owns it
(ownership clarity), existing port coverage of that form, table purpose
class (log/replica/helper = NOT portable; real master/detail = portable).
Output: prioritized shortlist written to stdout.
Run: python _qa/vb6_only_next_candidates.py
"""
import os
import sys

PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
sys.path.insert(0, PROJECT)

from HMS_py.core import db

# (table, live_rows_from_report, owner_form, purpose_class, portability)
CANDIDATES = [
    # purpose_class: MASTER/DETAIL = portable; LOG/REPLICA/HELPER = no
    ("comp_plandet",     "CompMast.frm",          "DETAIL", "Comp Master (complimentary plan details)"),
    ("roomdiscount",     "CompMast.frm",          "DETAIL", "Comp Master (room discounts)"),
    ("comp_inclusive",   "CompMast.frm",          "DETAIL", "Comp Master (inclusives)"),
    ("guestproffor",     "GuestProfile.frm",      "DETAIL", "Guest Profile Foreigner (Form-C data: visa/passport)"),
    ("venuecapacity",    "FrmVenueMast.frm",      "DETAIL", "Venue Master capacity rows (Banquet)"),
    ("departpay",        "FdReSettlement.frm",    "HELPER", "Settlement: outlet-wise allowed paycodes (75 rows live)"),
    ("expsheet",         "FrmExpense.frm",        "DETAIL", "Expense sheet header (4 rows)"),
    ("user2",            "UserMast.frm",          "REPLICA", "UserMast mirror (84 rows)"),
    ("sale2log",         "RSSaleBill.frm",        "LOG",    "POS bill audit log"),
    ("suntranlog",       "RSSaleBill.frm",        "LOG",    "POS settlement audit log"),
    ("stocklog",         "RSSaleBill.frm",        "LOG",    "Stock audit log"),
    ("mcurstk",          "fdNDAcPostChrg.frm",    "HELPER", "NA month-close stock snapshot (15199)"),
    ("rawconsumption",   "HMS.bas",               "HELPER", "Raw consumption rollup (88094)"),
    ("usermodule/usermodule1", "MDIForm1.frm",    "HELPER", "Menu tree state"),
    ("einvoicebill1/2",  "HallBill.frm",          "DETAIL", "E-invoice bill staging"),
    ("memaddrwa",        "MembershipMast.frm",    "DETAIL", "Member address (WA)"),
    ("lastvou",          "FaTaxVoucher.frm",      "HELPER", "Last-voucher tracker"),
]

print("=== TIER 1: portable next (real masters/details with live data) ===")
for t, owner, cls, desc in CANDIDATES:
    if cls in ("MASTER", "DETAIL") and t in ("comp_plandet", "roomdiscount",
                                             "guestproffor", "venuecapacity"):
        print(f"  {t:22s} owner={owner:22s} {desc}")

print("=== TIER 2: portable but low value / low data ===")
for t, owner, cls, desc in CANDIDATES:
    if cls == "DETAIL" and t not in ("comp_plandet", "roomdiscount",
                                     "guestproffor", "venuecapacity"):
        print(f"  {t:22s} owner={owner:22s} {desc}")

print("=== TIER 3: NOT portable (logs/replicas/helpers — ports me already")
print("    covered via source tables ya sirf audit trails hain) ===")
for t, owner, cls, desc in CANDIDATES:
    if cls in ("LOG", "REPLICA", "HELPER"):
        print(f"  {t:26s} {cls:8s} {desc}")

print("\n=== registry status of owner-form captions ===")
import ui.shell as sh
reg = sh._form_registry()
def state(cap):
    v = reg.get(cap)
    if v is None:
        return "ABSENT"
    return "STUB" if "coming_soon" in getattr(v, "__qualname__", "") else "REAL"
for cap in ("Comp Master", "Complimentary", "Foreigner Detail", "Venue Capacity",
            "Venue Master", "Guest Profile", "Data Transfer", "POS Recycle",
            "Travel Agency Posting"):
    print(f"  {cap!r}: {state(cap)}")
