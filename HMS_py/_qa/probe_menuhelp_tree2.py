"""Probe-2: full menuHelp tree per module + CompCode check."""
from HMS_py.core import db

print("=== SA CompCode distribution ===")
for r in db.query("""
SELECT CompCode, COUNT(*) FROM menuHelp WHERE UserName='SA'
GROUP BY CompCode
"""):
    print(" ", r)

print("\n=== ALL Opt1 buckets (SA, all flags) ===")
for r in db.query("""
SELECT Opt1, Flag, COUNT(*) FROM menuHelp WHERE UserName='SA'
GROUP BY Opt1, Flag ORDER BY Opt1, Flag
"""):
    print(f"  Opt1={r[0]:>4} flag={r[1]!r:5} n={r[2]}")

print("\n=== L2 NODES (Flag='N', Opt2<>0, Opt3=0, Opt4=0) per Opt1 ===")
rows = db.query("""
SELECT Opt1, Opt2, [Option] FROM menuHelp
WHERE UserName='SA' AND Flag='N' AND Opt1<>0 AND Opt2<>0 AND Opt3=0 AND Opt4=0
ORDER BY Opt1, Opt2
""")
for r in rows:
    print(f"  O1={r[0]:>3} O2={r[1]:>3}  {str(r[2]).strip()[:45]!r}")

print("\n=== EPABX / Messaging / Member / Mall / Sale&Marketing in menuHelp? ===")
for name in ("EPABX", "Messaging", "Members", "Mall", "Sale", "Telephone", "SMS"):
    rows = db.query("""
    SELECT TOP 5 Opt1, Opt2, [Option], Flag FROM menuHelp
    WHERE UserName='SA' AND [Option] LIKE ?
    """, (f"%{name}%",))
    print(f"  {name!r}:")
    for r in rows:
        print(f"    O1={r[0]} O2={r[1]} flag={r[3]!r} {str(r[2]).strip()[:40]!r}")

print("\n=== Sample: Front Office full tree (Opt1=14) ===")
rows = db.query("""
SELECT Opt2, Opt3, Opt4, [Option], Flag, Param_Str
FROM menuHelp
WHERE UserName='SA' AND Opt1=14 AND Flag<>'V'
ORDER BY Opt2, Opt3, Opt4
""")
for r in rows:
    print(f"  O2={r[0]:>3} O3={r[1]:>3} O4={r[2]:>3} flag={r[4]!r:4} param={r[5]!r:8} {str(r[3]).strip()[:42]!r}")
