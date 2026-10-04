import pyodbc
conn = pyodbc.connect('DRIVER={SQL Server};SERVER=localhost;DATABASE=HMS;UID=sa;PWD=your_password')
cursor = conn.cursor()
cursor.execute("SELECT name FROM sysobjects WHERE xtype='U' AND name IN ('PrintMast', 'PrintFormats', 'PrinterSetup', 'Depart', 'RevMast', 'SubGroup', 'SundryMast', 'TaxStru') ORDER BY name")
for row in cursor.fetchall():
    print(row[0])