import sys, os, json
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import menu, db

# sidebar roots
print("=== roots ===")
for r in menu.roots():
    print(f"  srno={r['srno']:4} {r['code']:12} {r['name']!r}")

# Main Setup menubar
print("\n=== menubar_for Main Setup ===")
groups = menu.menubar_for("Main Setup", "SA")
for g in groups:
    print(f"GROUP {g['name']!r}")
    for it in g["items"]:
        kids = it.get("children") or []
        print(f"  {it['name']!r} flag_children={len(kids)} srno={it.get('srno')}")
        for c in kids[:6]:
            print(f"      -> {c['name']!r}")

# Also FO module for State Master
print("\n=== menubar_for Front Office (first groups) ===")
groups = menu.menubar_for("Front Office", "SA")
for g in groups[:3]:
    print(f"GROUP {g['name']!r}")
    for it in g["items"][:8]:
        kids = it.get("children") or []
        print(f"  {it['name']!r} kids={len(kids)}")
        for c in kids[:4]:
            print(f"      -> {c['name']!r}")

# Utility State Master
print("\n=== Utility State ===")
rows = db.query("SELECT srno,code,name,flag,Module_Name FROM User_Module WHERE name='State Master' OR srno BETWEEN 165 AND 175 ORDER BY srno")
for r in rows:
    print(r)

# What module is srno 41 (sidebar Main Setup)?
print("\n=== srno 41-55 ===")
for r in db.query("SELECT srno,code,name,flag,Module_Name FROM User_Module WHERE srno BETWEEN 41 AND 55 ORDER BY srno"):
    print(r)
