import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
print('shell imports OK')
# Check if our new forms are in the registry by checking the source
import inspect
source = inspect.getsource(shell)
# Look for our form names
if 'Item Issued On Cleaning' in source:
    print('Item Issued On Cleaning found in shell')
else:
    print('Item Issued On Cleaning NOT found in shell')
if 'Godrej Lock Settings' in source:
    print('Godrej Lock Settings found in shell')
else:
    print('Godrej Lock Settings NOT found in shell')
if 'Godrej Locks' in source:
    print('Godrej Locks found in shell')
else:
    print('Godrej Locks NOT found in shell')