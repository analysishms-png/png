import sys
sys.path.insert(0, '.')
from core import db

cn = db.connect()
cursor = cn.cursor()

# Fix: U_AE should be 'A' or 'E' (single char), not 'PYADMIN'
site_code = db.get_site_code()
# Use 'A' for Add (like VB6)
u_ae = 'A'

formats = [
    ('POS', 'KOT Plain Paper Running'),
    ('POS', 'BILL WINDOWS PLAIN PAPER RUNNING'),
    ('POS', 'BILL DOS PLAIN (3) PAPER RUNNING'),
    ('POS', 'BILL DOS POS PREPRINTED FORMAT2'),
    ('POS', 'BILL DOS POS PREPRINTED FORMAT3'),
    ('POS', 'BILL DOS POS PLAIN FORMAT1'),
    ('POS', 'BILL DOS PLAIN (3) PAPER RUNNING (TVSRP3200)'),
    ('POS', 'BILL DOS PLAIN (3) PAPER RUNNING DELAY (TVSRP3200)'),
    ('POS', 'BILL DOS PLAIN (3) INCH INCLUSIVE TAX (TVSRP3200)'),
    ('POS', 'BILL DOS PLAIN PAPER 2IN1'),
    ('POS', 'BILL DOS PLAIN PAPER 2IN1 (HANS REGENCY)'),
    ('POS', 'BILL DOS PLAIN (3) INCH NO TAX (TVSRP3200)'),
    ('POS', 'BILL DOS PLAIN PAPER TVSDOT4 (WITH EJECT)'),
    ('FOM', 'GUEST BILL WINDOWS PLAIN PAPER NEW'),
    ('FOM', 'GUEST BILL DOS 80 COL PLAIN FORMAT1'),
    ('FOM', 'GUEST BILL DOS 80 COL PREPRINTED FORMAT1'),
    ('FOM', 'GUEST BILL DOS 80 COL PREPRINTED FORMAT2'),
    ('FOM', 'GUEST BILL DOS 80 COL PREPRINTED FORMAT3'),
]

for mod_name, mod_desc in formats:
    try:
        cursor.execute("SELECT 1 FROM PrintFormats WHERE ModuleName = ? AND ModuleDescription = ?", (mod_name, mod_desc))
        if not cursor.fetchone():
            cursor.execute("""
                INSERT INTO PrintFormats (ModuleName, ModuleDescription, Site_Code, U_EntDt, U_AE)
                VALUES (?, ?, ?, GETDATE(), ?)
            """, (mod_name, mod_desc, site_code, u_ae))
    except Exception as e:
        print(f"Insert PrintFormats {mod_name}/{mod_desc}: {e}")

cn.commit()
print("Done!")

# Verify
cursor.execute("SELECT COUNT(*) FROM PrintFormats")
print(f"PrintFormats rows: {cursor.fetchone()[0]}")
cursor.execute("SELECT ModuleName, ModuleDescription FROM PrintFormats")
for row in cursor.fetchall():
    print(f"  {row[0]}: {row[1]}")

cn.close()