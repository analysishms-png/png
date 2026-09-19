#!/usr/bin/env python3
"""MODULE_FIX_PLANS 02_MAIN_SETUP/03_FINANCE: duplicate-code guards.

Adds `db.require_absent(table, pk_col, rec[key], label)` at the top of every
master insert() (VB6 CompMast.frm:3830 'A/c Code Already Exists').
Idempotent: skips files that already call require_absent in insert().
"""
import os
import re

CORE = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "HMS_py", "core")

# file -> (table, pk_col, rec_key, label)
DICT_MASTERS = {
    "city.py":         ("City", "CityCode", "code", "City Code"),
    "state.py":        ("State", "Code", "code", "State Code"),
    "country.py":      ("Country", "Code", "code", "Country Code"),
    "area.py":         ("AreaMast", "AreaCODE", "code", "Area Code"),
    "roomcategory.py": ("RoomCat", "CatCode", "code", "Room Category Code"),
    "roommaster.py":   ("RoomMast", "RoomNo", "roomno", "Room No"),
    "paymenttype.py":  ("PayTypeMast", "PayCode", "code", "Pay Code"),
    "taxmaster.py":    ("TaxMast", "TaxCode", "code", "Tax Code"),
    "marketsegment.py": ("MktSegMast", "MktCode", "code", "Market Segment Code"),
    "businesssource.py": ("BusSrcMast", "BusCode", "code", "Business Source Code"),
    "gueststatus.py":  ("GuestStatusMast", "StatusCode", "code", "Guest Status Code"),
    "forexmaster.py":  ("ForexMast", "CurrCode", "code", "Currency Code"),
    "sundry.py":       ("SundryMast", "Code", "code", "Sundry Code"),
    "narr.py":         ("NarrMast", "Code", "code", "Narration Code"),
    "depart.py":       ("Depart", "Code", "code", "Department Code"),
    "venue.py":        ("VenueMast", "Code", "code", "Venue Code"),
    "seasonmaster.py": ("SeasonMast", "SeasonCode", "code", "Season Code"),
    "packagemaster.py": ("PackMast", "PackCode", "code", "Package Code"),
    "companymaster.py": ("CompanyMast", "CompCode", "code", "Company Code"),
}

# arg-style: plans.py (code, name, total, ...)
ARG_MASTERS = {
    "plans.py": ("PlanMast", "Code", "Plan Code"),
}

report = []
for fname, (table, pkcol, key, label) in DICT_MASTERS.items():
    path = os.path.join(CORE, fname)
    src = open(path, encoding="utf-8").read()
    if "require_absent" in src.split("def update(")[0]:
        report.append((fname, "SKIP (already guarded)"))
        continue
    # insert the guard right after "def insert(...):\n" docstring/_validate line
    m = re.search(r"(def insert\(.*?\n(?:    \"\"\".*?\"\"\"\n)?)(    _validate\(rec\)\n)",
                  src, re.S)
    if not m:
        m = re.search(r"(def insert\(.*?\n)(    _validate\(rec\)\n)", src, re.S)
    if not m:
        report.append((fname, "PATTERN NOT FOUND"))
        continue
    guard = (f"    db.require_absent(\"{table}\", \"{pkcol}\", rec[\"{key}\"],\n"
             f"              \"{label}\")\n")
    new = src[:m.end(2)] + guard + src[m.end(2):]
    open(path, "w", encoding="utf-8", newline="").write(new)
    report.append((fname, f"GUARD {table}.{pkcol}"))

for fname, (table, pkcol, label) in ARG_MASTERS.items():
    path = os.path.join(CORE, fname)
    src = open(path, encoding="utf-8").read()
    if "require_absent" in src.split("def update(")[0]:
        report.append((fname, "SKIP (already guarded)"))
        continue
    m = re.search(r"(def insert\(.*?\n(?:    \"\"\".*?\"\"\"\n)?)(    _validate\()",
                  src, re.S)
    if not m:
        report.append((fname, "PATTERN NOT FOUND"))
        continue
    guard = (f"    db.require_absent(\"{table}\", \"{pkcol}\", code,\n"
             f"              \"{label}\")\n")
    new = src[:m.end(1)] + guard + src[m.end(1):]
    open(path, "w", encoding="utf-8", newline="").write(new)
    report.append((fname, f"GUARD {table}.{pkcol}"))

for fname, status in report:
    print(f"{fname:20s} {status}")
