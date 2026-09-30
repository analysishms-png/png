import os, sys
PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
sys.path.insert(0, PROJECT)
from HMS_py.core import db
rows = db.query("SELECT DISTINCT TOP 12 Type FROM ItemMast")
print("Type values:", [r.Type for r in rows])
rows = db.query(
    "SELECT COLUMN_NAME AS C FROM INFORMATION_SCHEMA.COLUMNS "
    "WHERE TABLE_NAME = 'Depart' ORDER BY ORDINAL_POSITION")
print("Depart cols:", [r.C for r in rows])
rows = db.query(
    "SELECT ISNULL(MAX(CAST(SUBSTRING(Q.Code, 3, 6) AS INT)), 0) + 1 AS N "
    "FROM (SELECT Code, Site_Code FROM Item UNION SELECT Code, Site_Code "
    "FROM ItemMast) Q WHERE Q.Site_Code = ? "
    "AND ISNUMERIC(SUBSTRING(Q.Code, 3, 6)) = 1", (db.get_site_code(),))
print("Next gravy code would be:", db.get_site_code()[:2]
      + str(rows[0].N).rjust(6, "0"))
