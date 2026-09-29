import os, sys
PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
sys.path.insert(0, PROJECT)
from HMS_py.core import db

rows = db.query(
    "SELECT COLUMN_NAME AS C, DATA_TYPE AS T FROM INFORMATION_SCHEMA.COLUMNS "
    "WHERE TABLE_NAME = 'ItemMast' ORDER BY ORDINAL_POSITION")
cols = {r.C: r.T for r in rows}
print("ItemMast total cols:", len(cols))
for k in ("DispCode", "GravyItem", "NType", "FinItem", "ItemType", "ActiveYN",
          "IssueUnit", "ConvRatio", "PurchRate", "LPurRate", "BarCode",
          "CommodityCode", "Kitchen", "SChrgApp", "RateIncTax"):
    print(f"  {k}: {cols.get(k, 'ABSENT')}")

rows = db.query(
    "SELECT COLUMN_NAME AS C, DATA_TYPE AS T FROM INFORMATION_SCHEMA.COLUMNS "
    "WHERE TABLE_NAME = 'ItemRate' ORDER BY ORDINAL_POSITION")
print("ItemRate cols:", [(r.C, r.T) for r in rows])
