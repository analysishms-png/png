import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
try:
    from HMS_py.ui import hall_bill_estimate_ui
    print('hall_bill_estimate_ui: OK')
except Exception as e:
    print(f'hall_bill_estimate_ui: FAILED - {e}')
try:
    from HMS_py.ui import hall_chef_pre_costing_ui
    print('hall_chef_pre_costing_ui: OK')
except Exception as e:
    print(f'hall_chef_pre_costing_ui: FAILED - {e}')
try:
    from HMS_py.ui import hall_sundry_ui
    print('hall_sundry_ui: OK')
except Exception as e:
    print(f'hall_sundry_ui: FAILED - {e}')
try:
    from HMS_py.ui import hall_ac_post_chrg_ui
    print('hall_ac_post_chrg_ui: OK')
except Exception as e:
    print(f'hall_ac_post_chrg_ui: FAILED - {e}')
try:
    from HMS_py.ui import catering_booking_ui
    print('catering_booking_ui: OK')
except Exception as e:
    print(f'catering_booking_ui: FAILED - {e}')