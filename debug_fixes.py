#!/usr/bin/env python3
"""Debug: Check fix plan references against actual code"""

import os

# Read the fix plan
with open('VB6_PYTHON_UI_FIX_PLAN.txt') as f:
    fix_plan = f.read()

print('=' * 60)
print('FIX PLAN REFERENCES CHECK')
print('=' * 60)
print()

checks = [
    'TXTADJ_AMT',
    'QComboBox',
    'ACGROUP',
    'error_handler',
    'setTabOrder',
    'resizeEvent'
]

print('Fix plan references:')
print('-' * 40)
for check in checks:
    count = fix_plan.lower().count(check.lower())
    print(f'  {check}: {count} references in fix plan')

print()
print('Checking references in UI Python files...')
print('-' * 40)

ui_dir = 'HMS_py/ui'
total_refs = 0
if os.path.exists(ui_dir):
    py_files = [f for f in os.listdir(ui_dir) if f.endswith('.py')]
    for fname in py_files:
        fpath = os.path.join(ui_dir, fname)
        try:
            with open(fpath) as f:
                content = f.read().lower()
                total_refs += content.count('def ')
                # Check each fix reference
                for check in checks:
                    if check.lower() in content:
                        # Count occurrences per file
                        pass  # We'll show summary below
        except:
            pass
    
    print(f'  Total Python UI files: {len(py_files) if os.path.exists(ui_dir) else 0}')
    print(f'  Total functions across all UI files: {total_refs}')
else:
    print('  UI directory not found')

print()
print('Checking each fix reference in files:')
print('-' * 40)
for check in checks:
    file_count = 0
    if os.path.exists(ui_dir):
        py_files = [f for f in os.listdir(ui_dir) if f.endswith('.py')]
        for fname in py_files:
            fpath = os.path.join(ui_dir, fname)
            try:
                with open(fpath) as f:
                    content = f.read()
                    if check.lower() in content.lower():
                        file_count += 1
            except:
                pass
    print(f'  {check}: present in {file_count}/{len(py_files) if os.path.exists(ui_dir) else 0} files')

print()
print('KEY FIX FILES STATUS:')
print('-' * 40)
key_fixes = {
    'error_handler.py': 'HMS_py/core/',
    'fa_sub_forms_ui.py': 'HMS_py/ui/',
    'partial_forms_ui.py': 'HMS_py/ui/',
}

for filename, directory in key_fixes.items():
    fpath = os.path.join(directory, filename)
    exists = os.path.exists(fpath)
    print(f'  {filename}: {"EXISTS" if exists else "MISSING"}')
    if not exists:
        print(f'    (Should be created per fix plan)')