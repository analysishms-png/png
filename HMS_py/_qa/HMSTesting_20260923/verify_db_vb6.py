"""Verify HMS_py vs live SQL Server DB + VB6 source (FODER)."""
from __future__ import annotations

import os
import re
import sys
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")

ROOT = Path(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
PKG = ROOT / "HMS_py"
FODER = ROOT / "FODER"

# --- 1. DB connection + schema dump ---
print("=" * 70)
print("1. LIVE SQL SERVER SCHEMA")
print("=" * 70)
from HMS_py.core import db  # noqa: E402

cfg = db.load_config()
print(f"server={cfg['server']} db={cfg['database']} company={cfg['company']} site={cfg['site']}")

conn = db.connect()
cur = conn.cursor()

db_tables: set[str] = set()
db_procs: set[str] = set()
db_views: set[str] = set()
try:
    cur.execute(
        "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'"
    )
    db_tables = {r[0] for r in cur.fetchall()}
except Exception as e:
    print("TABLES ERR:", e)
try:
    cur.execute(
        "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS"
    )
    db_views = {r[0] for r in cur.fetchall()}
except Exception as e:
    print("VIEWS ERR:", e)
try:
    cur.execute(
        "SELECT ROUTINE_NAME FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_TYPE='PROCEDURE'"
    )
    db_procs = {r[0] for r in cur.fetchall()}
except Exception as e:
    print("PROCS ERR:", e)

print(f"Tables={len(db_tables)} Views={len(db_views)} Procs={len(db_procs)}")

# FK / PK sanity sample
fk_count = 0
pk_missing = []
for t in sorted(db_tables):
    try:
        cur.execute(
            "SELECT COUNT(*) FROM sys.foreign_keys WHERE parent_object_id=OBJECT_ID(?)",
            (t,),
        )
        fk_count += int(cur.fetchone()[0])
        cur.execute(
            "SELECT COUNT(*) FROM sys.indexes i WHERE i.object_id=OBJECT_ID(?) "
            "AND i.is_primary_key=1",
            (t,),
        )
        if int(cur.fetchone()[0]) == 0:
            pk_missing.append(t)
    except Exception:
        pass
print(f"FK constraints={fk_count} tables_without_PK={len(pk_missing)}")
if pk_missing[:15]:
    print("  no-PK sample:", pk_missing[:15])

# --- 2. Tables referenced by Python code ---
print("\n" + "=" * 70)
print("2. PYTHON SQL vs DB TABLES")
print("=" * 70)

py_files = list((PKG / "core").glob("*.py")) + list((PKG / "ui").glob("*.py"))
# SQL patterns: FROM x, JOIN x, INTO x, UPDATE x, TABLE x
pat = re.compile(
    r"\b(?:FROM|JOIN|INTO|UPDATE|TABLE)\s+\[?([A-Za-z_][\w#]*)\]?",
    re.I,
)
# skip CTE-ish / keywords
skip = {
    "SELECT", "WHERE", "SET", "VALUES", "AND", "OR", "AS", "ON",
    "DUAL", "INFORMATION_SCHEMA", "SYS", "dbo",
}

py_tables: set[str] = set()
for f in py_files:
    try:
        text = f.read_text(encoding="utf-8", errors="ignore")
    except Exception:
        continue
    for m in pat.finditer(text):
        name = m.group(1)
        if name.upper() in skip:
            continue
        py_tables.add(name)

# map case-insensitively to DB
db_l = {t.lower(): t for t in db_tables}
py_in_db = set()
py_missing = set()
for t in py_tables:
    if t.lower() in db_l:
        py_in_db.add(db_l[t.lower()])
    else:
        py_missing.add(t)

print(f"Python referenced table-like names={len(py_tables)}")
print(f"  found in DB={len(py_in_db)}")
print(f"  NOT in DB={len(py_missing)}")
if py_missing:
    for t in sorted(py_missing):
        print(f"    MISSING_TABLE: {t}")

# DB tables never referenced by Python (possible dead/unported)
py_l = {t.lower() for t in py_in_db}
db_unused = sorted(t for t in db_tables if t.lower() not in py_l)
print(f"DB tables never referenced by Python SQL={len(db_unused)}")
for t in db_unused[:40]:
    print(f"    unused: {t}")
if len(db_unused) > 40:
    print(f"    ... +{len(db_unused)-40} more")

# --- 3. VB6 forms vs Python coverage ---
print("\n" + "=" * 70)
print("3. VB6 FORMS (.frm) vs PYTHON COVERAGE")
print("=" * 70)

vb6_forms = sorted(p.stem for p in FODER.glob("*.frm"))
print(f"VB6 forms in FODER={len(vb6_forms)}")

# Python UI content for fuzzy match
py_ui_text = ""
for f in (PKG / "ui").glob("*.py"):
    try:
        py_ui_text += f.read_text(encoding="utf-8", errors="ignore") + "\n"
    except Exception:
        pass
py_core_text = ""
for f in (PKG / "core").glob("*.py"):
    try:
        py_core_text += f.read_text(encoding="utf-8", errors="ignore") + "\n"
    except Exception:
        pass
all_py = (py_ui_text + py_core_text).lower()

# Alias known port names (VB6 form -> python concept keywords)
ALIASES = {
    "fdcheckin": ["checkin", "check_in", "guest profile"],
    "fdwalkinentry": ["walkin", "walk_in", "checkin"],
    "fdcheckout": ["checkout", "check_out"],
    "guestprofile": ["guestprof", "guest_profile"],
    "rrroomreservation": ["reservation", "booking"],
    "rsbookingentry": ["booking", "reservation"],
    "frmguestaddobj": ["guestprof", "guest"],
    "frmtaxmast": ["taxmaster", "tax_master"],
    "frmtaxstrumast": ["taxstru", "tax_stru"],
    "frmmarketseg": ["marketsegment"],
    "frmbusinesssrc": ["businesssource"],
    "frmgueststat": ["gueststatus"],
    "frmforeignexmast": ["forexmaster", "forex"],
    "frmpaytypemast": ["paymenttype", "pay_type"],
    "frmguestparammast": ["guestparam", "guest_param"],
    "frmfixedchargemast": ["fixcharge", "fixed_charge"],
    "frmchargemast": ["fixcharge", "charge"],
    "frmroommast": ["roommaster", "room_mast"],
    "frmroomcatmast": ["roomcategory", "room_cat"],
    "frmroomfeaturemast": ["roomfeature", "room_feature"],
    "frmplanpackmast": ["packagemaster", "planpack", "plan"],
    "frmseasonmast": ["seasonmaster", "season"],
    "frmmarketing": ["marketsegment"],
    "frmitemmast": ["item"],
    "frmitemcatmast": ["itemcat", "item_cat"],
    "frmitemgroupmast": ["itemgroup", "item_group"],
    "frmun itmast": ["unit"],
    "frmunitmast": ["unit"],
    "sund rmast": ["sundry"],
    "sundrymast": ["sundry"],
    "narrationmaster": ["narr"],
    "departmast": ["depart"],
    "outletmast": ["depart", "outlet"],
    "usermast": ["usermaster", "user_mast"],
    "userpermission": ["usermaster", "permission"],
    "compmast": ["companymaster", "comp"],
    "frmcompany": ["companymaster", "company"],
    "country": ["country"],
    "state": ["state"],
    "city": ["city"],
    "area": ["area"],
    "godown": ["inventory", "godown"],
    "pindent": ["purchase", "indent"],
    "pporder": ["purchase", "porder"],
    "pmrenty": ["inventory", "mr"],
    "hh housekeeping": ["roomstatus", "housekeeping", "hk"],
    "fdom housekeeping": ["roomstatus", "housekeeping"],
    "frmhousestatus": ["roomstatus", "housestatus"],
    "fdrevcheckout": ["checkout", "reverse"],
    "fdroomchange": ["checkout", "roomchange", "fo_ops"],
    "fdre setlement": ["folio", "settlement", "resettlement"],
    "fdresetlement": ["folio", "settlement"],
    "fdpostchrg": ["folio", "postchrg", "charge"],
    "fdpaymentcharge": ["folio", "payment", "charge"],
    "fddisplayfolio": ["folio", "displayfolio"],
    "fdroomocc": ["room_occ", "roomocc"],
    "prattend": ["hr_payroll", "attend"],
    "prcategorymast": ["hr_masters", "prcategory"],
    "prdesigmast": ["hr_masters", "designation"],
    "premployee": ["hr_masters", "employee"],
    "prholiday": ["hr_masters", "holiday"],
    "prloan": ["hr_payroll", "loan"],
    "provertime": ["hr_payroll", "overtime"],
    "prsalcreate": ["hr_payroll", "salary"],
    "memcatmast": ["members_masters", "memcat"],
    "memfaci itymast": ["members_masters", "facility"],
    "memfacilitymast": ["members_masters", "facility"],
    "membershi pmast": ["members_masters", "membership"],
    "membershipmast": ["members_masters", "membership"],
    "smartcardmast": ["smartcard"],
    "smartcardregistration": ["smartcard", "registration"],
    "rskotentry": ["kot_entry", "pos_kot", "kot"],
    "rssalebill": ["pos_sales", "salebill"],
    "rsposdisplay": ["pos_na", "pos_display"],
    "hallbooking": ["hall_booking", "banquet"],
    "hallbill": ["hall_booking", "banquet"],
    "fajoucher": ["fa_voucher", "voucher"],
    "favrrent": ["fa_voucher", "voucher"],
    "fasubgroup": ["acgroup", "subgroup"],
    "fagrent": ["acgroup", "group"],
    "fanarrmst": ["narr", "narration"],
    "fareports": ["fa_reports", "reports"],
    "farepview": ["fa_reports", "reports"],
    "facitymast": ["city"],
    "facountrymast": ["country"],
    "fastatemast": ["state"],
    "faenvron": ["enviro", "fa_enviro"],
    "fachqclear": ["fa_voucher", "cheque"],
    "faadjust": ["fa_ledger", "adjust"],
    "telcal code mast": ["epabx", "callcode"],
    "telcallcodemast": ["epabx", "callcode"],
    "telcalltypemast": ["epabx", "calltype"],
    "telextensionmast": ["epabx", "extension"],
    "smsmodule": ["sms", "sms_comm"],
    "frmre nightaudit": ["nightaudit"],
    "frmnight": ["nightaudit"],
    "frmexpense": ["expense", "expenseentry"],
    "frmfom billdeletion": ["pos_sales", "billdeletion"],
    "frmpo billdeletion": ["pos_sales", "billdeletion"],
    "frmtallyexport": ["tally", "tally_export"],
    "frmprintmodule": ["report", "print"],
    "mdiform1": ["shell", "main"],
    "frmwelcome": ["shell", "login", "main"],
    "frmpassword": ["auth", "login", "password"],
    "frmcontrolpanel": ["shell", "control"],
    "trave agencypost": ["fo_ops", "travel"],
    "travelagencypost": ["fo_ops", "travel"],
}

matched = []
unmatched = []
for name in vb6_forms:
    key = name.lower()
    # strip non-alnum for key match
    k = re.sub(r"[^a-z0-9]", "", key)
    hit = False
    # direct substring in python
    for tok in re.findall(r"[a-z]+", key):
        if len(tok) >= 5 and tok in all_py:
            hit = True
            break
    if not hit:
        for vb, kws in ALIASES.items():
            vk = re.sub(r"[^a-z0-9]", "", vb)
            if vk == k or vk in k or k in vk:
                if any(kw.lower() in all_py for kw in kws):
                    hit = True
                    break
    if hit:
        matched.append(name)
    else:
        unmatched.append(name)

print(f"VB6 forms with Python signal={len(matched)}")
print(f"VB6 forms NO Python signal={len(unmatched)}")
if unmatched:
    print("--- UNMATCHED (likely missing/port needed) ---")
    for n in unmatched:
        print(f"  MISSING_OR_NO_MATCH: {n}")

# --- 4. DB procs used by Python ---
print("\n" + "=" * 70)
print("4. STORED PROCEDURES")
print("=" * 70)
proc_pat = re.compile(r"\b(?:EXEC(?:UTE)?|sp_|usp_)\s+\[?([A-Za-z_][\w]*)\]?", re.I)
py_procs = set()
for f in py_files:
    try:
        text = f.read_text(encoding="utf-8", errors="ignore")
    except Exception:
        continue
    for m in proc_pat.finditer(text):
        name = m.group(1)
        if name.upper() in ("SQL", "N", "SELECT", "FROM"):
            continue
        py_procs.add(name)

proc_l = {p.lower(): p for p in db_procs}
py_exec_in_db = {p for p in py_procs if p.lower() in proc_l}
py_exec_missing = {p for p in py_procs if p.lower() not in proc_l and not p.startswith("sp_")}
print(f"DB procs={len(db_procs)}")
print(f"Python EXEC sp_* referenced={len(py_procs)}")
print(f"  in DB={len(py_exec_in_db)}")
print(f"  missing in DB={len(py_exec_missing)}")
for p in sorted(py_exec_missing):
    print(f"    MISSING_PROC: {p}")

# --- 5. Registry LIVE/SOON summary ---
print("\n" + "=" * 70)
print("5. MENU REGISTRY (db.User_Module leaves)")
print("=" * 70)
try:
    rows = db.query(
        "SELECT Module_Name, COUNT(*) FROM User_Module WHERE flag='0' "
        "GROUP BY Module_Name ORDER BY Module_Name"
    )
    for mod, n in rows:
        print(f"  {mod:30s} leaves={n}")
    total = db.query("SELECT COUNT(*) FROM User_Module WHERE flag='0'")
    roots = db.query("SELECT COUNT(*) FROM User_Module WHERE flag='9'")
    print(f"TOTAL leaves={total[0][0]} roots={roots[0][0]}")
except Exception as e:
    print("menu query err:", e)

print("\nDONE")
