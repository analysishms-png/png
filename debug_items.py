from HMS_py.core import db

cfg = db.load_config()
cn = db.connect(cfg)

# Test _build_menu_from_db for a specific module
module_name = "Finance"
rows = db.query(
    "SELECT code, name, flag, srno FROM User_Module "
    "WHERE Module_Name = ? AND flag <> '9' ORDER BY srno",
    (module_name,))

print(f"Module: {module_name}")
print(f"Total rows: {len(rows)}")
for i, r in enumerate(rows[:5]):
    print(f"  Row {i}: {r}, type: {type(r)}")
    print(f"    len(r)={len(r)}")
    print(f"    r[0]={r[0]}, r[1]={r[1]}, r[2]={r[2]}, r[3]={r[3]}")
    # Try _flag_val
    val = r[2]
    print(f"    r[2] as string: {str(val).strip() if val else 'EMPTY'}")

cn.close()