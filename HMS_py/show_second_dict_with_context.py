import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)
lines = source.split('\n')
# Show the SECOND dictionary comprehension area with context
print('=== SECOND dictionary comprehension (lines 2120-2135) ===')
for i in range(2120, 2135):
    if i < len(lines):
        marker = ">>> " if i in [2125, 2130] else "    "
        print(f"{marker}{i+1:4}: {lines[i]}")