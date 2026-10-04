import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
try:
    from HMS_py.ui import shell
    print('SUCCESS: shell imports OK')
except Exception as e:
    print(f'FAILED: shell import failed: {e}')
    import traceback
    traceback.print_exc()