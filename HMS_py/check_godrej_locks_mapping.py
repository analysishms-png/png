import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)
lines = source.split('\n')
# Show context around line 2031 (Godrej Locks)
print("=== Context around Godrej Locks (line 2031) ===")
for i in range(2028, 2038):
    if i < len(lines):
        marker = ">>> " if i == 2030 else "    "
        print(f"{marker}{i+1:4}: {lines[i]}")