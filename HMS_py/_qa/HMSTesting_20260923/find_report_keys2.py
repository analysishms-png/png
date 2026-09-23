import sys, os
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import reports as rp
by = rp.by_key()
# search useful keys
for tok in ["charge","payment","plan","month","kot","settle","steward","tax","collection","summary","arrival","attend","cashier","group","itemwise","wiserevenue","wisereport"]:
    hits = [k for k in by if tok in k.lower()]
    if hits:
        print(f"{tok}: {hits[:12]}")
print("\n--- menu samples with Charge Payment / Room Wise / Month / KOT ---")
for r in rp.REPORTS:
    menus = r.get("menu") or []
    t = (r.get("title") or "") + " " + " ".join(menus)
    if any(x in t.lower() for x in ["charge payment", "room wise plan", "monthwise", "kot change", "steward", "settlement summary", "sale summary", "group wise", "collection summary", "taxwise detail", "arrival list"]):
        print(r["key"], "|", r.get("title"), "|", menus)
