import os, sys
PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
sys.path.insert(0, PROJECT)
from HMS_py.core import db
rows = db.query(
    "SELECT DISTINCT TOP 15 Kitchen FROM ItemMast "
    "WHERE ISNULL(Kitchen, '') <> ''")
print("Kitchen values:", [r.Kitchen for r in rows])
rows = db.query(
    "SELECT TOP 8 Code, Name, Type, Kitchen, RestCode, DispCode, Unit, SaleRate "
    "FROM ItemMast WHERE RestCode = 'KKM001' AND ISNULL(SaleRate, 0) > 0")
for r in rows:
    print(f"  {r.Code!r} {r.Name!r} Type={r.Type!r} Kit={r.Kitchen!r} "
          f"Unit={r.Unit!r} Rate={r.SaleRate}")
