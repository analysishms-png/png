import os, sys, inspect
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.ui import shell
reg = shell._form_registry()
for c in ["SMS (API)","SMS (Scheduled)","SMS (Conditional)","Venue Availability","Setup Outlet","Salary Creation","Stewardwise Sale","Cashier  Report"]:
    fn = reg.get(c)
    r = repr(fn)
    soon = "coming_soon" in r
    try:
        src = inspect.getsource(fn)
    except Exception as e:
        src = f"<no source {e}>"
    print("---", c)
    print("  soon_via_repr:", soon)
    print("  r:", r[:120])
    print("  src_head:", src[:200].replace("\n"," | "))
