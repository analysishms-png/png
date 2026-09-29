import os, sys
sys.path.insert(0, os.path.dirname(os.getcwd()))
from core import db as _db

cn = _db.connect()
print("Type='C' diff(ChkIn->ChkOut):")
for r in _db.query(
        "SELECT DATEDIFF(day, ChkInDate, ChkOutDate) AS d, COUNT(*) "
        "FROM RoomOcc WHERE Type='C' GROUP BY DATEDIFF(day, ChkInDate, ChkOutDate) "
        "ORDER BY d", cn=cn):
    print("   ", list(r))
print("Type='O' diff:")
for r in _db.query(
        "SELECT DATEDIFF(day, ChkInDate, ChkOutDate) AS d, COUNT(*) "
        "FROM RoomOcc WHERE Type='O' GROUP BY DATEDIFF(day, ChkInDate, ChkOutDate) "
        "ORDER BY d", cn=cn):
    print("   ", list(r))
print("Type='C' sample:")
for r in _db.query(
        "SELECT TOP 5 DocId, CONVERT(varchar(11),ChkInDate,103), ChkInTime, "
        "CONVERT(varchar(11),ChkOutDate,103), ChkOutTime, "
        "CONVERT(varchar(11),DepDate,103), DepTime, DATEDIFF(day,ChkInDate,ChkOutDate) "
        "FROM RoomOcc WHERE Type='C'", cn=cn):
    print("   ", list(r))
print("Type='O' sample (departed folios):")
for r in _db.query(
        "SELECT TOP 5 o.DocId, CONVERT(varchar(11),o.ChkInDate,103), "
        "CONVERT(varchar(11),o.ChkOutDate,103), "
        "DATEDIFF(day,o.ChkInDate,o.ChkOutDate) FROM RoomOcc o "
        "WHERE o.Type='O' ORDER BY o.ChkOutDate DESC", cn=cn):
    print("   ", list(r))
print("DepDate vs ChkOutDate for 'O':")
print(_db.query("SELECT COUNT(*) FROM RoomOcc WHERE Type='O' AND "
                "DATEDIFF(day, DepDate, ChkOutDate)=0", cn=cn)[0][0])
