"""FODER cleanup — Phase 1: delete logic-implemented forms.

Policy (user-approved workflow):
- Delete .frm whose behavior is provably implemented in HMS_py
  (wired in shell registry or core logic + tests, per foder_census.json).
- Delete orphaned .frx of deleted forms (VB6 binary resource; UI port ke
  baad bekaar — PyQt6 me koi matlab nahi).
- Backup: FODER.rar (248 MB) — recoverable.
Run from HMS_py/ project root:
  python MODULE_FIX_PLANS/FODER/_apply_phase1.py --apply
  (default: dry-run print)
"""
import json
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))          # .../FODER
ROOT = os.path.dirname(os.path.dirname(HERE))              # .../HMS_py (pkg root)

census = json.load(open(os.path.join(ROOT, "_qa", "foder_census.json")))
parity = json.load(open(os.path.join(ROOT, "_qa", "foder_parity.json")))

notreg = set(parity["not_in_reg"])
blocked = set(census and [f for f, info in census.items()
                          if not [i for i in info if i["live"]]])
missing_logic = set(f for f, up in
                    [(f, [i for i in info if i["live"] and not i["py"]])
                     for f, info in census.items()] if up)

delete, keep = [], []
for f in sorted(parity["rows"]):
    name = f[0]
    if name in notreg:
        # not-in-registry: delete only if fully ported (all live tables used in py)
        live_tabs = [i for i in census.get(name, []) if i["live"]]
        if live_tabs and name not in missing_logic:
            delete.append(name)
        else:
            keep.append(name)
    else:
        delete.append(name)

frms = [f for f in delete if f.lower().endswith(".frm")]
frxs = [f[:-4] + ".frx" for f in frms
        if os.path.exists(os.path.join(HERE, f[:-4] + ".frx"))]

targets = frms + frxs
print(f"DELETE {len(frms)} .frm + {len(frxs)} .frx = {len(targets)} files")
print(f"KEEP   {len(keep)} not-ported/blocked forms")

if "--apply" not in sys.argv:
    print("\n".join(targets[:20]))
    print("... (dry-run; --apply ke saath chalao)")
    sys.exit(0)

for f in targets:
    p = os.path.join(HERE, f)
    if os.path.exists(p):
        os.remove(p)
        print("deleted:", f)
print("DONE")
