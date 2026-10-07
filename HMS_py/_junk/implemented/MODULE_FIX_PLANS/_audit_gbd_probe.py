import sys

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db  # noqa: E402

for tbl in ("GrpBookingDetails",):
    rows = db.query(
        "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS "
        "WHERE TABLE_NAME = ? ORDER BY ORDINAL_POSITION", (tbl,))
    print(tbl, "cols:", [r[0] for r in rows])

r = db.query("SELECT TOP 5 BookingDocId, Sno, ArrDate, Cancel "
             "FROM GrpBookingDetails")
print("G samples:", r)
r2 = db.query("SELECT TOP 5 DocId, BookingDocId, BookingSno "
              "FROM GuestFolio WHERE BookingDocId IS NOT NULL "
              "AND BookingDocId <> ''")
print("F booking-link samples:", r2)
