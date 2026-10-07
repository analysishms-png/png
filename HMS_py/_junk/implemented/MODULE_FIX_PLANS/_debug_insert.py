import sys, datetime, traceback

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import booking, db  # noqa: E402

# 1. count GuestFolio INSERT markers
import inspect
src = inspect.getsource(booking.create_checkin) if hasattr(booking, "create_checkin") else ""

sql = (
    "INSERT INTO GuestFolio (DocId, FolioNo, Vtype, Vprefix, "
    "Vdate, GuestProf, Name, Add1, Add2, City, Nationality, "
    "ArrFrom, Destination, TravelMode, Company, TravelAgent, "
    "Remark, RODisc, NoDays, DepDate, BookingDocId, BookingSno, "
    "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
    "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)")
print("markers in this replica:", sql.count("?"))

# 2. booking.insert in txn
cn = db.connect()
try:
    cn.autocommit = False
    today = datetime.date.today()
    try:
        b = booking.insert({
            "guestname": "PYT DEBUG ARR", "arrdate": today,
            "depdate": today + datetime.timedelta(days=1),
            "nodays": 1, "adult": 1, "child": 0, "noofrooms": 2,
            "roomrate": 100.0, "guestprof": "",
            "check_conflict": False,
        }, cn=cn, commit=False, user="PYADMIN")
        print("insert returned:", type(b), b)
    except Exception:
        traceback.print_exc()
finally:
    cn.rollback()
    cn.close()
