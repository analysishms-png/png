import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)
lines = source.split('\n')
# Show the area after the first dictionary comprehension
print('=== Area after first dictionary comprehension (lines 2030-2050) ===')
for i in range(2030, 2050):
    if i < len(lines):
        marker = ">>> " if "Card Initialization" in lines[i] else "    "
        print(f"{marker}{i+1:4}: {lines[i]}")