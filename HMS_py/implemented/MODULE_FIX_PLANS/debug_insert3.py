import sys
sys.path.insert(0, '.')
from core import db

cn = db.connect()
cursor = cn.cursor()

# Check the connection driver
print(f"Connection: {cn}")

# Try with explicit conversion
site_code = db.get_site_code()
user = db.get_user()

# Try with string conversion
print("Trying with explicit string conversion...")
try:
    cursor.execute("""
        INSERT INTO PrintFormats (ModuleName, ModuleDescription, Site_Code, U_EntDt, U_AE)
        VALUES (?, ?, ?, GETDATE(), ?)
    """, (str('POS'), str('KOT Plain Paper Running'), str(site_code), str(user)))
    cn.commit()
    print("Explicit string conversion worked!")
except Exception as e:
    print(f"Explicit string error: {e}")

# Try with pyodbc directly
print("\nTrying with pyodbc direct...")
import pyodbc
cfg = db.load_config()
drivers = ["SQL Server Native Client 10.0", "ODBC Driver 17 for SQL Server", "ODBC Driver 18 for SQL Server", "SQL Server"]
for drv in drivers:
    try:
        extra = (";TrustServerCertificate=yes" if drv == "ODBC Driver 18 for SQL Server" else "")
        conn_str = f"DRIVER={{{drv}}};SERVER={cfg['server']};DATABASE={cfg['database']};Trusted_Connection=yes{extra};"
        cn2 = pyodbc.connect(conn_str, timeout=5)
        cursor2 = cn2.cursor()
        cursor2.execute("INSERT INTO PrintFormats (ModuleName, ModuleDescription, Site_Code, U_EntDt, U_AE) VALUES (?, ?, ?, GETDATE(), ?)", 
                       ('POS', 'KOT Plain Paper Running', 'KK', 'PYADMIN'))
        cn2.commit()
        print(f"Direct pyodbc with {drv} worked!")
        cn2.close()
        break
    except Exception as e:
        print(f"Direct pyodbc with {drv} error: {e}")

cn.close()