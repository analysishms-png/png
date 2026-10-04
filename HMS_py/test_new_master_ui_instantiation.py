import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')

from PyQt6.QtWidgets import QApplication
app = QApplication(sys.argv)

from HMS_py.ui import theme
theme.apply_theme(app, 'light')

tests = [
    ('hall_item_group_mast_ui', 'HallItemGroupMastDialog'),
    ('hall_menu_catalog_ui', 'HallMenuCatalogDialog'),
    ('hall_menu_item_entry_ui', 'HallMenuItemEntryDialog'),
    ('hall_item_cat_mast_ui', 'HallItemCatMastDialog'),
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