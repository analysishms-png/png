import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')

# Test instantiation of the new UIs
from PyQt6.QtWidgets import QApplication
app = QApplication(sys.argv)

from HMS_py.ui import theme
theme.apply_theme(app, 'light')

tests = [
    ('hall_bill_estimate_ui', 'HallBillEstimateDialog'),
    ('hall_chef_pre_costing_ui', 'HallChefPreCostingDialog'),
    ('hall_sundry_ui', 'HallSundryDialog'),
    ('hall_ac_post_chrg_ui', 'HallAcPostChrgDialog'),
    ('catering_booking_ui', 'CateringBookingDialog'),
]

for mod_name, class_name in tests:
    try:
        mod = __import__(f'HMS_py.ui.{mod_name}', fromlist=[class_name])
        cls = getattr(mod, class_name)
        dlg = cls()
        print(f'✓ {class_name} instantiated: {dlg.windowTitle()}')
        dlg.close()
    except Exception as e:
        print(f'✗ {class_name}: {e}')
        import traceback
        traceback.print_exc()

print("\nAll instantiation tests completed.")