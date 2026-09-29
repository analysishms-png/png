import os, sys
PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
sys.path.insert(0, PROJECT)
from HMS_py.core import db
rows = db.query(
    "SELECT COLUMN_NAME AS C FROM INFORMATION_SCHEMA.COLUMNS "
    "WHERE TABLE_NAME = 'Booking'")
cols = {r.C for r in rows}
print("Booking total cols:", len(cols))
for k in ("Authorization", "Verified", "RefBookNo", "BookStatus", "RefCode",
          "RDisc", "RSDisc", "AdvDueDate", "OccRoom", "PackageCode",
          "RRTaxInc", "RRServiceChrg"):
    print(f"  {k}: {'PRESENT' if k in cols else 'ABSENT'}")
