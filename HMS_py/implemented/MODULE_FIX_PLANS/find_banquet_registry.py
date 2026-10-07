import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)
lines = source.split('\n')
# Find banquet-related registry entries
for i, line in enumerate(lines):
    if 'Banquet' in line or 'Hall Bill' in line or 'Chef Pre' in line or 'Sundry' in line or 'Ac Post' in line or 'Catering' in line:
        if 'lambda' in line or '_coming_soon' in line or 'open_' in line or 'banq_ui' in line or 'hall_ui' in line:
            print(f"{i+1:4}: {line}")