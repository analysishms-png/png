from HMS_py.core import db


def q(sql, p=()):
    try:
        return db.query(sql, p)
    except Exception as e:
        return "ERR: %s" % e


print("T count", q("SELECT COUNT(*) FROM RevMast WHERE FieldType='T'"))
print("maxname", q("SELECT MAX(LEN(Name)) FROM RevMast WHERE FieldType='T'"))
print("empty ledger", q(
    "SELECT COUNT(*) FROM RevMast WHERE FieldType='T' "
    "AND (ACCode IS NULL OR ACCode='')"))
print("names>25", q(
    "SELECT Code,Name FROM RevMast WHERE FieldType='T' AND LEN(Name)>25"))
print("short>5", q(
    "SELECT Code,ShortName FROM RevMast WHERE FieldType='T' "
    "AND LEN(ShortName)>5"))
print("SubGroup", q("SELECT COUNT(*) FROM SubGroup"))
print("SundryMast", q("SELECT COUNT(*) FROM SundryMast"))
print("audit", q(
    "SELECT TOP 3 Code,U_Name,U_AE,U_EntDt,SysYN FROM RevMast "
    "WHERE FieldType='T'"))
print("sample rows", q(
    "SELECT TOP 5 Code,Name,ShortName,ACCode,PayableAc,UnregisteredAc,"
    "Sundry,Nature,Active,sysyn FROM RevMast WHERE FieldType='T'"))
