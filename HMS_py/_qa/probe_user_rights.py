"""Probe: non-SA users, menuHelp Param_Str distribution, User1 rights."""
from HMS_py.core import db

print("=== menuHelp: all users ===")
for r in db.query("""
SELECT UserName, CompCode, COUNT(*) FROM menuHelp
GROUP BY UserName, CompCode ORDER BY COUNT(*) DESC
"""):
    print(" ", r)

print("\n=== User1: users + right-row counts ===")
for r in db.query("""
SELECT USER_NAME, COUNT(*) FROM User1 GROUP BY USER_NAME ORDER BY USER_NAME
"""):
    print(" ", r)

print("\n=== menuHelp Param_Str x Flag (non-SA users) ===")
for r in db.query("""
SELECT UserName, Flag, Param_Str, COUNT(*) FROM menuHelp
WHERE UserName <> 'SA' GROUP BY UserName, Flag, Param_Str
ORDER BY UserName, Flag, COUNT(*) DESC
"""):
    print(f"  {r[0]!r:12} {r[1]!r:5} param={r[2]!r:8} n={r[2] if False else r[3]}")

print("\n=== menuHelp Param_Str x Flag (SA) ===")
for r in db.query("""
SELECT Flag, Param_Str, COUNT(*) FROM menuHelp
WHERE UserName='SA' GROUP BY Flag, Param_Str ORDER BY Flag, COUNT(*) DESC
"""):
    print(f"  {r[0]!r:5} param={r[1]!r:8} n={r[2]}")

print("\n=== Users table (logins) ===")
try:
    for r in db.query("SELECT TOP 10 UserName, CompCode FROM Users ORDER BY UserName"):
        print(" ", r)
except Exception as e:
    print("  Users table:", e)
