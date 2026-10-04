"""Aggregate qa_evidence/reports/sweep_results.jsonl into a root-cause report."""
import io
import json
import os
import re
from collections import defaultdict

P = os.path.join(os.getcwd(), "qa_evidence", "reports", "sweep_results.jsonl")
rows = [json.loads(l) for l in io.open(P, encoding="utf-8") if l.strip()]
seen = {}
for r in rows:                       # last write wins
    seen[r["caption"]] = r
rows = list(seen.values())
print(f"TOTAL UNIQUE CAPTIONS TESTED: {len(rows)}")

byst = defaultdict(list)
for r in rows:
    byst[r["status"]].append(r)
print("\n== STATUS COUNTS ==")
for k, v in sorted(byst.items(), key=lambda kv: -len(kv[1])):
    print(f"  {k:14s} {len(v)}")

# ── root-cause grouping ─────────────────────────────────────────────────────
groups = defaultdict(list)

COL = re.compile(r"Invalid column name '([^']+)'")
for r in rows:
    if r["status"] not in ("ERROR_BOX", "EXCEPTION"):
        continue
    blob = " ".join(m[1] for m in r.get("messages", [])) + " " + r.get("exc", "")
    m = COL.search(blob)
    if m:
        groups[f"SQL 42S22 missing column [{m.group(1)}]"].append(r["caption"])
        continue
    if "takes 0 positional arguments but 2 were given" in blob:
        groups["Python arity: leaf lambda called with 2 args"].append(r["caption"]); continue
    if "currentRowChanged" in blob:
        groups["PyQt6 API: QTableWidget.currentRowChanged does not exist"].append(r["caption"]); continue
    if "make_vb6_header" in blob:
        groups["NameError: make_vb6_header not defined"].append(r["caption"]); continue
    if "not enough values to unpack" in blob:
        groups["ValueError: not enough values to unpack"].append(r["caption"]); continue
    if "has no attribute 'open_tally'" in blob:
        groups["AttributeError: missing opener open_tally"].append(r["caption"]); continue
    if "Query timeout expired" in blob:
        groups["HYT00 query timeout"].append(r["caption"]); continue
    if "not defined" in blob:
        n = re.search(r"name '(\w+)' is not defined", blob)
        groups[f"NameError: {n.group(1) if n else '?'} not defined"].append(r["caption"]); continue
    if "has no attribute" in blob:
        n = re.search(r"has no attribute '([^']+)'", blob)
        groups[f"AttributeError: {n.group(1) if n else '?'}"].append(r["caption"]); continue
    groups["UNCLASSIFIED"].append(r["caption"])

print("\n== ROOT-CAUSE GROUPS ==")
tot = 0
for g, cs in sorted(groups.items(), key=lambda kv: -len(kv[1])):
    tot += len(cs)
    print(f"\n[{len(cs)}] {g}")
    for c in sorted(cs):
        print(f"      - {c}")
print(f"\nTOTAL PROBLEM CAPTIONS GROUPED: {tot} / {len(rows)}")