import os, sys
sys.path.insert(0, os.path.dirname(os.getcwd()))
from core import db as _db

cn = _db.connect()
def cols(t):
    return [r[0] for r in _db.query(
        "SELECT c.name FROM sys.columns c JOIN sys.tables t "
        "ON t.object_id=c.object_id WHERE t.name=?", (t,), cn=cn)]

for t in ("Travel1", "Travel2", "Ledger", "GuestFolio", "RoomOcc",
          "GuestProf"):
    c = cols(t)
    print(f"{t}: {'ABSENT' if not c else len(c)} -> {c[:22]}")

print("--- Enviro CommissionAc ---")
print(_db.query("SELECT CommissionAc, LogSite_Code FROM Enviro", cn=cn))
print("--- Voucher_Prefix PRAP ---")
for r in _db.query(
        "SELECT V_Type, Prefix, Start_Srl_No, CONVERT(varchar(11),Date_From,103), "
        "Site_Code, LogSite_Code FROM Voucher_Prefix WHERE V_Type='PRAP'",
        cn=cn):
    print("   ", list(r))
print("--- Voucher_Type PRAP ---")
for r in _db.query(
        "SELECT V_Type, Description, Number_Method, Category FROM Voucher_Type "
        "WHERE V_Type='PRAP'", cn=cn):
    print("   ", list(r))
print("--- Travel Agency subgroups ---")
print(_db.query(
    "SELECT COUNT(*) FROM SubGroup WHERE ActiveYN=1 AND "
    "(LogSite_Code=? OR LogSite_Code='HO') AND CompanyType LIKE 'Travel Agency'",
    ("KK",), cn=cn)[0][0])
for r in _db.query(
        "SELECT TOP 8 SubCode, Name, CompanyType, Commission FROM SubGroup "
        "WHERE ActiveYN=1 AND CompanyType LIKE 'Travel Agency'", cn=cn):
    print("   ", list(r))
print("--- SubGroup cols ---")
print(cols("SubGroup"))
print("--- GuestFolio TravelAgent present? ---")
gf = cols("GuestFolio")
print([c for c in gf if c.lower() in ("travelagent", "guestprof", "vdate",
                                      "nodays", "docid")])
print("--- counts ---")
for t in ("Travel1", "Travel2", "GuestFolio", "RoomOcc", "GuestProf"):
    print(t, _db.query(f"SELECT COUNT(*) FROM [{t}]", cn=cn)[0][0])
print("--- Ledger PRAP rows ---")
print(_db.query("SELECT COUNT(*) FROM Ledger WHERE V_Type='PRAP'", cn=cn)[0][0])
