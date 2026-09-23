import sys, os, json, inspect, re
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db

# load soon list
soon = json.load(open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_qa\HMSTesting_20260923\soon_flag_map.json", encoding="utf-8"))
e_soon = [x for x in soon if x.get("mh_flag") == "E"]
# unique captions
caps = sorted({x["caption"] for x in e_soon})

# tables existence
tables = {r[0] for r in db.query("SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'")}
views = {r[0] for r in db.query("SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS")}

# search python for openers
root = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py"
index = []
for dirpath, _, files in os.walk(root):
    if "_qa" in dirpath or "tests" in dirpath: continue
    for fn in files:
        if not fn.endswith(".py"): continue
        path = os.path.join(dirpath, fn)
        try:
            text = open(path, encoding="utf-8", errors="ignore").read()
        except: continue
        index.append((path, text))

print(f"SOON Flag=E unique captions: {len(caps)}")
for cap in caps:
    # search caption in py files
    found = []
    for path, text in index:
        if cap in text or cap.strip() in text:
            found.append(os.path.relpath(path, root))
    # related tables guess
    hints = []
    for t in list(tables)[:]:
        pass
    status = "PY_HIT" if found else "NO_PY"
    print(f"  [{status}] {cap!r:45} files={found[:4]}")
