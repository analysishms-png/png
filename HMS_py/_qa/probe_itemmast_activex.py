import os, sys
PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
sys.path.insert(0, PROJECT)
from HMS_py.core import db
rows = db.query(
    "SELECT ActiveYN, COUNT(*) AS N FROM ItemMast GROUP BY ActiveYN")
for r in rows:
    print(f"  ActiveYN={r.ActiveYN!r}: {r.N}")
