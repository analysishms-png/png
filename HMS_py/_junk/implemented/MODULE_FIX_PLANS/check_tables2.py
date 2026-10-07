import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.core import db

cn = db.connect()
try:
    for table in ['DoorLockEnviro', 'DoorLockSettings', 'GodrejLockSettings']:
        rows = db.query(f"SELECT COUNT(*) FROM sys.tables WHERE name = '{table}'", cn=cn)
        print(f"{table} exists: {rows[0][0] > 0}")
finally:
    cn.close()