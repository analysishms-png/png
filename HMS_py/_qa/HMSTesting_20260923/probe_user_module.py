import sys, os, json, collections
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db

print("=== User_Module flags ===")
for r in db.query("SELECT flag, COUNT(*) FROM User_Module GROUP BY flag ORDER BY flag"):
    print(" flag", r[0], "n=", r[1])

print("\n=== Module_Name groups (menubar) ===")
for r in db.query("""
SELECT Module_Name, COUNT(*), MIN(srno), MAX(srno)
FROM User_Module GROUP BY Module_Name ORDER BY MIN(srno)
"""):
    print(f"  {r[0]!r:30} n={r[1]:4} srno={r[2]}..{r[3]}")

print("\n=== flag=0 leaves by Module_Name + code ===")
for r in db.query("""
SELECT Module_Name, code, COUNT(*) FROM User_Module
WHERE flag='0' GROUP BY Module_Name, code ORDER BY Module_Name, code
"""):
    print(f"  {r[0]!r:25} code={r[1]!r:15} n={r[2]}")

print("\n=== User_Module columns ===")
for c in db.query("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='User_Module' ORDER BY ORDINAL_POSITION"):
    print(" ", c[0])
