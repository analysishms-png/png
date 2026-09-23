import sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db, menu

print("ROOTS flag=9:")
for r in menu.roots():
    print(f"  srno={r['srno']} code={r['code']!r} name={r['name']!r}")

print("\nSIDEBAR:")
for r in menu.sidebar_modules():
    print(f"  {r['name']!r}")

print("\nReports-like rows:")
for r in db.query(
    "SELECT code,name,flag,srno,Module_Name FROM User_Module "
    "WHERE name LIKE '%Report%' OR Module_Name LIKE '%Report%' "
    "ORDER BY srno"
)[:40]:
    print(" ", r)

print("\nF&&B / FB Cost:")
for r in db.query(
    "SELECT code,name,flag,srno,Module_Name FROM User_Module "
    "WHERE name LIKE '%Cost%' OR name LIKE '%F&B%' OR name LIKE '%FB%' "
    "OR name LIKE '%F&&B%'"
):
    print(" ", r)

print("\nmenubar_for Reports:", menu.menubar_for("Reports", "SA"))
print("menubar_for Main Setup groups:", len(menu.menubar_for("Main Setup", "SA")))
print("menubar_for Operations:", menu.menubar_for("Operations", "SA"))
