from HMS_py.core import db
print("RoomMast count:", db.query("SELECT COUNT(*) FROM RoomMast")[0][0])
print("RoomOcc count:", db.query("SELECT COUNT(*) FROM RoomOcc")[0][0])
print("Booking count:", db.query("SELECT COUNT(*) FROM Booking")[0][0])
print("GuestFolio count:", db.query("SELECT COUNT(*) FROM GuestFolio")[0][0])

print("Sample RoomMast:")
for r in db.query("SELECT TOP 5 Code, Name, CatCode, Status FROM RoomMast"):
    print(r)

print("RoomOcc status counts:")
for r in db.query("SELECT Status, COUNT(*) FROM RoomOcc GROUP BY Status"):
    print(r)

print("GuestFolio statuses:")
for r in db.query("SELECT Status, COUNT(*) FROM GuestFolio GROUP BY Status"):
    print(r)
