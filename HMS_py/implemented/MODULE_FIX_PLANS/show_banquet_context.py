import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)
lines = source.split('\n')
# Show context around banquet entries (lines 2090-2110)
for i in range(2088, 2110):
    if i < len(lines):
        marker = ">>> " if i in [2092, 2093, 2094, 2095, 2096, 2098, 2100] else "    "
        print(f"{marker}{i+1:4}: {lines[i]}")