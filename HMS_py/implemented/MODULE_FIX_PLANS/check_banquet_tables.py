import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.core import db

cn = db.connect()
try:
    tables = ['HallItemGroupMast', 'HallMenuCatalog', 'HallMenuItemEntry', 'HallItemCatMast', 'ItemMast']
    for t in tables:
        rows = db.query(f"SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '{t}' ORDER BY ORDINAL_POSITION", cn=cn)
        columns = [r.COLUMN_NAME for r in rows]
        count_rows = db.query(f"SELECT COUNT(*) FROM {t}", cn=cn)
        print(f'{t}: {len(columns)} cols, {count_rows[0][0]} rows')
        print(f'  Cols: {columns[:15]}{"..." if len(columns) > 15 else ""}')
finally:
    cn.close()