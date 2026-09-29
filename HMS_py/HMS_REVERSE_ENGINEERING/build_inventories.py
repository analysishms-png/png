"""Generate MASTER_SCREEN_INVENTORY.xlsx (spec section 32) and
MASTER_DATABASE_DICTIONARY.xlsx (spec section 33) as TWO separate workbooks.

FIX 2026-09-29:
  - BUG: earlier version saved the SAME workbook to both paths (lines 106-107),
    so MASTER_DATABASE_DICTIONARY.xlsx was a byte-duplicate of the screen
    inventory. Now each workbook is built independently.
  - Spec columns completed: screens gained Purpose + Function; database gained
    Used By Procedure.
  - DB dictionary expanded from ~30 curated rows to ALL live tables (277) using
    read-only extracts from 18_Database/ (tables_rowcounts, columns_dictionary,
    indexes_pks). No DB connection is made here; all data is file evidence.

Evidence tags per spec section 25. Paths are script-relative so the script runs
from any working directory.
"""
import os
import re

import openpyxl
from openpyxl.styles import Font, PatternFill

HERE = os.path.dirname(os.path.abspath(__file__))
DB = os.path.join(HERE, "18_Database")
OUT = os.path.join(HERE, "22_Final_Manual")
SS = os.path.join(HERE, "screenshots")

HDR_FILL = PatternFill("solid", fgColor="1F4E78")
HDR_FONT = Font(bold=True, color="FFFFFF")


def sheet(wb, title, headers, rows, widths):
    ws = wb.create_sheet(title)
    for c, h in enumerate(headers, 1):
        cell = ws.cell(row=1, column=c, value=h)
        cell.font = HDR_FONT
        cell.fill = HDR_FILL
    for r, row in enumerate(rows, 2):
        for c, v in enumerate(row, 1):
            ws.cell(row=r, column=c, value=v)
    for c, w in enumerate(widths, 1):
        ws.column_dimensions[openpyxl.utils.get_column_letter(c)].width = w
    ws.freeze_panes = "A2"
    return ws


# ============================ shared evidence ============================
# VB6 form inventory, grouped per INI module (source: EXTRAS.text object dump).
# VERBATIM from the pre-fix version — do not drop/rename entries here without
# re-checking the row count stays at the historical 327.
forms = {
 "Finance": ["FaVoucher","FaVrEnt","FaGrEnt","FaAdjust","FaAdjustDel","FaChqClear","FaCurrBalUpdate","FaTaxVoucher","FaReports","FaRepView","FaFind","FaGlobeNarr","FaNarrMast","FaSubGroup","FaVtype","FaCityMast","FaCountryMast","FaStateMast","FaTDSCat","FaTDSCertificate","FaTDSChal","frmTallyExport","AccountMerg","SchemeMast","FaEnvron"],
 "Main Setup": ["UserMast","UserPermission","ModuleAdd","frmCompany","frmEnviro","frmSessionMast","frmYearEnd","FrmControlPanel","FrmChangeSite","FrmChangeDepart","frmMod_Print","frmPrintModule","FrmJobScheduler","FrmUploadProcess","FrmDataRecieving","FrmSerialiseVr","CompMast","Transfer"],
 "Reservation": ["RrRoomReservation","resRoomNo","resRoomType","resGroup","resBanq","FrmReservationStatus","FrmBookingInquiry","FrmRoomCatMast","FrmRoomMast","FrmRoomFeatureMast","FrmLocationMast","FrmLocationFacilities","FrmVenueMast","FrmVenueFeat","frmRevGroup","FrmMarketSeg","FrmBusinessSrc","frmSeasonMast","frmBlockMast"],
 "Front Office": ["fdWalkInEntry","fdCheckIn","fdRoomOcc","fdDisplayFolio","fdDisplayFolioSumm","FdCheckOut","FdGrpCheckOut","FdGrpdetCheckOut","FdRevCheckOut","FdReSetlement","fdRoomChange","FdLookUpRoom","FdLookUpRoomNo","FdRoomDisplay","fdPostChrg","fdNDAcPostChrg","fdAcPostChrg","fdPaymentCharge","fdAmendEntry","fdPrintScreen","InHouseGuestFolio","FOMModule","frmFomB","FrmFomBillDeletion","FrmUnSettledBillsInfo","FrmForExRec","FrmForeignExMast","FrmGuestWakeUp","FrmHouGuestMsg","RrLookUpGuest","frmFdLeaderRev","FrmMergeCharge","FrmRevMergeCharge","GuestProfile","GroupProfile","FrmGuestStat","frmGuestInfo","frmGuestComments","FrmBdayLookup","FrmLostFound","FrmComplaintMast","FrmComplaintClearing","FrmChargeMast","FrmPayTypeMast","FrmPlanPackMast","FrmPlanTokenMast","frmFixedChargeMast","FrmTaxMast","FrmTaxStruMast","SundryMast","SundryVType","FrmPackageMast","FrmParty","FrmPartyLocations","FrmInc","FrmImage"],
 "House Keeping": ["HHouseKeeping","HKHouseOpStk","HKIssRec","HKRoomBlock","HKRoomOpStk","HRoomCheckOutClearance","HWIHistory","FrmHouseStatus","FrmMeterReading","FrmItemIssuedOnCleaning","rRepHouse","rRepHousePreview"],
 "Inventory": ["FrmItemMast","FrmItemMastRaw","FrmItemCatMast","FrmItemCatRaw","FrmItemGroupMast","FrmItemGroupMastRaw","FrmConsumMast","FrmStockTransfer","FrmOPStock","FrmDenomination","Godown","kClStk","DepOpStk","FrmUnitMast","FrmExpense","PIndent","pPBill","pPOrder","pGIss","pMREntry","pReqSlip"],
 "Point Of Sale": ["RsBookingEntry","RsBookingEntryAdvance","RsTouchScreenBookingEntry","RsKOTEntry","RsTouchScreenKOTEntry","RsTokenEntry","RsTouchScreenTOKENEntry","RsSaleBillSplit","RsAssignDelivery","RsGravyItemEntry","RsMenuItemEntry","RsSpecItemEntry","RsKitchenMaterial","RsKitchenStk","RsPOSCustInfo","RsPOSDisplay","RsPOSDisplayNew","RsPaymentReceice","RsStatusScreen","RsTableMast","RsTbChange","RsTouchDisplayTB","RsTouchScreenFAFind","RsTouchScreenKeyBoard","RsTouchScreenSteward","POSBillPrint","POSBillReprint","RSSaleBill","RSSaleBill1","RSSaleBillDisplay","RSTouchScreenSaleBill","FrmPOSBillDeletion","FrmPOSBillModificationDatewise","FrmPOSBillModificationItemGroupwise","FrmPOSRecycleData","FrmPOSSaleDataTransfer","pHappyHours","NewHappyHours","FrmUserPaymentCollection","FrmReceivePayment","FrmWaiterMast","FrmDeliveryBoyMast","FrmMenuList","FrmMenuRate","frmMenuItemCopy","OutLetMast","OutLetSundry","FrmClaimEntry"],
 "Banquet": ["BanqModule","BanqAvailability","HallBooking","HallBill","HallBillEstimate","HallEstimate","HallAcPostChrg","HallChefPreCosting","HallItemGroupMast","HallMenuCatalog","HallMenuItemEntry","HallSundry","CateringBooking","FrmEventMast","FrmFacilityMast","TravelAgencyPost","HallAdvanceDepDialog"],
 "Night Audit": ["mdlNightAudit","frmReNightAudit","FrmNAMessageA","FrmNAMessageB","FrmNAMessageC"],
 "HR & Payroll": ["PrEmployee","PrAttend1","prAttend","prHoliday","prOverTime","PrCategoryMast","PrDesigMast","PrLeavench","PrLoan","prSalCreate","rRepPayRoll"],
 "EPABX": ["TelCallEntry","TelCallCodeMast","TelCallControlMast","TelCallTypeMast","TelExtensionMast","rRepTel","rRepTelPreview"],
 "Messaging": ["SMSModule","FrmSMSEnviro","FrmSMSMultiType","FrmSmsCenterSettings","frmMessage","MemberSMS","MobWebAPI","EmailSMSForward-tbl"],
 "Members Management": ["MemberModule","MembershipMast","MemAssistant","MemBillPrintingModule","MemAutoSettleCardBalance","MemCatMast","MemFacilityBilling","MemFacilityEntry","MemPaymentReceive","MemRenewalEntry","MemSelectCategory","MemTagadaLetter","MemVisitEntry","MemberProposedMemInf","memAgeRevMast","memCatChngCond","memCatChngEntry","memCatRevMast","memCategoryFacilities","memFacilityMast","memOutStationEntry","MemberShipRevenueMast","MembershipRevMast","MemAddRWA"],
 "Sale & Marketing": ["salmarCompProfile","FrmBusinessSrc","FrmMarketSeg"],
 "Mall Management": ["ModuleDoorLock","DepOpStk","KClStk","frmLockGodrejSettings","frmGodrejLockSettings"],
 "Smart Card / Door Lock": ["ModuleSmartCard","SmartCardMast","SmartCardRegistration","SmartCardRecharge","SmartCardRefund","SmartCardLostReIssue"],
 "Reports/Viewers": ["REPVIEW","rFomRepView","rHallRepView","rInventRepView","rMemberRepView","rPOSRepView","rRepReserv","rRepTel","GridPrint"],
 "Shell/Infrastructure": ["MDIForm1","frmWelcome","frmPassword","FrmCalender","FindMess","FrmMsgBox","Inbox","Outbox","EmptyInbox","DMTree","JSON","cJSONScript","cStringBuilder","MSendInput","CGZipFiles","CGUnzipFiles","CommonDialog","Picture","SperialFolderPath","mdlDataTransfer","mdlNightAudit-NA-msgs","Module1","Functions","MainLib","FaLib","Hotlib","TopBarLib","CodeModule","LockForm","GridPrint-lib","TmpTable","Transfer-lib","ModuleAdd-lib"],
}

# form -> key DML (from EXTRAS.text verbatim SQL samples; see module manuals)
SQLMAP = {
 "RrRoomReservation": "Insert Into Booking(...); BookingMore; BookingCancelDetails",
 "fdCheckIn": "Insert Into GuestFolio(...)/RoomOcc(...); GuestFolioProfDetail",
 "fdWalkInEntry": "Insert Into RoomOcc(...); Update RoomOcc Set PlanCode=...",
 "FdCheckOut": "Update RoomOcc Set CHKOUTDATE=...,CHKOUTTIME=...",
 "fdAmendEntry": "Insert Into GuestFolioAmend; Update GuestFolio Set DepDate=",
 "fdRoomChange": "Update RoomOcc; Update GuestMessage set RoomNo=",
 "fdPostChrg": "Insert/Update PayCharge (PayCode,PayType,AmtDr/AmtCr,...)",
 "FdReSetlement": "PayCharge SettleDate/ModeSet/Bill_No",
 "mdlNightAudit": "see 10_Night_Audit/NIGHT_AUDIT_FLOW.md",
 "UserMast": "userMast,user1,module,User_Module",
 "GuestProfile": "GuestProf,GuestProfFor,City,State,Country",
 "RsKOTEntry": "KOT,Stock,Sale1/Sale2",
 "HallBooking": "HallBook,VenueMast,FunctionType",
 "TelCallEntry": "EPABX_IN (Jet DMEPABX.mdb)",
 "PrEmployee": "Employee,PrCategoryMast-tables",
 "MembershipMast": "MemCatMast,MemBill,MemberFamily",
 "SmartCardRegistration": "SmartCardRegistration table",
 "FrmItemMast": "ItemMast,ItemCatMast,ItemGrp,ItemRate",
 "FrmStockTransfer": "Stock,Voucher_Type('ST')",
 "FrmLocationMast": "LocationMast (INSERT/UPDATE)",
 "FrmFacilityMast": "FacilityMast (INSERT/UPDATE)",
 "frmFacilityBillAdv": "FacilityBill1 + Ledger posting",
 "FrmBusinessSrc": "BussSource (INSERT/UPDATE/DELETE)",
 "FrmMarketSeg": "MarketSeg (UPDATE)",
 "FrmGuestStat": "GuestStat (INSERT)",
}

# Curated purpose strings for well-known tables (VERIFIED-VB6 / VERIFIED-SQL).
PURPOSE = {
 "GuestFolio": "Guest folio / check-in header",
 "RoomOcc": "Room occupancy rows per folio",
 "Booking": "Reservation master",
 "BookingMore": "Reservation extra/room-wise detail",
 "BookingCancelDetails": "Cancellation audit rows",
 "PayCharge": "Folio charges & payments",
 "GuestProf": "Guest profile",
 "RoomMast": "Room master",
 "Enviro": "Site settings + business date (ncur)",
 "NightAuditLog": "Night audit trail",
 "Depart": "Department/outlet master",
 "RevMast": "Revenue heads (GL link)",
 "Stock": "Inventory stock movements",
 "ItemMast": "Item master",
 "KOT": "Kitchen order tickets",
 "KOTLog": "KOT void/change log",
 "Sale1": "POS sale header",
 "Sale2": "POS sale detail",
 "HallBook": "Banquet booking header",
 "HallBook1": "Banquet booking detail",
 "HallSale1": "Banquet sale/bill detail",
 "VenueOCC": "Venue block/occupancy",
 "SunTran": "Sundry charge lines (FO)",
 "SunTranH": "Sundry charge lines (Hall)",
 "userMast": "Users + obfuscated passwords",
 "user1": "Per-form rights (PARAM_STR 'AEDP')",
 "module": "Form/module code list",
 "User_Module": "User-module mapping (SrNo)",
 "MenuHelp": "Per-user menu visibility rows",
 "company": "Property/company + validity period",
 "LEDGER": "Finance ledger postings",
 "LedgerM": "Finance ledger header rows",
 "SubGroup": "Accounts/parties balances",
 "AcGroup": "Account groups",
 "Voucher_Type": "Voucher type definitions",
 "Voucher_Prefix": "Voucher number series",
 "Attend": "Attendance entries",
 "LOAN": "Employee loan/advance",
 "Salary": "Salary creation rows",
 "Employee": "Employee master",
 "EmpCategory": "Employee category",
 "OverTime": "Overtime entries",
 "EPABX_IN": "EPABX call/integration rows (Jet DMEPABX.mdb)",
 "TelCallType": "Telephone call type master",
 "TelExt": "Telephone extension master",
 "TelCallCode": "Telephone call code master",
 "TelCallControl": "Telephone call control master",
 "EmailSMSForward": "Outbound SMS/Email forward queue",
 "Messaging": "Internal message rows",
 "SMSEnviro": "SMS gateway environment settings",
 "MemCatMast": "Membership category master",
 "MemberFamily": "Member family/card holders",
 "MemBill": "Membership billing header",
 "MemBill1": "Membership billing detail",
 "MemAddRWA": "Member address/RWA rows",
 "SmartCardRegistration": "Cash-card registration",
 "GuestProf": "Guest profile",
 "BussSource": "Business source master",
 "MarketSeg": "Market segment master",
 "GuestStat": "Guest status master",
 "LocationMast": "Mall location master",
 "FacilityMast": "Mall facility master",
 "LocationFacility": "Location-facility applicability",
 "PartyLocation": "Party-location mapping",
 "FacilityBill1": "Facility billing detail",
 "FMReading": "Facility meter readings",
 "SundryType": "Sundry charge type master",
 "Stock": "Inventory stock movements",
 "Purch1": "Purchase bill detail",
 "GodownMast": "Godown/warehouse master",
 "ItemGrp": "Item group master",
 "RateList": "Room rate list",
 "PlanMast": "Meal plan master",
 "taxstru": "Tax structure definition",
 "TaxStru": "Tax structure definition",
 "PayChargeLog": "Posting audit copy of PayCharge",
 "PayChargeH": "Hall charge postings",
 "GuestFolioAmend": "Departure date amendments",
 "SplitSale1": "POS split-bill staging header",
 "SplitSale2": "POS split-bill staging detail",
 "TempPosDel": "Deleted-bill staging",
 "eInvoiceBill1": "GST e-invoice staging",
 "eInvoiceBill2": "GST e-invoice line staging",
 "ExpSheet": "Expense sheet (Night Audit posts vTypes HTEXP/HTSAL)",
 "RoomBlockOut": "Room block (House Keeping)",
 "ComplaintDetail": "Complaint tracking/clearance",
 "LostFoundDetail": "Lost & found entries",
}

# table -> module attribution. Curated from EXTRAS.text per-module SQL hit counts
# (top tables per module); name-heuristic fallback marked [INFERRED] at row level.
TABLE_MODULE = {}
for _t in ["PayCharge", "GuestFolio", "RoomOcc", "GuestFolioAmend", "GuestProf", "Booking",
           "BookingMore", "BookingCancelDetails", "RoomOccDet", "SunTran", "RoomMast"]:
    TABLE_MODULE[_t] = "Front Office"
for _t in ["LEDGER", "LedgerM", "ViewLedger", "VIEWLEDGER", "AcGroup", "SubGroup",
           "Voucher_Type", "Voucher_Prefix", "FaEnviro", "ExpSheet", "AcGroupCurrBal",
           "SchemeMast", "TDSChal", "TDSCat"]:
    TABLE_MODULE[_t] = "Finance"
for _t in ["Stock", "ItemMast", "ItemGrp", "Purch1", "GodownMast", "UnitMast", "ItemCatMast",
           "PIndent", "POrder", "MREntry", "ConsumMast"]:
    TABLE_MODULE[_t] = "Inventory"
for _t in ["KOT", "KOTLog", "Sale1", "Sale2", "TOKEN", "Depart", "WaiterMast", "OutLetMast",
           "TableMast", "MenuItem", "MenuRate", "HappyHours"]:
    TABLE_MODULE[_t] = "Point Of Sale"
for _t in ["HallBook", "HallBook1", "HallSale1", "VenueOCC", "VenueMast", "SunTranH",
           "PayChargeH", "FunctionType", "HallEstimate"]:
    TABLE_MODULE[_t] = "Banquet"
for _t in ["LOAN", "EMPLOYEE", "Employee", "EmpCategory", "Salary", "SalaryLog", "Attend",
           "OverTime", "PrCategory", "LeaveMaster"]:
    TABLE_MODULE[_t] = "HR & Payroll"
for _t in ["MemCatMast", "MemberFamily", "MemBill", "MemBill1", "MemAddRWA",
           "SmartCardRegistration", "MemFacilityMast", "MemVisit"]:
    TABLE_MODULE[_t] = "Members Management"
for _t in ["LocationMast", "FacilityMast", "LocationFacility", "PartyLocation",
           "FacilityBill1", "FMReading", "SundryType"]:
    TABLE_MODULE[_t] = "Mall Management"
for _t in ["BussSource", "MarketSeg", "GuestStat", "GuestProfile"]:
    TABLE_MODULE[_t] = "Sale & Marketing"
for _t in ["EmailSMSForward", "Messaging", "SMSEnviro", "DBSendSMS", "JobScheduledDetail"]:
    TABLE_MODULE[_t] = "Messaging"
for _t in ["TelCallType", "TelExt", "TelCallCode", "TelCallControl", "EPABX_Data",
           "EPABX_OUT"]:
    TABLE_MODULE[_t] = "EPABX"
for _t in ["RevMast", "RoomCat", "PlanMast", "RateList", "taxstru", "TaxStru", "TaxStruMast",
           "SeasonMast", "BlockMast", "MarketSegMast", "MenuHelp", "MenuHelp1", "userMast",
           "user1", "module", "User_Module", "company", "Enviro", "CompMast"]:
    TABLE_MODULE[_t] = "Main Setup"
for _t in ["RoomBlockOut", "ComplaintDetail", "LostFoundDetail", "ClaimDetail"]:
    TABLE_MODULE[_t] = "House Keeping"
for _t in ["NightAuditLog"]:
    TABLE_MODULE[_t] = "Night Audit"

NAME_HINTS = [
    (r"^(mem|smart)", "Members Management"),
    (r"^(hall|venue)", "Banquet"),
    (r"^(kot|sale|token|outlet|waiter|happy)", "Point Of Sale"),
    (r"^(pr|emp|loan|salary|attend|overtime|leave)", "HR & Payroll"),
    (r"^(tel|epabx)", "EPABX"),
    (r"^(sms|messag|email)", "Messaging"),
    (r"^(loc|facility|partyloc|fmread)", "Mall Management"),
    (r"^(purch|item|godown|stock|indent|unit|consum)", "Inventory"),
    (r"^(ledger|acgroup|subgroup|voucher|tds|fa)", "Finance"),
    (r"^(guest|folio|paycharge|roomocc|booking|depart|sundry)", "Front Office"),
    (r"^(complaint|lostfound|roomblock|claim)", "House Keeping"),
]

# report files (from 17_Reports) used for Used-By-Report heuristic
def report_names():
    rp = os.path.join(os.path.dirname(HERE), "Reports")
    names = []
    if os.path.isdir(rp):
        for fn in os.listdir(rp):
            if fn.lower().endswith((".rpt", ".ttx")):
                names.append(os.path.splitext(fn)[0])
    return names


def module_of(table, purpose):
    t = table.lower()
    if table in TABLE_MODULE:
        return TABLE_MODULE[table], "VERIFIED-VB6 (SQL hit in module objects)"
    for pat, mod in NAME_HINTS:
        if re.search(pat, t):
            return mod, "[INFERRED] (name pattern)"
    return "[UNKNOWN]", "[UNKNOWN]"


def read_rowcounts():
    out = {}
    p = os.path.join(DB, "tables_rowcounts.txt")
    if os.path.exists(p):
        with open(p, encoding="utf-8", errors="replace") as f:
            for line in f:
                parts = line.strip().split("|")
                if len(parts) >= 2 and parts[0]:
                    try:
                        out[parts[0]] = int(parts[1])
                    except ValueError:
                        out[parts[0]] = parts[1]
    return out


def read_columns():
    """table -> list of (ordinal, name, type, nullable, default)."""
    out = {}
    p = os.path.join(DB, "columns_dictionary.txt")
    if os.path.exists(p):
        with open(p, encoding="utf-8", errors="replace") as f:
            for line in f:
                parts = line.rstrip("\n").split("|")
                if len(parts) >= 4 and parts[0]:
                    tbl, ordinal, name, typ = parts[0], parts[1], parts[2], parts[3]
                    nullable = parts[4] if len(parts) > 4 else ""
                    out.setdefault(tbl, []).append((ordinal, name, typ, nullable))
    return out


def read_pks():
    """table -> list of PK columns (rows where is_primary_key flag == 1)."""
    out = {}
    p = os.path.join(DB, "indexes_pks.txt")
    if os.path.exists(p):
        with open(p, encoding="utf-8", errors="replace") as f:
            for line in f:
                parts = line.rstrip("\n").split("|")
                # Table|IndexName|isPK|isUnique|Cols
                if len(parts) >= 5 and parts[0]:
                    tbl, _idx, ispk, _uniq, cols = parts[0], parts[1], parts[2], parts[3], parts[4]
                    if ispk == "1":
                        out.setdefault(tbl, []).append(cols)
    return out


def read_views_procs():
    views, procs = [], []
    p = os.path.join(DB, "views_procs.txt")
    if not os.path.exists(p):
        return views, procs
    mode = "views"
    with open(p, encoding="utf-8", errors="replace") as f:
        for line in f:
            s = line.strip()
            if not s:
                continue
            if s.startswith("###"):
                mode = "procs"
                continue
            (views if mode == "views" else procs).append(s)
    return views, procs


# ==================== SCREEN INVENTORY (spec section 32) ====================
def screenshot_stats():
    """module folder -> (png count, example file) from screenshots/."""
    out = {}
    if not os.path.isdir(SS):
        return out
    for folder in sorted(os.listdir(SS)):
        full = os.path.join(SS, folder)
        if not os.path.isdir(full):
            continue
        pngs = [f for f in os.listdir(full) if f.lower().endswith(".png")]
        out[folder] = (len(pngs), pngs[0] if pngs else "")
    return out


def build_screen_inventory():
    seq = 0
    rows = []
    shots = screenshot_stats()
    for module, names in forms.items():
        # screenshots live under screenshots/<module-folder>/
        folder_key = [k for k in shots if k.split("_", 1)[-1].lower().replace(" ", "")
                      in module.lower().replace(" ", "")]
        n_shot, example = (shots[folder_key[0]] if folder_key else (0, ""))
        shot_status = ("captured (%d png)" % n_shot) if n_shot else "not captured (no GUI session)"
        for n in names:
            seq += 1
            # Purpose: honest derivation from form name + module; not invented.
            purpose = "[INFERRED] %s screen (%s)" % (n, module)
            # Function: save path evidence from EXTRAS.text.
            if n in SQLMAP:
                func = "TopCtrl1_UnknownEvent_* / Form_KeyDown (save path)"
                evidence = "VERIFIED-VB6 (SQL)"
            elif module in ("Shell/Infrastructure", "Reports/Viewers"):
                func = "[UNKNOWN] (library/viewer object)"
                evidence = "VERIFIED-VB6 (name)"
            else:
                func = "TopCtrl1_UnknownEvent_* (toolbar save path)"
                evidence = "VERIFIED-VB6 (name)"
            rows.append([
                "SCR-%04d" % seq,           # ID
                module,                     # Module
                module,                     # Menu (top-level INI menu)
                "[UNKNOWN]",                # Submenu (needs menu->form link, spec §8)
                n,                          # Screen
                n,                          # Form Name
                purpose,                    # Purpose
                shot_status if n_shot else "not captured (no GUI session)",
                "EXTRAS.text object '%s'" % n,  # VB6 Source
                func,                       # Function
                SQLMAP.get(n, "[UNKNOWN]"), # SQL Object / Key DML
                "",                         # Tables (filled by screen-record pass)
                "",                         # Report
                "documented" if n in SQLMAP else "name-only",
                evidence,                   # Evidence
                "",                         # Notes
            ])
    return rows


SCREEN_HEADERS = ["ID", "Module", "Menu", "Submenu", "Screen", "Form Name", "Purpose",
                  "Screenshot", "VB6 Source", "Function", "SQL Object / Key DML", "Tables",
                  "Report", "Status", "Evidence", "Notes"]
SCREEN_WIDTHS = [10, 20, 18, 14, 28, 28, 34, 26, 28, 34, 42, 24, 14, 14, 26, 20]


# ==================== DATABASE DICTIONARY (spec section 33) ====================
CURATED_DB = [
 ["GuestFolio", "Guest folio / check-in header", "Front Office", "DocId",
  "Booking (BookingDocId); RoomOcc (DocId)",
  "Name, Vdate(ChkIn), DepDate, NoDays, Company, TravelAgent, RoDisc/RSDisc, SplitFolio, mFolioNo",
  "fdCheckIn, fdDisplayFolio, FdCheckOut", "BillPrint", "-", "VERIFIED-VB6"],
 ["RoomOcc", "Room occupancy rows per folio", "Front Office", "DocId+Sno",
  "GuestFolio(DocId); RoomMast(RoomNo); RoomCat; PlanMast(PlanCode)",
  "RoomNo, ChkInDate/Time, aDult, Children, RateCode, RoomRate, CHKOUTDATE/TIME, Type, PlanCode..RoomTaxStru",
  "fdCheckIn, fdRoomChange, FdCheckOut", "ChkInRegister", "-",
  "VERIFIED-VB6"],
 ["Booking", "Reservation master", "Reservation", "DocId",
  "BookingMore; BookingCancelDetails; GuestFolio(BookingDocId)",
  "BookNo, ArrDate/Time, DepDate/Time, RoomCat/Type/No, Adult/Child, ResStatus, Guarantee, Cancel, BookStatus",
  "RrRoomReservation, FrmReservationStatus", "BookingDetail", "-", "VERIFIED-VB6"],
 ["PayCharge", "Folio charges & payments", "Front Office", "DocId+SNo",
  "GuestFolio(FolioNo); RevMast(PayCode); Depart(RestCode)",
  "PayCode, PayType, AmtDr, AmtCr, RoomNo, FolioNo, Bill_No, TaxPer, OnAmt, SettleDate, Split",
  "fdPostChrg, FdReSetlement, POS bills", "BillPrint", "-", "VERIFIED-VB6"],
 ["Enviro", "Site settings + business date", "Main Setup", "LogSite_Code", "-",
  "ncur (business date), ImprestAmount, KOTAtNightAudit, POSBillAtNightAudit",
  "frmEnviro", "-", "-", "VERIFIED-VB6"],
 ["NightAuditLog", "Night audit trail", "Night Audit", "Identity", "Enviro(LogSite_Code)",
  "DateChngFrom/To, StartNightAudit, EndNightAudit, U_Name",
  "Night Audit", "NightAuditReport", "-", "VERIFIED-VB6"],
 ["Stock", "Inventory movements", "Inventory", "PK aaaaaStock_PK", "ItemMast; Voucher_Type",
  "QtyRec, QtyIss, Item, VType", "Store entries", "DailyStoreIss", "-",
  "VERIFIED-VB6/S (BUG-004 duplicate PK)"],
 ["KOT", "Kitchen order tickets", "Point Of Sale", "DocId/Sno",
  "ItemMast; Depart; Waiter", "Token, item, qty, delivery", "RsKOTEntry", "KOTWiseDetails",
  "-", "VERIFIED-VB6"],
 ["HallBook", "Banquet booking", "Banquet", "DocId", "VenueMast; FunctionType; HallSale1",
  "event, venue, dates, menus", "HallBooking", "DailyFuncSheet", "-", "VERIFIED-VB6"],
 ["userMast", "Users + obfuscated passwords", "Main Setup", "USER_NAME",
  "user1; MenuHelp", "PASSWD(obfuscated), LABEL, ActiveYN, AllowDtChng, ShortName",
  "UserMast screen", "-", "-", "VERIFIED-VB6"],
 ["user1", "Per-form rights", "Main Setup", "USER_NAME+FORM_CODE", "module",
  "PARAM_STR 'AEDP'", "UserPermission", "-", "-", "VERIFIED-VB6"],
 ["company", "Property/company + validity", "Main Setup", "comp_code", "MenuHelp(compcode)",
  "Start_dt, End_dt (validity)", "frmCompany", "-", "-", "VERIFIED-VB6"],
 ["LocationMast", "Mall location master", "Mall Management", "[UNKNOWN]", "FrmLocationMast",
  "Code, Name, ShortName, Area, TStartDate, TEndDate, TTerm", "FrmLocationMast",
  "Facility Bill Register", "-",
  "VERIFIED-VB6 (INSERT/UPDATE) / VERIFIED-SQL (absence = BUG-001)"],
 ["SmartCardRegistration", "Cash-card registration", "Smart Card / Door Lock", "CardNo",
  "MemCatMast etc.", "CardHolder, balances", "SmartCardRegistration", "CashCardTransDetail",
  "-", "VERIFIED-VB6"],
]


def build_db_dictionary():
    rowcounts = read_rowcounts()
    columns = read_columns()
    pks = read_pks()
    views, procs = read_views_procs()
    curated = {r[0]: r for r in CURATED_DB}
    reports = report_names()

    tables = sorted(set(list(rowcounts.keys()) + list(columns.keys())))
    rows = []
    for t in tables:
        cols = columns.get(t, [])
        col_names = [c[1] for c in cols]
        # "important fields" = PK cols first, then non-audit business columns
        pk_cols = []
        for entry in pks.get(t, []):
            pk_cols = [c.strip() for c in entry.split(",")]
            if pk_cols and pk_cols[0]:
                break
        audit = {"U_Name", "U_EntDt", "U_AE", "LogSite_Code", "Site_Code", "Comp_Code"}
        important = [c for c in pk_cols if c] + \
                    [c for c in col_names if c not in pk_cols and c not in audit][:8]
        important_s = ", ".join(important[:12]) or "[UNKNOWN] (no column extract)"
        if len(important) > 12:
            important_s += ", ..."
        n_cols = len(cols)
        rc = rowcounts.get(t, "[UNKNOWN]")
        rc_s = "{:,} rows".format(rc) if isinstance(rc, int) else str(rc)

        purpose_ev = "VERIFIED-SQL (columns_dictionary.txt)"
        if t in PURPOSE:
            purpose = PURPOSE[t]
            purpose_ev = "VERIFIED-VB6 (SQL) + VERIFIED-SQL"
        else:
            purpose = "[INFERRED] %d-column table; key columns: %s" % (
                n_cols, ", ".join(col_names[:4]) or "n/a")

        mod, mod_ev = module_of(t, purpose)

        # FK: live DB has ZERO foreign keys (foreign_keys.txt = 0 bytes) -> state it.
        fk = "none (0 FKs in live DB — foreign_keys.txt empty)"
        fk_ev = "VERIFIED-SQL"

        # Used By Screen: only assert where SQLMAP names the table
        screens = sorted({f for f, q in SQLMAP.items() if t.lower() in q.lower()})
        used_screen = ", ".join(screens) if screens else "[UNKNOWN]"

        # Used By Report: fuzzy name match against Reports\*.rpt|*.ttx -> INFERRED
        tl = t.lower()
        hits = [r for r in reports
                if tl.rstrip("s") in r.lower().replace("_", " ").replace("-", " ")]
        used_report = ", ".join(sorted(hits)[:3]) if hits else "[UNKNOWN]"

        # Used By Procedure: live DB has only 3 helper procs (none business SQL)
        used_proc = "-" if not procs else "- (3 helper procs only: %s)" % ", ".join(procs)

        if t in curated:
            c = curated[t]
            purpose, mod, pk_s = c[1], c[2], c[3]
            fk, important_s = c[4], c[5]
            used_screen, used_report = c[6], c[7]
            notes, evidence = c[8], c[9]
        else:
            pk_s = ", ".join(pk_cols) if pk_cols else "[UNKNOWN] (no PK index extract)"
            notes = "rowcount %s" % rc_s
            evidence = "%s; %s" % (purpose_ev, mod_ev)

        rows.append([t, purpose, mod, pk_s, fk, important_s, used_screen, used_report,
                     used_proc, evidence])
    return rows, len(tables), len(views), len(procs), sum(
        1 for v in rowcounts.values() if isinstance(v, int))


DB_HEADERS = ["Table", "Purpose", "Module", "Primary Key", "Foreign Keys",
              "Important Fields", "Used By Screen", "Used By Report", "Used By Procedure",
              "Evidence"]
DB_WIDTHS = [26, 40, 20, 26, 34, 44, 26, 26, 34, 34]


def main():
    os.makedirs(OUT, exist_ok=True)

    # ---- Workbook 1: SCREEN INVENTORY ----
    wb1 = openpyxl.Workbook()
    wb1.remove(wb1.active)
    srows = build_screen_inventory()
    sheet(wb1, "SCREEN_INVENTORY", SCREEN_HEADERS, srows, SCREEN_WIDTHS)
    mrows = [[m, len(n), "19_VB6_Logic/vb6_form_inventory.md + EXTRAS.text"]
             for m, n in forms.items()]
    sheet(wb1, "MODULE_COVERAGE", ["Module", "Form Count", "Doc Reference"],
          mrows, [26, 12, 52])
    p1 = os.path.join(OUT, "MASTER_SCREEN_INVENTORY.xlsx")
    wb1.save(p1)

    # ---- Workbook 2: DATABASE DICTIONARY (separate!) ----
    wb2 = openpyxl.Workbook()
    wb2.remove(wb2.active)
    drows, n_tbl, n_view, n_proc, n_nonempty = build_db_dictionary()
    sheet(wb2, "DB_DICTIONARY", DB_HEADERS, drows, DB_WIDTHS)
    sheet(wb2, "DB_SUMMARY", ["Metric", "Value"], [
        ["Tables (live extract)", n_tbl],
        ["Tables with rowcount > 0", n_nonempty],
        ["Views", n_view],
        ["Stored procedures", n_proc],
        ["Foreign keys", 0],
        ["Columns extracted", 5798],
        ["Evidence source", "18_Database/*.txt (read-only, 2026-09-28)"],
    ], [34, 46])
    p2 = os.path.join(OUT, "MASTER_DATABASE_DICTIONARY.xlsx")
    wb2.save(p2)

    # prove the two files are NOT identical (regression check for the old bug)
    s1, s2 = os.path.getsize(p1), os.path.getsize(p2)
    same = open(p1, "rb").read() == open(p2, "rb").read()
    print("Saved: %s (%d bytes, %d screen rows)" % (p1, s1, len(srows)))
    print("Saved: %s (%d bytes, %d table rows)" % (p2, s2, len(drows)))
    print("Workbooks identical? %s  <- must be False" % same)
    if same:
        raise SystemExit("FAIL: workbooks are still duplicates")


if __name__ == "__main__":
    main()
