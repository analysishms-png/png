import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)
lines = source.split('\n')
# Show context around line 970-990 and 1810-1830
print("=== Context around line 970-990 ===")
for i in range(968, 995):
    if i < len(lines):
        print(f"{i+1:4}: {lines[i]}")

print("\n=== Context around line 1810-1830 ===")
for i in range(1808, 1835):
    if i < len(lines):
        print(f"{i+1:4}: {lines[i]}")