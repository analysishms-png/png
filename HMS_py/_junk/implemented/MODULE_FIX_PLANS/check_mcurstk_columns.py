import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')

from HMS_py.core import db

# Check actual column names for mcurstk
cn = db.connect()
try:
    # Get column names
    rows = db.query("SELECT TOP 0 * FROM mcurstk", cn=cn)
    if rows:
        cursor = cn.cursor()
        cursor.execute("SELECT TOP 0 * FROM mcurstk")
        columns = [col[0] for col in cursor.description]
        print(f"mcurstk columns: {columns}")
    else:
        # Use INFORMATION_SCHEMA
        rows = db.query("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'mcurstk' ORDER BY ORDINAL_POSITION", cn=cn)
        columns = [r.COLUMN_NAME for r in rows]
        print(f"mcurstk columns: {columns}")
    
    # Sample data
    rows = db.query("SELECT TOP 5 * FROM mcurstk", cn=cn)
    print(f"\nSample rows:")
    for r in rows[:3]:
        print(f"  {r}")
finally:
    cn.close()