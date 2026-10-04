import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')
from HMS_py.core import reports
import re

r = reports.by_key()['detailed_trial']
sql = r['sql']
print('SQL:', sql[:200])
print()

# Test the exact regex from run function
import re as _re
stripped = _re.sub(r"'(?:[^']|'')*'", "''", sql)
print('Stripped:', stripped[:200])
print('Question marks in stripped:', stripped.count('?'))

n = len(_re.findall(r'\?', _re.sub(r"'(?:[^']|'')*'", "''", sql)))
print('n:', n)