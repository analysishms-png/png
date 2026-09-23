from HMS_py.core import db

cfg = db.load_config()
cn = db.connect(cfg)

# Test the flag_val logic
rows = db.query("SELECT TOP 3 code, name, flag, srno FROM User_Module WHERE flag<>'9' ORDER BY Module_Name, srno")
for r in rows:
    print(f"Row: {r}, len: {len(r)}")
    # Try different index accesses
    print(f"  r[0]={r[0]}, r[1]={r[1]}, r[2]={r[2]}, r[3]={r[3]}")

cn.close()