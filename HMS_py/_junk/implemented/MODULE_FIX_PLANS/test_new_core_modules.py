import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')

modules = [
    'mcurstk', 'usermodule1', 'sale2log', 'rawconsumption', 'stocklog',
    'einvoicebill', 'packingorderdetail', 'memaddrwa', 'lastvou',
    'bookingdetail', 'orderpersondetails', 'category', 'depart1',
    'expsheet', 'membill1', 'memcatfacility', 'memfacilitybilling',
    'roomcheckoutstatus', 'roommast1', 'salarylog'
]

print("Testing core module imports...")
for mod in modules:
    try:
        __import__(f'HMS_py.core.{mod}')
        print(f'✓ {mod}')
    except Exception as e:
        print(f'✗ {mod}: {e}')

print("\nAll imports completed.")