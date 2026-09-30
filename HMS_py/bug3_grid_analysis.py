import os, re

# Search for MSFlexGrid or grid-related code in Python
ui_path = r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\ui\fa_sub_forms_ui.py'
with open(ui_path, 'r', encoding='utf-8', errors='replace') as f:
    py_content = f.read()

# Search for grid-related patterns
print('GRID-RELATED CODE in Python:')
grid_patterns = ['QTableWidget', 'QTableView', 'QAbstractItemModel', 'setRowCount', 'setColumnCount', 'FlexGrid', 'msflexgrid']
for p in grid_patterns:
    count = py_content.count(p) if isinstance(py_content, str) else 0
    print(f'  {p}: {"PRESENT" if count else "ABSENT"}')

# Also check EXTRAS.text for VB6 grid patterns
vb6_path = r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\implemented\HMS2526\HMS_REVERSE_ENGINEERING\EXTRAS.text'
with open(vb6_path, 'r', encoding='utf-8', errors='replace') as f:
    vb6 = f.read()

print('\nGRID-RELATED CODE in VB6 (EXTRAS.text):')
vb6_grid = ['MSFlexGrid', 'flexgrid', 'RowCount', 'ColCount', 'Col', 'Row']
for p in vb6_grid:
    count = len(re.findall(re.escape(p), vb6, re.IGNORECASE))
    print(f'  {p}: {count} occurrences')