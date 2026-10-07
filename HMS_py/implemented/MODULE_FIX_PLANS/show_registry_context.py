import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)
lines = source.split('\n')
# Show context around the areas we care about
print("=== Context around Item Issued On Cleaning (line ~2018) ===")
for i in range(2015, 2022):
    if i < len(lines):
        print(f"{i+1:4}: {lines[i]}")
print("\n=== Context around Godrej area (lines ~2026-2032) ===")
for i in range(2024, 2034):
    if i < len(lines):
        print(f"{i+1:4}: {lines[i]}")