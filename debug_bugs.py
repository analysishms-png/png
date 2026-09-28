#!/usr/bin/env python3
"""Debug: Show all 10 identified bugs with priority levels"""

bugs = {
    '1': ('TXTADJ_AMT numeric validation', 'HIGH', 'Financial data integrity - causes incorrect adjustment amounts'),
    '2': ('DataCombo dropdown loss', 'HIGH', 'Cannot select accounts - blocks all financial entry'),
    '3': ('MSFlexGrid behavior differences', 'MEDIUM', 'Display differences in data grids'),
    '4': ('Error handling pattern shift', 'HIGH', 'No transaction safety - data corruption risk'),
    '5': ('Tab order mismatches', 'MEDIUM', 'Keyboard navigation not intuitive'),
    '6': ('Form resize behavior', 'LOW', 'Cosmetic UI issues on resize'),
    '7': ('ACGROUP vs SubGroup table', 'HIGH', 'Shows wrong account data - critical for adjustments'),
    '8': ('Delete validation loss', 'MEDIUM', 'Business logic gap in deletion flow'),
    '9': ('Grid filling logic simplification', 'MEDIUM', 'Potential incomplete data display'),
    '10': ('Error message localization', 'LOW', 'Cosmetic difference only')
}

print('=' * 60)
print('VB6 TO PYTHON UI - IDENTIFIED BUGS (10 TOTAL)')
print('=' * 60)
print()
print('PRIORITY: CRITICAL (fix first - causes data loss or blocks usage)')
print('-' * 60)
for num, (desc, priority, impact) in bugs.items():
    if priority == 'HIGH':
        print(f'Bug {num}: {desc}')
        print(f'  Priority: {priority}')
        print(f'  Impact: {impact}')
        print()

print('PRIORITY: HIGH (fix second - significant functional gaps)')
print('-' * 60)
for num, (desc, priority, impact) in bugs.items():
    if priority == 'HIGH' and num not in ['1', '2', '4', '7']:
        print(f'Bug {num}: {desc}')
        print(f'  Priority: {priority}')
        print(f'  Impact: {impact}')
        print()

print('PRIORITY: MEDIUM (fix third - usability improvements)')
print('-' * 60)
for num, (desc, priority, impact) in bugs.items():
    if priority == 'MEDIUM':
        print(f'Bug {num}: {desc}')
        print(f'  Priority: {priority}')
        print(f'  Impact: {impact}')
        print()

print('PRIORITY: LOW (fix later - cosmetic only)')
print('-' * 60)
for num, (desc, priority, impact) in bugs.items():
    if priority == 'LOW':
        print(f'Bug {num}: {desc}')
        print(f'  Priority: {priority}')
        print(f'  Impact: {impact}')
        print()

print('=' * 60)
print('SUMMARY:')
print(f'  Total bugs: {len(bugs)}')
print(f'  Critical/HIGH: {sum(1 for _,(_,p,_) in bugs.items() if p in ["HIGH"])}')
print(f'  MEDIUM: {sum(1 for _,(_,p,_) in bugs.items() if p == "MEDIUM")}')
print(f'  LOW: {sum(1 for _,(_,p,_) in bugs.items() if p == "LOW")}')
print('=' * 60)