# HMS VB6 FORM/OBJECT INVENTORY (from decompiled EXTRAS.text)

Source: EXTRAS.text (54 MB decompiled VB6 trace of HMS.exe).
Every object is tagged in the dump with `'Object: <Name>'`. Count: **351 unique objects**.
Evidence level: [VERIFIED-VB6] — names extracted verbatim from the binary's decompilation.

## Module grouping (by naming convention + observed behavior)

### Core / Framework (VB6 modules & libraries)
Module1, Functions, MainLib, FaLib, Hotlib, TopBarLib, CodeModule, LockForm, GridPrint,
TmpTable, JSON, cJSONScript, cStringBuilder, MSendInput, CGZipFiles, CGUnzipFiles,
CommonDialog, Picture, SperialFolderPath, MobWebAPI, mdlDataTransfer, mdlNightAudit,
DMTree, FindMess, FrmMsgBox, frmMessage, frmmessageKey, FrmCalender, EmptyInbox, Inbox, Outbox

### MDI Shell
MDIForm1, frmWelcome, frmPassword, frmCompany (login/company selection), FrmControlPanel,
FrmChangeSite, FrmChangeDepart, FrmChangeRest, FrmChangeKitch, frmSessionMast, frmYearEnd,
frmEnviro, FaEnvron, frmPurEnviro, MemberEnviro, UserMast, UserPermission, ModuleAdd,
frmMod_Print, frmMod_Print1, frmPrintModule, FrmJobScheduler, FrmUploadProcess,
FrmDataRecieving, FrmSerialiseVr, Transfer

### Finance (Fa*)
FaVoucher, FaVrEnt, FaGrEnt, FaAdjust, FaAdjustDel, FaChqClear, FaCurrBalUpdate, FaTaxVoucher,
FaReports, FaRepView, rFaRepView, FaFind, FaGlobeNarr, FaNarrMast, FaSubGroup, FaVtype,
FaCityMast, FaCountryMast, FaStateMast, FaTDSCat, FaTDSCertificate, FaTDSChal,
frmTallyExport, AccountMerg, SchemeMast

### Front Office (Fd*, fo*)
fdWalkInEntry, fdCheckIn, fdDisplayFolio, fdDisplayFolioSumm, fdCheckOut, FdGrpCheckOut,
FdGrpdetCheckOut, FdRevCheckOut, FdReSetlement, fdRoomChange, fdRoomOcc, FdLookUpRoom,
FdLookUpRoomNo, FdRoomDisplay, fdPostChrg, fdNDAcPostChrg, fdAcPostChrg, fdPaymentCharge,
fdAmendEntry, fdPrintScreen, InHouseGuestFolio, FOMModule, frmFomB, frmFomBillDeletion,
FrmFomBillDeletion-adjacent: FrmUnSettledBillsInfo, FrmDeliveredItemDetail, FrmForExRec,
FrmForeignExMast, FrmGuestWakeUp, FrmHouGuestMsg, RrLookUpGuest, frmFdLeaderRev,
FrmGuestAddObj, frmGuestInfo, frmGuestComments, FrmGuestStat, frmGuestParamMast, GuestProfile,
GroupProfile, FrmReservationStatus, FrmBookingInquiry, FrmBusinessSrc, FrmMarketSeg,
FrmInc, FrmImage, FrmBdayLookup, FrmLostFound, FrmComplaintMast, FrmComplaintClearing,
FrmMergeCharge, FrmRevMergeCharge, frmBlockMast, FrmChargeMast, FrmPayTypeMast,
FrmPlanPackMast, FrmPlanTokenMast, frmSeasonMast, frmFixedChargeMast, FrmTaxMast,
FrmTaxStruMast, SundryMast, SundryVType, DepartMast, DepartSundry, FacilitySundry,
OutLetMast, OutLetSundry, FrmPackageMast, FrmParty, FrmPartyLocations, VoucherSundrySetting

### Reservation (Rr*, res*)
RrRoomReservation, resRoomNo, resRoomType, resGroup, resBanq, rRepReserv, FrmRoomCatMast,
FrmRoomMast, FrmRoomFeatureMast, FrmLocationMast, FrmLocationFacilities, FrmVenueMast,
FrmVenueFeat, frmRevGroup

### House Keeping (H*, HK*)
HHouseKeeping, HKHouseOpStk, HKIssRec, HKRoomBlock, HKRoomOpStk, HRoomCheckOutClearance,
HWIHistory, rRepHouse, rRepHousePreview, FrmHouseStatus, FrmMeterReading, FrmItemIssuedOnCleaning

### Inventory (Item*/Godown/Stock)
FrmItemMast, FrmItemMastRaw, FrmItemCatMast, FrmItemCatRaw, FrmItemGroupMast,
FrmItemGroupMastRaw, FrmConsumMast, FrmConsumMast9999, FrmStockTransfer, FrmOPStock,
FrmDenomination, Godown, kClStk, DepOpStk, FrmUnitMast, FrmExpense, PIndent, pPBill,
pPOrder, pGIss, pMREntry, pReqSlip, FrmDeliveryBoyMast, FrmWaiterMast, FrmMenuList,
FrmMenuRate, frmMenuItemCopy, FrmSMSEnviro (SMS config lives in POS/menu area too)

### POS / Restaurant (Rs*, POS*)
RsBookingEntry, RsBookingEntryAdvance, RsTouchScreenBookingEntry, RsKOTEntry,
RsTouchScreenKOTEntry, RsTokenEntry, RsTouchScreenTOKENEntry, RsSaleBillSplit,
RsAssignDelivery, RsGravyItemEntry, RsMenuItemEntry, RsSpecItemEntry, RsKitchenMaterial,
RsKitchenStk, RsPOSCustInfo, RsPOSDisplay, RsPOSDisplayNew, RsPaymentReceice, RsStatusScreen,
RsTableMast, RsTbChange, RsTouchDisplayTB, RsTouchScreenFAFind, RsTouchScreenKeyBoard,
RsTouchScreenSteward, RsTouchScreenAdvanceDepDialog, RsTouchScreenSaleBill, POSBillPrint,
POSBillReprint, RSSaleBill, RSSaleBill1, RSSaleBillDisplay, POSAdvanceDepDialog,
FrmPOSBillDeletion, FrmPOSBillModificationDatewise, FrmPOSBillModificationItemGroupwise,
FrmPOSBillRecycleData -> FrmPOSRecycleData, FrmPOSSaleDataTransfer, pHappyHours, NewHappyHours,
repTouchDate, FrmUserPaymentCollection, FrmReceivePayment, FrmClaimEntry, FrmNAMessageA/B/C

### Banquet (Hall*, Banq*)
BanqModule, BanqAvailability, HallBooking, HallBill, HallBillEstimate, HallEstimate,
HallAcPostChrg, HallAdvanceDepDialog, HallChefPreCosting, HallItemGroupMast, HallMenuCatalog,
HallMenuItemEntry, HallSundry, CateringBooking, FunctionType-adjacent: FrmEventMast,
FrmFacilityMast, TravelAgencyPost

### Night Audit
mdlNightAudit (core posting engine), frmReNightAudit, FrmNAMessageA/B/C,
NightAuditLR/NightAuditoR/NightAuditRR menu handlers in MDI (see NIGHT_AUDIT_FLOW.md)

### HR & Payroll (Pr*, pr*, sal*)
PrEmployee, PrAttend1, prAttend, prHoliday, prOverTime, PrCategoryMast, PrDesigMast,
PrLeavench, PrLoan, prSalCreate, rRepPayRoll, Empl_Detl reports

### EPABX / Telecom (Tel*, EPABX)
TelCallEntry, TelCallCodeMast, TelCallControlMast, TelCallTypeMast, TelExtensionMast,
rRepTel, rRepTelPreview, FrmGuestWakeUp (wake-up calls)

### Messaging / SMS
SMSModule, FrmSMSEnviro, FrmSMSMultiType, FrmSmsCenterSettings, frmMessage, frmmessageKey,
MemberSMS, EmailSMSForward (table), MobWebAPI, FrmUploadProcess, FrmDataRecieving

### Members Management (Mem*, mem*)
MemberModule, MembershipMast, MemAssistant, MemBillPrintingModule, MemAutoSettleCardBalance,
MemCatMast, MemFacilityBilling, MemFacilityEntry, MemPaymentReceive, MemRenewalEntry,
MemSelectCategory, MemTagadaLetter, MemVisitEntry, MemberProposedMemInf, memAgeRevMast,
memCatChngCond, memCatChngEntry, memCatRevMast, memCategoryFacilities, memFacilityMast,
memOutStationEntry, MemberShipRevenueMast, MembershipRevMast, MemAddRWA, MemberFamily (tbl),
SmartCard* family: ModuleSmartCard, ModuleDoorLock, SmartCardMast, SmartCardRegistration,
SmartCardRecharge, SmartCardRefund, SmartCardLostReIssue, frmLockGodrejSettings,
frmGodrejLockSettings, Godrej door-lock + ACR smartcard integration

### Sales & Marketing (salmar*, BussSrc)
salmarCompProfile, FrmBusinessSrc, FrmMarketSeg, DiscountPartywiseReg (report family)

### Mall Management
ModuleDoorLock (mall door-lock), DepOpStk, FrmChangeDepart — mall shop/department ops;
Mall tables: DepOpStk, KClStk (department closing stock)

### Report viewers (generic)
REPVIEW, rFomRepView, rHallRepView, rInventRepView, rMemberRepView, rPOSRepView,
rRepReserv, rRepHouse, rRepPayRoll, rRepTel, GridPrint, PrintFormats (table)

## Notes
- Form names carry the original VB6 project names; screens discovered = 351 objects (incl. ~40
  class/utility modules). Unique *screens* ≈ 300+.
- Menu labels come from INI key 9 (15 top modules) + MenuHelp table (per-user menu security).
- Cross-reference each form with MASTER_SCREEN_INVENTORY (to be generated in Phase 17).
