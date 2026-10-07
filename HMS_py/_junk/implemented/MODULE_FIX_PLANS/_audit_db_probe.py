import sys

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py")
from core import db

rows = db.query(
    "SELECT LOWER(TABLE_NAME) FROM INFORMATION_SCHEMA.TABLES "
    "WHERE TABLE_TYPE='BASE TABLE' AND LOWER(TABLE_NAME) LIKE 'combo%'"
)
print("combo tables in live DB:", rows)
for (t,) in rows:
    try:
        c = db.query(f"SELECT COUNT(*) FROM [{t}]")[0][0]
        print(f"  {t}: {c} rows")
    except Exception as e:
        print(f"  {t}: ERR {e}")

# confirm whether report buckets contain them
import json, os

root = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py"
jp = os.path.join(root, "_qa", "vb6_py_file_parity.json")
if os.path.isfile(jp):
    data = json.load(open(jp, encoding="utf-8"))
    print("json keys:", list(data.keys()))
