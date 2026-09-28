"""Generate MASTER_SCREEN_INVENTORY.xlsx and MASTER_DATABASE_DICTIONARY.xlsx.
Data derived from verified decompiled-code evidence (EXTRAS.text)."""
import openpyxl
from openpyxl.styles import Font, PatternFill

def sheet(wb, title, headers, rows, widths):
    ws = wb.create_sheet(title)
    hfill = PatternFill("solid", fgColor="1F4E78")
    for c, h in enumerate(headers, 1):
        cell = ws.cell(row=1, column=c, value=h)
        cell.font = Font(bold=True, color="FFFFFF")
        cell.fill = hfill
    for r, row in enumerate(rows, 2):
        for c, v in enumerate(row, 1):
            ws.cell(row=r, column=c, value=v)
    for c, w in enumerate(widths, 1):
        ws.column_dimensions[openpyxl.utils.get_column_letter(c)].width = w
    ws.freeze_panes = "A2"
    return ws

# ---------------- SCREEN INVENTORY ----------------
forms = {
 "Finance":["FaVoucher","FaVrEnt","FaGrEnt","FaAdjust","FaAdjustDel","FaChqClear","FaCurrBalUpdate","FaTaxVoucher","FaReports","FaRepView","FaFind","FaGlobeNarr","FaNarrMast","FaSubGroup","FaVtype","FaCityMast","FaCountryMast","FaStateMast","FaTDSCat","FaTDSCertificate","FaTDSChal","frmTallyExport","AccountMerg","SchemeMast","FaEnvron"],
 "Main Setup":["UserMast","UserPermission","ModuleAdd","frmCompany","frmEnviro","frmSessionMast","frmYearEnd","FrmControlPanel","FrmChangeSite","FrmChangeDepart","frmMod_Print","frmPrintModule","FrmJobScheduler","FrmUploadProcess","FrmDataRecieving","FrmSerialiseVr","CompMast","Transfer"],
 "Reservation":["RrRoomReservation","resRoomNo","resRoomType","resGroup","resBanq","FrmReservationStatus","FrmBookingInquiry","FrmRoomCatMast","FrmRoomMast","FrmRoomFeatureMast","FrmLocationMast","FrmLocationFacilities","FrmVenueMast","FrmVenueFeat","frmRevGroup","FrmMarketSeg","FrmBusinessSrc","frmSeasonMast","frmBlockMast"],
 "Front Office":["fdWalkInEntry","fdCheckIn","fdRoomOcc","fdDisplayFolio","fdDisplayFolioSumm","FdCheckOut" if False else "FdCheckOut","FdGrpCheckOut","FdGrpdetCheckOut","FdRevCheckOut","FdReSetlement","fdRoomChange","FdLookUpRoom","FdLookUpRoomNo","FdRoomDisplay","fdPostChrg","fdNDAcPostChrg","fdAcPostChrg","fdPaymentCharge","fdAmendEntry","fdPrintScreen","InHouseGuestFolio","FOMModule","frmFomB","FrmFomBillDeletion","FrmUnSettledBillsInfo","FrmForExRec","FrmForeignExMast","FrmGuestWakeUp","FrmHouGuestMsg","RrLookUpGuest","frmFdLeaderRev","FrmMergeCharge","FrmRevMergeCharge","GuestProfile","GroupProfile","FrmGuestStat","frmGuestInfo","frmGuestComments","FrmBdayLookup","FrmLostFound","FrmComplaintMast","FrmComplaintClearing","FrmChargeMast","FrmPayTypeMast","FrmPlanPackMast","FrmPlanTokenMast","FrmFixedChargeMast" if False else "frmFixedChargeMast","FrmTaxMast","FrmTaxStruMast","SundryMast","SundryVType","FrmPackageMast","FrmParty","FrmPartyLocations","FrmInc","FrmImage"],
 "House Keeping":["HHouseKeeping","HKHouseOpStk","HKIssRec","HKRoomBlock","HKRoomOpStk","HRoomCheckOutClearance","HWIHistory","FrmHouseStatus","FrmMeterReading","FrmItemIssuedOnCleaning","rRepHouse","rRepHousePreview"],
 "Inventory":["FrmItemMast","FrmItemMastRaw","FrmItemCatMast","FrmItemCatRaw","FrmItemGroupMast","FrmItemGroupMastRaw","FrmConsumMast","FrmStockTransfer","FrmOPStock","FrmDenomination","Godown","kClStk","DepOpStk","FrmUnitMast","FrmExpense","PIndent","pPBill","pPOrder","pGIss","pMREntry","pReqSlip"],
 "Point Of Sale":["RsBookingEntry","RsBookingEntryAdvance","RsTouchScreenBookingEntry","RsKOTEntry","RsTouchScreenKOTEntry","RsTokenEntry","RsTouchScreenTOKENEntry","RsSaleBillSplit","RsAssignDelivery","RsGravyItemEntry","RsMenuItemEntry","RsSpecItemEntry","RsKitchenMaterial","RsKitchenStk","RsPOSCustInfo","RsPOSDisplay","RsPOSDisplayNew","RsPaymentReceice","RsStatusScreen","RsTableMast","RsTbChange","RsTouchDisplayTB","RsTouchScreenFAFind","RsTouchScreenKeyBoard","RsTouchScreenSteward","POSBillPrint","POSBillReprint","RSSaleBill","RSSaleBill1","RSSaleBillDisplay","RSTouchScreenSaleBill","FrmPOSBillDeletion","FrmPOSBillModificationDatewise","FrmPOSBillModificationItemGroupwise","FrmPOSRecycleData","FrmPOSSaleDataTransfer","pHappyHours","NewHappyHours","FrmUserPaymentCollection","FrmReceivePayment","FrmWaiterMast","FrmDeliveryBoyMast","FrmMenuList","FrmMenuRate","frmMenuItemCopy","OutLetMast","OutLetSundry","FrmClaimEntry"],
 "Banquet":["BanqModule","BanqAvailability","HallBooking","HallBill","HallBillEstimate","HallEstimate","HallAcPostChrg","HallChefPreCosting","HallItemGroupMast","HallMenuCatalog","HallMenuItemEntry","HallSundry","CateringBooking","FrmEventMast","FrmFacilityMast","TravelAgencyPost","HallAdvanceDepDialog"],
 "Night Audit":["mdlNightAudit","frmReNightAudit","FrmNAMessageA","FrmNAMessageB","FrmNAMessageC"],
 "HR & Payroll":["PrEmployee","PrAttend1","prAttend","prHoliday","prOverTime","PrCategoryMast","PrDesigMast","PrLeavench","PrLoan","prSalCreate","rRepPayRoll"],
 "EPABX":["TelCallEntry","TelCallCodeMast","TelCallControlMast","TelCallTypeMast","TelExtensionMast","rRepTel","rRepTelPreview"],
 "Messaging":["SMSModule","FrmSMSEnviro","FrmSMSMultiType","FrmSmsCenterSettings","frmMessage","MemberSMS","MobWebAPI","EmailSMSForward-tbl"],
 "Members Management":["MemberModule","MembershipMast","MemAssistant","MemBillPrintingModule","MemAutoSettleCardBalance","MemCatMast","MemFacilityBilling","MemFacilityEntry","MemPaymentReceive","MemRenewalEntry","MemSelectCategory","MemTagadaLetter","MemVisitEntry","MemberProposedMemInf","memAgeRevMast","memCatChngCond","memCatChngEntry","memCatRevMast","memCategoryFacilities","memFacilityMast","memOutStationEntry","MemberShipRevenueMast","MembershipRevMast","MemAddRWA"],
 "Sale & Marketing":["salmarCompProfile","FrmBusinessSrc","FrmMarketSeg"],
 "Mall Management":["ModuleDoorLock","DepOpStk","KClStk","frmLockGodrejSettings","frmGodrejLockSettings"],
 "Smart Card / Door Lock":["ModuleSmartCard","SmartCardMast","SmartCardRegistration","SmartCardRecharge","SmartCardRefund","SmartCardLostReIssue"],
 "Reports/Viewers":["REPVIEW","rFomRepView","rHallRepView","rInventRepView","rMemberRepView","rPOSRepView","rRepReserv","rRepTel","GridPrint"],
 "Shell/Infrastructure":["MDIForm1","frmWelcome","frmPassword","FrmCalender","FindMess","FrmMsgBox","Inbox","Outbox","EmptyInbox","DMTree","JSON","cJSONScript","cStringBuilder","MSendInput","CGZipFiles","CGUnzipFiles","CommonDialog","Picture","SperialFolderPath","mdlDataTransfer","mdlNightAudit-NA-msgs","Module1","Functions","MainLib","FaLib","Hotlib","TopBarLib","CodeModule","LockForm","GridPrint-lib","TmpTable","Transfer-lib","ModuleAdd-lib"],
}

wb = openpyxl.Workbook()
wb.remove(wb.active)
rows = []
seq = 0
SQLMAP = {
 "RrRoomReservation":"Insert Into Booking (...); BookingMore; BookingCancelDetails",
 "fdCheckIn":"Insert Into GuestFolio(...)/RoomOcc(...); GuestFolioProfDetail",
 "fdWalkInEntry":"Insert Into RoomOcc(...); Update RoomOcc Set PlanCode=...",
 "FdCheckOut":"Update RoomOcc Set CHKOUTDATE=...,CHKOUTTIME=...","fdAmendEntry":"Insert Into GuestFolioAmend; Update GuestFolio Set DepDate=",
 "fdRoomChange":"Update RoomOcc; Update GuestMessage set RoomNo=","fdPostChrg":"Insert/Update PayCharge (PayCode,PayType,AmtDr/AmtCr,...)","FdReSetlement":"PayCharge SettleDate/ModeSet/Bill_No","mdlNightAudit":"see 10_Night_Audit/NIGHT_AUDIT_FLOW.md",
 "UserMast":"userMast,user1,module,User_Module","GuestProfile":"GuestProf,GuestProfFor,City,State,Country",
 "RsKOTEntry":"KOT,Stock,Sale1/Sale2","HallBooking":"HallBook,VenueMast,FunctionType",
 "TelCallEntry":"EPABX_IN (Jet DMEPABX.mdb)","PrEmployee":"Employee,PrCategoryMast-tables","MembershipMast":"MemCatMast,MemBill,MemberFamily",
 "SmartCardRegistration":"SmartCardRegistration table","FrmItemMast":"ItemMast,ItemCatMast,ItemGrp,ItemRate","FrmStockTransfer":"Stock,Voucher_Type('ST')",
}
EVID = {k:"VERIFIED-VB6 (name)" for k in []}
for module, names in forms.items():
    for n in names:
        seq += 1
        rows.append([f"SCR-{seq:04d}", module, "", "", n, n,
                     SQLMAP.get(n, ""), "", "Not captured (no GUI session)", "", "decompiled-name",
                     "VERIFIED-VB6 (name); SQL only where noted", ""])
sheet(wb, "SCREEN_INVENTORY", ["ID","Module","Menu","Submenu","Screen","Form Name","SQL Object / Key DML","Tables","Report","Screenshot Status","VB6 Source","Evidence","Notes"], rows, [10,20,12,12,26,26,40,22,16,24,18,30,24])

# ---------------- DATABASE DICTIONARY ----------------
db = [
 ["GuestFolio","Guest folio / check-in header","Front Office","DocId","Booking (BookingDocId); RoomOcc (DocId)","Name, Vdate(ChkIn), DepDate, NoDays, Company, TravelAgent, RoDisc/RSDisc, SplitFolio, mFolioNo","fdCheckIn, fdDisplayFolio, FdCheckOut","BillPrint","Night Audit updates nodays/DepDate","VERIFIED-VB6"],
 ["RoomOcc","Room occupancy rows per folio","Front Office","DocId+Sno","GuestFolio(DocId); RoomMast(RoomNo); RoomCat; PlanMast(PlanCode)","RoomNo, ChkInDate/Time, aDult, Children, RateCode, RoomRate, CHKOUTDATE/TIME, Type, PlanCode..RoomTaxStru","fdCheckIn, fdRoomChange, FdCheckOut","ChkInRegister","chkoutdate NULL => in-house","VERIFIED-VB6"],
 ["Booking","Reservation master","Reservation","DocId","BookingMore; BookingCancelDetails; GuestFolio(BookingDocId)","BookNo, ArrDate/Time, DepDate/Time, RoomCat/Type/No, Adult/Child, ResStatus, Guarantee, Cancel, BookStatus","RrRoomReservation, FrmReservationStatus","BookingDetail","ResMode/ResStatus drive status","VERIFIED-VB6"],
 ["PayCharge","Folio charges & payments","Front Office/POS","DocId+SNo","GuestFolio(FolioNo); RevMast(PayCode); Depart(RestCode)","PayCode, PayType, AmtDr, AmtCr, RoomNo, FolioNo, Bill_No, TaxPer, OnAmt, SettleDate, Split","fdPostChrg, FdReSetlement, POS bills","BillPrint","U_AE audit columns","VERIFIED-VB6"],
 ["GuestProf","Guest profile","Front Office","Code","GuestFolio(GuestProf); GUESTSTAT","Name, Add1/2, City, GUESTSTATUS, Nationality","GuestProfile","CustomerDetail","-","VERIFIED-VB6"],
 ["RoomMast","Room master","Main Setup","Code","RoomOcc(RoomNo); RoomCat","Type('RO'), roomStat('D' dirty etc.)","FrmRoomMast","Day23RoomAvail","Night Audit sets roomStat='D'","VERIFIED-VB6"],
 ["Enviro","Site settings + business date","All (per LogSite_Code)","LogSite_Code","-","ncur (business date), ImprestAmount, KOTAtNightAudit, POSBillAtNightAudit","frmEnviro","-","Night Audit: ncur+1, Imprest=0","VERIFIED-VB6"],
 ["NightAuditLog","Night audit trail","Night Audit","Identity","Enviro(LogSite_Code)","DateChngFrom/To, StartNightAudit, EndNightAudit, U_Name","Night Audit","NightAuditReport","-","VERIFIED-VB6"],
 ["Depart","Department/outlet master","All","Code","PayCharge(RestCode); KOT; Sale1","ShortName, AutoResetToken, AutoSplit, CurTokenNo","DepartMast","-","VType 'B'+ShortName for splits","VERIFIED-VB6"],
 ["RevMast","Revenue heads","Finance","Code","PayCharge(PayCode/RevCode)","ACCODE (GL link)","FrmChargeMast-family","DailyReport","-","VERIFIED-VB6"],
 ["Stock","Inventory movements","Inventory","PK aaaaaStock_PK","ItemMast; Voucher_Type","QtyRec, QtyIss, Item, VType","Store entries","DailyStoreIss","BUG-004 duplicate PK seen","VERIFIED-VB6/S"],
 ["ItemMast","Item master","Inventory","Code","Stock; KOT; BOM","ItemType('Store'), LPurRate, PURCHRATE, IssueUnit, CONVRATIO","FrmItemMast","catlog","-","VERIFIED-VB6"],
 ["Sale1/Sale2","POS sale header/detail","POS","DocId(+Sno)","Depart; KOT; PayCharge-split","Bill fields, waiter, table","RsSaleBill family","BillTokenPrint","SplitSale1/2 staging pre-audit","VERIFIED-VB6"],
 ["KOT","Kitchen order tickets","POS","DocId/Sno","ItemMast; Depart; Waiter","Token, item, qty, delivery","RsKOTEntry","KOTWiseDetails","Token reset at Night Audit","VERIFIED-VB6"],
 ["HallBook","Banquet booking","Banquet","DocId","VenueMast; FunctionType; HallSale1","event, venue, dates, menus","HallBooking","DailyFuncSheet","-","VERIFIED-VB6"],
 ["SunTran/SunTranH","Sundry charges","FO/POS","DocId+Sno","SundryType; RevMast","PartyCode, SunCode, AppDate, RevCode","SundryMast postings","-","BUG-002 AppDate ORDER BY bug","VERIFIED-VB6"],
 ["userMast","Users","Security","USER_NAME","user1; MenuHelp","PASSWD(obfuscated), LABEL, ActiveYN, AllowDtChng, ShortName","UserMast screen","-","SA seeded on first run","VERIFIED-VB6"],
 ["user1","Per-form rights","Security","USER_NAME+FORM_CODE","module","PARAM_STR 'AEDP'","UserPermission","-","-","VERIFIED-VB6"],
 ["company","Property/company","Setup","comp_code","MenuHelp(compcode)","Start_dt, End_dt (validity)","frmCompany","-","SA bypasses filter","VERIFIED-VB6"],
 ["eInvoiceBill1","GST e-invoice staging","GST/Front Office","DocId+UserGSTIN","PayCharge/BillPrint flow","UserGSTIN, TranDtls_*, DocDtls_*, SellerDtls_Gstin...","eInvoice form","-","created at runtime by app","VERIFIED-VB6"],
 ["LocationMast","Locations","Main Setup","?","FrmLocationMast","?","FrmLocationMast","-","MISSING in DB -> BUG-001","VERIFIED-SQL (absence)"],
 ["ViewLedger/VIEWLEDGER","Ledger view","Finance","-","Ledger","-","FaReports","-","-","VERIFIED-VB6"],
 ["Ledger","Finance ledger","Finance","DocId","AcGroup; SubGroup","AmtDr/AmtCr, VType, Narration","FaVoucher/FaVrEnt","FaReports","posted by Night Audit helper","VERIFIED-VB6"],
 ["SubGroup","Accounts/parties","Finance","SubCode","Ledger; GuestFolio(Company)","Group, city, GSTIN","FaSubGroup","CompanySumm","-","VERIFIED-VB6"],
 ["Voucher_Type / Voucher_Prefix","Types & numbering","All","V_Type(+LogSite)","all txn tables","Category ('PurchBill','EXPENT',...), START_SRL_NO, DATE_FROM/TO","FaVtype","-","renumbered at Night Audit","VERIFIED-VB6"],
 ["PayChargeLog/PayChargeH","Posting audit/history","Front Office","-","PayCharge","copy of posting","posting routines","-","-","VERIFIED-VB6"],
 ["SmartCardRegistration","Cash-card registration","SmartCard","CardNo","MemCatMast etc.","CardHolder, balances","SmartCardRegistration","CashCardTransDetail","ACR reader SDK","VERIFIED-VB6"],
 ["TempPosDel","Deleted-bill staging","POS","-","Sale1/Sale2","deleted bill copies","FrmPOSBillDeletion","CancelBillDet","recycle","VERIFIED-VB6"],
 ["GuestFolioAmend","Departure amendments","Front Office","FolioNo","GuestFolio","OldDepDate/Time, DepDate/Time","fdAmendEntry","-","-","VERIFIED-VB6"],
]
rows2 = [[t[0],t[1],t[2],t[3],t[4],t[5],t[6],t[7],t[8],t[9]] for t in db]
sheet(wb, "DB_DICTIONARY", ["Table","Purpose","Module","Primary Key","Related (FK evidence)","Important Fields","Used By Screen","Used By Report","Notes","Evidence"], rows2, [22,26,16,14,30,38,22,16,26,16])

# module coverage summary sheet
mrows = [[m, len(n), "Documented in 19_VB6_Logic/vb6_form_inventory.md"] for m, n in forms.items()]
sheet(wb, "MODULE_COVERAGE", ["Module","Form Count","Doc Reference"], mrows, [26, 12, 52])

wb.save("HMS_REVERSE_ENGINEERING/22_Final_Manual/MASTER_SCREEN_INVENTORY.xlsx")
wb.save("HMS_REVERSE_ENGINEERING/22_Final_Manual/MASTER_DATABASE_DICTIONARY.xlsx")
print("Inventories saved OK")
