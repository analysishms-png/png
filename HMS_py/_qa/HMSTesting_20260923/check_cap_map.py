import sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import reports as rp
# check if shell report captions already resolve
m = rp.menu_caption_map()
caps = ["Arrival List","Attendence Report","Cashier  Report","Charge Payment Detail",
"Collection Summary","Group Wise Sale","Item Wise Sales Report","KOT Change Report",
"Monthwise Sales","Room Wise Plan Detail","Sale Summary","Settlement Summary",
"Stewardwise Sale","Taxwise Details","Attendance Report","Cashier Report"]
for c in caps:
    print(f"{'HIT ' if c in m else 'MISS'} {c!r} -> {m.get(c)}")
