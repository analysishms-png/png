from HMS_py.core import db

cfg = db.load_config()
cn = db.connect(cfg)

rows = db.query("SELECT code, name, flag, srno FROM User_Module WHERE flag='9' ORDER BY srno")
for r in rows:
    print(type(r), r, '->', r[0], r[1], r[2], r[3])

cn.close()