import sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db
conn = db.connect(); cur = conn.cursor()
pats = ["%Vouch%", "%Table%", "%Hall%", "%Tel%", "%EPABX%", "%Complain%", "%Block%", "%Discount%", "%Attend%", "%Member%", "%Smart%", "%Cater%", "%Event%"]
for pat in pats:
    cur.execute(
        "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES "
        "WHERE TABLE_TYPE='BASE TABLE' AND TABLE_NAME LIKE ? ORDER BY TABLE_NAME",
        (pat,),
    )
    names = [r[0] for r in cur.fetchall()]
    print(pat, "->", names[:30])
