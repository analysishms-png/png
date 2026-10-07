import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')

from HMS_py.core import db

# Test mcurstk
print("=== Testing mcurstk ===")
cn = db.connect()
try:
    rows = db.query("SELECT TOP 5 ItemCode, GodownCode, QtyOnHand FROM mcurstk", cn=cn)
    print(f"Direct query: {len(rows)} rows")
    for r in rows:
        print(f"  {r.ItemCode} @ {r.GodownCode} = {r.QtyOnHand}")
finally:
    cn.close()

# Test usermodule1
print("\n=== Testing usermodule1 ===")
cn = db.connect()
try:
    rows = db.query("SELECT TOP 5 Code, UserName, Flag FROM usermodule1", cn=cn)
    print(f"Direct query: {len(rows)} rows")
    for r in rows:
        print(f"  Code={r.Code}, User={r.UserName}, Flag={r.Flag}")
finally:
    cn.close()

# Test sale2log
print("\n=== Testing sale2log ===")
cn = db.connect()
try:
    rows = db.query("SELECT TOP 5 DocId, VDate, Item, Amount FROM sale2log ORDER BY VDate DESC", cn=cn)
    print(f"Direct query: {len(rows)} rows")
    for r in rows:
        print(f"  {r.DocId} {r.VDate} {r.Item} = {r.Amount}")
finally:
    cn.close()