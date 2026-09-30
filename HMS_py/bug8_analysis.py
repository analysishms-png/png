import os, re

# Check VB6 delete patterns in EXTRAS.text
vb6_path = r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\implemented\HMS2526\HMS_REVERSE_ENGINEERING\EXTRAS.text'
with open(vb6_path, 'r', encoding='utf-8', errors='replace') as f:
    vb6 = f.read()

# Search for delete-related patterns
print('VB6 DELETE PATTERNS:')
delete_vb6 = [
    'Delete', 'delete', 'Remove', 'remove',
    'clsform', 'Unload', 'UnloadModule',
    'RecDelete', 'RmRecord', 'Rm Rec',
    'DeleteRecord', 'del', 'RemoveRecord'
]

for p in delete_vb6:
    count = len(re.findall(re.escape(p), vb6, re.IGNORECASE))
    if count > 0:
        print(f'  {p}: {count}')

print()

# Now check Python delete validation
with open('ui/partial_forms_ui.py', 'r', encoding='utf-8', errors='replace') as f:
    content = f.read()

# Find the _delete method in AdjustmentDeleteWindow
idx = content.find('class AdjustmentDeleteWindow')
if idx >= 0:
    method_start = content.find('def _delete', idx)
    method_end = content.find('def ', method_start + 1)
    if method_end == -1:
        method_end = len(content)
    
    method = content[method_start:method_end]
    print('Python AdjustmentDeleteWindow _delete method:')
    print(method[:800])
PYEOF