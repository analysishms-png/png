import sys
sys.path.insert(0, '.')
from core import db

cn = db.connect()
cursor = cn.cursor()

# Debug: check site_code and user
site_code = db.get_site_code()
user = db.get_user()
print(f"site_code='{site_code}' (len={len(site_code)})")
print(f"user='{user}' (len={len(user)})")

# Check table schema
cursor.execute("""
    SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'PrintFormats'
""")
for row in cursor.fetchall():
    print(f"  {row[0]}: {row[1]}({row[2]})")

# Try a simple insert
print("\nTrying simple insert...")
try:
    cursor.execute("INSERT INTO PrintFormats (ModuleName, ModuleDescription, Site_Code, U_EntDt, U_AE) VALUES ('POS', 'TEST', 'KK', GETDATE(), 'A')")
    cn.commit()
    print("Simple insert worked!")
except Exception as e:
    print(f"Simple insert error: {e}")

cn.close()