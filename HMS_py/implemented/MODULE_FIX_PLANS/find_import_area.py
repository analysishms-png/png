import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)
lines = source.split('\n')
# Show context around the p2 import and where I should add new imports
for i in range(1120, 1160):
    if i < len(lines):
        print(f"{i+1:4}: {lines[i]}")