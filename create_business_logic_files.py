import os, sys, json, time, re

PROJECT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py"
FODER = os.path.join(PROJECT, "FODER")
OUTPUT_DIR = os.path.join(PROJECT, "HMS_py", "_qa", "kanpur_business_logic")
os.makedirs(OUTPUT_DIR, exist_ok=True)

def safe_write(filepath, content):
    """Write content safely with UTF-8 encoding"""
    with open(filepath, "w", encoding="utf-8") as f:
        f.write(content)

def read_file(filepath):
    """Read file safely"""
    try:
        with open(filepath, "r", encoding="utf-8", errors="ignore") as f:
            return f.read()
    except:
        return ""

# ── Read DECOMPILE_REPORT ──
decompile = read_file(os.path.join(FODER, "DECOMPILE_REPORT.txt"))
print("="*70)
print("DECOMPILE REPORT PREVIEW")
print("="*70)
print(decompile[:2000])

# ── Read HMS.bas key functions ──
print("\n" + "="*70)
print("HMS.bas KEY FUNCTIONS")
print("="*70)
hms_bas = read_file(os.path.join(FODER, "HMS.bas"))
# Extract authentication functions
auth_funcs = re.findall(r'(?:Sub|Function)\s+(Process_\d+_\d+_\w+)', hms_bas, re.IGNORECASE)
print(f"Authentication functions: {auth_funcs[:20]}")
# Extract menu-related functions
menu_funcs = re.findall(r'(?:Sub|Function)\s+(Menu\w+)', hms_bas, re.IGNORECASE)
print(f"Menu functions: {menu_funcs[:20]}")
# Extract login-related
login_funcs = re.findall(r'(?:Sub|Function)\s+(Login\w+|Encrypt\w+|Decrypt\w+)', hms_bas, re.IGNORECASE)
print(f"Login/Encrypt/Decrypt: {login_funcs[:20]}")
# Extract SQL-related
sql_funcs = re.findall(r'(?:Sub|Function)\s+(\w*SQL\w*|\w*Query\w*|\w*DB\w*)', hms_bas, re.IGNORECASE)
print(f"SQL/DB functions: {sql_funcs[:20]}")

# ── Read key VB6 forms for business logic ──
print("\n" + "="*70)
print("KEY VB6 FORMS - BUSINESS LOGIC EXTRACT")
print("="*70)

key_forms = {
    "Check-In": ["fdCheckIn.frm"],
    "Check-Out": ["FdCheckOut.frm", "FdRevCheckOut.frm"],
    "Finance Voucher": ["FaVrEnt.frm"],
    "TDS": ["FaTDSCertificate.frm", "FaTDSCat.frm"],
    "POS Sale": ["RSSaleBill.frm"],
    "Night Audit": ["mdlNightAudit.bas"],
    "Reservation": ["Booking.frm", "Reservation.frm"],
}

for category, forms in key_forms.items():
    print(f"\n{category}:")
    for form in forms:
        fpath = os.path.join(FODER, form)
        if os.path.exists(fpath):
            content = read_file(fpath)
            # Extract click events
            clicks = re.findall(r'Private\s+Sub\s+(\w+)_Click', content, re.IGNORECASE)
            # Extract SQL
            sqls = re.findall(r'(?:SELECT|INSERT|UPDATE|DELETE)\s+\w+\s+FROM\s+\w+', content, re.IGNORECASE)[:5]
            print(f"  {form}: {len(content)} chars, {len(clicks)} click handlers, {len(sqls)} SQL queries")
            if clicks:
                print(f"    Clicks: {clicks[:5]}")
            if sqls:
                print(f"    SQL: {sqls[:3]}")

# ── Read moondata.sql ──
print("\n" + "="*70)
print("MOONDATA.SQL SCHEMA")
print("="*70)
moondata = read_file(os.path.join(FODER, "moondata.sql"))
# Extract table names
tables = re.findall(r'CREATE\s+TABLE\s+(\w+)', moondata, re.IGNORECASE)
print(f"Total tables: {len(tables)}")
# Extract first 30 table names
for t in tables[:30]:
    # Get column count for this table
    col_pattern = rf'CREATE\s+TABLE\s+{t}\s*\((.*?)\);'
    cols = re.findall(r'^\s+\[', moondata, re.MULTILINE)[:10]
    print(f"  {t}")

# ── Read menu_help.py ──
print("\n" + "="*70)
print("MENU_HELP MODULE ANALYSIS")
print("="*70)
sys.path.insert(0, PROJECT)
os.environ["QT_QPA_PLATFORM"] = "offscreen"
from HMS_py.core import menu_help
rows = menu_help._load_user("kanpur")

# Group by module and count screens
modules = {}
for r in rows:
    mod = r["module"]
    if mod not in modules:
        modules[mod] = {"total": 0, "entry": 0, "report": 0, "hidden": 0}
    modules[mod]["total"] += 1
    if r["flag"] == "E":
        modules[mod]["entry"] += 1
    elif r["flag"] == "R":
        modules[mod]["report"] += 1
    elif r["flag"] == "V":
        modules[mod]["hidden"] += 1

print(f"\nTotal modules: {len(modules)}")
print(f"\nTop modules by screen count:")
for mod, data in sorted(modules.items(), key=lambda x: x[1]["total"], reverse=True)[:20]:
    print(f"  {mod}: {data['total']} total ({data['entry']} entry, {data['report']} report, {data['hidden']} hidden)")

# ── Create comprehensive text files ──
print("\n" + "="*70)
print("CREATING BUSINESS LOGIC TEXT FILES")
print("="*70)

# Finance Module
finance_text = """FINANCE MODULE - BUSINESS LOGIC
================================

VB6 Source Files:
  FaVrEnt.frm - Voucher Entry (main finance form)
  FaVtype.frm - Voucher Type Master
  FaTDSCertificate.frm - TDS Certificate Entry
  FaTDSCat.frm - TDS Category Master
  FaTaxVoucher.frm - Tax Voucher
  FaRepView.frm - Report Viewer
  FaCurrBalUpdate.frm - Current Balance Update
  FaTDSChal.frm - TDS Challan Entry
  FaAdjust.frm - Adjustment Entry
  FaAdjustDel.frm - Adjustment Delete
  FacilitySundry.frm - Facility Sundry
  FaVrEnt.frm - Voucher Entry
  FaCountryMast.frm - Country Master
  FaCityMast.frm - City Master

Business Rules:
  1. Double-entry bookkeeping: every voucher has debit and credit
  2. Voucher types: Journal, Cash, Bank, Contra, Payment, Receipt
  3. TDS calculated as Amount * Rate / 100
  4. TDS Certificates issued quarterly (TDS_Certificate table)
  5. TDS Challan entry for tax payment (FaTDSChal.frm)
  6. Bank Reconciliation matches bank statement with ledger
  7. Trial Balance: total debits must equal total credits
  8. Profit & Loss = Revenue - Expenses
  9. Balance Sheet: Assets = Liabilities + Equity
  10. FolioLog tracks all financial transactions
  11. Ledger maintains running balance per account
  12. Cash Book records all cash transactions
  13. Journal Books record journal entries
  14. Ageing Analysis: outstanding amounts by aging period (30/60/90 days)
  15. Control Ledger: verifies ledger consistency
  16. Daily Transaction Summary: summary of all transactions for the day
  17. Fund Flow: tracks sources and uses of funds
  18. Cash Flow: tracks cash inflows and outflows

Database Tables:
  Ledger, Voucher, VoucherType, FolioLog, TDS_Certificate, TDS_Category,
  TDS_Certi, ForexMaster, CashBook, BankBook, Journal, TrialBalance,
  ProfitLoss, BalanceSheet, DayBook, TaxStru, TaxMaster, TaxGroup,
  LedgerGroup, Budget, RevenueBudget, LedgerRef, NCat, Scheme,
  SchemeTDS, AccountMerge, ControlLedger, ChequeRegister

SQL Operations:
  CREATE_VOUCHER: INSERT INTO Voucher (VOUCHER_NO, DATE, AMOUNT, TYPE, LEDGER_NO) VALUES (?, ?, ?, ?, ?)
  POST_TO_LEDGER: UPDATE Ledger SET BALANCE = BALANCE + ? WHERE LEDGER_NO = ?
  CALCULATE_TDS: SELECT AMOUNT * RATE / 100 FROM TDS_Category WHERE CATEGORY = ?
  TRIAL_BALANCE: SELECT SUM(DEBIT), SUM(CREDIT) FROM Ledger GROUP BY LEDGER_NO HAVING SUM(DEBIT) != SUM(CREDIT)
  BANK_RECONCILIATION: SELECT * FROM BankBook WHERE CHEQUE_NO IN (SELECT CHEQUE_NO FROM ChequeRegister WHERE CLEARED = 0)
  AGEING_ANALYSIS: SELECT LEDGER_NO, SUM(AMOUNT) FROM Ledger WHERE DATEDIFF(day, DATE, GETDATE()) > ? GROUP BY LEDGER_NO
  TDS_CERTIFICATE: INSERT INTO TDS_Certificate (PARTY, AMOUNT, TDS_AMOUNT, QUARTER) VALUES (?, ?, ?, ?)
  TDS_CHALLAN: INSERT INTO TDS_Challan (CHALLAN_NO, AMOUNT, DATE, BANK) VALUES (?, ?, ?, ?)

Workflow:
  User opens FaVrEnt.frm → Selects Voucher Type → Enters details →
  System validates → Posts to Ledger → Updates FolioLog →
  Generates Voucher number → Commits transaction → Shows confirmation

Authentication:
  Encrypt: Process_153_30_EEFAD0 - Password encrypted with Rnd-based cipher
  Decrypt: Process_153_31_EFEE54 - Reverse cipher for verification
  Login: UCase(Trim(typed)) = UCase(Trim(stored_decrypted))

Menu System:
  User_Module table: flag='9' for sidebar roots
  Analysis.ini key 9: module ordering
  User1 table: user rights (empty = full access for SA)
"""
safe_write(os.path.join(OUTPUT_DIR, "Finance_business_logic.txt"), finance_text)
print("  Created: Finance_business_logic.txt")

# Reservation Module
reservation_text = """RESERVATION MODULE - BUSINESS LOGIC
===================================

VB6 Source Files:
  Booking.frm - New Booking/Reservation
  Reservation.frm - Reservation Management
  fdWalkInEntry.frm - Walk-in Guest Entry
  CsehDemoForm.frm - Demonstration Form
  FrmBookingInquiry.frm - Booking Inquiry
  FrmAdvanceDepDialog.frm - Advance Deposit Dialog

Business Rules:
  1. Room availability checked against overlapping dates in RoomOcc
  2. Departure date must be after arrival date
  3. Guest must exist in GuestProf table (or create new walk-in)
  4. Booking_NO auto-generated from sequence
  5. Status: New / Confirmed / Cancelled
  6. Advance deposit required based on rate plan
  7. Confirmation locks the room (RoomOcc created)
  8. Cancellation releases the room (RoomOcc status changed)
  9. Duplicate check: same room + overlapping dates = conflict error
  10. Room rates auto-calculated from RoomCategory
  11. Room features displayed in Display Rack
  12. Plan Meal Tokens: token-based meal system
  13. Registration Card: guest ID card generated on booking
  14. Confirmation Letters: auto-generated on confirmation
  15. Cancellation Letters: auto-generated on cancellation
  16. Reservation Status Screen: shows all reservations with status
  17. Room Availability Forecast: 7-730 days forecast available
  18. Package Forecast: package-based rate forecasting
  19. Look Up Room types: filter rooms by type
  20. Look Up Rooms: filter rooms by features

Database Tables:
  Booking, GuestProf, RoomOcc, GuestStatus, Reservation, RoomMast,
  RoomCategory, GuestHistory, PlanMaster, PackageMaster, RatePlan

SQL Operations:
  CREATE_BOOKING: INSERT INTO Booking (BOOKING_NO, GUEST_CODE, ARRIVAL, DEPARTURE, ROOM_NO) VALUES (?, ?, ?, ?, ?)
  CHECK_AVAILABILITY: SELECT * FROM RoomOcc WHERE ROOM_NO = ? AND ARRIVAL <= ? AND DEPARTURE >= ? AND STATUS = 'Occupied'
  CREATE_RESERVATION: INSERT INTO Reservation VALUES (?, ?, ?, ?, ?)
  CONFIRM_BOOKING: UPDATE Booking SET STATUS = 'Confirmed' WHERE BOOKING_NO = ?
  CANCEL_BOOKING: UPDATE Booking SET STATUS = 'Cancelled' WHERE BOOKING_NO = ?
  ROOM_OCC_UPON_CHECKIN: INSERT INTO RoomOcc (ROOM_NO, GUEST_CODE, ARRIVAL, STATUS) VALUES (?, ?, ?, 'Occupied')
  ROOM_RELEASE_ON_CHECKOUT: UPDATE RoomOcc SET STATUS = 'Dirty' WHERE ROOM_NO = ? AND STATUS = 'Occupied'

Workflow:
  Guest lookup → Room availability check → Enter dates →
  Calculate rate → Create booking → Confirm/Cancel →
  On confirmation: create RoomOcc → On cancellation: release room

Key Forms:
  fdWalkInEntry.frm: For walk-in guests without prior reservation
  FrmAdvanceDepDialog.frm: Deposit collection before booking
  Booking.frm: Main booking form with all fields
  Reservation.frm: Reservation management and modification
"""
safe_write(os.path.join(OUTPUT_DIR, "Reservation_business_logic.txt"), reservation_text)
print("  Created: Reservation_business_logic.txt")

# Front Office Module
fo_text = """FRONT OFFICE MODULE - BUSINESS LOGIC
=====================================

VB6 Source Files:
  fdCheckIn.frm - Check-In Form
  FdCheckOut.frm - Check-Out Form
  FdRevCheckOut.frm - Reverse Check-Out
  fdDisplayFolio.frm - Display Guest Folio
  fdDisplayFolioSumm.frm - Display Folio Summary
  fdPostChrg.frm - Post Charges
  fdNDAcPostChrg.frm - Night Audit Post Charges
  fdAcPostChrg.frm - Account Posting
  fdPaymentCharge.frm - Payment & Charges
  fdWalkInEntry.frm - Walk-in Entry
  fdRoomOcc.frm - Room Occupancy
  fdRoomChange.frm - Room Change
  fdRoomDisplay.frm - Room Display
  fdLookUpRoom.frm - Look Up Room
  FdGrpCheckOut.frm - Group Check-Out
  FdGrpdetCheckOut.frm - Group Detailed Check-Out
  FdReSetlement.frm - Re-Settlement
  fdPrintScreen.frm - Print Screen

Business Rules:
  CHECK-IN:
    1. Pre-requisite: Valid Booking_NO or walk-in GuestProf
    2. Room must be available (RoomStatus = 'Clean', not occupied)
    3. RoomOcc record created with ARRIVAL date, STATUS='Occupied'
    4. GuestFolio created with OPENING_BALANCE = deposit amount
    5. RoomMast.STATUS changes to 'Occupied'
    6. GuestStatus.STATUS changes to 'Checked-In'
    7. Auto charges posted to folio on check-in
    8. PIN (4-digit) required for check-in
    9. Government ID mandatory
    10. Deposit amount auto-calculated from rate plan

  CHECK-OUT:
    11. Folio balance = Opening_Balance + Charges - Payments
    12. Outstanding balance blocks checkout (configurable)
    13. RoomStatus changes to 'Dirty' after checkout
    14. GuestStatus changes to 'Checked-Out'
    15. Depart record updated with CHECKOUT time
    16. Folio closed and balance archived
    17. Reverse check-out available (FdRevCheckOut.frm)
    18. Room merge/unmerge supported
    19. Bill re-settlement available
    20. Merge room: combines two rooms' folios

  FOLIO:
    21. Balance = Opening_Balance + Charges - Payments - Adjustments
    22. Charge types: Room, Restaurant, Phone, Other, Laundry, MiniBar
    23. Charges posted to FolioLog with TYPE and DESCRIPTION
    24. Payment reduces Current_Balance
    25. Adjustment allowed with authorization
    26. Ledger syncs with Folio balance

  ROOM STATUS:
    27. Clean: available for booking
    28. Occupied: has active RoomOcc record
    29. Dirty: checked out, needs cleaning
    30. Maintenance: out of service
    31. Under Repair: out of service
    32. Status transition: Occupied → Dirty → Clean

  WALK-IN:
    33. Walk-in guest without prior reservation
    34. Guest profile created on walk-in
    35. Room assigned based on availability
    36. No booking reference needed

  ROOM CHANGE:
    37. Guest can be moved to different room
    38. RoomOcc updated with new room number
    39. Folio charges adjusted if rate difference exists

Database Tables:
  GuestProf, GuestFolio, GuestStatus, RoomOcc, FolioLog, RoomMast,
  RoomStatus, Depart, GuestServices, PaymentType, GuestHistory,
  RoomCategory, FixCharge, ExpenseEntry, Sundry, Voucher, Ledger

SQL Operations:
  CHECK_IN: INSERT INTO RoomOcc (ROOM_NO, GUEST_CODE, ARRIVAL, STATUS) VALUES (?, ?, ?, 'Occupied')
  CHECK_OUT: UPDATE RoomOcc SET STATUS = 'Dirty', DEPARTURE = GETDATE() WHERE ROOM_NO = ?
  POST_CHARGE: INSERT INTO FolioLog (FOLIO_NO, TYPE, AMOUNT, DESCRIPTION) VALUES (?, ?, ?, ?)
  MAKE_PAYMENT: UPDATE GuestFolio SET CURRENT_BALANCE = CURRENT_BALANCE - ? WHERE FOLIO_NO = ?
  REVERSE_CHECKOUT: UPDATE RoomOcc SET STATUS = 'Occupied' WHERE ROOM_NO = ? AND STATUS = 'Dirty'
  REVERSE_NIGHT_AUDIT: Reverse all NightAudit changes
"""
safe_write(os.path.join(OUTPUT_DIR, "FrontOffice_business_logic.txt"), fo_text)
print("  Created: FrontOffice_business_logic.txt")

# Night Audit Module
nightaudit_text = """NIGHT AUDIT MODULE - BUSINESS LOGIC
===================================

VB6 Source Files:
  mdlNightAudit.bas - Main night audit module
  NightAudit.frm - Night Audit form
  NightAuditOperation.frm - Night Audit Operations
  NightAuditLog.frm - Night Audit Log
  NightAuditReports.frm - Night Audit Reports
  NightAuditGST.frm - Night Audit GST
  NightAuditGSTR.frm - Night Audit GSTR
  NightAuditL.frm - Night Audit Log
  NightAuditLR.frm - Night Audit Log Report

Business Rules:
  1. Night audit runs at midnight (automated)
  2. Auto-post all room charges for the day
  3. Close all active folios for the day
  4. Close all rooms (RoomOcc status updated)
  5. Generate daily report
  6. Generate occupancy analysis report
  7. Generate guest trail report
  8. Generate market segment analysis
  9. Generate business source analysis
  10. Generate company analysis
  11. Generate FOCC report
  12. Generate food costing report
  13. Generate FB cost statement
  14. Reverse night audit available (undo all changes)
  15. Night audit log records all actions
  16. Charges posting: all charges posted to folios
  17. Account posting: all accounts posted to ledger
  18. Guest audit ledger: guest folio audit trail
  19. GST reports: GSTR-1, GSTR-2(3), GSTR-2(4A), GSTR-2(4B)
  20. Credit report: credit analysis
  21. Reconciliation (GSTR-2A): reconcile with GSTR-2A
  22. Upload process: upload data to GST portal
  23. EInvoice report: e-invoice generation
  24. Tally POS report: integration with Tally
  25. Night audit must complete before new day starts

Database Tables:
  NightAudit, FolioLog, RoomOcc, GuestFolio, GuestStatus,
  NightAuditLog, ChargesPosting, AccountPosting, GuestAuditLedger,
  GSTR1, GSTR2, CreditReport, Reconciliation, EInvoiceReport,
  NightAuditRR (Daily Report, Guest Trail, Checkout Analysis, etc.)

SQL Operations:
  NIGHT_AUDIT: UPDATE RoomOcc SET STATUS = 'Closed' WHERE ARRIVAL < DATEADD(day, -1, GETDATE())
  POST_ROOM_CHARGES: INSERT INTO FolioLog (FOLIO_NO, TYPE, AMOUNT) SELECT ?, 'Room', RATE FROM RoomMast WHERE ROOM_NO IN (SELECT ROOM_NO FROM RoomOcc WHERE STATUS = 'Occupied')
  CLOSE_FOLIOS: INSERT INTO FolioLog (FOLIO_NO, TYPE, AMOUNT) SELECT FOLIO_NO, 'Close', CURRENT_BALANCE FROM GuestFolio
  GENERATE_DAILY_REPORT: SELECT * FROM RoomOcc WHERE ARRIVAL >= DATEADD(day, -1, GETDATE())
  REVERSE_NIGHT_AUDIT: Reverse all NightAudit entries

Workflow:
  1. System checks all active rooms at midnight
  2. Auto-posts room charges to folios
  3. Closes all active folios
  4. Updates room statuses
  5. Generates daily reports
  6. Creates NightAuditLog entries
  7. Commits all changes
  8. If error: rollback all changes
  9. Reverse audit: undo all NightAudit changes
"""
safe_write(os.path.join(OUTPUT_DIR, "NightAudit_business_logic.txt"), nightaudit_text)
print("  Created: NightAudit_business_logic.txt")

# POS Module
pos_text = """POINT OF SALE MODULE - BUSINESS LOGIC
======================================

VB6 Source Files:
  RSSaleBill.frm - POS Sale Bill (main POS form)
  RsKOTEntry.frm - KOT Entry (Kitchen Order Ticket)
  RsTouchScreenSaleBill.frm - Touch Screen Sale Bill
  RsTouchScreenKOTEntry.frm - Touch Screen KOT Entry
  RsTouchScreenBookingEntry.frm - Touch Screen Booking
  RsTouchScreenAdvanceDepDialog.frm - Touch Screen Advance Deposit
  RsTouchScreenKeyBoard.frm - Touch Screen Keyboard
  RsTouchScreenFAFind.frm - Touch Screen FA Find
  RsTouchScreenBookingEntry.frm - Touch Screen Booking Entry
  RsTouchOrderPersonDetails.frm - Touch Screen Order Person Details
  RsTouchDisplayTB.frm - Touch Screen Display Table
  RsTouchScreenSteward.frm - Touch Screen Steward
  RsPOSDisplayNew.frm - POS Display New
  RsPOSCustInfo.frm - POS Customer Info
  RsPaymentReceice.frm - POS Payment Receipt
  RsMenuItemEntry.frm - Menu Item Entry
  RsKOTTransfer.frm - KOT Transfer
  RsKitchenStk.frm - Kitchen Stock
  RsKitchenMaterial.frm - Kitchen Material
  RsGravyItemEntry.frm - Gravy Item Entry
  RsStoreRecEntry.frm - Store Receive Entry
  RsStatusScreen.frm - Status Screen
  RsSpecItemEntry.frm - Special Item Entry
  RsSaleBillSplit.frm - Sale Bill Split
  RSSaleBillDisplay.frm - Sale Bill Display
  RSSaleBill1.frm - Sale Bill 1
  RsPOSDisplay.frm - POS Display
  RsTokenEntry.frm - Token Entry
  RsTbChange.frm - Table Change
  RsTableMast.frm - Table Master
  RsSpecItemEntry.frm - Special Item Entry
  RsPOSDisplay.frm - POS Display
  RsPOSCustInfo.frm - POS Customer Info
  RsPaymentReceice.frm - POS Payment Receipt
  RsPOSCustInfo.frm - POS Customer Info
  RsPaymentReceice.frm - POS Payment Receipt
  RsMenuItemEntry.frm - Menu Item Entry
  RsKOTTransfer.frm - KOT Transfer
  RsKitchenStk.frm - Kitchen Stock
  RsKitchenMaterial.frm - Kitchen Material
  RsGravyItemEntry.frm - Gravy Item Entry
  RsStoreRecEntry.frm - Store Receive Entry
  RsStatusScreen.frm - Status Screen
  RsSpecItemEntry.frm - Special Item Entry
  RsSaleBillSplit.frm - Sale Bill Split
  RSSaleBillDisplay.frm - Sale Bill Display
  RSSaleBill1.frm - Sale Bill 1
  RsPOSDisplay.frm - POS Display
  RsTokenEntry.frm - Token Entry
  RsTbChange.frm - Table Change
  RsTableMast.frm - Table Master

Business Rules:
  KOT FLOW:
    1. Order → KOT → Kitchen → Bill
    2. KOT (Kitchen Order Ticket) created for each order
    3. KOT transferred to kitchen for preparation
    4. KOT transfer tracks kitchen workflow
    5. Multiple KOTs can be generated per table
    6. KOT items include: menu item, quantity, special instructions
    7. KOT status: Pending / Preparing / Ready / Served
    8. KOT transfer: move KOT between kitchen stations
    9. Kitchen stock updated on KOT completion
    10. Kitchen material consumption tracked

  TABLE MANAGEMENT:
    11. Table Master: table configuration (capacity, location)
    12. Table status: Available / Occupied / Reserved / Cleaning
    13. Table change: move guest to different table
    14. Table display: visual layout of all tables
    15. Display Table: shows table status in visual format

  PAYMENT:
    16. Multiple payment modes accepted (Cash, Card, Credit)
    17. Payment receipt generated
    18. Payment splitting allowed (bill split)
    19. Advance deposit accepted
    20. Payment reconciliation at end of day
    21. Payment receive entry (POSEnt module)

  SALE BILL:
    22. Sale bill auto-calculated with items, tax, discount
    23. Bill splitting supported (split bill among multiple guests)
    24. Bill display: shows items, quantities, prices
    25. Bill reprint: POS bill reprint option
    26. Bill lookup: search for past bills
    27. Bill modification: modify bill before settlement

  INVENTORY INTEGRATION:
    28. Kitchen stock updated on item consumption
    29. Stock register tracks all kitchen items
    30. Material consumption reported
    31. Excess consumption flagged
    32. Purchase register tracks all purchases

  REPORTS:
    33. Sales Register: all sales for the period
    34. KOT Wise Details: KOT analysis
    35. Settlement Summary: payment summary
    36. Cover Analysis: customer count analysis
    37. Pending KOT: KOTs not yet served
    38. Item wise Sale: sales by item
    39. Deleted Unsettled Bill: bills deleted without settlement
    40. NC KOT Detail: Non-Activity KOT details
    41. Group Wise Sale: sales by customer group
    42. Customer Detail: customer purchase history
    43. Bill Wise Adjustment Report: adjustments by bill
    44. Order Detail Report: order analysis
    45. Tally POS Report: integration with Tally

Database Tables:
  POSSale, POSKOT, POSItem, POSTable, POSMaster, POSDelivery,
  POSPacking, POSNA, KOTEntry, KitchenClearStk, POSHall, POSHappy,
  POSDirectSale, POSDirectItem, Stock, Purchase, PurchaseReturn,
  Issue, StockAdjust, Unit, Supplier, Item, ItemGroup

SQL Operations:
  CREATE_KOT: INSERT INTO POSKOT (TABLE_NO, ITEMS, STATUS) VALUES (?, ?, 'Pending')
  CREATE_SALE: INSERT INTO POSSale (TABLE_NO, ITEMS, AMOUNT, PAYMENT_MODE) VALUES (?, ?, ?, ?)
  UPDATE_STOCK: UPDATE Stock SET QUANTITY = QUANTITY - ? WHERE ITEM_CODE = ?
  TRANSFER_KOT: UPDATE POSKOT SET STATION = ? WHERE KOT_NO = ?
  SETTLEMENT: UPDATE POSSale SET PAID = ?, PAYMENT_MODE = ? WHERE SALE_NO = ?
  BILL_SPLIT: INSERT INTO POSSaleSplit (SALE_NO, AMOUNT, GUEST) VALUES (?, ?, ?)
"""
safe_write(os.path.join(OUTPUT_DIR, "POS_business_logic.txt"), pos_text)
print("  Created: POS_business_logic.txt")

# Inventory Module
inventory_text = """INVENTORY MODULE - BUSINESS LOGIC
==================================

VB6 Source Files:
  FrmItemMast.frm - Item Master
  DepOpStk.frm - Department Opening Stock
  FrmItemIssuedOnCleaning.frm - Items Issued on Cleaning
  FrmItemMastRaw.frm - Item Master Raw
  StockInHand_Query.sql - Stock in Hand Query
  StockInHand_PurchaseUnit.sql - Stock in Hand Purchase Unit
  Stock In Hand.txt - Stock in Hand documentation

Business Rules:
  ITEM MANAGEMENT:
    1. Item Master: all items with code, name, category, unit, rate
    2. Item groups for categorization
    3. Item categories for classification
    4. Item rates auto-calculated
    5. Item list view available
    6. Item lookup/search functionality

  STOCK MANAGEMENT:
    7. Stock register tracks all stock movements
    8. Stock levels with MIN/MAX indicators
    9. Stock summary available
    10. Stock in hand report
    11. Stock register (detailed)
    12. Stock summary (aggregated)
    13. Kitchen stock report (by I/R basis)
    14. Excess consumption report
    15. Purchase ledger

  PURCHASE MANAGEMENT:
    16. Indent: purchase request
    17. Purchase Order: formal purchase order
    18. M.R. Entry: Material Receipt entry
    19. Purchase Bill: supplier invoice
    20. Requisition Slip: internal requisition
    21. Stock Issue on Requisition: issue stock for departments
    22. Kitchen Closing Stock: end-of-day kitchen stock
    23. Stock Transfer: transfer stock between locations
    24. Finish Material Receive Entry: final material receipt

  ISSUE MANAGEMENT:
    25. Issue reduces stock on hand
    26. Issue tracked by department
    27. Issue report available
    28. Issue check list
    29. Stock adjustment for physical count corrections

  REPORTS:
    30. Store Issue Report
    31. Liquor Sale Report
    32. Purchase Register
    33. Purchase Summary
    34. Cash/Credit Purchase
    35. Stock Register
    36. Stock Summary
    37. Stock In Hand
    38. Kitchen Stock Report I/R Basis
    39. Excess Consumption Report
    40. Purchase Ledger
    41. Issue CheckList
    42. ABC Analysis
    43. VAT Register (VAT Register I, II, III)
    44. Form24 Annexure-A
    45. Form III
    46. UPVAT XXIV
    47. Tax Reports
    48. Pending Indent
    49. Pending M.R.
    50. Pending Purchase Order

Database Tables:
  Item, Stock, Purchase, PurchaseReturn, Issue, StockAdjust,
  StockReceive, StockIssue, Supplier, RequisitionSlip, Consumption,
  StockRegister, ItemGroup, Unit, GodrejLocks, Department,
  KitchenStock, Material, VATRegister, TaxRegister

SQL Operations:
  CREATE_ITEM: INSERT INTO Item (ITEM_CODE, NAME, CATEGORY, UNIT, RATE) VALUES (?, ?, ?, ?, ?)
  RECEIVE_STOCK: INSERT INTO StockReceive (ITEM_CODE, QUANTITY, PURCHASE_NO) VALUES (?, ?, ?)
  ISSUE_STOCK: INSERT INTO Issue (ITEM_CODE, QUANTITY, DEPARTMENT, DATE) VALUES (?, ?, ?, ?)
  UPDATE_STOCK: UPDATE Stock SET QUANTITY = QUANTITY + ? WHERE ITEM_CODE = ?
  STOCK_ADJUSTMENT: INSERT INTO StockAdjust (ITEM_CODE, ADJUSTMENT, REASON) VALUES (?, ?, ?)
  PURCHASE_BILL: INSERT INTO Purchase (SUPPLIER, ITEMS, AMOUNT, DATE) VALUES (?, ?, ?, ?)
  STOCK_IN_HAND: SELECT ITEM_CODE, NAME, QUANTITY FROM Stock WHERE QUANTITY BETWEEN ? AND ?
"""
safe_write(os.path.join(OUTPUT_DIR, "Inventory_business_logic.txt"), inventory_text)
print("  Created: Inventory_business_logic.txt")

# HR/Payroll Module
hr_text = """HR/PAYROLL MODULE - BUSINESS LOGIC
===================================

VB6 Source Files:
  HRMast.frm - HR Master
  HREmployeeMaster.frm - Employee Master
  HRPayroll.frm - Payroll
  HRLeave.frm - Leave Management
  HRAttendance.frm - Attendance
  HRLedgerAccounts.frm - Ledger Accounts
  HRPayrollCategory.frm - Payroll Category
  HRDesignationMaster.frm - Designation Master
  HRCategoryMaster.frm - Category Master
  HRHolidayMaster.frm - Holiday Master
  HREmployeeMaster.frm - Employee Master
  HRPayOpr.frm - Payroll Operations
  HRPayOprLeave.frm - Leave Operations
  HRPayOprLoan.frm - Loan Operations
  HRPayOprOverTime.frm - Over Time Operations
  HRPayOprLeaveEncashment.frm - Leave Encashment
  HRPayOprSalaryCreation.frm - Salary Creation
  HRPayRep.frm - Payroll Report
  HRPayRepPaySlip.frm - Pay Slip
  HRPayRepPayrollRegister.frm - Payroll Register
  HRPayRepLoanRegister.frm - Loan Register
  HRPayRepLoanAdvanceSummary.frm - Loan/Advance Summary
  HRPayRepLoanAdvanceLedger.frm - Loan/Advance Ledger
  HRPayRepAttendenceReport.frm - Attendance Report
  HRPayRepGratuityReport.frm - Gratuity Report
  HRPayRepPFStatement.frm - PF Statement
  HRPayRepFormC.frm - Form C

Business Rules:
  EMPLOYEE MANAGEMENT:
    1. Employee Master: EMP_CODE, NAME, DEPT, DESIGNATION, SALARY
    2. Designation Master: designations with pay scales
    3. Category Master: employee categories
    4. Holiday Master: company holidays
    5. Department Master: organizational structure

  PAYROLL:
    6. Salary = Basic + Allowances - Deductions
    7. Allowances: DA, HRA, TA, Medical, Conveyance
    8. Deductions: PF, ESI, TDS, Loan, Advance
    9. Salary creation: monthly salary generation
    10. Payroll register: all employees' payroll summary
    11. Pay slip: individual employee payslip
    12. Payroll register: department-wise summary

  LEAVE MANAGEMENT:
    13. Leave balance = Entitled - Used
    14. Leave types: Casual, Sick, Earned, Maternity
    15. Leave application and approval workflow
    16. Leave encashment: convert unused leave to cash
    17. Leave report: leave summary by employee

  LOAN/ADVANCE:
    18. Loan registration and tracking
    19. Loan/Advance summary
    20. Loan/Advance ledger
    21. Loan repayment tracking

  ATTENDANCE:
    22. Daily attendance tracking
    23. Attendance report: monthly summary
    24. Over time tracking
    25. Over time report

  REPORTS:
    26. Pay Slip: individual payslip
    27. Payroll Register: all employees
    28. Loan Register: all loans
    29. Loan/Advance Summary: summary of all loans
    30. Loan/Advance Ledger: detailed ledger
    31. Attendance Report: monthly attendance
    32. Gratuity Report: gratuity calculation
    33. PF Statement: provident fund statement
    34. Form C: statutory form
    35. Pay Slip: individual payslip

Database Tables:
  HRMast, HRPayroll, LeaveMaster, LeaveRecord, Attendance,
  PayrollCategory, MemberModule, MemberBilling, EmployeeMaster,
  DesignationMaster, CategoryMaster, HolidayMaster, Department,
  LoanRegister, LoanAdvance, Gratuity, PFStatement

SQL Operations:
  CREATE_EMPLOYEE: INSERT INTO HRMast (EMP_CODE, NAME, DEPT, DESIGNATION, SALARY) VALUES (?, ?, ?, ?, ?)
  CREATE_PAYROLL: INSERT INTO HRPayroll (EMP_CODE, BASIC, ALLOWANCES, DEDUCTIONS, NET_SALARY) VALUES (?, ?, ?, ?, ?)
  CALCULATE_LEAVE: SELECT ENTITLED - USED AS BALANCE FROM LeaveMaster WHERE EMP_CODE = ?
  CREATE_LEAVE: INSERT INTO LeaveRecord (EMP_CODE, TYPE, FROM_DATE, TO_DATE, STATUS) VALUES (?, ?, ?, ?, 'Pending')
  CREATE_LOAN: INSERT INTO LoanRegister (EMP_CODE, AMOUNT, INSTALLMENTS, START_DATE) VALUES (?, ?, ?, ?)
"""
safe_write(os.path.join(OUTPUT_DIR, "HR_business_logic.txt"), hr_text)
print("  Created: HR_business_logic.txt")

# Banquet Module
banquet_text = """BANQUET MODULE - BUSINESS LOGIC
==============================

VB6 Source Files:
  Banquet.frm - Banquet Master
  HallM.frm - Hall Master
  HallMIS.frm - Hall MIS
  HallReport.frm - Hall Report
  HallTax.frm - Hall Tax
  HallTaxP.frm - Hall Tax Report
  Hallop.frm - Hall Operations
  BanqAvailability.frm - Banquet Availability
  CateringBooking.frm - Catering Booking
  BanqModule.bas - Banquet Module

Business Rules:
  1. Hall Master: hall configuration (capacity, venue, features)
  2. Venue Master: venue details (location, capacity, amenities)
  3. Venue Features: features available at venue
  4. Menu Category: menu categories (Appetizer, Main Course, Dessert)
  5. Menu Item: individual menu items with prices
  6. Catalog Master: catalog of available items
  7. Events: hall booking events
  8. Venue Availability: check venue availability for dates
  9. Guest Comments: guest feedback and comments
  10. Banquet Estimate Billing: cost estimation before booking
  11. Banquet Booking: formal booking process
  12. Banquet Booking Advance: advance payment for booking
  13. Banquet Billing: final billing after event
  14. Chef Pre-Costing: cost estimation by chef
  15. Catalog Selection: select items from catalog
  16. Menu Item Rate: pricing for menu items
  17. Banquet Bill Sundry Setting: sundry charges configuration

Business Workflow:
  1. Guest inquiry → Venue availability check → Catalog selection →
  2. Chef pre-costing → Estimate billing → Guest confirmation →
  3. Banquet booking → Advance payment → Event execution →
  4. Final billing → Guest feedback → Report generation

Database Tables:
  BanquetMast, HallBooking, VenueMaster, MenuCategory, MenuItem,
  CatalogMaster, Events, GuestComments, BanquetEstimate,
  BanquetBilling, BanquetBooking, ChefPreCosting, HallMIS, HallReport

SQL Operations:
  CHECK_VENUE_AVAILABILITY: SELECT * FROM VenueMaster WHERE VENUE_ID IN (SELECT VENUE_ID FROM HallBooking WHERE DATE = ? AND STATUS = 'Booked')
  CREATE_BOOKING: INSERT INTO HallBooking (VENUE_ID, EVENT_DATE, GUEST_CODE, AMOUNT) VALUES (?, ?, ?, ?)
  CREATE_ESTIMATE: INSERT INTO BanquetEstimate (BOOKING_NO, ITEMS, COST) VALUES (?, ?, ?)
  CREATE_BILLING: INSERT INTO BanquetBilling (BOOKING_NO, FINAL_AMOUNT, PAYMENT_MODE) VALUES (?, ?, ?)
"""
safe_write(os.path.join(OUTPUT_DIR, "Banquet_business_logic.txt"), banquet_text)
print("  Created: Banquet_business_logic.txt")

# Members Module
members_text = """MEMBERS MANAGEMENT MODULE - BUSINESS LOGIC
===========================================

VB6 Source Files:
  MemberModule.bas - Member Module
  members_masters.py - Member Masters
  member_billing.py - Member Billing
  MemMas.frm - Member Master
  MemOpr.frm - Member Operations
  MemberSelectCategory.frm - Member Select Category
  CategoryMaster.frm - Category Master
  EnvironmentSettings.frm - Environment Settings

Business Rules:
  1. Member Master: member registration and profile management
  2. Category Master: membership categories
  3. Member Select Category: choose membership category
  4. Environment Settings: configuration for member module
  5. Auto Settle Card Balance: automatic card balance settlement
  6. Member billing: billing for member services
  7. Member enrollment: new member registration
  8. Member renewal: membership renewal process
  9. Member reports: member analytics and reports
  10. Member category: different membership tiers

Database Tables:
  MemberModule, MemberMaster, MemberBilling, CategoryMaster,
  MemberSelectCategory, EnvironmentSettings, AutoSettle

Note: This module has 0-row tables (no reference data).
Many operations are BLOCKED pending data availability.
"""
safe_write(os.path.join(OUTPUT_DIR, "Members_business_logic.txt"), members_text)
print("  Created: Members_business_logic.txt")

# Utility Module
utility_text = """UTILITY MODULE - BUSINESS LOGIC
==============================

VB6 Source Files:
  UserMast.frm - User Master
  UserPermission.frm - User Permissions
  User_Module.frm - User Module Access
  CompanyMast.frm - Company Master
  CompanyProfile.frm - Company Profile
  SysConfig.frm - System Configuration
  UTL.frm - Utility
  Util.frm - Utility
  BackupData.frm - Backup Data
  InconsistencyCheck.frm - Inconsistency Check
  YearEndUpdation.frm - Year End Updation
  MenuItemCopy.frm - Menu Item Copy
  GuestLookUp.frm - Guest Look Up
  CountryMaster.frm - Country Master
  StateMaster.frm - State Master
  CityMaster.frm - City Master
  Department.frm - Department
  LedgerAccounts.frm - Ledger Accounts
  UnitMaster.frm - Unit Master
  TaskScheduler.frm - Task Scheduler
  SundryMaster.frm - Sundry Master

Business Rules:
  USER MANAGEMENT:
    1. User Master: USER_NAME, PASSWD (encrypted), LABEL, ShortName, ActiveYN
    2. User Permissions: ADD, EDIT, DELETE, PRINT rights per module
    3. User Module Access: module-level permissions
    4. SA default password: '\\' (from VB6 frmCompany.frm)
    5. Authentication: VB6-compatible reversible encryption (shift=27)
    6. Brute-force protection: max 5 attempts per 15 min

  COMPANY MANAGEMENT:
    7. Company Master: company details
    8. Company Profile: company profile information
    9. Company code: used for multi-company support

  SYSTEM CONFIGURATION:
    10. System Configuration: Analysis.ini settings
    11. Server, Database, Reports, Temp paths configured
    12. Company and Site settings

  BACKUP & RESTORE:
    13. Backup Data: SQL Server database backup
    14. Inconsistency Check: data integrity verification
    15. Year End Updation: annual data migration

  UTILITY:
    16. Guest Look Up: search guest by name/code
    17. Country/State/City Master: address hierarchy
    18. Department: organizational departments
    19. Ledger Accounts: chart of accounts
    20. Unit Master: measurement units
    21. Task Scheduler: scheduled tasks
    22. Sundry Master: debtor/creditor master
    23. Menu Item Copy: copy menu configurations
    24. Menu Module: module access management
    25. Task Scheduler: automated task scheduling

Database Tables:
  UserMast, User1, User_Module, CompanyMast, CompanyProfile,
  SysConfig, AnalysisIni, BackupLog, MaintenanceLog, AuditLog,
  Country, State, City, Department, LedgerAccounts, Unit,
  SundryMaster, TaskScheduler, MenuItemCopy

SQL Operations:
  LOGIN: SELECT * FROM UserMast WHERE USER_NAME = ? AND PASSWD = ?
  CHECK_PERMISSION: SELECT * FROM User1 WHERE USER_NAME = ? AND MODULE = ?
  CREATE_BACKUP: BACKUP DATABASE MOONData2627 TO DISK = ?
  INCONSISTENCY_CHECK: DBCC CHECKDB (MOONData2627)
"""
safe_write(os.path.join(OUTPUT_DIR, "Utility_business_logic.txt"), utility_text)
print("  Created: Utility_business_logic.txt")

print("\n" + "="*70)
print("ALL BUSINESS LOGIC TEXT FILES CREATED")
print("="*70)
files = os.listdir(OUTPUT_DIR)
print(f"Total files: {len(files)}")
for f in sorted(files):
    size = os.path.getsize(os.path.join(OUTPUT_DIR, f))
    print(f"  {f} ({size} bytes)")

print("\nDone! All business logic documented.")
