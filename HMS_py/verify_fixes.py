import re

# Verify fa_ledger_ops.py fix
with open('core/fa_ledger_ops.py') as f:
    content = f.read()

# Check if f-string was replaced
matches = re.findall(r'f"SELECT', content)
print(f'Remaining f-string SELECTs: {len(matches)}')
matches2 = re.findall(r'SELECT TOP \+ str', content)
print(f'String concatenation patterns: {len(matches2)}')
lines = content.split('\n')
for i in range(70, 76):
    print(f'{i+1}: {lines[i].strip()[:100]}')

# Now fix SELECT * occurrences
# Files with SELECT *:
files_with_star = {
    'core/booking.py': 1,
    'core/company.py': 1,
    'core/enviro.py': 1,
    'core/expenseentry.py': 1,
    'core/facility_billing.py': 4,
    'core/folio.py': 3,
    'core/godrej_locks.py': 1,
    'core/guest_services.py': 3,
    'core/hall_booking.py': 3,
    'core/hr_payroll.py': 5,
    'core/member_billing.py': 3,
    'core/reservation.py': 1,
    'core/roomstatus.py': 1,
    'core/smartcard_ops.py': 1,
}

total = 0
for filepath, count in files_with_star.items():
    try:
        with open(filepath) as f:
            content = f.read()
        lines = content.split('\n')
        new_lines = []
        changed = 0
        for line in lines:
            if 'SELECT *' in line.upper() and 'SELECT *' in line:
                # This is a simplified fix - replace with column names from _map function
                # For now, just note it
                changed += 1
            new_lines.append(line)
        if changed > 0:
            print(f'{filepath}: {changed} SELECT * occurrences to fix')
            total += changed
    except Exception as e:
        print(f'{filepath}: Error - {e}')

print(f'\nTotal SELECT * occurrences: {total}')
