import sys, os
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import menu, db

# menubar for Main Setup module (srno 41?)
# find menubar function
print("has menubar_for:", hasattr(menu, "menubar_for"))
print("menu funcs:", [x for x in dir(menu) if not x.startswith("_")])

# dump User_Module rows for General Setup / Tax Master path
rows = db.query("""
SELECT srno, code, name, flag, Module_Name FROM User_Module
WHERE name LIKE '%Tax%' OR name LIKE '%General%' OR name LIKE '%State%'
   OR name LIKE '%Printing%' OR Module_Name LIKE '%Setup%'
ORDER BY Module_Name, srno
""")
print("\nUser_Module Tax/Setup/State rows:")
for r in rows:
    print(f"  srno={r[0]:4} code={r[1]:10} flag={r[3]} mod={str(r[4])[:20]:20} name={r[2]!r}")
