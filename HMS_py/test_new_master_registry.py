import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)
checks = [
    "Hall Item Group Master",
    "Hall Menu Catalog",
    "Hall Menu Item Entry",
    "Hall Item Category & Charge Master",
]
print("=== Registry checks ===")
for check in checks:
    if check in source:
        print(f'✓ {check} found in shell registry')
    else:
        print(f'✗ {check} NOT found in shell registry')