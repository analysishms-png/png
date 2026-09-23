"""Clean DB vs Python vs VB6 coverage census (false-positive free table match)."""
from __future__ import annotations

import json
import re
import sys
from pathlib import Path

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")

ROOT = Path(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
PKG = ROOT / "HMS_py"
FODER = ROOT / "FODER"

from HMS_py.core import db  # noqa: E402

conn = db.connect()
cur = conn.cursor()
cur.execute("SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'")
db_tables = {r[0] for r in cur.fetchall()}
cur.execute("SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS")
db_views = {r[0] for r in cur.fetchall()}
cur.execute(
    "SELECT ROUTINE_NAME FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_TYPE='PROCEDURE'"
)
db_procs = {r[0] for r in cur.fetchall()}
db_l = {t.lower(): t for t in db_tables}
view_l = {t.lower(): t for t in db_views}
proc_l = {t.lower(): t for t in db_procs}

# Extract SQL table refs only after FROM/JOIN/INTO/UPDATE/TABLE
sql_pat = re.compile(
    r"\b(?:FROM|JOIN|INTO|UPDATE|TABLE)\s+\[?([A-Za-z_][\w#]*)\]?",
    re.I,
)
# Only keep tokens that look like table names: CamelCase/snake/UPPER, length>=3,
# not pure python keywords
python_kw = {
    "select", "where", "set", "values", "and", "or", "as", "on", "dual",
    "information_schema", "sys", "dbo", "self", "cls", "none", "true", "false",
    "dict", "list", "tuple", "int", "str", "float", "bool", "date", "datetime",
    "path", "pathlib", "os", "sys", "re", "json", "typing", "collections",
    "dataclasses", "class", "def", "return", "from", "import", "for", "in",
    "if", "not", "with", "try", "except", "raise", "lambda", "print", "len",
    "range", "open", "file", "line", "text", "name", "value", "key", "type",
    "code", "flag", "cols", "params", "params", "sql", "rows", "row", "cur",
    "conn", "cn", "commit", "rollback", "index", "error", "message", "user",
    "site", "company", "database", "server", "table", "tables", "view",
    "proc", "procedure", "schema", "column", "columns", "primary", "foreign",
    "key", "unique", "index", "default", "constraint", "references",
    "delete", "insert", "update", "merge", "exec", "execute", "sp_",
    "top", "distinct", "group", "order", "by", "having", "union", "all",
    "exists", "between", "like", "isnull", "is", "null", "case", "when",
    "then", "else", "end", "asc", "desc", "inner", "left", "right", "outer",
    "cross", "apply", "pivot", "unpivot", "over", "partition", "cast",
    "convert", "sum", "count", "avg", "min", "max", "getdate", "getutcdate",
    "db_name", "object_id", "syscolumns", "sysobjects", "sysindexes",
}

py_ref: set[str] = set()
for folder in [PKG / "core", PKG / "ui"]:
    for f in folder.glob("*.py"):
        t = f.read_text(encoding="utf-8", errors="ignore")
        # strip triple-quoted docs/comments roughly
        t = re.sub(r'"""[\s\S]*?"""', " ", t)
        t = re.sub(r"'''[\s\S]*?'''", " ", t)
        t = re.sub(r"#.*", " ", t)
        for m in sql_pat.finditer(t):
            name = m.group(1)
            if name.lower() in python_kw:
                continue
            # require mixed/upper alnum table style OR present in DB
            if name.lower() in db_l or name.lower() in view_l:
                py_ref.add(name.lower())
            elif re.search(r"[A-Z]", name) and re.match(r"^[A-Za-z_][\w]*$", name):
                # CamelCase likely table attempt even if missing
                if len(name) >= 4 and name.lower() not in {
                    "from", "join", "into", "table", "select", "where",
                }:
                    py_ref.add(name.lower())

found = sorted(t for t in py_ref if t in db_l)
missing = sorted(t for t in py_ref if t not in db_l and t not in view_l)
as_views = sorted(t for t in py_ref if t in view_l and t not in db_l)
unused = sorted(t for t in db_tables if t.lower() not in py_ref)

print("=" * 70)
print("A. LIVE DB")
print("=" * 70)
print(f"tables={len(db_tables)} views={len(db_views)} procedures={len(db_procs)}")
print("procs:", sorted(db_procs))
print("views:", sorted(db_views))

print("\n" + "=" * 70)
print("B. PYTHON SQL TABLE REFS (cleaned)")
print("=" * 70)
print(f"unique table refs={len(py_ref)}")
print(f"  IN DB tables={len(found)}")
print(f"  IN views only={len(as_views)} ({as_views})")
print(f"  MISSING (code me hai, DB me nahi)={len(missing)}")
for t in missing:
    print(f"    MISSING: {t}")
print(f"  DB tables never referenced by Python={len(unused)}")

# Row census for unused + missing candidates
print("\n--- live row counts for MISSING tables (if any later created) ---")
for t in missing:
    try:
        r = db.query(f"SELECT COUNT(*) FROM [{t}]")
        print(f"  {t} rows={r[0][0]}")
    except Exception as e:
        print(f"  {t} ERR {str(e)[:60]}")

print("\n--- unused DB tables with rows>0 (possible unported features) ---")
live_unused = []
dead_unused = []
for t in unused:
    try:
        cur.execute(f"SELECT COUNT(*) FROM [{t}]")
        n = int(cur.fetchone()[0])
        (live_unused if n else dead_unused).append((t, n))
    except Exception:
        dead_unused.append((t, -1))
live_unused.sort(key=lambda x: -x[1])
print(f"unused with rows>0: {len(live_unused)} / unused empty/error: {len(dead_unused)}")
for t, n in live_unused[:50]:
    print(f"  {n:6d}  {t}")

# FK/PK
print("\n" + "=" * 70)
print("C. SCHEMA HEALTH")
print("=" * 70)
cur.execute(
    "SELECT COUNT(*) FROM sys.foreign_keys WHERE parent_object_id IN "
    "(SELECT object_id FROM sys.tables)"
)
print("FK constraints:", cur.fetchone()[0])
no_pk = []
for t in sorted(db_tables):
    cur.execute(
        "SELECT COUNT(*) FROM sys.indexes WHERE object_id=OBJECT_ID(?) AND is_primary_key=1",
        (t,),
    )
    if int(cur.fetchone()[0]) == 0:
        no_pk.append(t)
print(f"tables without PK: {len(no_pk)}")

# Key feature tables census
print("\n" + "=" * 70)
print("D. FEATURE TABLE CENSUS (VB6 features vs live data)")
print("=" * 70)
features = [
    ("FO Check-in/out", ["GuestFolio", "RoomOcc", "GuestProf", "FOMBillDetails", "PayCharge"]),
    ("Reservation", ["Booking", "BookingCancelDetails", "BookDet", "ResRoom"]),
    ("POS", ["Sale1", "Sale2", "KOT", "Table", "Waiter"]),
    ("Inventory", ["Stock", "POrder", "Indent1", "Purch1", "GodownMast", "ItemMast"]),
    ("Banquet", ["HallBook", "HallSale1", "HallStock", "VenueMast", "CateringBooking", "EventMast"]),
    ("Finance", ["SubGroup", "FaVoucher", "Voucher1", "Ledger"]),
    ("HR/Payroll", ["Employee", "Salary", "Attendence", "Leave_Ench", "OverTime", "Loan"]),
    ("Members", ["MembershipMast", "MembershipRevMast", "MemBill", "MemVisitEntry", "MemberFamily"]),
    ("SmartCard", ["SmartCardMaster", "SmartCardRegistration", "SmartCardLedger"]),
    ("SMS/EPABX", ["DBSendSMS", "EmailSMSForward", "TelCall", "TelExtensionMast", "TelCallTypeMast"]),
    ("HK", ["HKStatus", "RoomBlock", "LostFoundDetail", "ComplaintDetail"]),
    ("Reports/Util", ["Enviro", "FaEnviro", "Company", "User_Module", "UserPermission", "eInvoiceEnviro"]),
    ("TDS/Tax", ["TDSCat", "TDSCertificate", "TaxStru"]),
]
for group, tables in features:
    parts = []
    for t in tables:
        if t.lower() not in db_l:
            parts.append(f"{t}=TABLE_MISSING")
            continue
        try:
            cur.execute(f"SELECT COUNT(*) FROM [{t}]")
            n = int(cur.fetchone()[0])
            parts.append(f"{t}={n}" + ("(EMPTY)" if n == 0 else ""))
        except Exception as e:
            parts.append(f"{t}=ERR")
    print(f"[{group}] " + " | ".join(parts))

# VB6 forms
print("\n" + "=" * 70)
print("E. VB6 FORM INVENTORY")
print("=" * 70)
forms = sorted(p.stem for p in FODER.glob("*.frm"))
bas = sorted(p.stem for p in FODER.glob("*.bas"))
print(f"frm={len(forms)} bas={len(bas)}")

# Python UI/core function coverage of known VB6 module bas names
py_text = ""
for folder in [PKG / "core", PKG / "ui"]:
    for f in folder.glob("*.py"):
        py_text += f.read_text(encoding="utf-8", errors="ignore").lower() + "\n"

# Critical bas modules -> python signal
crit = {
    "FOMModule": ["fo_ops", "checkin", "checkout", "folio"],
    "mdlNightAudit": ["nightaudit"],
    "POSBillPrint": ["pos", "print", "kot"],
    "SMSModule": ["sms"],
    "MemberModule": ["member", "smartcard"],
    "BanqModule": ["banquet", "hall"],
    "FaVoucher": ["fa_voucher", "voucher"],
    "FaLib": ["fa_ledger", "fa_reports"],
    "Functions": ["auth", "encrypt", "decrypt"],
    "ValidationModule": ["validate", "checkin", "folio"],
    "DatabaseSecurityModule": ["auth", "password", "usermaster"],
    "ModuleSmartCard": ["smartcard"],
    "ModuleDoorLock": ["door", "lock"],
    "eInvoice": ["einvoice", "tally"],
    "MobWebAPI": ["mob", "webapi", "api"],
    "ErrorHandlingModule": ["except", "error"],
    "TopBarLib": ["toolbar", "shell"],
    "GridPrint": ["print", "grid", "export"],
    "Hotlib": ["hotkey", "shortcut"],
    "MainLib": ["main", "shell"],
}
print("Critical .bas modules:")
for b, keys in crit.items():
    present = any(k in py_text for k in keys)
    # also check bas exists
    has_bas = b in bas
    print(f"  {b:28s} vb6_bas={has_bas} py_signal={'YES' if present else 'NO'}")

# Shell form registry coverage of mdi captions
print("\n" + "=" * 70)
print("F. MDI MENU CAPTION -> REGISTRY")
print("=" * 70)
from HMS_py.ui.shell import _form_registry  # noqa: E402

reg = _form_registry()
live_reg = {k for k, v in reg.items() if v is not None}
soon_reg = {k for k, v in reg.items() if v is None}
mdi_path = PKG / "core" / "mdi_menu.json"
data = json.loads(mdi_path.read_text(encoding="utf-8"))
caps: set[str] = set()

def walk(nodes):
    for n in nodes:
        c = n.get("caption")
        if c:
            caps.add(c)
        walk(n.get("children") or [])

if isinstance(data, list):
    walk(data)
elif isinstance(data, dict):
    if "menus" in data:
        walk(data["menus"])
    else:
        # maybe root list under any key
        for v in data.values():
            if isinstance(v, list) and v and isinstance(v[0], dict):
                walk(v)
                break

def wired(c: str) -> bool:
    variants = {
        c,
        c.replace("&&", "&"),
        c.replace("&", ""),
        c.strip(),
        c.replace("&&", "").strip(),
    }
    return any(v in live_reg for v in variants)

open_caps = [c for c in sorted(caps) if wired(c)]
closed_caps = [c for c in sorted(caps) if not wired(c)]
print(f"mdi captions={len(caps)} wired={len(open_caps)} not_wired={len(closed_caps)}")
print(f"registry live={len(live_reg)} soon/None={len(soon_reg)}")
print("NOT WIRED (sample up to 60):")
for c in closed_caps[:60]:
    print(f"  NO: {c!r}")
if len(closed_caps) > 60:
    print(f"  ... +{len(closed_caps)-60}")

# DB User_Module leaf vs registry
print("\n" + "=" * 70)
print("G. DB User_Module leaves vs registry")
print("=" * 70)
rows = db.query(
    "SELECT name, Module_Name, flag FROM User_Module WHERE flag='0' ORDER BY Module_Name, name"
)
leaf_live = leaf_soon = 0
soon_names = []
for name, mod, flag in rows:
    if name in live_reg:
        leaf_live += 1
    else:
        leaf_soon += 1
        soon_names.append((mod, name))
print(f"flag=0 leaves={len(rows)} wired={leaf_live} not_wired={leaf_soon}")
for mod, name in soon_names[:40]:
    print(f"  soon: [{mod}] {name!r}")
if len(soon_names) > 40:
    print(f"  ... +{len(soon_names)-40}")

print("\nDONE")
