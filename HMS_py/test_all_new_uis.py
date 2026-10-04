import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')

uis = [
    ('hall_bill_estimate_ui', 'open_hall_bill_estimate'),
    ('hall_chef_pre_costing_ui', 'open_hall_chef_pre_costing'),
    ('hall_sundry_ui', 'open_hall_sundry'),
    ('hall_ac_post_chrg_ui', 'open_hall_ac_post_chrg'),
    ('catering_booking_ui', 'open_catering_booking'),
]

for mod_name, func_name in uis:
    try:
        mod = __import__(f'HMS_py.ui.{mod_name}', fromlist=[func_name])
        func = getattr(mod, func_name)
        print(f'✓ {mod_name}.{func_name}')
    except Exception as e:
        print(f'✗ {mod_name}.{func_name}: {e}')

# Test shell registry
from HMS_py.ui import shell
import inspect
source = inspect.getsource(shell)

checks = [
    "Hall Bill Estimate",
    "Chef Pre-Costing",
    "Banquet Bill Sundry Setting",
    "Hall A/C Posting Charge",
    "Catering Booking",
]

print("\n=== Registry checks ===")
for check in checks:
    if check in source:
        print(f'✓ {check} found in shell registry')
    else:
        print(f'✗ {check} NOT found in shell registry')