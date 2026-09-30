import os, re

files_to_check = [
    'ui/fa_sub_forms_ui.py',
    'ui/partial_forms_ui.py',
    'ui/fa_ledger_ui.py',
    'ui/fa_voucher_ui.py',
]

for fname in files_to_check:
    fpath = os.path.join('HMS_py', fname)
    if os.path.exists(fpath):
        with open(fpath, 'r', encoding='utf-8', errors='replace') as f:
            content = f.read()
        grid_mentions = len(re.findall(r'QTableWidget|setRowCount|setColumnCount|model|row|column', content, re.IGNORECASE))
        print(f'{fname}: {grid_mentions} grid-related mentions')
        
        lines = content.split('\n')
        for i, line in enumerate(lines[:200]):
            if 'QTable' in line or 'setRow' in line or 'setColumn' in line or 'rowCount' in line or 'columnCount' in line:
                print(f'  Line {i+1}: {line[:120]}')
        print()