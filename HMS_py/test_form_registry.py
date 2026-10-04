import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.ui import shell
# Test that our three forms are properly mapped (not _coming_soon)
print("Testing form registry mappings...")

# Check Item Issued On Cleaning
if hasattr(shell, '_form_registry'):
    item_issued_func = shell._form_registry.get("Item Issued On Cleaning")
    if item_issued_func:
        # Test if it's the actual function (not _coming_soon)
        try:
            # We can't easily call it without UI app, but we can check if it's callable and not the _coming_soon function
            import inspect
            if callable(item_issued_func):
                # Get the source to see if it's our lambda
                source = inspect.getsource(item_issued_func)
                if 'frm_item_issued_on_cleaning_ui' in source:
                    print("✓ Item Issued On Cleaning: Mapped to correct UI function")
                else:
                    print("? Item Issued On Cleaning: Mapped to unknown function")
            else:
                print("? Item Issued On Cleaning: Not callable")
        except Exception as e:
            print(f"? Item Issued On Cleaning: Error checking function: {e}")
    else:
        print("✗ Item Issued On Cleaning: Not found in registry")

# Check Godrej Lock Settings  
if hasattr(shell, '_form_registry'):
    godrej_lock_settings_func = shell._form_registry.get("Godrej Lock Settings")
    if godrej_lock_settings_func:
        try:
            import inspect
            if callable(godrej_lock_settings_func):
                source = inspect.getsource(godrej_lock_settings_func)
                if 'frm_godrej_lock_settings_ui' in source:
                    print("✓ Godrej Lock Settings: Mapped to correct UI function")
                else:
                    print("? Godrej Lock Settings: Mapped to unknown function")
            else:
                print("? Godrej Lock Settings: Not callable")
        except Exception as e:
            print(f"? Godrej Lock Settings: Error checking function: {e}")
    else:
        print("✗ Godrej Lock Settings: Not found in registry")

# Check Godrej Locks
if hasattr(shell, '_form_registry'):
    godrej_locks_func = shell._form_registry.get("Godrej Locks")
    if godrej_locks_func:
        try:
            import inspect
            if callable(godrej_locks_func):
                source = inspect.getsource(godrej_locks_func)
                if 'frm_lock_godrej_settings_ui' in source:
                    print("✓ Godrej Locks: Mapped to correct UI function")
                else:
                    print("? Godrej Locks: Mapped to unknown function")
            else:
                print("? Godrej Locks: Not callable")
        except Exception as e:
            print(f"? Godrej Locks: Error checking function: {e}")
    else:
        print("✗ Godrej Locks: Not found in registry")