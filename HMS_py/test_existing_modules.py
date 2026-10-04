import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
try:
    from HMS_py.core import hall_booking
    print('hall_booking: OK')
except Exception as e:
    print(f'hall_booking: FAILED - {e}')
try:
    from HMS_py.core import nightaudit
    print('nightaudit: OK')
except Exception as e:
    print(f'nightaudit: FAILED - {e}')
try:
    from HMS_py.core import banquet_ops
    print('banquet_ops: OK')
except Exception as e:
    print(f'banquet_ops: FAILED - {e}')
try:
    from HMS_py.ui import hall_booking_ui
    print('hall_booking_ui: OK')
except Exception as e:
    print(f'hall_booking_ui: FAILED - {e}')
try:
    from HMS_py.ui import banquet_ops_ui
    print('banquet_ops_ui: OK')
except Exception as e:
    print(f'banquet_ops_ui: FAILED - {e}')
try:
    from HMS_py.ui import posting_utility_ui
    print('posting_utility_ui: OK')
except Exception as e:
    print(f'posting_utility_ui: FAILED - {e}')