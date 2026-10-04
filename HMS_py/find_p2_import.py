import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)
lines = source.split('\n')
# Find the imports for p2 (around line 1100)
for i in range(1090, 1130):
    if i < len(lines):
        marker = ">>> " if 'p2' in lines[i] else "    "
        print(f"{marker}{i+1:4}: {lines[i]}")