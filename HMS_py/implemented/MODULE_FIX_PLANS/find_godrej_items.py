import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)
lines = source.split('\n')
for i, line in enumerate(lines):
    if 'Item Issued' in line or 'Godrej' in line or 'Lock' in line:
        print(f'{i+1:4}: {line}')