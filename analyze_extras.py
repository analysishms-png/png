import os, re

path = r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\implemented\HMS2526\HMS_REVERSE_ENGINEERING\EXTRAS.text'

with open(path, 'r', encoding='utf-8', errors='replace') as f:
    content = f.read()

# Count key patterns
subs = len(re.findall(r'Private Sub \w+', content))
public_subs = len(re.findall(r'Public Sub \w+', content))
functions = len(re.findall(r'Private Function|Public Function', content))
exit_sub = len(re.findall(r'Exit Sub', content))
data_tables = len(re.findall(r'Data Table: \w+', content))
globals = len(re.findall(r'global_\d+', content))
msgbox = len(re.findall(r'MsgBox', content))
loc_labels = re.findall(r'loc_\w+', content)

print('EXTRAS.text ANALYSIS')
print('=' * 70)
print(f'Sub Procedures (Private): {subs}')
print(f'Sub Procedures (Public): {public_subs}')
print(f'Functions: {functions}')
print(f'Exit Sub: {exit_sub}')
print(f'Data Table references: {data_tables}')
print(f'Global references: {globals}')
print(f'MsgBox calls: {msgbox}')
print(f'Unique loc_ labels: {len(set(loc_labels))}')

from collections import Counter
modules = re.findall(r"'Object: (\w+)", content)
mod_counter = Counter(modules)
print('\nTop 15 modules:')
for mod, count in mod_counter.most_common(15):
    print(f'  {mod}: {count}')

# Search for patterns related to our 6 fixes
print('\n\nFIX #1 - Numeric validation patterns:')
print('  Sirf numeric values allowed:', 'Sirf numeric values allowed' in content)
print('  adj_pending:', 'adj_pending' in content)

print('\nFIX #2 - ACGROUP/QCompleter patterns:')
print('  QCompleter:', 'QCompleter' in content)
print('  _acgroup_map:', '_acgroup_map' in content)

print('\nFIX #3 - ACGROUP vs SubGroup:')
print('  ACGROUP:', 'ACGROUP' in content)
print('  SubGroup:', 'SubGroup' in content)

print('\nFIX #4 - Error Handler:')
print('  ErrorHandler:', 'ErrorHandler' in content)
print('  handle method:', 'def handle' in content)

print('\nFIX #5 - Tab Order:')
print('  setTabOrder:', 'setTabOrder(' in content)

print('\nFIX #6 - Resize Event:')
print('  resizeEvent:', 'def resizeEvent' in content)