import sys, os, json, collections, re
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db

print("=== menuHelp Flag + Param (quote Option) ===")
for r in db.query("""
SELECT Flag, Param_Str, COUNT(*) FROM menuHelp
GROUP BY Flag, Param_Str ORDER BY Flag, COUNT(*) DESC
"""):
    print(f"  Flag={r[0]!r:5} Param={r[1]!r:8} n={r[2]}")

print("\n=== Pro_Name values ===")
for r in db.query("""
SELECT Pro_Name, COUNT(*) FROM menuHelp
WHERE Pro_Name IS NOT NULL AND Pro_Name <> ''
GROUP BY Pro_Name ORDER BY COUNT(*) DESC
"""):
    print(" ", r)

print("\n=== SA CompCode rows Flag breakdown ===")
for r in db.query("""
SELECT CompCode, UserName, Flag, COUNT(*) FROM menuHelp
WHERE UserName='SA' GROUP BY CompCode, UserName, Flag ORDER BY CompCode, Flag
"""):
    print(" ", r)

print("\n=== SA Flag=E sample (entries to port) ===")
for r in db.query("""
SELECT TOP 50 [Option], Module_Name, Param_Str, Code, Opt1, Opt2, Opt3, Opt4, Menu_Index, ShowInList
FROM menuHelp WHERE UserName='SA' AND Flag='E'
ORDER BY Opt1, Opt2, Opt3, Opt4
"""):
    print(f"  {r[0]!r:40} Mod={r[1]!r:18} Param={r[2]!r:6} Code={r[3]} Opt={r[4]},{r[5]},{r[6]},{r[7]} MI={r[8]} Show={r[9]!r}")

print("\n=== SA Flag=N sample (nodes) ===")
for r in db.query("""
SELECT TOP 30 [Option], Module_Name, Code, Opt1, Opt2, Opt3, Opt4
FROM menuHelp WHERE UserName='SA' AND Flag='N'
ORDER BY Opt1, Opt2, Opt3, Opt4
"""):
    print(f"  {r[0]!r:40} Mod={r[1]!r:18} Code={r[2]} Opt={r[3]},{r[4]},{r[5]},{r[6]}")

print("\n=== ShowInList=Y (favorites) ===")
for r in db.query("""
SELECT [Option], Flag, Module_Name, Param_Str FROM menuHelp
WHERE UserName='SA' AND ShowInList='Y' ORDER BY Opt1, Opt2, Opt3, Opt4
"""):
    print(" ", r)
