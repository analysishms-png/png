import sys, os, collections, json
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db

print("=== menuHelp Flag values ===")
for r in db.query("SELECT Flag, COUNT(*) FROM menuHelp GROUP BY Flag ORDER BY Flag"):
    print(f"  Flag={r[0]!r:6} n={r[1]}")

print("\n=== menuHelp Opt tree sample (SA / Comp 01 or first) ===")
# distinct users/comps
print(db.query("SELECT CompCode, UserName, COUNT(*) FROM menuHelp GROUP BY CompCode, UserName ORDER BY COUNT(*) DESC"))

print("\n=== menuHelp with Pro_Name not null ===")
rows = db.query("""
SELECT TOP 40 Option, Pro_Name, Flag, Param_Str, Module_Name, Code, Opt1, Opt2, Opt3, Opt4, Menu_Index
FROM menuHelp WHERE Pro_Name IS NOT NULL AND Pro_Name <> ''
ORDER BY Opt1, Opt2, Opt3, Opt4
""")
for r in rows:
    print(f"  {r[0]!r:35} Pro={r[1]!r:30} Flag={r[2]!r:4} Param={r[3]!r:10} Mod={r[4]!r} Code={r[5]}")

print("\n=== menuHelp Flag breakdown with Pro_Name ===")
for r in db.query("""
SELECT Flag, CASE WHEN Pro_Name IS NULL OR Pro_Name='' THEN 'no' ELSE 'yes' END, COUNT(*)
FROM menuHelp GROUP BY Flag, CASE WHEN Pro_Name IS NULL OR Pro_Name='' THEN 'no' ELSE 'yes' END
ORDER BY Flag
"""):
    print(" ", r)

print("\n=== menuHelp1 Flag ===")
for r in db.query("SELECT Flag, COUNT(*) FROM menuHelp1 GROUP BY Flag ORDER BY Flag"):
    print(" ", r)

print("\n=== menuHelp1 Param_Str distinct ===")
for r in db.query("SELECT Param_Str, COUNT(*) FROM menuHelp1 GROUP BY Param_Str ORDER BY COUNT(*) DESC"):
    print(" ", r)

print("\n=== menuHelp Param_Str distinct (top) ===")
for r in db.query("SELECT Param_Str, COUNT(*) FROM menuHelp GROUP BY Param_Str ORDER BY COUNT(*) DESC"):
    print(" ", r)
