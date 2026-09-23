# Script to find f-string SQL patterns in fa_ledger_ops.py
with open('core/fa_ledger_ops.py') as f:
    lines = f.readlines()
for i, line in enumerate(lines):
    s = line.strip()
    if s.startswith('f"SELECT') or s.startswith("f'SELECT"):
        print(f'{i+1}: {s[:120]}')
