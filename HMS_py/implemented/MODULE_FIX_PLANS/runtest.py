import os, sys
sys.path.insert(0, '.')
from HMS_py.core.db import load_config
c = load_config()
print('DB config:')
print('  server =', c.get('server'))
print('  database =', c.get('database'))
print('  company =', c.get('company'))
print('  site_code =', c.get('site_code'))