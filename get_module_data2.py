from HMS_py.core import db

cfg = db.load_config()
cn = db.connect(cfg)

print('=== User_Module flag=9 roots ===')
rows = db.query("SELECT code, name, srno FROM User_Module WHERE flag='9' ORDER BY srno")
for r in rows:
    print(f'  code={r[0]}, name={r[1]}, srno={r[2]}')

print()
print('=== User_Module flag<>9 items - first 5 per Module_Name ===')
from collections import defaultdict
modules = defaultdict(list)
rows = db.query("SELECT Module_Name, code, name, flag, srno FROM User_Module WHERE flag<>'9' ORDER BY Module_Name, srno")
for r in rows:
    modules[r[0]].append({'code': r[1], 'name': r[2], 'flag': r[3], 'srno': r[4]})

for mod in sorted(modules.keys())[:10]:
    print(f'\nModule: {mod}')
    for item in modules[mod][:5]:
        print(f'  code={item["code"]}, name={item["name"]}, flag={item["flag"]}, srno={item["srno"]}')

print()
print('=== All Module_Name values ===')
for mod in sorted(modules.keys()):
    count = len(modules[mod])
    flags = set(item['flag'] for item in modules[mod])
    print(f'  {mod}: {count} items, flags={sorted(flags)}')

cn.close()