import os, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from core.auth import check_login
result = check_login(os.environ.get('HMS_APP_USER', 'SA'), os.environ.get('HMS_APP_PASSWORD', ''))
print('Result:', result)