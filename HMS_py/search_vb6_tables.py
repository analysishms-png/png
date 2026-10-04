import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')

# Let's search VB6 files for references to key tables
tables = ['mcurstk', 'usermodule1', 'sale2log', 'rawconsumption', 'usermodule', 'suntranlog', 'stocklog', 'einvoicebill1', 'einvoicebill2', 'packingorderdetail1', 'packingorderdetail2', 'memaddrwa', 'lastvou', 'orderpersondetails', 'bookingdetail', 'category', 'creditcardhistory', 'depart1', 'departrwscheme', 'expsheet', 'fombillchangedetails', 'groupfoliomore', 'guestprofveh', 'help', 'leaderrev', 'membill1', 'memcatfacility', 'memcatrevwise', 'memfacilitybilling', 'memfacilitymast', 'memoutstation', 'memrevenueforperiod', 'memrevwise', 'memtagadaletter', 'memvisitentry', 'outletbarcodepartdetail', 'profileimages', 'roomcheckoutstatus', 'roommast1', 'salarylog', 'schemeoutletdiscount', 'splitedsuntran', 'splitstock', 'splitsuntran', 'subgrouplog', 'tradeinfo_btwin', 'transout', 'usercollection']

vb6_path = r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\implemented\HMS2526\serialkey\PROJECT2\PROJECT'

found = {}
for table in tables:
    matches = []
    for root, dirs, files in os.walk(vb6_path):
        for file in files:
            if file.endswith(('.frm', '.bas', '.cls')):
                filepath = os.path.join(root, file)
                try:
                    with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
                        content = f.read()
                        if table.lower() in content.lower():
                            matches.append(file)
                except Exception:
                    pass
    if matches:
        found[table] = matches

for table, files in found.items():
    print(f'{table}: {files[:5]}')