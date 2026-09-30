import os, re

vb6_path = r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\implemented\HMS2526\HMS_REVERSE_ENGINEERING\EXTRAS.text'
with open(vb6_path, 'r', encoding='utf-8', errors='replace') as f:
    vb6 = f.read()

msflex_patterns = [
    'MSFlexGrid', 'Rows', 'Cols', 'Row', 'Col', 'Cell', 'TextMatrix', 
    'TextPadding', 'SelectionMode', 'FixedRows', 'FixedCols', 'AllowEditing',
    'DrawMode', 'RowHeight', 'ColWidth', 'ColSize', 'RowSize'
]

print('VB6 MSFlexGrid patterns:')
for p in msflex_patterns:
    count = len(re.findall(re.escape(p), vb6, re.IGNORECASE))
    if count > 0:
        print(f'  {p}: {count}')

print()

# Check Python UI files
ui_dir = r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\ui'
py_files = [f for f in os.listdir(ui_dir) if f.endswith('.py')]

print('Python files with grid-related code:')
for fname in py_files[:10]:  # Check first 10
    fpath = os.path.join(ui_dir, fname)
    with open(fpath, 'r', encoding='utf-8', errors='replace') as f:
        py = f.read()
    total = 0
    for p in msflex_patterns:
        count = py.count(p) if isinstance(py, str) else 0
        total += count
    if total > 0:
        print(f'  {fname}: {total} total matches')