from HMS_py.core import db
print("Enviro LogSite:", db.query("SELECT DISTINCT LogSite_Code FROM Enviro"))
print("Site:", db.query("SELECT TOP 10 Site_Code, Site_Desc FROM Site"))
print("company:", db.query("SELECT Comp_Code, SName, HeadOffice FROM Company"))
print("U_EntDt tables:", db.query("""SELECT TOP 40 TABLE_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME='U_EntDt' ORDER BY TABLE_NAME"""))
print("V_DATE cols:", db.query("""SELECT TOP 40 TABLE_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME='V_DATE' ORDER BY TABLE_NAME"""))
