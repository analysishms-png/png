"""Emit an actionable SQL-fix worklist: caption -> report key -> SQL -> error."""
import json
import os
import re
import sys
from collections import defaultdict

PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
sys.path.insert(0, PROJECT)

from core import reports as rp  # noqa: E402

RESULTS = os.path.join(PROJECT, "qa_evidence", "reports", "sweep_results.jsonl")
OUT = os.path.join(PROJECT, "qa_evidence", "reports", "SQL_FIX_WORKLIST.md")

last = {}
for line in open(RESULTS, encoding="utf-8"):
    line = line.strip()
    if not line:
        continue
    r = json.loads(line)
    last[r["caption"]] = r

capmap = rp.menu_caption_map()
by_key = {r["key"]: r for r in rp.REPORTS}


def err_cols(rec):
    cols = []
    for lvl, msg in rec.get("messages", []):
        for m in re.finditer(r"Invalid column name '([^']+)'", str(msg)):
            c = m.group(1)
            if c not in cols:
                cols.append(c)
    return cols


groups = defaultdict(list)
unmapped = []
for cap, rec in last.items():
    if rec.get("status") != "ERROR_BOX":
        continue
    key = capmap.get(cap)
    rep = by_key.get(key) if key else None
    cols = err_cols(rec)
    sig = ", ".join(sorted(cols)) or "(no column)"
    if not rep:
        unmapped.append((cap, key, sig))
        continue
    groups[sig].append((cap, key, rep.get("sql", ""), rep.get("cols", [])))

lines = [
    "# SQL 42S22 Fix Worklist",
    "",
    f"Generated from the latest registry sweep. Failing captions: "
    f"{sum(len(v) for v in groups.values()) + len(unmapped)}",
    "",
]
lines.append("## Grouped by missing column\n")
for sig, items in sorted(groups.items(), key=lambda kv: -len(kv[1])):
    keys = sorted({k for _, k, _, _ in items})
    lines.append(f"### Missing: {sig}  ({len(items)} captions, "
                 f"{len(keys)} report keys)")
    lines.append("")
    for cap, key, sql, cols in items:
        lines.append(f"- **{cap}** -> `{key}`")
        lines.append(f"  - report cols: {cols}")
        lines.append(f"  - sql: `{sql}`")
    lines.append("")

if unmapped:
    lines.append("## ERROR_BOX with no resolvable report key\n")
    for cap, key, sig in unmapped:
        lines.append(f"- **{cap}** -> key=`{key}` missing {sig}")
    lines.append("")

with open(OUT, "w", encoding="utf-8") as f:
    f.write("\n".join(lines))
print(f"wrote {OUT}")
print(f"groups={len(groups)} unmapped={len(unmapped)}")