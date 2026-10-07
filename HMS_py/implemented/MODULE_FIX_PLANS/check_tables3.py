import sys
sys.path.insert(0, '.')
from HMS_py.core import db
cn = db.connect()
cursor = cn.cursor()
cursor.execute("SELECT name FROM sysobjects WHERE xtype='U' AND name IN ('PrintMast', 'PrintFormats', 'PrinterSetup', 'Depart', 'RevMast', 'SubGroup', 'SundryMast', 'TaxStru') ORDER BY name")
for row in cursor.fetchall():
    print(row[0])
cn.close()