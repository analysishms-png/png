#!/usr/bin/env python3
"""Extract existing reports from current reports.py into _reports_data.json.
Handles _spine() calls in SQL by replacing with a marker."""
import json, os, re

BASE = os.path.dirname(os.path.abspath(__file__))
RPT = os.path.join(BASE, "HMS_py", "core", "reports.py")
DATA = os.path.join(BASE, "_reports_data.json")

with open(RPT, 'r', encoding='utf-8') as f:
    src = f.read()

# Find REPORTS = [ ... ]
m = re.search(r'REPORTS:\s*list\[dict\]\s*=\s*\[', src)
start_bracket = src.index('[', m.start())
bracket_count = 0
for j in range(start_bracket, len(src)):
    if src[j] == '[':
        bracket_count += 1
    elif src[j] == ']':
        bracket_count -= 1
        if bracket_count == 0:
            end = j + 1
            break

reports_str = src[start_bracket:end]

# Replace _spine(0, 0) calls with the actual CTE string
SPINE_CTE = ("WITH Dates AS (SELECT CAST(? AS date) AS d "
             "UNION ALL SELECT DATEADD(day,1,d) FROM Dates WHERE d < ?) ")

# Replace _spine(...) + "..." patterns
reports_str = re.sub(r'_spine\([^)]*\)\s*\+\s*', repr(SPINE_CTE) + ' + ', reports_str)
# Also replace standalone _spine calls
reports_str = re.sub(r'_spine\([^)]*\)', repr(SPINE_CTE), reports_str)

# Evaluate
ns = {}
reports = eval(reports_str, ns)

print(f"Extracted {len(reports)} reports")

with open(DATA, 'w', encoding='utf-8') as f:
    json.dump(reports, f, ensure_ascii=False)
print(f"Saved to {DATA}")
