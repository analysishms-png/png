import sys, os, json, re, collections
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.ui.shell import _form_registry
from HMS_py.core import db

reg = _form_registry()
tree = json.load(open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core\mdi_menu.json", encoding="utf-8"))

soon = []
live = []
for mod in tree.get("children", []):
    def walk(n, path=""):
        cap = (n.get("caption") or "").replace("&", "")
        p = f"{path} > {cap}" if path else cap
        kids = n.get("children") or []
        if not kids and cap:
            fn = reg.get(cap)
            r = repr(fn) if fn else ""
            if fn is None:
                soon.append((mod.get("caption"), p, "MISSING"))
            elif "coming_soon" in r:
                soon.append((mod.get("caption"), p, "SOON"))
            else:
                live.append((mod.get("caption"), p, "LIVE"))
        for ch in kids:
            walk(ch, p)
    for ch in mod.get("children") or []:
        walk(ch)

print(f"LIVE={len(live)} SOON+MISSING={len(soon)}")

# Match SOON captions to User_Module + menuHelp
um = {r[0]: r for r in db.query("SELECT name, code, flag, Module_Name, srno FROM User_Module")}
# menuHelp for SA/01 or Dinesh
mh = {}
for r in db.query("""
SELECT Option, Pro_Name, Flag, Param_Str, Module_Name, Code, Opt1, Opt2, Opt3, Opt4
FROM menuHelp
"""):
    key = str(r[0]).strip()
    mh.setdefault(key, []).append(r)

print("\n=== SOON/MISSING leaves with menuHelp Pro_Name ===")
hits = 0
for mod, path, st in soon:
    leaf = path.split(" > ")[-1]
    # try variants
    cand = None
    for k in (leaf, leaf.strip(), leaf.replace("  ", " ")):
        if k in mh:
            cand = mh[k]; break
    umr = um.get(leaf) or um.get(leaf.strip())
    if cand:
        hits += 1
        p = cand[0]
        print(f"  [{st}] {leaf!r}")
        print(f"       Pro={p[1]!r} Flag={p[2]!r} Param={p[3]!r} Mod={p[4]!r} Code={p[5]} Opt={p[6]},{p[7]},{p[8]},{p[9]}")
    elif umr:
        hits += 1
        print(f"  [{st}] {leaf!r}  UM code={umr[1]!r} flag={umr[2]} Mod={umr[3]!r} (no Pro_Name)")
    else:
        # no match
        pass

print(f"\nmatched {hits}/{len(soon)}")

# Save full soon list
out = os.path.join(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_qa\HMSTesting_20260923", "soon_leaves.json")
with open(out, "w", encoding="utf-8") as f:
    json.dump([{"module": m, "path": p, "status": s} for m,p,s in soon], f, indent=2, ensure_ascii=False)
print("saved", out)
