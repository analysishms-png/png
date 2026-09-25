import subprocess, json, time, os, sys, base64

# Win32 MCP communication via stdio
# Start the MCP server and communicate via JSON-RPC

MOON_DATA = "MOONData2627"
USER = "kanpur"
SCREENSHOT_DIR = os.path.join(os.getcwd(), "HMS_py", "_qa", "kanpur_menu_wise")
os.makedirs(SCREENSHOT_DIR, exist_ok=True)

# Module list from menu_help.py for kanpur user
# Sorted by module name, each with its key screens
MODULES = [
    ("AdvRecdRpt", "Advance Received Report"),
    ("BanqRep", "Banquet Report"),
    ("BanqRepMIS", "Banquet MIS"),
    ("Banquet", "Banquet"),
    ("CCenter", "Centre"),
    ("CCenterMas", "Centre Master"),
    ("EXTR", "EXTRAs"),
    ("EXTSMS", "SMS"),
    ("EXTSMSOPR", "SMS Operations"),
    ("EXTSMSSETUP", "SMS Setup"),
    ("FA", "Finance"),
    ("FAREPORT", "Finance Report"),
    ("FAT", "Finance Transaction"),
    ("FDO", "Front Desk Operations"),
    ("FDOForms", "FDO Forms"),
    ("FDOMIS", "FDO MIS"),
    ("FDOMISRep", "FDO MIS Report"),
    ("FDOMenu", "FDO Menu"),
    ("FDORep", "FDO Report"),
    ("FDOReports", "FDO Reports"),
    ("FDOTax", "FDO Tax"),
    ("FDOTaxr", "FDO Tax Report"),
    ("FO", "Front Office"),
    ("FrontDesk", "Front Desk"),
    ("GEN", "General Setup"),
    ("GENMas", "General Setup Master"),
    ("HL", "Hall"),
    ("HallM", "Hall Master"),
    ("HallMIS", "Hall MIS"),
    ("HallReport", "Hall Report"),
    ("HallTax", "Hall Tax"),
    ("HallTaxP", "Hall Tax Report"),
    ("Hallop", "Hall Operations"),
    ("HouseEnt", "House Enterprise"),
    ("HouseKeeping", "House Keeping"),
    ("HouseREP", "House Report"),
    ("MISREP", "MIS Report"),
    ("Mas", "Master"),
    ("Mast", "Main Setup"),
    ("MatLok", "Material Look Ups"),
    ("MatRep", "Material Report"),
    ("MatReports", "Material Reports"),
    ("MatStat", "Material Status"),
    ("MatVat", "Material VAT"),
    ("MatVatR", "Material VAT Report"),
    ("Matop", "Material Operations"),
    ("Mem", "Members Mgmt"),
    ("MemMas", "Member Master"),
    ("MemOpr", "Member Operations"),
    ("NightAudit", "Night Audit"),
    ("NightAuditGST", "Night Audit GST"),
    ("NightAuditGSTR", "Night Audit GSTR"),
    ("NightAuditL", "Night Audit Log"),
    ("NightAuditLR", "Night Audit Log Report"),
    ("NightAuditMenu", "Night Audit Menu"),
    ("NightAuditR", "Night Audit Report"),
    ("NightAuditRR", "Night Audit Report"),
    ("NightAudito", "Night Audit Operation"),
    ("NightAuditoR", "Night Audit Operation Report"),
    ("POSEnt", "POS Entry"),
    ("POSMIS", "POS MIS"),
    ("POSMas", "POS Master"),
    ("POSRep", "POS Report"),
    ("POSReports", "POS Reports"),
    ("PR", "HR/Payroll"),
    ("PRM", "Payroll Master"),
    ("PayO", "Payroll Operations"),
    ("PayOpr", "Payroll Operations"),
    ("PayR", "Payroll Report"),
    ("PayRep", "Payroll Report"),
    ("PayRoll", "Payroll"),
    ("Pos", "Point of Sale"),
    ("PosTax", "POS Tax"),
    ("PosTaxRep", "POS Tax Report"),
    ("Purch", "Purchase"),
    ("Purchase", "Purchase"),
    ("ReportsHK", "House Keeping Reports"),
    ("ResOpEnt", "Reservation Operations"),
    ("ResStatusRpt", "Reservation Status Report"),
    ("Reserv", "Reservation"),
    ("ReservationEnt", "Reservation Entry"),
    ("ReservationMIS", "Reservation MIS"),
    ("Restaurant", "Restaurant"),
    ("SMSOPR", "SMS Operations"),
    ("SMSSETUP", "SMS Setup"),
    ("TFDOForms", "Tourism Forms"),
    ("TallyPOSRPT", "Tally POS Report"),
    ("TallyRPTS", "Tally Reports"),
    ("TransHK", "Trans HK"),
    ("UTL", "Utility"),
    ("Util", "Utility"),
    ("fae", "Finance Accounts"),
    ("fame", "Finance Master"),
    ("farp", "Finance Report"),
    ("fate", "Finance Entry"),
    ("oper", "Operation"),
]

print(f"Screenshot directory: {SCREENSHOT_DIR}")
print(f"Total modules to screenshot: {len(MODULES)}")
print(f"Total module entries: {len(MODULES)}")
print("\nModule list ready for win32 MCP automation")
print("Next step: Use win32 MCP to login as kanpur and navigate each module")
print("\nModule codes (for keyboard shortcuts):")
for i, (code, name) in enumerate(MODULES[:16]):
    print(f"  Alt+{chr(ord('F')+i) if i<16 else '?'} = {name}")
