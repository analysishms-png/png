import sys
sys.path.insert(0, '.')
from core import db

cn = db.connect()
cursor = cn.cursor()

# Create PrintFormats table
print("Creating PrintFormats table...")
try:
    cursor.execute("""
        CREATE TABLE PrintFormats (
            ModuleName varchar(10) NOT NULL,
            ModuleDescription varchar(100) NOT NULL,
            Site_Code varchar(2) NOT NULL,
            U_EntDt datetime NOT NULL DEFAULT GETDATE(),
            U_AE varchar(1) NOT NULL DEFAULT 'A'
        )
    """)
    print("PrintFormats table created")
except Exception as e:
    print(f"PrintFormats: {e}")

# Create PrintMast table
print("Creating PrintMast table...")
try:
    cursor.execute("""
        CREATE TABLE PrintMast (
            Code varchar(5) NOT NULL PRIMARY KEY,
            ModuleDescription varchar(100) NOT NULL,
            RestCode varchar(6) NOT NULL,
            ModType varchar(10) NOT NULL,
            Site_Code varchar(2) NOT NULL,
            U_EntDt datetime NOT NULL DEFAULT GETDATE(),
            U_AE varchar(1) NOT NULL DEFAULT 'A'
        )
    """)
    print("PrintMast table created")
except Exception as e:
    print(f"PrintMast: {e}")

# Create PrinterSetup table
print("Creating PrinterSetup table...")
try:
    cursor.execute("""
        CREATE TABLE PrinterSetup (
            ModType varchar(10) NOT NULL,
            ModDescription varchar(100) NOT NULL,
            ModCode varchar(10) NOT NULL,
            Printer varchar(100) NOT NULL,
            AutoPrint varchar(1) NOT NULL DEFAULT 'N',
            RestCode varchar(6) NOT NULL,
            Site_Code varchar(2) NOT NULL,
            U_EntDt datetime NOT NULL DEFAULT GETDATE(),
            U_AE varchar(1) NOT NULL DEFAULT 'A'
        )
    """)
    print("PrinterSetup table created")
except Exception as e:
    print(f"PrinterSetup: {e}")

# Insert default PrintFormats data (from VB6 Hotlib.bas)
print("Inserting default PrintFormats...")
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

site_code = db.get_site_code()
user = db.get_user()

for mod_name, mod_desc in formats:
    try:
        cursor.execute("""
            IF NOT EXISTS (SELECT 1 FROM PrintFormats WHERE ModuleName = ? AND ModuleDescription = ?)
            INSERT INTO PrintFormats (ModuleName, ModuleDescription, Site_Code, U_EntDt, U_AE)
            VALUES (?, ?, ?, GETDATE(), ?)
        """, (mod_name, mod_desc, mod_name, mod_desc, site_code, user))
    except Exception as e:
        print(f"Insert PrintFormats {mod_name}/{mod_desc}: {e}")

cn.commit()
print("Done!")

# Verify
cursor.execute("SELECT COUNT(*) FROM PrintFormats")
print(f"PrintFormats rows: {cursor.fetchone()[0]}")
cursor.execute("SELECT COUNT(*) FROM PrintMast")
print(f"PrintMast rows: {cursor.fetchone()[0]}")
cursor.execute("SELECT COUNT(*) FROM PrinterSetup")
print(f"PrinterSetup rows: {cursor.fetchone()[0]}")

cn.close()