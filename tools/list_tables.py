"""List all DB tables for Main Setup audit."""
import sys, os
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from HMS_py.core import db

cn = db.connect()
c = cn.cursor()
c.execute("SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE' ORDER BY TABLE_NAME")
tables = [r.TABLE_NAME for r in c.fetchall()]
cn.close()

# Categories to check
checks = {
    "POS": ["OutLet","OutletMast","TableMast","Table","MenuItem","RsMenuItem",
            "MenuGroup","MenuGrp","NCType","NcType","Session","SessionMast",
            "RsSession","HappyHours","ComboPack","RateGroup","ItemConsumption",
            "Server","WaiterMast","CustomerHistory","ItemRate","MenuItemRate",
            "OutletSundry","VoucherSundrySetting"],
    "Inventory": ["PartyMast","Party","ItemGroup","ItemGrp","ItemCat","ItemCategory",
                  "ItemEntry","ConsmMast","ConsumMast","PurEnviro","OpeningStock",
                  "ShiftMast","InventEnviro"],
    "HR": ["DesigMast","Designation"],
    "Members": ["MemCat","MemberCat","Member","MemberMast","MembershipMast",
                "CorporateMember","RevenueMast","MemRevenue","MemFacility",
                "CatRevenue","CatFacility","MemBillSundry","MemAgeRevenue",
                "MemSelectCategory"],
    "Banquet": ["EventMast","Events","HallItemGrp","HallMenuItem","HallBillSundry"],
    "Finance": ["CurrBalUpdate","OpeningBalance","YearEnd","DeleteMessage",
                "VoucherSerialisation"],
    "EPABX": ["ComPort","ComPortMast","CallType","CallTypeMast","Extension",
              "ExtensionMast","CallCode","CallCodeMast","CallControl"],
    "Utility": ["InconsistencyCheck","MenuItemCopy","POSRecycle","TaskScheduler",
                "GuestLookup","GuestBirthDate","SaleMIS","UserPermissionAdv","PLUFile"],
    "SmartCard": ["SmartCard","SmartCardMast","SmartCardRegistration",
                  "SmartCardRecharge","SmartCardRefund","SmartCardLostReIssue"],
}

tables_lower = {t.lower(): t for t in tables}

for cat, names in checks.items():
    print(f"\n=== {cat} ===")
    for n in names:
        if n in tables:
            print(f"  OK: {n}")
        elif n.lower() in tables_lower:
            print(f"  OK: {n} -> {tables_lower[n.lower()]}")
        else:
            print(f"  MISSING: {n}")

print(f"\n=== ALL TABLES ({len(tables)}) ===")
for t in tables:
    print(f"  {t}")
