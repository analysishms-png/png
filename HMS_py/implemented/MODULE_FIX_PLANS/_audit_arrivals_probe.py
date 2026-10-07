import sys

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db  # noqa: E402

r = db.query("SELECT COUNT(*) FROM GrpBookingDetails")
print("GrpBookingDetails rows:", r[0][0])
r2 = db.query("SELECT COUNT(*) FROM Booking")
print("Booking rows:", r2[0][0])
r3 = db.query(
    "SELECT TOP 8 B.DocId, B.GuestProf, B.ArrDate, B.Cancel, "
    "G.ArrDate, G.Sno, G.Cancel "
    "FROM Booking B INNER JOIN GrpBookingDetails G "
    "ON G.BookingDocid = B.DocId ORDER BY B.ArrDate DESC")
for x in r3:
    print(" sample:", x)
# today's arrivals per VB6 SQL shape
r4 = db.query(
    "SELECT COUNT(*) FROM Booking B WHERE B.CANCEL = 'N' "
    "AND EXISTS (SELECT 1 FROM GrpBookingDetails G "
    "WHERE G.BookingDocid = B.DocId AND G.ArrDate = CAST(GETDATE() AS DATE) "
    "AND ISNULL(G.Cancel, '') <> 'Y')")
print("today arrivals (VB6 shape):", r4[0][0])
r5 = db.query(
    "SELECT COUNT(*) FROM Booking B WHERE B.CANCEL = 'N' "
    "AND B.ArrDate <= CAST(GETDATE() AS DATE) "
    "AND NOT EXISTS (SELECT 1 FROM GuestFolio F "
    "WHERE F.BookingDocId = B.DocId)")
print("not-yet-checkedin bookings arr<=today:", r5[0][0])
