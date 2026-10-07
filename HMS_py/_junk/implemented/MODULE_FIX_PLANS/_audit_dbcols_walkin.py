import sys

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db  # noqa: E402

for tbl in ("GuestFolio", "RoomOcc"):
    rows = db.query(
        "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS "
        "WHERE TABLE_NAME = ? ORDER BY ORDINAL_POSITION", (tbl,))
    cols = [r[0] for r in rows]
    print(f"== {tbl} ({len(cols)} cols) ==")
    print(" ".join(cols))
    for want in ("Add1", "Add2", "Nationality", "ArrFrom", "Destination",
                 "TravelMode", "Company", "TravelAgent", "Remarks", "Remark",
                 "RoDisc", "RoomCat", "RoomRate", "DepTime"):
        print(f"   {want}: {'YES' if want in cols else 'no'}")
