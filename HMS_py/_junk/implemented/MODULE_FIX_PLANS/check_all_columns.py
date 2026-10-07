import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')

from HMS_py.core import db

tables = ['usermodule1', 'sale2log', 'rawconsumption', 'stocklog', 'einvoicebill1', 'einvoicebill2', 'packingorderdetail1', 'packingorderdetail2', 'memaddrwa', 'lastvou', 'bookingdetail', 'orderpersondetails', 'category', 'depart1', 'expsheet', 'membill1', 'memcatfacility', 'memfacilitybilling', 'roomcheckoutstatus', 'roommast1', 'salarylog']

cn = db.connect()
try:
    for table in tables:
        rows = db.query(f"SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '{table}' ORDER BY ORDINAL_POSITION", cn=cn)
        columns = [r.COLUMN_NAME for r in rows]
        print(f"{table}: {columns[:20]}{'...' if len(columns) > 20 else ''}")
finally:
    cn.close()