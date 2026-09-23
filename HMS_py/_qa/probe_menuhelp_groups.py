"""Probe-4: L2 group titles completeness + O1=17/27 layout."""
from HMS_py.core import db

rows = db.query("""
SELECT Opt1, Opt2, Opt3, Opt4, [Option], Flag
FROM menuHelp WHERE UserName='SA' AND Flag<>'V'
ORDER BY Opt1, Opt2, Opt3, Opt4
""")

# L2 N titles per Opt1
l2n = {}
for r in rows:
    if r[1] != 0 and r[2] == 0 and r[3] == 0 and r[5] == 'N':
        l2n.setdefault(r[0], {})[r[1]] = str(r[4]).strip()

# Opt2 values actually used by leaf rows (E/R)
used_o2 = {}
for r in rows:
    if r[1] != 0 and r[5] in ('E', 'R'):
        used_o2.setdefault(r[0], set()).add(r[1])

print("=== Opt2 values used by E/R leaves WITHOUT L2 N title ===")
for o1, o2s in sorted(used_o2.items()):
    titles = l2n.get(o1, {})
    missing = sorted(o2 for o2 in o2s if o2 not in titles)
    if missing:
        print(f"  O1={o1}: O2 without N-title: {missing}")
        for r in rows:
            if r[0] == o1 and r[1] in missing and r[5] in ('E', 'R'):
                print(f"      O2={r[1]} O3={r[2]} O4={r[3]} flag={r[5]} {str(r[4]).strip()[:40]!r}")

print("\n=== O1=11 (Finance) full ===")
for r in rows:
    if r[0] == 11:
        print(f"  O2={r[1]:>3} O3={r[2]:>3} O4={r[3]:>3} {r[5]} {str(r[4]).strip()[:40]!r}")

print("\n=== O1=17 (POS) O2<17 rows ===")
for r in rows:
    if r[0] == 17 and r[1] < 17:
        print(f"  O2={r[1]:>3} O3={r[2]:>3} O4={r[3]:>3} {r[5]} {str(r[4]).strip()[:40]!r}")

print("\n=== O1=27 (EXTRAs) full ===")
for r in rows:
    if r[0] == 27:
        print(f"  O2={r[1]:>3} O3={r[2]:>3} O4={r[3]:>3} {r[5]} {str(r[4]).strip()[:40]!r}")

print("\n=== L3 N rows (sub-submenus) ===")
for r in rows:
    if r[2] != 0 and r[3] == 0 and r[5] == 'N':
        print(f"  O1={r[0]} O2={r[1]} O3={r[2]} {str(r[4]).strip()!r}")
