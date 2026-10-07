import sys, os

sys.path.insert(0, os.path.dirname(os.getcwd()))
from HMS_py.core import db

TABLES = [
    "Sale1",
    "Sale2",
    "GuestFolio",
    "RoomOcc",
    "RoomMast",
    "RoomCat",
    "RevMast",
    "RoomFeature",
    "Enviro",
    "HallSale1",
    "HallSale2",
    "KOT",
    "ItemMast",
    "Company",
    "UserMast",
    "FOMBillDetails",
    "MemberCards",
]

for t in TABLES:
    rows = db.query(
        "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS "
        "WHERE TABLE_NAME=? ORDER BY ORDINAL_POSITION",
        t,
    )
    cols = [str(r[0]) for r in rows]
    print(f"== {t} ({len(cols)}) ==")
    print(", ".join(cols))
    print()
