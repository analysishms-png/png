import sys, os, json
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db

tables = {r[0].lower() for r in db.query("SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'")}
# row counts for candidate tables
cands = ["HallBook","VenueMast","FuncType","FunctionType","Events","EventMast","Enviro","FaEnviro",
 "Depart","OutletMast","TableMast","ServerMast","Waiter","ItemMast","Ledger","SubGroup",
 "DBSendSMS","SMSMaster","SMSSchedule","EmailSMSForward","GuestMessage","ComplaintDetail",
 "Leave","Attendence","Salary","Employee","MemberMast","MembershipMast","POSDel","DelBoy",
 "BookingInquiry","ResvAdv","HallSale1","HallBill","BanqBill","ItemRate","MenuGroup",
 "MenuCat","ItemCat","GroupProf","CatalogMast","SmartCard","CardMast","RWPts"]
print("table exists + rows:")
for t in cands:
    if t.lower() in tables:
        try:
            n = db.query(f"SELECT COUNT(*) FROM [{t}]")[0][0]
            print(f"  YES {t:25} rows={n}")
        except Exception as e:
            print(f"  YES {t:25} ERR {e}")
    else:
        print(f"  no  {t}")

# all tables with SMS or Hall or Leave or Member or Card
print("\nmatching tables:")
for r in db.query("""
SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE='BASE TABLE' AND (
 TABLE_NAME LIKE '%SMS%' OR TABLE_NAME LIKE '%Hall%' OR TABLE_NAME LIKE '%Leave%'
 OR TABLE_NAME LIKE '%Member%' OR TABLE_NAME LIKE '%Card%' OR TABLE_NAME LIKE '%Outlet%'
 OR TABLE_NAME LIKE '%Table%' OR TABLE_NAME LIKE '%Waiter%' OR TABLE_NAME LIKE '%Server%'
 OR TABLE_NAME LIKE '%Event%' OR TABLE_NAME LIKE '%Func%' OR TABLE_NAME LIKE '%Banq%'
 OR TABLE_NAME LIKE '%Dept%' OR TABLE_NAME LIKE '%Depart%' OR TABLE_NAME LIKE '%Salary%'
 OR TABLE_NAME LIKE '%Emp%' OR TABLE_NAME LIKE '%Rent%' OR TABLE_NAME LIKE '%Adv%'
) ORDER BY TABLE_NAME
"""):
    try:
        n = db.query(f"SELECT COUNT(*) FROM [{r[0]}]")[0][0]
    except:
        n = "?"
    print(f"  {r[0]:35} rows={n}")
