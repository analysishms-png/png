import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.core import db

cn = db.connect()
try:
    tables = ['HallItemGroupMast', 'HallMenuCatalog', 'HallMenuItemEntry', 'HallItemCatMast', 'ItemMast']
    for t in tables:
        rows = db.query(f"SELECT COUNT(*) FROM sys.tables WHERE name = '{t}'", cn=cn)
        exists = rows[0][0] > 0
        if exists:
            rows2 = db.query(f"SELECT COUNT(*) FROM {t}", cn=cn)
            print(f'{t}: EXISTS ({rows2[0][0]} rows)')
            cols = db.query(f"SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '{t}' ORDER BY ORDINAL_POSITION", cn=cn)
            columns = [r.COLUMN_NAME for r in cols]
            print(f'  Cols ({len(columns)}): {columns[:20]}{"..." if len(columns) > 20 else ""}')
        else:
            print(f'{t}: ABSENT')
finally:
    cn.close()