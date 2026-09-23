import sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db

print("=== Main Setup roots / groups ===")
for r in db.query(
    "SELECT code, name, flag, srno, Module_Name FROM User_Module "
    "WHERE name IN (?, ?, ?, ?, ?, ?, ?) ORDER BY srno",
    ("Main Setup", "General Setup", "Utility", "Finance & Reports",
     "Reports", "Changes Department", "Tax Reports"),
):
    print(r)

print("\n=== All Main Setup module rows (srno 41-110) ===")
rows = db.query(
    "SELECT code, name, flag, srno, Module_Name FROM User_Module "
    "WHERE srno >= 41 AND srno < 111 AND flag <> '9' ORDER BY srno"
)
print("count", len(rows))
for r in rows:
    print(r)

print("\n=== Operation group (FrontDesk) rows srno 215-285 ===")
ops = db.query(
    "SELECT code, name, flag, srno, Module_Name FROM User_Module "
    "WHERE srno >= 215 AND srno < 286 AND flag <> '9' ORDER BY srno"
)
print("count", len(ops))
for r in ops:
    print(r)

print("\n=== Hint leaves existence ===")
for name in ("Plan Master", "City Master", "Sundry Master", "Narration Master",
             "Venue Master", "Department", "Department/Outlet", "Guest Profile",
             "Check In", "WalkIn CheckIn"):
    hit = db.query(
        "SELECT code, name, flag, srno, Module_Name FROM User_Module "
        "WHERE name = ?", (name,))
    print(name, "->", hit)
