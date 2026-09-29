import os, sys
PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
sys.path.insert(0, PROJECT)
from HMS_py.core import db

for t in ("Item", "ItemMast", "UnitMast"):
    rows = db.query(
        "SELECT COUNT(*) AS N FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = ?",
        (t,))
    print(f"{t}: {'EXISTS' if rows and rows[0].N else 'ABSENT'}")

rows = db.query(
    "SELECT COUNT(*) AS N FROM ItemMast WHERE GravyItem = 'Yes'")
print("GravyItem='Yes' rows:", rows[0].N if rows else 0)

rows = db.query(
    "SELECT TOP 5 Code, Name, RestCode, Kitchen, SaleRate, Type FROM ItemMast "
    "WHERE GravyItem = 'Yes' ORDER BY Code")
for r in rows:
    print(f"  {r.Code!r} {r.Name!r} Rest={r.RestCode!r} Kit={r.Kitchen!r} "
          f"Rate={r.SaleRate} Type={r.Type!r}")

rows = db.query(
    "SELECT TOP 5 Code FROM ItemMast WHERE Site_Code = ? "
    "AND ISNUMERIC(SUBSTRING(Code, 3, 6)) = 1 ORDER BY Code DESC",
    (db.get_site_code(),))
print("Sample numeric codes:", [r.Code for r in rows])

rows = db.query("SELECT COUNT(*) AS N FROM UnitMast")
print("UnitMast rows:", rows[0].N if rows else 0)
rows = db.query("SELECT TOP 5 Name FROM UnitMast ORDER BY Name")
print("UnitMast sample:", [r.Name for r in rows])
