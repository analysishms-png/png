import os, sys
PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
sys.path.insert(0, PROJECT)
from HMS_py.core import db
for t in ("BOM", "Stock"):
    rows = db.query(
        "SELECT COUNT(*) AS N FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = ?",
        (t,))
    print(f"{t}: {'EXISTS' if rows and rows[0].N else 'ABSENT'}")
