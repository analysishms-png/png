"""Generate DATABASE_MAPPING_LEDGER.md + PROCEDURE_MIGRATION_LEDGER.md.

Source: VB6_VS_PYTHON_FILE_BY_FILE.txt (SECTION B module table, SECTION C
C1/C2/C3 table rows, D5a proc list, D5b event token block) — jo
`python tools/vb6_py_file_parity.py` se banta hai. Run:

    python tools/vb6_py_file_parity.py && python _gen_ledgers.py
"""
import os
import re

ROOT = os.path.dirname(os.path.abspath(__file__))
SRC = os.path.join(ROOT, "VB6_VS_PYTHON_FILE_BY_FILE.txt")
lines = open(SRC, encoding="utf-8", errors="replace").read().splitlines()


def find(regex, start=0):
    """Index of first line matching regex, else -1."""
    pat = re.compile(regex)
    for i in range(start, len(lines)):
        if pat.match(lines[i]):
            return i
    return -1


# ---------------------------------------------------------------- database
# SECTION C rows live between "--- Cn. ... ---" markers:
#   name   VB6(Y/-)  PY(Y/-)  DB(YES/NO)  ROWS  refs
db_rows = []          # (bucket, table, vb6, py, in_db, rows, refs)
c_marks = [(i, re.match(r"--- (C\d)\.", lines[i]).group(1))
           for i in range(len(lines)) if lines[i].startswith("--- C")]
BUCKET_LABEL = {
    "C1": "VB6-ONLY (Python kabhi query nahi karta) — INVESTIGATE",
    "C2": "BOTH SIDES (VB6 + Python dono use karte hain)",
    "C3": "PYTHON-ONLY (VB6 me nahi) — investigate before delete",
}
for idx, (pos, bucket) in enumerate(c_marks):
    if bucket not in BUCKET_LABEL:
        continue
    end = c_marks[idx + 1][0] if idx + 1 < len(c_marks) else len(lines)
    for ln in lines[pos + 1:end]:
        parts = ln.split()
        if len(parts) < 5 or not re.match(r"^[A-Za-z_][A-Za-z0-9_]*$", parts[0]):
            continue
        name, vb6, py, in_db, rows_n = parts[:5]
        if vb6 not in ("Y", "-") or py not in ("Y", "-"):
            continue
        refs = ln.split(None, 5)[5] if len(ln.split(None, 5)) > 5 else ""
        db_rows.append((bucket, name, vb6, py, in_db, rows_n, refs))

L = [
    "# DATABASE_MAPPING_LEDGER",
    "",
    "Auto-generated from `VB6_VS_PYTHON_FILE_BY_FILE.txt` Section C by",
    "`_gen_ledgers.py` — DO NOT hand-edit rows; regenerate instead.",
    "",
    "Spec §20 columns: VB6 table → Python coverage → live DB rows →",
    "evidence (referencing files). Per-table CRUD/joins/SP detail is added",
    "in the note when that table's migration unit is worked.",
    "",
    "Status vocabulary (spec §17): MIGRATED / PARTIALLY_MIGRATED /",
    "NOT_YET_MIGRATED / OBSOLETE_WITH_PROOF / DUPLICATE_WITH_PROOF /",
    "BLOCKED_WITH_DOCUMENTED_REASON. C1 (VB6-only) rows start as",
    "NOT_YET_MIGRATED until evidence says otherwise.",
    "",
    f"**Generated:** 2026-10-03 | **live base tables:** 280 | "
    f"**ledger rows:** {len(db_rows)}",
    "",
]
for bucket in ("C1", "C3", "C2"):
    rows = [r for r in db_rows if r[0] == bucket]
    if not rows:
        continue
    L += [
        f"## {BUCKET_LABEL[bucket]} — {len(rows)}",
        "",
        "| Table | VB6 | PY | DB | Rows | Status | Evidence (files) |",
        "|---|:--:|:--:|:--:|---:|---|---|",
    ]
    for _b, name, vb6, py, db, rows_n, refs in rows:
        status = "BOTH_SIDES" if bucket == "C2" else (
            "NOT_YET_MIGRATED" if bucket == "C1" else "INVESTIGATE")
        L.append(f"| {name} | {vb6} | {py} | {db} | {rows_n} | {status} "
                 f"| {refs.replace('|', chr(92) + '|')} |")
    L.append("")

open(os.path.join(ROOT, "DATABASE_MAPPING_LEDGER.md"), "w",
     encoding="utf-8").write("\n".join(L))
print(f"DATABASE_MAPPING_LEDGER.md: {len(db_rows)} rows")

# --------------------------------------------------------------- procedure
# SECTION B module rows:
#   STATUS  Name.bas  t/o/n  tblcov  py/core/file.py+...  lines
b_hdr = find(r"^STATUS\s+VB6 \.bas")
mod_rows = []
if b_hdr >= 0:
    for ln in lines[b_hdr + 1:]:
        if ln.startswith("#"):
            break
        m = re.match(r"^(FULL|PARTIAL|SPARSE|MISSING|NO_SQL)\s+"
                     r"(\S+\.bas)\s+(\d+/\d+/\d+)\s+(\S+)\s+(\S+)\s+(\d+)\s*$",
                     ln)
        if m:
            status, f_, proc, tbl, py, n = m.groups()
            # PROC column is t/o/n = total / obfuscated / NAMED procs
            t_, o_, named = (int(x) for x in proc.split("/"))
            mod_rows.append((status, f_, t_, o_, named))

# D5a: lines between "D5a." and "D5b." of form "    - Name"
d5a = find(r"^D5a\. ")
d5b = find(r"^D5b\. ")
missing_biz = []
if d5a >= 0:
    end = d5b if d5b > d5a else len(lines)
    for ln in lines[d5a + 1:end]:
        m = re.match(r"^\s+- (\S+)\s*$", ln)
        if m:
            missing_biz.append(m.group(1))

# D5b: whitespace-separated event tokens until SECTION D6 header.
# Layout: D5b header, 2-line NOTE (wrapped), then bare token lines.
missing_evt = []
if d5b >= 0:
    end = find(r"^D6\. ", d5b)
    if end < 0:
        end = len(lines)
    for ln in lines[d5b + 3:end]:  # skip header + 2 NOTE lines
        for tok in ln.split():
            # handlers are bare identifiers containing "_" (Ctrl_Click,
            # MDIForm_Load, BtnX_UnknownEvent_9 ...); NOTE prose rejected
            if re.match(r"^[A-Za-z][A-Za-z0-9_]*$", tok) and "_" in tok:
                missing_evt.append(tok)
missing_evt = sorted(set(missing_evt))

d5_hdr = find(r"^D5\. NAMED VB6 FUNCTIONS MISSING")
tot_named = ported = 0
if d5_hdr >= 0:
    m = re.search(r"total named=(\d+), ported=(\d+), missing=(\d+)",
                  lines[d5_hdr])
    if m:
        tot_named, ported = int(m.group(1)), int(m.group(2))

L = [
    "# PROCEDURE_MIGRATION_LEDGER",
    "",
    "Auto-generated from `VB6_VS_PYTHON_FILE_BY_FILE.txt` Sections B +",
    "D5 by `_gen_ledgers.py` — regenerate, don't hand-edit.",
    "",
    "Spec §18 columns: VB6 file, procedure, type, Python target/file,",
    "mapping/business/SQL/UI/error/transaction status, test, evidence.",
    "Rows start at DISCOVERED; Python target gets filled when the unit's",
    "comparison pass runs (target column stays `TBD` until then).",
    "",
    f"**Generated:** 2026-10-03 | **named procs total:** {tot_named} | "
    f"**ported:** {ported} | **missing (D5a business/report):** "
    f"{len(missing_biz)}",
    "",
    "## B — per-module proc coverage (t/o/n = total/obfuscated/named)",
    "",
    "| Status | VB6 .bas | total | obfuscated | named |",
    "|---|---|---:|---:|---:|",
]
for status, f_, t_, o_, named in mod_rows:
    L.append(f"| {status} | {f_} | {t_} | {o_} | {named} |")
L += [
    "",
    f"## D5a — missing business/report procedures ({len(missing_biz)})",
    "",
    "| VB6 file | Procedure | Type | Python target | Status | Evidence |",
    "|---|---|---|---|---|---|",
]
for name in missing_biz:
    L.append(f"| (see parity D5 context) | {name} | function "
             f"| TBD | DISCOVERED | parity report D5a |")
L += [
    "",
    f"## D5b — missing event handlers (context, "
    f"{len(missing_evt)} unique names)",
    "",
    "Ye VB6 control event handlers hain; Python me inhe button callbacks /",
    "signals se map kiya jata hai — isliye naam-match fail hota hai aur",
    "functional check Section A (FORM PARITY) se hota hai. Unique names:",
    "",
    "```",
    ", ".join(missing_evt[:400]),
    ("..." if len(missing_evt) > 400 else ""),
    "```",
    "",
]

open(os.path.join(ROOT, "PROCEDURE_MIGRATION_LEDGER.md"), "w",
     encoding="utf-8").write("\n".join(L))
print(f"PROCEDURE_MIGRATION_LEDGER.md: {len(mod_rows)} modules, "
      f"{len(missing_biz)} named missing, {len(missing_evt)} evt names")
