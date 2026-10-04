import sys
sys.path.insert(0, '.')
from HMS_py.core import db

rows = db.query("SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'TaxStru' ORDER BY ORDINAL_POSITION")
for r in rows:
    print(r[0], r[1])