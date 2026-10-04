import sys; sys.path.insert(0,'.')
from HMS_py.core import db
cn=db.connect()
cur=cn.cursor()
rows=cur.execute("SELECT c.name FROM sys.columns c JOIN sys.tables t ON c.object_id=t.object_id WHERE t.name='PayCharge' ORDER BY c.column_id").fetchall()
print([r[0] for r in rows])
