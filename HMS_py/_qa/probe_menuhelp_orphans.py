"""Probe-3: caption overlap with registry, orphan rows, separators, L4 leaves."""
from HMS_py.core import db

print("=== Orphan Opt1 (no L1 N-node) / '-' separator rows / L4 rows ===")
rows = db.query("""
SELECT Opt1, Opt2, Opt3, Opt4, [Option], Flag
FROM menuHelp WHERE UserName='SA' AND Flag<>'V'
ORDER BY Opt1, Opt2, Opt3, Opt4
""")
o1_nodes = {r[0] for r in rows
            if r[1] == 0 and r[2] == 0 and r[3] == 0 and r[4] == 'N'}
seps = [r for r in rows if str(r[4]).strip() == '-']
l4 = [r for r in rows if r[3] != 0]
orphan = [r for r in rows
          if r[0] not in o1_nodes and not (r[1] == 0 and r[2] == 0 and r[3] == 0)]
print("o1_nodes:", sorted(o1_nodes))
print("separator rows:", len(seps), seps[:6])
print("L4 rows:", len(l4), l4[:6])
print("orphan Opt1 rows (no L1 node):", len(orphan))
for r in orphan[:15]:
    print("   ", r)

print("\n=== Main Setup (Opt1=12) leaf captions ===")
ms = [str(r[4]).strip() for r in rows
      if r[0] == 12 and r[4] != 'N' and str(r[4]).strip() != '-']
print("count:", len(ms))
print(ms)

# Registry caption set (from shell, no Qt import needed)
import importlib.util, re, os
shell_path = os.path.join("HMS_py", "ui", "shell.py")
if not os.path.exists(shell_path):
    shell_path = os.path.join("..", "HMS_py", "ui", "shell.py")
src = open(shell_path, encoding="utf-8", errors="ignore").read()
m = re.search(r"def _form_registry\(\).*?^\s{4}\}", src, re.S | re.M)
caps = set()
if m:
    block = m.group(0)
    for cm in re.finditer(r'"([^"]{2,60})":\s*\(', block):
        caps.add(cm.group(1).strip())
    for cm in re.finditer(r'^\s{8}"([^"]{2,60})":\s', block, re.M):
        caps.add(cm.group(1).strip())

print("\n=== Main Setup captions NOT in registry (approx, strip-normalized) ===")
norm = lambda s: re.sub(r"\s+", " ", str(s)).strip()
capn = {norm(c) for c in caps}
missing = [c for c in ms if norm(c) not in capn]
print("count:", len(missing))
for c in missing:
    print("  -", repr(c))

print("\n=== All leaf captions NOT in registry (all modules, approx) ===")
all_leaves = [str(r[4]).strip() for r in rows
              if r[4] not in ('N',) and str(r[4]).strip() not in ('-', '')
              and not (r[1] == 0 and r[2] == 0 and r[3] == 0)]
allmiss = sorted({c for c in all_leaves if norm(c) not in capn})
print("count:", len(allmiss))
for c in allmiss:
    print("  -", repr(c))
