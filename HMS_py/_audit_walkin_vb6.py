import re
import sys
from collections import Counter

ROOT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py"
frm = ROOT + r"\implemented\HMS_REVERSE_ENGINEERING\HMS\fdWalkInEntry.frm"

txt = open(frm, encoding="latin-1", errors="replace").read()
lines = txt.splitlines()
print("lines:", len(lines))

# controls
ctrl = Counter(re.findall(r"Begin\s+VB\.(\w+)\s+(\S+)", txt))
print("\n== control types (top) ==")
for (t, n), c in ctrl.most_common(25):
    print(f"  {c:>4}  VB.{t} {n}")

# buttons + captions
print("\n== CommandButton captions ==")
btns = re.findall(
    r"Begin\s+VB\.CommandButton\s+(\S+)(.*?)End", txt, re.S)
for name, body in btns:
    cap = re.search(r'Caption\s*=\s*"([^"]*)"', body)
    print(f"  {name:<22} '{cap.group(1) if cap else ''}'")

# labels (first 40)
print("\n== Labels (sample) ==")
labs = re.findall(
    r"Begin\s+VB\.Label\s+(\S+)(.*?)End", txt, re.S)
caps = []
for name, body in labs:
    cap = re.search(r'Caption\s*=\s*"([^"]*)"', body)
    if cap and cap.group(1).strip():
        caps.append((name, cap.group(1)))
for n, c in caps[:45]:
    print(f"  {n:<24} {c}")
print(f"  ... total labels with caption: {len(caps)}")

# event handlers present
print("\n== Sub handlers ==")
subs = re.findall(r"^Private Sub (\w+)\(([^)]*)\)", txt, re.M)
print(f"  count={len(subs)}")
for n, a in subs[:60]:
    print(f"  {n}({a})")

# SQL strings
print("\n== SQL string literals (sample) ==")
sqls = set()
for m in re.finditer(r'"((?:SELECT|INSERT|UPDATE|DELETE)[^"]{10,400})"', txt, re.I):
    sqls.add(m.group(1))
for s in sorted(sqls)[:30]:
    print("  ", s[:190])
print("  total sql literals:", len(sqls))
