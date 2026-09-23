import sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db
# HallBook columns for VenueAvailability query
cols = [r[0] for r in db.query("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='HallBook' ORDER BY ORDINAL_POSITION")]
print("HallBook:", cols)
cols2 = [r[0] for r in db.query("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='DBSendSMS' ORDER BY ORDINAL_POSITION")]
print("DBSendSMS:", cols2)
# report alias resolve check
from HMS_py.core import reports as rp
m = rp.menu_caption_map()
for c in ["Arrival List","Attendence Report","Cashier  Report","Collection Summary","Group Wise Sale","Item Wise Sales Report","KOT Change Report","Monthwise Sales","Sale Summary","Settlement Summary","Taxwise Details","Charge Payment Detail","Room Wise Plan Detail","Stewardwise Sale"]:
    print(f"{'HIT' if c in m else 'MISS'} {c!r} -> {m.get(c)}")
