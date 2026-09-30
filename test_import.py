import sys
sys.path.insert(0, '.')
from HMS_py.core import auth, db, company
print("Imports OK")
cfg = db.load_config()
print("Config:", cfg)
companies = company.list_companies()
print("Companies:", companies)