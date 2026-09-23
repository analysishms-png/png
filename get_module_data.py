from HMS_py.core import db

cfg = db.load_config()
cn = db.connect(cfg)

print('=== User_Module distinct Module_Name ===')
rows = db.query('SELECT DISTINCT Module_Name, flag FROM User_Module ORDER BY Module_Name')
for r in rows:
    print(f'  Module_Name={r[0]}, flag={r[1]}')

print()
print('=== User_Module flag=9 roots ===')
rows = db.query("SELECT code, name, srno FROM User_Module WHERE flag='9' ORDER BY srno")
for r in rows:
    print(f'  code={r[0]}, name={r[1]}, srno={r[2]}')

print()
print('=== User_Module flag<>9 items sample (first 30) ===')
rows = db.query("SELECT Module_Name, code, name, flag, srno FROM User_Module WHERE flag<>'9' ORDER BY Module_Name, srno LIMIT 30")
for r in rows:
    print(f'  Module={r[0]}, code={r[1]}, name={r[2]}, flag={r[3]}, srno={r[4]}')

cn.close()