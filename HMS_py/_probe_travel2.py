import os, sys, datetime
sys.path.insert(0, os.path.dirname(os.getcwd()))
from core import db as _db

cn = _db.connect()
print("folios with TravelAgent:",
      _db.query("SELECT COUNT(*) FROM GuestFolio WHERE TravelAgent IS NOT NULL "
                "AND RTRIM(TravelAgent)<>''", cn=cn)[0][0])
for r in _db.query("SELECT TravelAgent, COUNT(*) FROM GuestFolio "
                   "WHERE TravelAgent IS NOT NULL AND RTRIM(TravelAgent)<>'' "
                   "GROUP BY TravelAgent", cn=cn):
    print("   ", list(r))
print("RoomOcc Type values:",
      _db.query("SELECT ISNULL(Type,'<null>'), COUNT(*) FROM RoomOcc "
                "GROUP BY Type", cn=cn))
print("GF Vdate range:",
      _db.query("SELECT MIN(Vdate), MAX(Vdate) FROM GuestFolio", cn=cn))
print("PREFIX cols:",
      [r[0] for r in _db.query(
          "SELECT c.name FROM sys.columns c JOIN sys.tables t "
          "ON t.object_id=c.object_id WHERE t.name='Voucher_Prefix'", cn=cn)])
print("LEDGER grp cols:",
      [r[0] for r in _db.query(
          "SELECT c.name FROM sys.columns c JOIN sys.tables t "
          "ON t.object_id=c.object_id WHERE t.name='Ledger'", cn=cn)])
print("SITE:", _db.get_site_code(), "USER:", _db.get_user())
