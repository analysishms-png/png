"""Registry coverage probe: DB menu leaves vs shell registry keys."""
import sys
from collections import Counter
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db, menu
from HMS_py.ui.shell import _form_registry

full = _form_registry()
reg = {k for k, v in full.items() if v is not None}

roots = menu.roots()
print("=== SOON/MISSING per sidebar module (DB leaves not in registry) ===")
total_live = total_soon = 0
all_soon = []
for i, r in enumerate(roots):
    if r["name"] in ("-", "Windows", "Exit", "MDI", "PlanPopup", "Sale Bill Modification"):
        continue
    nxt = roots[i + 1]["srno"] if i + 1 < len(roots) else 10 ** 9
    rows = db.query(
        "SELECT code, name, flag, srno, Module_Name FROM User_Module "
        "WHERE srno >= ? AND srno < ? AND flag <> '9' ORDER BY srno",
        (r["srno"], nxt))
    leaves = []
    for code, name, flag, srno, mod in rows:
        if name and mod and name.lower() == mod.lower():
            continue
        leaves.append((mod, name, flag, srno))
    live = sum(1 for _, n, _, _ in leaves if n in reg)
    soon = [(m, n, s) for m, n, _, s in leaves if n not in reg]
    total_live += live
    total_soon += len(soon)
    all_soon.extend(soon)
    if soon:
        print(f"\n[{r['name']}] live={live} soon={len(soon)}")
        for m, n, s in soon[:30]:
            print(f"  srno={s} mod={m!r} leaf={n!r}")
        if len(soon) > 30:
            print(f"  ... +{len(soon)-30} more")

print(f"\nTOTAL live={total_live} soon={total_soon}")
print(f"Registry size (non-null)={len(reg)}")
c = Counter(n for _, n, _ in all_soon)
print("\nTop soon leaf names:")
for n, k in c.most_common(50):
    print(f"  {k:3d}  {n!r}")
