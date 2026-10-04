import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)
lines = source.split('\n')
# Find lines with _coming_soon
print("=== Lines containing _coming_soon ===")
for i, line in enumerate(lines):
    if '_coming_soon' in line:
        print(f"{i+1:4}: {line}")
# Also find the dictionary comprehension pattern
print("\n=== Lines with dictionary comprehension for _coming_soon ===")
for i, line in enumerate(lines):
    if '{cap: _coming_soon(cap)' in line:
        print(f"Found at line {i+1}: {line}")
        # Show context
        for j in range(max(0, i-2), min(len(lines), i+5)):
            marker = ">>> " if j == i else "    "
            print(f"{marker}{j+1:4}: {lines[j]}")