import os, sys
PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
import ui.shell as sh
reg = sh._form_registry()
def state(v):
    if v is None:
        return "COMING_SOON(None)"
    qn = getattr(v, "__qualname__", "")
    return "COMING_SOON(stub)" if "coming_soon" in qn else f"REAL({qn[:40]})"
for cap in ["KOT Transfer", "Menu Item Copy", "Inconsistency Check",
            "Check Out Clearance Screen", "Display Rack", "Reverse Room Merge",
            "Forex Receive Entry", "Multiple SMS Type", "Table Change Entry",
            "Sale Bill Entry", "Settlement Entry", "Token Entry",
            # round-6 additions
            "Facility Sundry Setting", "Card Statement (MINI)",
            "Card Statement (FULL)",
            # round-7/8 additions
            "Assign Delivery", "Travel Agency Posting"]:
    print(f"{cap!r:38s} -> {state(reg.get(cap))}")
