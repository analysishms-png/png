import sys

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db  # noqa: E402

r = db.query(
    "SELECT TOP 4 BookingDocid, Sno, RoomDet, Adults, Childs, Tarrif, "
    "RoomNo, RateCode, ArrDate, ArrTime, NoDays, DepDate, Cancel, "
    "RoomCat, Plan_Package, Remarks, Site_Code "
    "FROM GrpBookingDetails WHERE BookingDocid LIKE '%2026%' "
    "ORDER BY BookingDocid, Sno")
for x in r:
    print(x)
