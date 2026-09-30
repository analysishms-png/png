import os
ui_dir = r'HMS_py/ui'
files = os.listdir(ui_dir)
finance_files = [f for f in files if 'finance' in f.lower() or 'fa_' in f.lower() or 'ledger' in f.lower() or 'tax' in f.lower() or 'voucher' in f.lower()]
print('Finance-related UI files:')
for f in sorted(finance_files):
    print('  - ' + f)