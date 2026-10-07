import sys

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db  # noqa: E402

rows = db.query(
    "SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH "
    "FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Booking' "
    "ORDER BY ORDINAL_POSITION")
print("Booking cols:", len(rows))
for x in rows:
    print(" ", x)
