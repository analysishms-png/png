import sys
sys.path.insert(0, '.')
from HMS_py.core import db

rows = db.query("SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME LIKE '%Tax%'")
for r in rows:
    print(r[0])