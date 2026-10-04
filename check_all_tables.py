import sys
sys.path.insert(0, '.')
from HMS_py.core import db

tables = ['UserMast', 'RoomFeature', 'GodownMast', 'Voucher_Type', 'Subgroup', 'City', 'Employee', 'PlanMast', 'SubGroup', 'City', 'PaymentType', 'SubGroup']
for table in tables:
    rows = db.query(f"SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '{table}' ORDER BY ORDINAL_POSITION")
    if rows:
        print(f"\n=== {table} ===")
        for r in rows:
            print(f"  {r[0]} {r[1]}")
    else:
        print(f"\n=== {table} ===")
        print("  NOT FOUND")