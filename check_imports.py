with open("HMS_py/HMS_py/ui/shell.py", "r", encoding="utf-8") as f:
    content = f.read()

# Check for the try/except import patterns for critical modules
modules_to_check = ["purchase_order", "purchase_bill", "stock_issue", "stock_receive", 
                    "stock_adjust", "revenue_budget", "db_maintenance"]

for mod in modules_to_check:
    # Search for the variable name (purord_ui, purbill_ui, etc.)
    var_name = mod.replace('_ui', '').replace('_', '')
    # Find the assignment
    if f"{var_name}_ui = None" in content:
        print(f"{var_name}_ui: assigned None (not imported)")
    elif f"from HMS_py.ui import {mod}" in content:
        print(f"{var_name}_ui: imported directly")
    else:
        # Search in the _form_registry function
        # Look for the try/except blocks
        lines = content.split('\n')
        in_func = False
        found = False
        for line in lines:
            if '_form_registry' in line and 'def' in line:
                in_func = True
            if in_func:
                if f"from HMS_py.ui import {mod}" in line or f"import HMS_py.ui.{mod}" in line:
                    found = True
                    break
            # Stop after a certain depth
            if in_func and line.strip().startswith('def ') and '_form_registry' not in line:
                break
        if found:
            print(f"{var_name}_ui: imported inside _form_registry")
        else:
            print(f"{var_name}_ui: not found in import sections")

# Also count _coming_soon entries
import re
coming_soon_matches = re.findall(r'_coming_soon\(', content)
print(f"\n_total _coming_soon entries: {len(coming_soon_matches)}")