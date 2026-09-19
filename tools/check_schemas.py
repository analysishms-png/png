"""Check schemas of all tables needed for Main Setup completion."""
import sys, os
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from HMS_py.core import db

cn = db.connect()
c = cn.cursor()

tables_to_check = [
    "NCTypeMast", "ComboPackHead", "ComboPackDetail", "HappyHours", "HappyHoursHead",
    "Waiter", "SchemeMast", "ItemRate",
    "ItemGrp", "ItemCatMast", "ItemMast", "ShiftMast",
    "Desig", "EmpCategory", "Employee", "Holiday",
    "MemCatMast", "MemCatFacility", "MemEnviro", "FacilityMast",
    "MembershipRevMast", "MemFacilityMast", "MemRevWise", "MemCatRevWise",
    "TelCallCode", "TelCallType", "TelExt", "EPABX_Data",
    "TDSCat", "VoucherCat", "FaEnviro",
    "SmartCardMaster", "SmartCardRegistration", "SmartCardLedger",
    "SaleMIS", "JobSchedule", "JobScheduledDetail",
    "CatalogMast", "GroupCatalog", "FunctionType",
    "VenueCapacity", "VenueFeatures", "VenueMast",
    "OutletBarCodePartDetail",
]

for tbl in tables_to_check:
    try:
        c.execute(f"SELECT TOP 1 * FROM [{tbl}]")
        cols = [desc[0] for desc in c.description]
        c.execute(f"SELECT COUNT(*) FROM [{tbl}]")
        cnt = c.fetchone()[0]
        print(f"\n=== {tbl} ({cnt} rows) ===")
        print(f"  Columns: {', '.join(cols)}")
    except Exception as e:
        print(f"\n=== {tbl} === ERROR: {e}")

cn.close()
