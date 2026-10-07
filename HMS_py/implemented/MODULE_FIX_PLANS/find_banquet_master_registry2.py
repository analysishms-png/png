import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)
lines = source.split('\n')
# Find where I should add the banquet master registry entries
for i, line in enumerate(lines):
    if 'Item Group' in line or 'Menu Catalog' in line or 'Menu Item Entry' in line or 'Category and Charge' in line:
        print(f"{i+1:4}: {line}")