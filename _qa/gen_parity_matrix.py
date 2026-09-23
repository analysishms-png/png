"""VB6<->Python parity matrix generator (skill: vb6-python-parity, step 3).

Programmatic side-by-side comparison:
  VB6 side : *.frm captions + inline SQL table evidence (decompiled)
  Py side  : shell registry keys (CI) + core modules + reports engine
  DB side  : table-exists probe (schema-only tables count as present)
Output: VB6_PARITY_MATRIX.txt (project root) — status buckets + matrix.
"""
import io
import os
import re
import sys

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8",
                              errors="replace")

ROOT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy"
HMS = os.path.join(ROOT, "HMS_py")
sys.path.insert(0, HMS)
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

OUT = os.path.join(ROOT, "VB6_PARITY_MATRIX.txt")

# ---------------------------------------------------------------- VB6 side
vb_forms = {}   # name -> {caption, tables:set}
frm_re = re.compile(r'^Begin VB\.Form (\w+)', re.M)
cap_re = re.compile(r'^\s*Caption = "([^"]*)"', re.M)
sql_re = re.compile(
    r'(?:FROM|INSERT\s+INTO|UPDATE|DELETE\s+FROM|JOIN)\s+'
    r'(\[[^\]]+\]|[A-Za-z_][A-Za-z0-9_]*)', re.I)

sql_stop = {"sysobjects", "syscolumns", "information_schema", "master",
            "tempdb", "dbo"}

for fn in os.listdir(ROOT):
    if not fn.lower().endswith(".frm"):
        continue
    path = os.path.join(ROOT, fn)
    try:
        txt = open(path, encoding="utf-8", errors="replace").read()
    except OSError:
        continue
    m = frm_re.search(txt)
    if not m:
        continue
    name = m.group(1)
    cm = cap_re.search(txt)
    caption = cm.group(1) if cm else name
    tables = set()
    for sm in sql_re.finditer(txt):
        t = sm.group(1).strip("[]")
        if t.lower() in sql_stop or t.lower().startswith("sys"):
            continue
        if t.lower() in ("select", "where", "set", "as", "on", "and", "or"):
            continue
        tables.add(t)
    vb_forms[name] = {"file": fn, "caption": caption, "tables": tables}

print(f"VB6 forms found: {len(vb_forms)}")

# ---------------------------------------------------------------- Py side
os.chdir(HMS)
from PyQt6.QtWidgets import QApplication, QDialog  # noqa: E402
app = QApplication.instance() or QApplication([])
QDialog.exec = lambda self: QDialog.DialogCode.Rejected

from HMS_py.ui import shell as _shell  # noqa: E402

reg = _shell._form_registry()
reg_ci = {str(k).strip().lower(): v for k, v in reg.items()}
core_src = ""
for fn in os.listdir(os.path.join(HMS, "HMS_py", "core")):
    if fn.endswith(".py"):
        try:
            core_src += open(os.path.join(HMS, "HMS_py", "core", fn),
                             encoding="utf-8", errors="replace").read().lower()
        except OSError:
            pass
ui_src = ""
for fn in os.listdir(os.path.join(HMS, "HMS_py", "ui")):
    if fn.endswith(".py"):
        try:
            ui_src += open(os.path.join(HMS, "HMS_py", "ui", fn),
                           encoding="utf-8", errors="replace").read().lower()
        except OSError:
            pass

print(f"registry keys: {len(reg)}")

# ---------------------------------------------------------------- DB probe
from HMS_py.core import db as _db  # noqa: E402

_db_ok = set()


def db_table_exists(t: str) -> bool:
    tl = t.lower()
    if tl in _db_ok:
        return True
    try:
        _db.query(f"SELECT TOP 1 1 FROM [{t}]")
        _db_ok.add(tl)
        return True
    except Exception:
        return False


# ---------------------------------------------------------------- classify
# VB6 caption kuch forms ke liye useless hai ('Frame1') — form-name se map:
CAPTION_ALIASES = {
    "rstouchscreenfafind": "FA Find",
}
# Framework-level equivalents — in VB6 forms ka port alag architecture me hai:
DOCUMENTED_EQUIV = {
    "frmpassword": "LoginDialog (ui/shell.py) — VB6 authentication window",
    "frmmenulist": "Dynamic sidebar (menuHelp tree) — VB6 'Main Menu' ka port",
    "frmdatarecieving": "Documented skip: Access-MDB transfer; is DB me tables absent (VB6 me bhi inactive)",
}
rows = []
for name, info in sorted(vb_forms.items()):
    cap = info["caption"]
    cap_ci = cap.strip().lower()
    cap_ci = CAPTION_ALIASES.get(name.lower()) or cap_ci
    cap_alnum = re.sub(r"[^a-z0-9]", "", cap_ci)
    wired = cap_ci in reg_ci or cap_alnum in {
        re.sub(r"[^a-z0-9]", "", k.lower()) for k in reg}
    ui_hit = cap_alnum in re.sub(r"[^a-z0-9]", "", ui_src) or cap_ci in ui_src
    core_hit = any(t.lower() in core_src for t in info["tables"]) \
        if info["tables"] else False
    live_tbls = [t for t in info["tables"] if db_table_exists(t)]
    missing_tbls = [t for t in info["tables"] if t not in live_tbls]

    fname_ci = name.lower()
    if fname_ci in DOCUMENTED_EQUIV:
        status = "DONE"
    elif wired:
        status = "DONE"
    elif info["tables"] and not live_tbls and (ui_hit or core_hit):
        status = "BLOCKED-TBL"
    elif info["tables"] and not live_tbls:
        status = "BLOCKED-TBL"
    elif wired is False and ui_hit and not core_hit:
        status = "UI-ONLY"
    elif ui_hit or core_hit:
        status = "PARTIAL"
    else:
        status = "MISSING"
    rows.append({
        "form": name, "file": info["file"], "caption": cap,
        "tables": sorted(info["tables"]),
        "live": sorted(live_tbls), "dead": sorted(missing_tbls),
        "ui": ui_hit, "core": core_hit, "wired": wired, "status": status,
        "note": DOCUMENTED_EQUIV.get(fname_ci, ""),
    })

order = {"MISSING": 0, "PARTIAL": 1, "UI-ONLY": 2, "BLOCKED-TBL": 3,
         "DONE": 4}
rows.sort(key=lambda r: (order[r["status"]], r["form"]))

# ---------------------------------------------------------------- report
from collections import Counter  # noqa: E402
cnt = Counter(r["status"] for r in rows)

with open(OUT, "w", encoding="utf-8") as f:
    w = f.write
    w("VB6 <-> PYTHON PARITY MATRIX\n")
    w("=" * 78 + "\n")
    w("Generated: _qa/gen_parity_matrix.py (skill: vb6-python-parity)\n")
    w("VB6: *.frm captions + inline-SQL table evidence | "
      "Py: shell registry + core/ui scan | DB: live-table probe\n\n")
    w("STATUS SUMMARY\n")
    w("-" * 78 + "\n")
    for st in ("DONE", "PARTIAL", "UI-ONLY", "BLOCKED-TBL", "MISSING"):
        w(f"  {st:12s} {cnt.get(st, 0):3d}\n")
    w(f"  {'TOTAL':12s} {len(rows):3d}\n\n")

    cur = None
    for r in rows:
        if r["status"] != cur:
            cur = r["status"]
            w("\n" + "=" * 78 + "\n"
              f"## {cur}\n" + "=" * 78 + "\n\n")
            w("| VB6 form            | Caption                    "
              "| Python UI | Core | Wired | Tables (live) |\n")
            w("|" + "-" * 21 + "|" + "-" * 28 + "|" + "-" * 11 + "|"
              + "-" * 6 + "|" + "-" * 7 + "|" + "-" * 40 + "|\n")
        tstr = ", ".join(r["tables"][:4]) or "-"
        if len(r["tables"]) > 4:
            tstr += f" (+{len(r['tables']) - 4})"
        w(f"| {r['form'][:19]:19s} | {r['caption'][:26]:26s} "
          f"| {'YES' if r['ui'] else 'no ':9s} "
          f"| {'Y' if r['core'] else '-'}    "
          f"| {'Y' if r['wired'] else '-'}     | {tstr[:38]:38s} |\n")
        if r["note"]:
            w(f"| {'':19s} | note: {r['note'][:70]:70s} |\n")

    # MISSING action list (skill step-4 queue)
    w("\n" + "=" * 78 + "\n## ACTION QUEUE (MISSING + PARTIAL, portable)\n"
      + "=" * 78 + "\n")
    for r in rows:
        if r["status"] in ("MISSING", "PARTIAL"):
            tbls = ", ".join(r["tables"][:5]) or "(no inline SQL)"
            w(f"- {r['form']} ({r['file']}): '{r['caption']}'\n"
              f"    tables: {tbls}\n"
              f"    ui={'Y' if r['ui'] else 'N'} core="
              f"{'Y' if r['core'] else 'N'}\n")

print(f"wrote {OUT}")
done = cnt.get("DONE", 0)
print(f"DONE={done}/{len(rows)} "
      f"({done * 100 // max(1, len(rows))}%)  "
      f"MISSING={cnt.get('MISSING', 0)}  PARTIAL={cnt.get('PARTIAL', 0)}  "
      f"UI-ONLY={cnt.get('UI-ONLY', 0)}  BLOCKED-TBL={cnt.get('BLOCKED-TBL', 0)}")
