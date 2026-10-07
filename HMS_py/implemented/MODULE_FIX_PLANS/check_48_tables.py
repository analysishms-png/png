import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.core import db

cn = db.connect()
try:
    tables = [
        'mcurstk', 'usermodule1', 'sale2log', 'rawconsumption', 'usermodule',
        'suntranlog', 'stocklog', 'einvoicebill2', 'einvoicebill1',
        'packingorderdetail2', 'memaddrwa', 'lastvou', 'packingorderdetail1',
        'orderpersondetails', 'bookingdetail', 'category', 'creditcardhistory',
        'depart1', 'departrwscheme', 'expsheet', 'fombillchangedetails',
        'groupfoliomore', 'guestprofveh', 'help', 'leaderrev', 'membill1',
        'memcatfacility', 'memcatrevwise', 'memfacilitybilling', 'memfacilitymast',
        'memoutstation', 'memrevenueforperiod', 'memrevwise', 'memtagadaletter',
        'memvisitentry', 'outletbarcodepartdetail', 'profileimages',
        'roomcheckoutstatus', 'roommast1', 'salarylog', 'schemeoutletdiscount',
        'splitedsuntran', 'splitstock', 'splitsuntran', 'subgrouplog',
        'tradeinfo_btwin', 'transout', 'usercollection'
    ]
    for t in tables:
        rows = db.query(f"SELECT COUNT(*) FROM sys.tables WHERE name = '{t}'", cn=cn)
        exists = rows[0][0] > 0
        if exists:
            rows2 = db.query(f'SELECT COUNT(*) FROM {t}', cn=cn)
            print(f'{t}: EXISTS ({rows2[0][0]} rows)')
        else:
            print(f'{t}: ABSENT')
finally:
    cn.close()