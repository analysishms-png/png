import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
try:
    from HMS_py.core import hall_item_group_mast
    print('hall_item_group_mast: OK')
except Exception as e:
    print(f'hall_item_group_mast: FAILED - {e}')
try:
    from HMS_py.core import hall_menu_catalog
    print('hall_menu_catalog: OK')
except Exception as e:
    print(f'hall_menu_catalog: FAILED - {e}')
try:
    from HMS_py.core import hall_menu_item_entry
    print('hall_menu_item_entry: OK')
except Exception as e:
    print(f'hall_menu_item_entry: FAILED - {e}')
try:
    from HMS_py.core import hall_item_cat_mast
    print('hall_item_cat_mast: OK')
except Exception as e:
    print(f'hall_item_cat_mast: FAILED - {e}')
try:
    from HMS_py.ui import hall_item_group_mast_ui
    print('hall_item_group_mast_ui: OK')
except Exception as e:
    print(f'hall_item_group_mast_ui: FAILED - {e}')
try:
    from HMS_py.ui import hall_menu_catalog_ui
    print('hall_menu_catalog_ui: OK')
except Exception as e:
    print(f'hall_menu_catalog_ui: FAILED - {e}')
try:
    from HMS_py.ui import hall_menu_item_entry_ui
    print('hall_menu_item_entry_ui: OK')
except Exception as e:
    print(f'hall_menu_item_entry_ui: FAILED - {e}')
try:
    from HMS_py.ui import hall_item_cat_mast_ui
    print('hall_item_cat_mast_ui: OK')
except Exception as e:
    print(f'hall_item_cat_mast_ui: FAILED - {e}')