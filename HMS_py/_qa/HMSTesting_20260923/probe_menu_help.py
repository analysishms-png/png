import sys, os
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db

# Find MENU HELP / menu-related tables
rows = db.query("""
SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE='BASE TABLE' AND (
  TABLE_NAME LIKE '%Menu%' OR TABLE_NAME LIKE '%Help%'
  OR TABLE_NAME LIKE '%Module%' OR TABLE_NAME LIKE '%Right%'
  OR TABLE_NAME LIKE '%Flag%' OR TABLE_NAME LIKE '%User%'
)
ORDER BY TABLE_NAME
""")
print("=== menu/help/module tables ===")
for r in rows:
    print(" ", r[0])

# sample each
for (t,) in rows:
    try:
        n = db.query(f"SELECT COUNT(*) FROM [{t}]")[0][0]
        cols = db.query(f"""SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
            WHERE TABLE_NAME=? ORDER BY ORDINAL_POSITION""", (t,))
        colnames = [c[0] for c in cols]
        print(f"\n[{t}] rows={n} cols={colnames[:20]}")
        sample = db.query(f"SELECT TOP 3 * FROM [{t}]")
        for s in sample:
            print("   ", s)
    except Exception as e:
        print(f"\n[{t}] ERR {e}")
