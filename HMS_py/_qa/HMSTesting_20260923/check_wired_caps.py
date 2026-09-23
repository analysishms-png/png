import os, sys, inspect, re
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.ui import shell
reg = shell._form_registry()
caps = ["SMS (API)","SMS (Scheduled)","SMS (Conditional)","Venue Availability",
"Setup Outlet","Party Master","Item Entry ","Environment Settings","Events",
"Banquet Booking","Guest Comments","Customer History","Leave","Attendance",
"Loan/Advance","Over Time","Leave Encashment","Salary Creation",
"Arrival List","Cashier  Report","Attendence Report","Item Wise Sales Report",
"Charge Payment Detail","Room Wise Plan Detail","Collection Summary",
"Group Wise Sale","KOT Change Report","Monthwise Sales","Sale Summary",
"Settlement Summary","Taxwise Details","Stewardwise Sale"]
# detect coming_soon by source of inner go when possible
for c in caps:
    fn = reg.get(c)
    if fn is None:
        print(f"NONE {c!r}")
        continue
    try:
        src = inspect.getsource(fn)
        soon = "tables is database" in src
    except Exception:
        soon = False
        src = ""
    print(f"{'SOON' if soon else 'LIVE'} {c!r}")
