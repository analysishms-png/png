import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)
if 'Godrej Lock Settings' in source:
    print('Godrej Lock Settings FOUND in shell')
    # Show where
    lines = source.split('\\n')
    for i, line in enumerate(lines):
        if 'Godrej Lock Settings' in line:
            print(f'  Line {i+1}: {line.strip()}')
else:
    print('Godrej Lock Settings NOT FOUND in shell')