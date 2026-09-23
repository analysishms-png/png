from HMS_py.core import db
tables = db.query("SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE' ORDER BY TABLE_NAME")
fo_tables = [t[0] for t in tables if any(k in t[0].lower() for k in ['room', 'res', 'folio', 'guest', 'check', 'book'])]
print("Found FO tables:")
for t in fo_tables:
    print(" -", t)
