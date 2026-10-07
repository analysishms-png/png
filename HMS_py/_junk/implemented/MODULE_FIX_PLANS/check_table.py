import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.core import db

cn = db.connect()
try:
    rows = db.query("SELECT COUNT(*) FROM sys.tables WHERE name = 'DepartWiseItemIssueList'", cn=cn)
    print(f"DepartWiseItemIssueList exists: {rows[0][0] > 0}")
    if rows[0][0] > 0:
        rows = db.query('SELECT TOP 5 * FROM DepartWiseItemIssueList', cn=cn)
        print(f"Sample rows: {rows}")
    else:
        print("Table ABSENT in live DB")
finally:
    cn.close()