import sys
sys.path.insert(0, '.')
from core import db

cn = db.connect()
cursor = cn.cursor()

# Check the length of the descriptions
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
    print(f"'{mod_desc}' len={len(mod_desc)}")

site_code = db.get_site_code()
user = db.get_user()

# Try parameterized insert with first one
print("\nTrying parameterized insert with first format...")
try:
    cursor.execute("""
        INSERT INTO PrintFormats (ModuleName, ModuleDescription, Site_Code, U_EntDt, U_AE)
        VALUES (?, ?, ?, GETDATE(), ?)
    """, (formats[0][0], formats[0][1], site_code, user))
    cn.commit()
    print("Parameterized insert worked!")
except Exception as e:
    print(f"Parameterized insert error: {e}")

cn.close()