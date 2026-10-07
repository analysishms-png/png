import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
try:
    from HMS_py.ui import frm_item_issued_on_cleaning_ui
    print('frm_item_issued_on_cleaning_ui: OK')
except Exception as e:
    print(f'frm_item_issued_on_cleaning_ui: FAILED - {e}')
try:
    from HMS_py.ui import frm_godrej_lock_settings_ui
    print('frm_godrej_lock_settings_ui: OK')
except Exception as e:
    print(f'frm_godrej_lock_settings_ui: FAILED - {e}')
try:
    from HMS_py.ui import frm_lock_godrej_settings_ui
    print('frm_lock_godrej_settings_ui: OK')
except Exception as e:
    print(f'frm_lock_godrej_settings_ui: FAILED - {e}')