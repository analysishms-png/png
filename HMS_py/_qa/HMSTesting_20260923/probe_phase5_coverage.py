"""Probe FO Operations nesting + registry coverage for Operations/Reports."""
import sys, json, os
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")

from HMS_py.core import menu
from HMS_py.core.menu import menubar_for, _build_dropdown

# Front Office menubar structure
groups = menubar_for("Front Office", "SA")
print("=== Front Office menubar ===")
for g in groups:
    print(f"\n[{g['name']}]")
    for it in g["items"]:
        kids = it.get("children") or []
        if kids:
            print(f"  {it['name']} >")
            for c in kids:
                print(f"    - {c['name']} (srno={c.get('srno')})")
        else:
            print(f"  - {it['name']} (srno={it.get('srno')})")

# Raw Operations rows from DB
from HMS_py.core import db
rows = db.query(
    "SELECT code, name, flag, srno, Module_Name FROM User_Module "
    "WHERE Module_Name IN ('Operations','Reports','Front Office') "
    "AND (name LIKE '%Walk%' OR name LIKE '%Room Status%' OR name LIKE '%Expense%' "
    "OR name LIKE '%Forex%' OR name LIKE '%Display%' OR name LIKE '%House Keeping%' "
    "OR name LIKE '%Blank%' OR name LIKE '%GRC%' OR code='FDOMenu') "
    "ORDER BY srno"
)
print("\n=== Raw FDOMenu / Operations rows ===")
for r in rows:
    print(f"  srno={r[3]} code={r[0]!r} flag={r[2]!r} name={r[1]!r} mod={r[4]!r}")

# All Operations rows in order
rows2 = db.query(
    "SELECT code, name, flag, srno FROM User_Module "
    "WHERE Module_Name = 'Operations' ORDER BY srno"
)
print("\n=== All Operations rows ===")
for r in rows2:
    print(f"  srno={r[3]} code={r[0]!r} flag={r[2]!r} name={r[1]!r}")

# Registry coverage for Operations/Reports-related leaves
from HMS_py.ui.shell import _form_registry
reg = _form_registry()
print(f"\n=== Registry size: {len(reg)} keys ===")

mdi = json.load(open(
    r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core\mdi_menu.json",
    encoding="utf-8"))

def collect_captions(node, path=""):
    out = []
    cap = node.get("caption") or node.get("name") or ""
    if node.get("children"):
        for ch in node["children"]:
            out.extend(collect_captions(ch, path + "/" + cap))
    else:
        out.append((path, cap))
    return out

# Find Operations and Reports sections in mdi for FDO and Main Setup
def find_menus(nodes, pred, path=""):
    hits = []
    for n in nodes:
        cap = n.get("caption") or ""
        p = path + "/" + cap
        if pred(n, cap, p):
            hits.append(n)
        if n.get("children"):
            hits.extend(find_menus(n["children"], pred, p))
    return hits

# Collect all leaf captions under any "Operations" or Reports top menu
leaf_caps = []
def walk(n, in_scope=False, scope=""):
    cap = n.get("caption") or n.get("name") or ""
    if cap in ("Operations", "Reports", "Transaction", "General Setup", "M.I.S.", "Tax Reports"):
        in_scope = True
        scope = cap
    if n.get("children"):
        for ch in n["children"]:
            walk(ch, in_scope, scope)
    elif in_scope:
        leaf_caps.append((scope, cap))
    # don't stay in scope forever for nested - actually stay for subtree of Operations
    # reset when sibling of scope at same level - simplified: pass in_scope only to children

if isinstance(mdi, list):
    top = mdi
elif isinstance(mdi, dict):
    top = mdi.get("menus") or mdi.get("children") or [mdi]
else:
    top = []
for n in top:
    walk(n, False, "")

print(f"\n=== mdi Operations/Reports/General Setup leaves: {len(leaf_caps)} ===")
missing = []
present = []
for scope, cap in leaf_caps:
    if cap in reg:
        present.append((scope, cap))
    else:
        missing.append((scope, cap))

print(f"In registry: {len(present)}")
print(f"Missing from registry: {len(missing)}")
from collections import Counter
c = Counter(s for s, _ in missing)
for scope, n in c.most_common():
    print(f"  [{scope}] missing={n}")
print("\nMissing leaves (sample up to 60):")
for scope, cap in missing[:60]:
    print(f"  [{scope}] {cap}")

# Reports module menubar
rgroups = menubar_for("Reports", "SA")
print(f"\n=== Reports menubar groups: {len(rgroups)} ===")
for g in rgroups[:10]:
    print(f"  [{g['name']}] items={len(g['items'])}")
