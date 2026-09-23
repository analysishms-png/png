import os, sys, inspect
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.ui import shell
from HMS_py.core import reports as rp, menu_help as mh
reg = shell._form_registry()
m = rp.menu_caption_map()
soon_r = ["Arrival List","Attendence Report","Cashier  Report","Charge Payment Detail",
"Collection Summary","Group Wise Sale","Item Wise Sales Report","KOT Change Report",
"Monthwise Sales","Room Wise Plan Detail","Sale Summary","Settlement Summary",
"Stewardwise Sale","Taxwise Details"]
soon_e = ["Setup Outlet","Party Master","Item Entry ","Environment Settings","Events",
"Banquet Booking","Guest Comments","Customer History","Leave","Attendance","Loan/Advance",
"Over Time","Leave Encashment","Salary Creation","SMS (API)","SMS (Scheduled)",
"SMS (Conditional)","Venue Availability"]
def status(c):
    fn = reg.get(c)
    if fn is None: return "MISSING"
    if "coming_soon" in repr(fn): return "SOON"
    return "LIVE"
print("=== Flag=R reports ===")
for c in soon_r:
    print(f"  {status(c):7} key={m.get(c)}  {c}")
print("=== Flag=E forms ===")
for c in soon_e:
    print(f"  {status(c):7} {c}")
print("menu_help SA flags:", {f: sum(1 for r in mh.entries('SA') if r['flag']==f) for f in 'ERNV'})
print("can_open(Token Entry) Flag V:", mh.flag_for("Token Entry"), mh.can_open("SA","Token Entry"))
