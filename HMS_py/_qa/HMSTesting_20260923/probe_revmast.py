import sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db

cols = db.query(
    "SELECT c.name FROM sys.columns c "
    "WHERE c.object_id=OBJECT_ID('RevMast') ORDER BY c.column_id"
)
print("COLS", ",".join(r[0] for r in cols))

rows = db.query(
    "SELECT TOP 5 Code, Name, ShortName, ACCode, PayableAc, UnregisteredAc, "
    "Sundry, RoundOff, FieldType, Active, SysYN "
    "FROM RevMast WHERE FieldType = ?",
    ("T",),
)
for r in rows:
    print(tuple(r))

cnt = db.query("SELECT COUNT_BIG(*) FROM RevMast WHERE FieldType = ?", ("T",))
print("Tcount", cnt[0][0])

# sample nature / tax-like columns if present
want = {"nature", "active", "sysyn", "roundoff", "sundry", "accode",
        "payableac", "unregisteredac", "taxstru", "cost", "salerate"}
have = {r[0].lower() for r in cols}
print("have_interesting", sorted(have & want))
