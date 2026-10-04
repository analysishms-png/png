from HMS_py.core import db
def cols(t):
    return db.query("SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME=? ORDER BY ORDINAL_POSITION", (t,))
for t in ("TransOut", "TransIn"):
    try:
        r = cols(t)
        print(t, len(r), [(x[0], x[1], x[2]) for x in r])
    except Exception as e:
        print(t, "ERR", e)
for t in ("TransOut", "TransIn"):
    try:
        print(t, "count", db.query("SELECT COUNT(*) FROM " + t))
        for row in db.query("SELECT TOP 4 * FROM " + t):
            print("  ", tuple(row))
    except Exception as e:
        print(t, "ERR", e)
for t in ("Table_SearchField", "Log_TableRecords", "TransDel", "Site", "Enviro", "Sale1", "Sale2", "Stock", "SunTran", "PayCharge"):
    print(t, bool(db.query("SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME=?", (t,))))
