groups_with_partial = {
    'Utility': {'total': 29, 'full': 6, 'partial': 18, 'coming_soon': 5},
    'Finance': {'total': 15, 'full': 7, 'partial': 8, 'coming_soon': 0},
    'Inventory': {'total': 12, 'full': 5, 'partial': 7, 'coming_soon': 0},
    'HR/Payroll': {'total': 4, 'full': 4, 'partial': 0, 'coming_soon': 0},
    'EPABX': {'total': 7, 'full': 4, 'partial': 3, 'coming_soon': 0},
}
print('GROUPS WITH PARTIAL ITEMS:')
for group, data in groups_with_partial.items():
    pct = (data['partial'] / data['total'] * 100) if data['total'] else 0
    print(f'  {group}: {data["partial"]}/{data["total"]} ({pct:.0f}%) partial')
print()
print('Next priority: Utility group (18/29 partial = 62% need work)')