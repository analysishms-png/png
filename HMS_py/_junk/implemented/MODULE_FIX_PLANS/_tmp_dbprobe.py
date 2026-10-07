import sys, os
sys.path.insert(0, os.path.abspath("."))
from core import db
r = db.query("SELECT LOWER(TABLE_NAME) FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'")
print("live tables", len(r))
print([x[0] for x in r[:15]])
