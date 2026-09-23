import sys, os, json, collections
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.ui.shell import _form_registry
from HMS_py.core import db

reg = _form_registry()
# menuHelp SA by caption
mh = {}
for r in db.query("""
SELECT [Option], Flag, Param_Str, Module_Name, Code, Pro_Name, ShowInList, Menu_Index
FROM menuHelp WHERE UserName='SA'
"""):
    cap = (r[0] or "").strip().replace("&", "")
    mh.setdefault(cap, []).append(r)

tree = json.load(open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core\mdi_menu.json", encoding="utf-8"))

rows = []
def walk(n, path=""):
    cap = (n.get("caption") or "").replace("&", "")
    p = f"{path} > {cap}" if path else cap
    kids = n.get("children") or []
    if not kids and cap:
        fn = reg.get(cap) or reg.get(cap.strip())
        st = "MISSING" if fn is None else ("SOON" if "coming_soon" in repr(fn) else "LIVE")
        m = mh.get(cap) or mh.get(cap.strip()) or []
        flag = m[0][1] if m else None
        param = m[0][2] if m else None
        modn = m[0][3] if m else None
        pro = m[0][5] if m else None
        rows.append((st, flag, param, modn, pro, cap, p))
    for ch in kids:
        walk(ch, p)

for mod in tree.get("children", []):
    walk(mod)

# census
c = collections.Counter((r[0], r[1]) for r in rows)
print("=== status x menuHelp.Flag ===")
for k, v in sorted(c.items(), key=lambda x: (-x[1], str(x[0]))):
    print(f"  {k}: {v}")

print("\n=== SOON/MISSING with Flag=E (VB6 Form - should port/wire) ===")
e_soon = [r for r in rows if r[0] in ("SOON", "MISSING") and r[1] == "E"]
print(f"count={len(e_soon)}")
for r in sorted(e_soon, key=lambda x: x[5]):
    print(f"  [{r[0]}] {r[5]!r:45} Mod={r[3]!r:18} Param={r[2]!r:6} Pro={r[4]!r}")

print("\n=== SOON/MISSING with Flag=R (Report) ===")
r_soon = [r for r in rows if r[0] in ("SOON", "MISSING") and r[1] == "R"]
print(f"count={len(r_soon)}")
for r in sorted(r_soon, key=lambda x: x[5])[:40]:
    print(f"  [{r[0]}] {r[5]!r:45} Mod={r[3]!r:18}")

print("\n=== SOON/MISSING with Flag=N (node/other) ===")
n_soon = [r for r in rows if r[0] in ("SOON", "MISSING") and r[1] in ("N", None)]
print(f"count={len(n_soon)}")
for r in sorted(n_soon, key=lambda x: x[5])[:40]:
    print(f"  [{r[0]}] flag={r[1]!r} {r[5]!r:45} Mod={r[3]!r}")

print("\n=== SOON/MISSING Flag=V (hidden VB6) ===")
v_soon = [r for r in rows if r[0] in ("SOON", "MISSING") and r[1] == "V"]
print(f"count={len(v_soon)}")
for r in v_soon:
    print(f"  {r[5]!r} Mod={r[3]!r}")

out = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_qa\HMSTesting_20260923\soon_flag_map.json"
with open(out, "w", encoding="utf-8") as f:
    json.dump([
        {"status": a, "mh_flag": b, "param": c, "module_name": d, "pro": e, "caption": g, "path": p}
        for a,b,c,d,e,g,p in rows if a != "LIVE"
    ], f, indent=2, ensure_ascii=False)
print("saved", out)
