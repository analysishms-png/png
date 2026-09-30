import os, re

# Analyze VB6 forms from the 19_VB6_Logic folder
vb6_path = r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\implemented\HMS2526\HMS_REVERSE_ENGINEERING\19_VB6_Logic'

print("=" * 80)
print("VB6 FORMS ANALYSIS FOR SIDE-BY-SIDE COMPARISON")
print("=" * 80)
print()

# Read vb6_form_inventory.md
with open(os.path.join(vb6_path, 'vb6_form_inventory.md')) as f:
    content = f.read()

# Extract form references
form_refs = re.findall(r'Frm\w+', content)
unique_forms = list(set(form_refs))

print(f"VB6 Total form references: {len(form_refs)}")
print(f"VB6 Unique form names: {len(unique_forms)}")
print()

# Categorize forms
categories = {}
for form in unique_forms:
    if len(form) > 3:
        prefix = form[3:]
        if prefix in ['MDI', 'MDIForm']:
            cat = 'MDI Shell'
        elif prefix in ['Rep', 'Report']:
            cat = 'Reports'
        elif prefix in ['Mast', 'Master']:
            cat = 'Masters'
        elif prefix in ['Menu']:
            cat = 'Menu'
        elif prefix in ['Dlg', 'dialog']:
            cat = 'Dialogs'
        elif prefix in ['Pop', 'Popup']:
            cat = 'Popups'
        else:
            cat = 'Other'
    else:
        cat = 'Short'
    
    if cat not in categories:
        categories[cat] = []
    categories[cat].append(form)

for cat, forms in sorted(categories.items()):
    print(f"  {cat:15}: {len(forms)} forms")
    for f in forms[:2]:
        print(f"    - {f}")
    if len(forms) > 2:
        print(f"    ... and {len(forms)-2} more")

print()
print("=" * 80)
print("PYTHON UI MODULES ANALYSIS")
print("=" * 80)
print()

# Analyze Python UI modules
py_ui_path = r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\ui'

python_modules = []
if os.path.exists(py_ui_path):
    for f in sorted(os.listdir(py_ui_path)):
        if f.endswith('.py'):
            python_modules.append(f.replace('.py', ''))

print(f"Python UI modules found: {len(python_modules)}")
print()

# Group by category
py_categories = {}
for mod in python_modules:
    # Determine category from module name
    if any(x in mod.lower() for x in ['gen', 'general', 'setup']):
        cat = 'General Setup'
    elif any(x in mod.lower() for x in ['fin', 'finance', 'masters']):
        cat = 'Finance Masters'
    elif any(x in mod.lower() for x in ['inv', 'inventory', 'godown']):
        cat = 'Inventory'
    elif any(x in mod.lower() for x in ['util', 'utility']):
        cat = 'Utility'
    elif any(x in mod.lower() for x in ['login', 'auth', 'security']):
        cat = 'Login/Auth'
    elif any(x in mod.lower() for x in ['epabx', 'telecom', 'call']):
        cat = 'EPABX'
    elif any(x in mod.lower() for x in ['fa', 'adjust', 'subform']):
        cat = 'Fa Sub-forms'
    elif any(x in mod.lower() for x in ['purchase', 'po', 'order']):
        cat = 'Purchase/Order'
    elif any(x in mod.lower() for x in ['tax', 'tarif', 'gst']):
        cat = 'Tax/Finance'
    else:
        cat = 'Other'
    
    if cat not in py_categories:
        py_categories[cat] = []
    py_categories[cat].append(mod)

for cat, mods in sorted(py_categories.items()):
    print(f"  {cat:15}: {len(mods)} modules")
    for m in mods[:2]:
        print(f"    - {m}")
    if len(mods) > 2:
        print(f"    ... and {len(mods)-2} more")

print()
print("COMPARISON SUMMARY:")
print("-" * 80)
vb6_total = len(unique_forms)
py_total = len(python_modules)
print(f"VB6 Forms:           {vb6_total}")
print(f"Python UI Modules:   {py_total}")
print(f"Coverage:            {py_total/vb6_total*100:.1f}%")
print(f"Missing:             {vb6_total - py_total} forms")