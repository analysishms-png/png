import sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db

print("=== Guest/Profile/Check/Walk/FO module rows ===")
rows = db.query(
    "SELECT code, name, flag, srno, Module_Name FROM User_Module "
    "WHERE name LIKE ? OR name LIKE ? OR name LIKE ? OR name LIKE ? "
    "OR Module_Name LIKE ? ORDER BY srno",
    ("%Guest%", "%Profile%", "%Walk%", "%Check In%", "%Front%"),
)
print("count", len(rows))
for r in rows:
    print(r)

print("\n=== Front Office module roots + nearby ===")
roots = db.query(
    "SELECT code, name, flag, srno, Module_Name FROM User_Module "
    "WHERE name IN (?, ?, ?, ?, ?, ?) ORDER BY srno",
    ("Finance", "Main Setup", "Reservation", "Front Office", "House Keeping", "Inventory"),
)
for r in roots:
    print("ROOT", r)

print("\n=== All Front Office module rows ===")
fo = db.query(
    "SELECT code, name, flag, srno, Module_Name FROM User_Module "
    "WHERE Module_Name = ? AND flag <> '9' ORDER BY srno",
    ("Front Office",),
)
print("count", len(fo))
for r in fo:
    print(r)
