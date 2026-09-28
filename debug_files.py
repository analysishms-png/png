#!/usr/bin/env python3
"""Debug: List all UI Python files and their status"""

import os
ui_dir = 'HMS_py/ui'
py_files = sorted([f for f in os.listdir(ui_dir) if f.endswith('.py')])

print('=' * 60)
print('UI PYTHON FILES IN HMS_py/ui/')
print('=' * 60)
print(f'Total .py files: {len(py_files)}')
print()

# Categorize by domain using filename patterns
domains = {}
for fname in py_files:
    name = fname.replace('.py', '').lower()
    if any(kw in name for kw in ['fa', 'finance', 'ledger', 'voucher']):
        domain = 'Finance/FA'
    elif any(kw in name for kw in ['pos', 'sales', 'delivery', 'kot']):
        domain = 'POS/Restaurant'
    elif any(kw in name for kw in ['hall', 'banquet', 'booking']):
        domain = 'Banquet/Hall'
    elif any(kw in name for kw in ['member', 'mem']):
        domain = 'Members/Club'
    elif any(kw in name for kw in ['hr', 'payroll', 'employee']):
        domain = 'HR/Payroll'
    elif any(kw in name for kw in ['house', 'housekeeping', 'hk']):
        domain = 'Housekeeping'
    elif any(kw in name for kw in ['epabx', 'comms', 'tel']):
        domain = 'EPABX/Comms'
    elif any(kw in name for kw in ['report', 'nightaudit']):
        domain = 'Reports'
    elif any(kw in name for kw in ['shell', 'config', 'setup', 'general']):
        domain = 'System/Utility'
    else:
        domain = 'Other'

    domains.setdefault(domain, []).append(fname)

for domain, files in sorted(domains.items()):
    print(f'\n{domain} ({len(files)} files):')
    for f in files[:5]:
        print(f'  - {f}')
    if len(files) > 5:
        print(f'  ... and {len(files)-5} more')

print()
print('Full list (all files):')
for f in py_files:
    print(f'  - {f}')

# Check for key files
print()
key_files = ['fa_sub_forms_ui.py', 'partial_forms_ui.py', 'fa_voucher_ui.py']
for kf in key_files:
    path = os.path.join(ui_dir, kf)
    exists = os.path.exists(path)
    print(f'  {kf}: {"EXISTS" if exists else "MISSING"}')