import re
import sys

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py")
from core import db  # noqa: E402

ROOT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py"
txt = open(ROOT + r"\VB6_VS_PYTHON_FILE_BY_FILE.txt", encoding="utf-8",
           errors="replace").read()
m = re.search(
    r"C5\. SQL me refer par LIVE DB me BASE TABLE nahi.*?\[n=(\d+)\] ---\n   (.+?)\n",
    txt, re.S)
n = int(m.group(1))
toks = [t.strip() for t in m.group(2).split(",") if t.strip()]
print("C5 declared:", n, "parsed:", len(toks))

views = {r[0] for r in db.query(
    "SELECT LOWER(TABLE_NAME) FROM INFORMATION_SCHEMA.VIEWS")}
base = {r[0] for r in db.query(
    "SELECT LOWER(TABLE_NAME) FROM INFORMATION_SCHEMA.TABLES "
    "WHERE TABLE_TYPE='BASE TABLE'")}

in_views = [t for t in toks if t in views]
in_base = [t for t in toks if t in base]
nowhere = [t for t in toks if t not in views and t not in base]
print("C5 = VIEW in current DB :", len(in_views))
print("C5 = BASE in current DB :", len(in_base))
print("C5 nowhere in current DB:", len(nowhere))
print("NOWHERE tokens:")
print(", ".join(sorted(nowhere)))

# does VB6 reference the 5 absent names?
hms = ROOT + r"\implemented\HMS_REVERSE_ENGINEERING\HMS\HMS.bas"
for name in ("GodrejLockSettings", "GodrejLockOperations", "DoorLockEnviro",
             "DepartWiseItemIssueList", "ItemIssuedOnCleaning"):
    hits = 0
    with open(hms, encoding="utf-8", errors="replace") as fh:
        for line in fh:
            if name.lower() in line.lower():
                hits += 1
                if hits >= 3:
                    break
    print(f"HMS.bas refs {name}: {'YES' if hits else 'NO'} (showing {hits})")
