"""Generate FORM_MIGRATION_LEDGER.md from VB6_VS_PYTHON_FILE_BY_FILE.txt.

Section A (FORM PARITY) ko markdown ledger me badalta hai — spec §19 ke
columns ke saath. Regenerate karo jab bhi parity report fresh ho:

    python tools/vb6_py_file_parity.py && python _gen_form_ledger.py
"""
import os
import re

ROOT = os.path.dirname(os.path.abspath(__file__))
SRC = os.path.join(ROOT, "VB6_VS_PYTHON_FILE_BY_FILE.txt")
OUT = os.path.join(ROOT, "FORM_MIGRATION_LEDGER.md")

STATUS_ORDER = ["MISSING", "COMING_SOON", "REGISTRY_ONLY", "REGISTRY",
                "LIKELY", "PY_FILE", "SHELL", "REPORT_VIEWER"]

text = open(SRC, encoding="utf-8", errors="replace").read()
m = re.search(r"SECTION A : FORM PARITY.*?\n(.*?)\n#+\n# SECTION B",
              text, re.S)
if not m:
    raise SystemExit("SECTION A not found in parity report")

rows = []
for line in m.group(1).splitlines():
    line = line.rstrip()
    if not line or set(line) <= set("-="):
        continue
    if line.startswith("STATUS"):
        continue
    parts = re.split(r"\s{2,}", line.strip())
    if len(parts) < 5:
        continue
    status, frm, vb6form, caption, py = parts[:5]
    note = parts[5] if len(parts) > 5 else ""
    rows.append((status.strip(), frm.strip(), vb6form.strip(),
                 caption.strip(), py.strip(), note.strip()))

rows.sort(key=lambda r: (STATUS_ORDER.index(r[0])
                         if r[0] in STATUS_ORDER else 99, r[1]))

counts = {}
for r in rows:
    counts[r[0]] = counts.get(r[0], 0) + 1

L = [
    "# FORM_MIGRATION_LEDGER",
    "",
    "Auto-generated from `VB6_VS_PYTHON_FILE_BY_FILE.txt` Section A by",
    "`_gen_form_ledger.py` — DO NOT hand-edit rows; regenerate instead.",
    "",
    "Ledger columns (spec §19): status + VB6 form path/caption + Python UI",
    "target + note. Per-form controls/events/SQL/validation detail is",
    "tracked during that form's spec/plan cycle and referenced in the note",
    "or MIGRATION_MASTER_BUG_REGISTER.md.",
    "",
    f"**Generated:** 2026-10-03 | **VB6 forms:** {len(rows)}",
    "",
    "## Counts",
    "",
    "| Status | Count |",
    "|---|---:|",
]
for st in STATUS_ORDER:
    if st in counts:
        L.append(f"| {st} | {counts[st]} |")
L += [
    "",
    "Status meaning: `MISSING` = no Python target yet; `COMING_SOON` =",
    "registry stub; `REGISTRY`/`REGISTRY_ONLY` = wired to a (possibly",
    "shared) screen; `LIKELY` = fuzzy match — verify manually; `PY_FILE` =",
    "dedicated Python UI file; `SHELL` = handled by ui/shell.py;",
    "`REPORT_VIEWER` = routed to core/reports.py.",
    "",
    "## Ledger",
    "",
    "| Status | VB6 .frm | VB6 Form | Caption | Python target | Note |",
    "|---|---|---|---|---|---|",
]
for r in rows:
    cells = [c.replace("|", "\\|") or "—" for c in r]
    L.append("| " + " | ".join(cells) + " |")
L.append("")

with open(OUT, "w", encoding="utf-8") as f:
    f.write("\n".join(L))
print(f"wrote {OUT}: {len(rows)} forms, counts={counts}")
