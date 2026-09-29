import os, sys
PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
sys.path.insert(0, PROJECT)
from HMS_py.core import db

print("== ItemMast PK/unique constraints ==")
rows = db.query(
    "SELECT kc.name, kc.type_desc, c.name AS col_name, ic.key_ordinal "
    "FROM sys.key_constraints kc "
    "JOIN sys.index_columns ic ON ic.object_id = kc.parent_object_id "
    " AND ic.index_id = kc.unique_index_id "
    "JOIN sys.columns c ON c.object_id = ic.object_id AND c.column_id = ic.column_id "
    "WHERE kc.parent_object_id = OBJECT_ID('ItemMast') ORDER BY kc.name, ic.key_ordinal")
for r in rows:
    print(f"  {r.name} {r.type_desc}: {r.col_name} (ord {r.key_ordinal})")

print("== ItemMast code samples ==")
rows = db.query("SELECT TOP 8 Code, Name, RestCode FROM ItemMast ORDER BY Code")
for r in rows:
    print(f"  {r.Code!r} {r.Name!r} {r.RestCode!r}")

print("== Same Code across outlets? ==")
rows = db.query(
    "SELECT TOP 5 Code, COUNT(*) AS N FROM ItemMast "
    "GROUP BY Code HAVING COUNT(*) > 1 ORDER BY COUNT(*) DESC")
for r in rows:
    print(f"  {r.Code!r}: {r.N} rows")

print("== Outlets (Depart) ==")
rows = db.query(
    "SELECT Code, Name, RestType, ShortName, OutletYN FROM Depart "
    "WHERE (LOGSITE_CODE = ? OR LOGSITE_CODE = 'HO') AND OutletYN = 'Y' "
    "AND RestType <> 'Banquet' ORDER BY Name", (db.get_site_code(),))
for r in rows:
    print(f"  {r.Code!r} {r.Name!r} {r.RestType!r} {r.OutletYN!r}")
