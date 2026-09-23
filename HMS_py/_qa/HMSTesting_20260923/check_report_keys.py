import sys, os
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import reports as rp

need = [
 "Arrival List","Attendence Report","Cashier  Report","Charge Payment Detail",
 "Collection Summary","Group Wise Sale","Item Wise Sales Report","KOT Change Report",
 "Monthwise Sales","Room Wise Plan Detail","Sale Summary","Settlement Summary",
 "Stewardwise Sale","Taxwise Details","Banquet Taxwise Details",
 "Payment Receive Entry (POS)","23 Day Room Type Availability Forecast",
]
m = rp.menu_caption_map()
by = rp.by_key()
# fuzzy: find keys containing words
for n in need:
    hit = m.get(n)
    if not hit:
        # try strip double spaces
        hit = m.get(n.replace("  "," "))
    print(f"{n!r:50} -> {hit}")
# list all report keys with matching fragments
print("\n--- keys containing tokens ---")
for tok in ["chargepayment","roomwise","collection","groupwise","kotchange","monthwise","salesummary","settlement","steward","taxwise","arrival","attend","cashier","itemwise"]:
    hits = [k for k in by if tok in k.lower().replace(" ","").replace("_","")]
    if hits:
        print(f"  {tok}: {hits[:8]}")
