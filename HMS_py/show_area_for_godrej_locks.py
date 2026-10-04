import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)
lines = source.split('\n')
# Show the area where I want to add Godrej Locks mapping
print('=== Area for Godrej Locks mapping (lines 2030-2045) ===')
for i in range(2030, 2045):
    if i < len(lines):
        marker = ">>> " if "Item Issued On Cleaning" in lines[i] or "VB6 ModuleAdd" in lines[i] else "    "
        print(f"{marker}{i+1:4}: {lines[i]}")