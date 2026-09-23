import sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import menu_help as mh
mh.clear_cache()
# live DB checks
print("modules sample:", mh.modules("SA")[:8], "... total", len(mh.modules("SA")))
print("entries SA:", len(mh.entries("SA")))
# find a report and an entry
by = mh.by_caption("SA")
# show flag distribution
from collections import Counter
c = Counter(r["flag"] for r in mh.entries("SA"))
print("flag dist:", dict(c))
# rights sample
for cap in ("Room Master", "Sale Report", "Arrival List", "KOT Entry", "Missing"):
    print(f"  rights[{cap!r}]={mh.rights('SA', cap)!r} flag={mh.flag_for(cap)!r} can_open={mh.can_open('SA', cap)}")
print("modules E/R by Module_Name (first 5):")
tree = mh.module_tree("SA")
for m in list(tree)[:5]:
    flags = Counter(r["flag"] for r in tree[m])
    print(f"  {m}: n={len(tree[m])} flags={dict(flags)}")
