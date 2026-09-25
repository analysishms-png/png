import subprocess, json, time, os, sys, base64, threading

# Win32 MCP automation script for HMS.exe module-wise screenshot capture
# Login as kanpur, navigate each module, take screenshots

SCREENSHOT_DIR = os.path.join(os.getcwd(), "HMS_py", "_qa", "kanpur_menu_wise")
os.makedirs(SCREENSHOT_DIR, exist_ok=True)

# Module list sorted by name from menu_help.py
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

# Module keyboard shortcuts (Alt+key) from VB6 User_Module flag=9
MODULE_SHORTCUTS = {
    "FA": "Alt+F", "FAT": "Alt+F", "FAREPORT": "Alt+F", "fae": "Alt+F",
    "fame": "Alt+F", "farp": "Alt+F", "fate": "Alt+F",
    "Mast": "Alt+S", "GEN": "Alt+S", "GENMas": "Alt+S",
    "Reserv": "Alt+R", "ResOpEnt": "Alt+R", "ReservationEnt": "Alt+R",
    "FDOMenu": "Alt+O", "FDORep": "Alt+O", "FDOForms": "Alt+O",
    "FO": "Alt+O", "FrontDesk": "Alt+O", "FDOMIS": "Alt+O",
    "FDOReports": "Alt+O", "FDOTax": "Alt+O", "FDOTaxr": "Alt+O",
    "HouseKeeping": "Alt+H", "HouseEnt": "Alt+H", "HouseREP": "Alt+H",
    "ReportsHK": "Alt+H", "TransHK": "Alt+H", "Matop": "Alt+H",
    "Inventory": "Alt+I", "Purchase": "Alt+I", "Purch": "Alt+I",
    "MatRep": "Alt+I", "MatReports": "Alt+I", "MatStat": "Alt+I",
    "MatVat": "Alt+I", "MatVatR": "Alt+I", "Mas": "Alt+I",
    "CCenterMas": "Alt+P", "POSMas": "Alt+P", "Pos": "Alt+P",
    "POSEnt": "Alt+P", "POSRep": "Alt+P", "POSReports": "Alt+P",
    "PosTax": "Alt+P", "PosTaxRep": "Alt+P", "POSMIS": "Alt+P",
    "HL": "Alt+B", "HallM": "Alt+B", "Hallop": "Alt+B",
    "HallReport": "Alt+B", "Banquet": "Alt+B", "BanqRep": "Alt+B",
    "NightAudit": "Alt+N", "NightAuditR": "Alt+N", "NightAuditRR": "Alt+N",
    "NightAuditoR": "Alt+N", "NightAuditL": "Alt+N", "NightAuditLR": "Alt+N",
    "PR": "Alt+U", "PRM": "Alt+U", "PayO": "Alt+U",
    "PayRep": "Alt+U", "PayRoll": "Alt+U",
    "EXTSMS": "Alt+M", "EXTSMSOPR": "Alt+M", "EXTSMSSETUP": "Alt+M",
    "SMSOPR": "Alt+M", "SMSSETUP": "Alt+M", "Mem": "Alt+T",
    "MemMas": "Alt+T", "MemOpr": "Alt+T", "EXTR": "Alt+X",
    "HallTax": "Alt+W", "HallTaxP": "Alt+W", "HallMIS": "Alt+W",
    "UTL": "Alt+U", "Util": "Alt+U", "EXTR": "Alt+X",
}

# Key screens per module (from menu_help.py flag=E entries)
MODULE_KEY_SCREENS = {
    "FA": ["Voucher Entry", "Ledger", "Trial Balance", "Cash Book", "Journal"],
    "FAT": ["Transaction"],
    "FAREPORT": ["Trial Balance", "Ledger", "Cash Book", "Bank Book", "Journal Books"],
    "Mast": ["Main Setup"],
    "GEN": ["General Setup"],
    "GENMas": ["Tax Master", "Tax Structure", "Payment Type"],
    "Reserv": ["Reservation"],
    "FDOMenu": ["WalkIn CheckIn", "Room Status", "Expense Entry", "Reverse Check Out"],
    "FDORep": ["Occupancy Report", "Check In Register", "Check Out Register"],
    "FO": ["Front Office"],
    "HouseKeeping": ["House Keeping Screen"],
    "HouseEnt": ["Complaint Master", "Lost / Found Entry", "House Keeping Screen"],
    "HouseREP": ["House Keeping Report"],
    "Inventory": ["Item", "Stock", "Purchase"],
    "Purchase": ["Purchase Bill", "Indent", "Purchase Order"],
    "Pos": ["Point of Sale"],
    "POSMas": ["Table Master", "Item List", "Menu Item"],
    "POSEnt": ["Payment Receive"],
    "POSRep": ["Sales Register", "KOT Wise Details", "Settlement Summary"],
    "NightAudit": ["Night Audit"],
    "NightAuditR": ["Daily Report", "Occupancy Analysis"],
    "NightAuditoR": ["Night Audit Process", "Charges Posting", "Reverse Night Audit"],
    "NightAuditGSTR": ["GSTR-1"],
    "NightAuditRR": ["Daily Report", "Guest Trail"],
    "HR": ["Employee Master", "Payroll"],
    "PRM": ["Employee Master", "Designation Master"],
    "PayRep": ["Pay Slip", "Payroll Register"],
    "EXTR": ["Expense Entry", "Fixed Charge"],
    "Mem": ["Member Master"],
    "MemMas": ["Member Master", "Category Master"],
    "Banquet": ["Banquet"],
    "Hallop": ["Banquet Booking", "Events", "Venue Availability"],
    "HallM": ["Hall Master", "Venue Master", "Menu Item"],
    "BanqRep": ["Sales Register", "OutStanding Report"],
    "AdvRecdRpt": ["Advance Recd."],
    "UTL": ["User Master", "Permissions", "Backup Data"],
    "Mas": ["Guest Status", "Room Category", "Room Master", "Guest History"],
    "MatLok": ["Look Ups"],
    "MatStat": ["Pending Indent", "Pending Purchase Order"],
    "Purch": ["Indent", "Purchase Bill", "Purchase Order"],
    "ResOpEnt": ["Reservation/Cancellation", "Advance Deposit"],
    "FDOForms": ["Form C", "Tourism Form 1"],
    "FDOMISRep": ["Occupancy Display", "Room Occupancy"],
}

def sanitize_name(name):
    """Make filename-safe module name"""
    return name.replace(" ", "_").replace("/", "_").replace("&", "").strip()

def get_screenshot_filename(module_code, screen_name="", index=0):
    """Generate screenshot filename: module_code_01_screen.png"""
    safe_module = sanitize_name(module_code)
    if screen_name:
        safe_screen = sanitize_name(screen_name)
        return f"{safe_module}_{index:02d}_{safe_screen}.png"
    return f"{safe_module}_{index:02d}_main.png"

print("=" * 60)
print("KANPUR MODULE-WISE SCREENSHOT AUTOMATION")
print("=" * 60)
print(f"Screenshot directory: {SCREENSHOT_DIR}")
print(f"Total modules: {len(MODULES)}")
print(f"Total key screens: {sum(len(v) for v in MODULE_KEY_SCREENS.values())}")
print()
print("READY FOR WIN32 MCP AUTOMATION")
print()
print("Steps:")
print("1. Focus HMS.exe window")
print("2. Login as kanpur (username: kanpur, password: kanpur)")
print("3. For each module, press Alt+key shortcut")
print("4. Wait for module to load")
print("5. Take screenshot")
print("6. Save with module name + screen name")
print()
print("Module shortcut map (first 16):")
for i, (code, name) in enumerate(MODULES[:16]):
    short = MODULE_SHORTCUTS.get(code, "N/A")
    print(f"  {short:8s} -> {code:15s} ({name})")
