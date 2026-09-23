"""Probe live menuHelp tree (VB6 MDIForm1.frm logic).

VB6 evidence (decompiled MDIForm1.frm / HMS.bas):
- Sidebar modules: SELECT [Option] FROM MenuHelp WHERE Flag<>'V' AND
  Opt1<>0 AND Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName=? AND CompCode=?
- Full tree order: ORDER BY OPT1,OPT2,OPT3,OPT4
- Flag: E=Entry/Form, R=Report, N=Node, V=Hidden, D=Deleted
- [Option]='-' => separator
- Param_Str: AEDP (E/N), ***P (R)
"""
from HMS_py.core import db

print("=== MODULE-LEVEL ROWS (Opt2=0,Opt3=0,Opt4=0, Flag<>'V') ===")
rows = db.query("""
SELECT Opt1, [Option], Flag, COUNT(*) AS n
FROM menuHelp
WHERE Flag <> 'V' AND Opt1 <> 0 AND Opt2 = 0 AND Opt3 = 0 AND Opt4 = 0
  AND UserName = 'SA'
GROUP BY Opt1, [Option], Flag
ORDER BY Opt1
""")
print("count:", len(rows))
for r in rows:
    print(f"  Opt1={r[0]:>4}  flag={r[2]!r:5}  {str(r[1]).strip()[:50]!r:55} n={r[3]}")

print("\n=== LEVEL-2 GROUPS SAMPLE (Opt1=1..3) ===")
rows = db.query("""
SELECT Opt1, Opt2, [Option], Flag, Module_Name
FROM menuHelp
WHERE Flag <> 'V' AND Opt2 <> 0 AND Opt3 = 0 AND Opt4 = 0
  AND UserName = 'SA' AND Opt1 <= 3
ORDER BY Opt1, Opt2
""")
for r in rows[:40]:
    print(f"  O1={r[0]:>3} O2={r[1]:>3} flag={r[3]!r:5} {str(r[2]).strip()[:40]!r:44} mod={r[4]!r}")

print("\n=== FLAG x LEVEL BREAKDOWN (SA) ===")
rows = db.query("""
SELECT Flag,
  SUM(CASE WHEN Opt2=0 AND Opt3=0 AND Opt4=0 THEN 1 ELSE 0 END) AS L1,
  SUM(CASE WHEN Opt2<>0 AND Opt3=0 AND Opt4=0 THEN 1 ELSE 0 END) AS L2,
  SUM(CASE WHEN Opt3<>0 AND Opt4=0 THEN 1 ELSE 0 END) AS L3,
  SUM(CASE WHEN Opt4<>0 THEN 1 ELSE 0 END) AS L4
FROM menuHelp WHERE UserName='SA'
GROUP BY Flag ORDER BY Flag
""")
for r in rows:
    print(f"  flag={r[0]!r:5} L1={r[1]:>4} L2={r[2]:>4} L3={r[3]:>4} L4={r[4]:>4}")

print("\n=== Module_Name DISTINCT (non-empty, SA, Flag<>'V') ===")
rows = db.query("""
SELECT DISTINCT Module_Name FROM menuHelp
WHERE UserName='SA' AND Flag<>'V'
  AND Module_Name IS NOT NULL AND Module_Name <> ''
ORDER BY Module_Name
""")
print("count:", len(rows))
print(" ", [str(r[0]) for r in rows])

print("\n=== Opt1 ranges of existing sidebar roots (User_Module flag=9) ===")
rows = db.query("""
SELECT code, name, srno FROM User_Module WHERE flag='9' ORDER BY srno
""")
print("count:", len(rows))
for r in rows:
    print(f"  code={r[0]!r:12} name={str(r[1])[:28]!r:32} srno={r[2]}")
