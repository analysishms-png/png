import sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import reports as rp
# search VB6 POS reports for steward-like keys in all REPORTS titles/menus
for r in rp.REPORTS:
    t = (r.get("title") or "") + " " + " ".join(r.get("menu") or [])
    if "waiter" in t.lower() or "servic" in t.lower() or "staff" in t.lower() or "incharge" in t.lower():
        print(r["key"], "|", r.get("title"), "|", r.get("menu"))
# check ItemWiseSale structure - maybe steward is a column
by = rp.by_key()
print("\nItemWiseSale:", by.get("ItemWiseSale"))
print("TableWiseSale:", by.get("TableWiseSale"))
