import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)
lines = source.split('\n')
# Show the broader structure around the first dictionary comprehension
print("=== Structure around FIRST dictionary comprehension (lines 2005-2040) ===")
for i in range(2005, 2040):
    if i < len(lines):
        marker = ">>> " if i in [2009, 2034] else "    "
        print(f"{marker}{i+1:4}: {lines[i]}")