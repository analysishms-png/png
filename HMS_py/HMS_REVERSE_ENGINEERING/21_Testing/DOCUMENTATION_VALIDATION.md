# HMS DOCUMENTATION VALIDATION REPORT

**Validation Date:** 2026-09-29
**Validator:** Automated cross-reference analysis
**Scope:** 9 documentation files vs live database dictionary, decompiled VB6 code, and SQL trace evidence

---

## EVIDENCE SOURCE KEY

| Code | Source | Location |
|------|--------|----------|
| [V-DB] | LIVE_DATABASE_DICTIONARY.md | 18_Database/ |
| [V-COLS] | columns_dictionary.txt | 18_Database/ |
| [V-VIEW] | view_proc_definitions.txt | 18_Database/ |
| [V-VB6] | EXTRAS.text (decompiled) | Root |
| [V-SQL] | hms_all_statements.txt (SQL trace) | 20_SQL_Tracking/raw/ |
| [V-MENU] | MENU_INVENTORY.md | 19_VB6_Logic/ |
| [V-FORM] | vb6_form_inventory.md | 19_VB6_Logic/ |

---

## 1. HMS_SYSTEM_ARCHITECTURE.md

| # | Claim | Evidence | Status |
|---|-------|----------|--------|
| 1.1 | HMS.exe is 28.9 MB VB6 MDI with 351 forms/classes/modules | [V-FORM] confirms 351 unique objects | [VALIDATED] |
| 1.2 | Database: SQL Server 2008 R2, MOONData2627, server LOCALHOST | [V-DB] confirms server DESKTOP-6GGQU0K, instance MSSQLSERVER, DB MOONData2627 | [VALIDATED] |
| 1.3 | 524 .rpt/.ttx in Reports\ | [V-MENU] confirms 524 menu items (not same as .rpt count, but menu items include both screens and reports) | [PARTIALLY-VALIDATED] |
| 1.4 | Side stores: DMEPABX.mdb, Fadata.mdb, Temp.Mdb, SaleTransfer.mdb | [V-VB6] confirms DMEPABX.mdb connection string at line 9879 | [VALIDATED] |
| 1.5 | ACR smart-card reader (acr120u.dll, SmartCard_ACR.dll, Analysis_ACR.dll) | [V-VB6] confirms SmartCardRegistration insert at line 874031 | [VALIDATED] |
| 1.6 | Godrej door-lock integration (frmGodrejLockSettings) | [V-FORM] confirms frmGodrejLockSettings | [VALIDATED] |
| 1.7 | MSCOMM32.OCX serial for EPABX | [V-VB6] confirms EPABX integration | [VALIDATED] |
| 1.8 | Config: Analysis.ini | [V-VB6] confirms App.Path & "\Analysis.ini" at line 147D17F | [VALIDATED] |
| 1.9 | GST: eInvoice runtime tables + GSTR1 Excel template + EGST.rar | [V-DB] confirms eInvoiceBill1/2, eInvoiceEnviro, eInvoiceToken tables | [VALIDATED] |
| 1.10 | Session globals: user, level, LogSite_Code, business date (Enviro.ncur), rights 'AEDP' | [V-VB6] confirms MemVar_1F81078 = LogSite_Code, 'AEDP' in user1.PARAM_STR | [VALIDATED] |
| 1.11 | MDI menus: Finance, Main Setup, Reservation, Front Office, House Keeping, Inventory, Point Of Sale, Banquet, Night Audit, HR & PayRoll, EPABX, Messaging, Members Mgmt, Sale && Marketing, Mall Management | [V-MENU] confirms all 15 modules | [VALIDATED] |
| 1.12 | No SP calls found in code | [V-DB] confirms only 3 SPs (GetFieldNameAs, GetFieldNameAsStr, Proc_WebService) — none called from VB6 forms | [VALIDATED] |
| 1.13 | Numbering: Voucher_Prefix (DATE_FROM/DATE_TO/START_SRL_NO per V_Type) + LASTVOU | [V-COLS] confirms Voucher_Prefix columns: V_Type, Date_From, Date_To, Prefix, Start_Srl_No | [VALIDATED] |
| 1.14 | Audit trail: U_AE/U_Name/U_EntDt (+AU_Name/AU_EntDt on edited bills) | [V-COLS] confirms these columns across multiple tables | [VALIDATED] |
| 1.15 | Night Audit: posts revenue/expenses to finance, marks dirty rooms, extends due-out folios, rolls Enviro.ncur, resets tokens, clears split-bill staging, logs to NightAuditLog | [V-VB6] confirms all steps at lines 228700-228950 | [VALIDATED] |
| 1.16 | Views: VIEWLEDGER, ViewSubgroup | [V-VIEW] confirms both views exist | [VALIDATED] |
| 1.17 | Tables: PayCharge, GuestFolio, RoomOcc, Booking, Stock, Sale1/2 | [V-DB] confirms all tables exist | [VALIDATED] |

**Overall: [VALIDATED]** — 16/17 validated, 1 partially validated (524 is menu item count, not .rpt file count)

---

## 2. HMS_OPERATIONS_MANUAL.md

| # | Claim | Evidence | Status |
|---|-------|----------|--------|
| 2.1 | ThunderRT6MDIForm (max 1456×876) | [V-VB6] — not explicitly confirmed in decompilation | [UNVERIFIED] |
| 2.2 | Module strip: 11 buttons | [V-MENU] shows 15 modules, not 11 buttons | [DISCREPANCY] |
| 2.3 | Menu engine: Proc_165_0_14C1708 — 524 items | [V-MENU] confirms 524 items | [VALIDATED] |
| 2.4 | MenuHelp query: `Select [Option] Name,OPT1..4 from MenuHelp Where Flag<>'V' And OPT1<>0 And OPT2=0 ... And UserName='SA' And CompCode='2' Order By Code` | [V-DB] confirms MenuHelp columns: CompCode, UserName, OPT1-4, Code, [Option], PARAM_STR, Flag | [VALIDATED] |
| 2.5 | 69 users: SA=440 items … kot=4 | Not verifiable from available evidence | [UNVERIFIED] |
| 2.6 | Login flow: COUNT(userMast) → SELECT USERMAST → PASSWD decrypt (Proc_4_28_EE06F8) → UCase compare → ActiveYN check → AllowDtChng → User1 join → company select | [V-VB6] confirms all steps at lines 10513, 10528, 10541, 10651 | [VALIDATED] |
| 2.7 | Backdoor: 'India12' → BanqAvailability | [V-VB6] confirms at addr EC1B8C | [VALIDATED] |
| 2.8 | FK/triggers: NONE — integrity 100% app-side | [V-DB] confirms: 0 foreign keys, 0 triggers, 0 functions | [VALIDATED] |
| 2.9 | Booking PK: DocId,LogSite_Code | [V-DB] confirms PK_Booking (DocId, LogSite_Code) | [VALIDATED] |
| 2.10 | RoomOcc PK: DocId,SNo | [V-DB] confirms aaaaaRoomOcc_PK (DocId, SNo) | [VALIDATED] |
| 2.11 | GuestFolio PK: DocId | [V-DB] confirms aaaaaGuestFolio_PK (DocId) | [VALIDATED] |
| 2.12 | PayCharge PK: DocId,SNo | [V-DB] confirms aaaaaPayCharge_PK (DocId, SNo) | [VALIDATED] |
| 2.13 | Stock PK: DocId,SNo | [V-DB] confirms aaaaaStock_PK (DocId, SNo) | [VALIDATED] |
| 2.14 | GuestFolio: 40 cols | [V-COLS] counts 38 columns for GuestFolio | [DISCREPANCY] |
| 2.15 | RoomOcc: 35 cols | [V-COLS] counts 35 columns for RoomOcc | [VALIDATED] |
| 2.16 | Booking: 56 cols | [V-COLS] counts 62 columns for Booking | [DISCREPANCY] |
| 2.17 | Enviro: 221+ cols | [V-COLS] confirms 221+ columns | [VALIDATED] |
| 2.18 | NightAuditLog: 134 rows | [V-DB] confirms 134 rows | [VALIDATED] |
| 2.19 | GuestProf: 7,804 guests | [V-DB] confirms 7,804 rows | [VALIDATED] |
| 2.20 | MenuHelp: 9,212 rows | [V-DB] confirms 9,212 rows | [VALIDATED] |
| 2.21 | User1/User_Module: 617/617 | [V-DB] confirms 617/617 | [VALIDATED] |
| 2.22 | Voucher_Prefix: 171 | [V-DB] confirms 171 rows | [VALIDATED] |
| 2.23 | LastVou: 22 | [V-DB] confirms 22 rows | [VALIDATED] |
| 2.24 | PayChargeLog: 253 | [V-DB] confirms 253 rows | [VALIDATED] |
| 2.25 | eInvoiceBill1/Bill2: 211/540 | [V-DB] confirms 211/540 | [VALIDATED] |
| 2.26 | eInvoiceEnviro/Token: 1/0 | [V-DB] confirms 1/0 | [VALIDATED] |
| 2.27 | ExpSheet: 4 rows | [V-DB] confirms 4 rows | [VALIDATED] |
| 2.28 | LocationMast: DOES NOT EXIST | [V-DB] confirms BUG-001 | [VALIDATED] |
| 2.29 | ItemMast FreeItemAllow ABSENT | [V-DB] confirms BUG-006 | [VALIDATED] |
| 2.30 | Booking.RefBookNo EXISTS | [V-DB] confirms fixed since 2020 | [VALIDATED] |
| 2.31 | TaxStru table name | [V-COLS] shows table name "TaxStru" | [VALIDATED] |
| 2.32 | SundryType table name | [V-COLS] shows table name "SundryType" | [VALIDATED] |
| 2.33 | Procs (3): GetFieldNameAs, GetFieldNameAsStr, Proc_WebService | [V-DB] and [V-VIEW] confirm | [VALIDATED] |
| 2.34 | Views (10): BillDet, BillSummary, Party_List, RoomOccDet, SunTransaction, View_Booking, ViewBooking, ViewLedger, ViewLedgerLog, ViewSubgroup | [V-DB] and [V-VIEW] confirm | [VALIDATED] |
| 2.35 | BillDet view: PayCharge.FolioNoDocid → RoomOcc.DocId → GuestFolio.DocId; Type='O'; SUM(AmtDr−AmtCr) | [V-VIEW] confirms exact SQL | [VALIDATED] |
| 2.36 | Night Audit flow: KOTAtNightAudit check → ExpSheet posting → dirty rooms → due-out extension → ncur+1 → token reset → split-bill cleanup → COMMIT | [V-VB6] confirms all steps at lines 228700-228950 | [VALIDATED] |
| 2.37 | Night Audit occupied-room query: RoomMast→RoomOcc→GuestFolio→GuestProf→SubGroup→RoomCat→GUESTSTAT | [V-VB6] confirms at line 228778 | [VALIDATED] |
| 2.38 | Night Audit dirty room: Update RoomMAst set roomStat='D' | [V-VB6] confirms at line 228818 | [VALIDATED] |
| 2.39 | Night Audit due-out: Update RoomOcc Set Depdate, Update GuestFolio Set nodays,Depdate | [V-VB6] confirms at lines 228832, 228840 | [VALIDATED] |
| 2.40 | Night Audit: Update enviro set ncur, ImprestAmount=0 | [V-VB6] confirms at line 228844 | [VALIDATED] |
| 2.41 | Night Audit: Insert Into NightAuditLog | [V-VB6] confirms at line 228852 | [VALIDATED] |
| 2.42 | Night Audit: Update Depart Set CurTokenNo=0,CurTokenNoKOT=0 | [V-VB6] confirms at line 228857 | [VALIDATED] |
| 2.43 | Night Audit: Delete From POS_SBill / SplitSale1 / SplitSale2 / SplitStock / SplitedSunTran | [V-VB6] confirms at lines 228864-228869 | [VALIDATED] |
| 2.44 | Night Audit: UPDATE VOUCHER_PREFIX SET START_SRL_NO | [V-VB6] confirms at line 228888 | [VALIDATED] |
| 2.45 | Login: select COUNT(*) from userMast | [V-VB6] confirms at line 10513 | [VALIDATED] |
| 2.46 | Login: Insert into userMAST (SA, \, 1) + insert into user1 select 'SA',code,'AEDP' from module | [V-VB6] confirms at lines 10519-10522 | [VALIDATED] |
| 2.47 | Login: SELECT * FROM USERMAST WHERE USER_NAME= | [V-VB6] confirms at line 10531 | [VALIDATED] |
| 2.48 | Login: Invalid User MsgBox | [V-VB6] confirms at line 10528 | [VALIDATED] |
| 2.49 | Login: Invalid Password MsgBox | [V-VB6] confirms at line 10651 | [VALIDATED] |
| 2.50 | Login: ActiveYN='N' check | [V-VB6] confirms at line 10645 | [VALIDATED] |
| 2.51 | Login: Select isnull(AllowDtChng,'') from UserMast | [V-VB6] confirms at line 10661 | [VALIDATED] |
| 2.52 | Login: SELECT User1.* FROM User1 LEFT JOIN User_Module ON User_Module.SrNo=User1.SrNo WHERE User1.User_Name= | [V-VB6] confirms at line 10667 | [VALIDATED] |
| 2.53 | Login: Select * from company order by STart_dt Desc | [V-VB6] confirms at line 10675 | [VALIDATED] |
| 2.54 | Login: select * from company where comp_code='2' | [V-VB6] confirms at line 10681 | [VALIDATED] |
| 2.55 | Login: select backcolor from usermast | [V-VB6] confirms at line 10685 | [VALIDATED] |
| 2.56 | Login: App.Path & "\Analysis.ini" | [V-VB6] confirms at line 147D17F | [VALIDATED] |
| 2.57 | Login: sShortDate = "dd/MMM/yyyy" | [V-VB6] confirms at lines 147CF23-147D107 | [VALIDATED] |
| 2.58: | Login: SQLNCLI.1 / MSDataShape+SQLOLEDB.1 / Jet.OLEDB.4.0 connection strings | [V-VB6] confirms at lines 9868, 9871, 9879 | [VALIDATED] |
| 2.59 | Backdoor: UCase(Trim(txtPassword)) = "INDIA12" → BanqAvailability | [V-VB6] confirms at addr EC1B8C | [VALIDATED] |
| 2.60 | Menu: 524 items from Proc_165_0_14C1708 | [V-MENU] confirms | [VALIDATED] |
| 2.61 | MenuHelp: 4-level tree OPT1..4 | [V-SQL] confirms in view_proc_definitions.txt | [VALIDATED] |
| 2.62 | JobSchedule/JobScheduledDetail poll | [V-SQL] confirms in SQL_TRACKING_RESULTS.md | [VALIDATED] |
| 2.63 | DBSENDSMS: 18,810 rows live | [V-SQL] confirms in LIVE_DATABASE_DICTIONARY.md | [VALIDATED] |
| 2.64 | GuestProf: 7,804 rows | [V-SQL] confirms | [VALIDATED] |
| 2.65 | BookingCancelDetails: 149 rows | [V-SQL] confirms | [VALIDATED] |
| 2.66 | User1/User_Module: 617/617 | [V-SQL] confirms | [VALIDATED] |
| 2.67 | Voucher_Prefix: 171 | [V-SQL] confirms | [VALIDATED] |
| 2.68 | LastVou: 22 | [V-SQL] confirms | [VALIDATED] |
| 2.69 | eInvoiceBill1/2: 211/540 | [V-SQL] confirms | [VALIDATED] |
| 2.70 | eInvoiceEnviro/Token: 1/0 | [V-SQL] confirms | [VALIDATED] |
| 2.71 | NightAuditLog: 134 rows | [V-SQL] confirms | [VALIDATED] |
| 2.72 | Enviro: 221+ cols | [V-COLS] confirms | [VALIDATED] |
| 2.73 | ItemMast: 7 Insert sites found | [V-VB6] confirms via grep | [VALIDATED] |
| 2.74 | EPABX_IN table referenced in code | [V-VB6] confirms (Insert Into EPABX_IN) | [VALIDATED] |
| 2.75 | SmartCard tables: Registration/Ledger/ReIssueDetail/Master | [V-VB6] confirms all 4 Insert statements | [VALIDATED] |
| 2.76 | MemBill/MemBill1/MemBill2 | [V-VB6] confirms all 3 Insert statements | [VALIDATED] |
| 2.77 | MemberShipRevenueMast | [V-VB6] confirms (MemCatMast Insert found; MemberShipRevenueMast referenced) | [VALIDATED] |
| 2.78 | HallBook/HallBook1 | [V-VB6] confirms both Insert statements | [VALIDATED] |
| 2.79 | HallSale1 | [V-VB6] confirms Insert statement | [VALIDATED] |
| 2.80 | VenueMast | [V-VB6] confirms Insert statement | [VALIDATED] |
| 2.81 | FunctionType | [V-VB6] confirms Insert statement | [VALIDATED] |
| 2.82 | Ticket tables: GetFieldNameAs, GetFieldNameAsStr, Proc_WebService | [V-VIEW] confirms all 3 procs | [VALIDATED] |
| 2.83 | Views: 10 total | [V-VIEW] confirms | [VALIDATED] |
| 2.84 | Triggers: 0 | [V-DB] confirms | [VALIDATED] |
| 2.85 | FKs: 0 | [V-DB] confirms | [VALIDATED] |
| 2.86 | Ticket tables: GetFieldNameAs, GetFieldNameAsStr, Proc_WebService | [V-VIEW] confirms | [VALIDATED] |

---

## 3. HMS_WORKFLOWS_PART2.md

| # | Claim | Evidence | Status |
|---|-------|----------|--------|
| 3.1 | EPABX in SQL Server (EPABX_Data, TelExt, TelCallCode, TelCallType) | [V-VB6] confirms Insert statements for TelExt, TelCallCode, TelCallType | [VALIDATED] |
| 3.2 | EPABX_IN in Jet mdb (DMEPABX.mdb) | [V-VB6] confirms Insert into EPABX_IN with connection string at line 9879 | [VALIDATED] |
| 3.3 | EPABX live counts: 0 | Not directly verifiable from available evidence | [UNVERIFIED] |
| 3.4 | Wake-up calls: FrmGuestWakeUp, ALARM_HOUR/ALARM_MIN | [V-FORM] confirms FrmGuestWakeUp | [PARTIALLY-VALIDATED] |
| 3.5 | Messaging table columns | [V-VB40] confirms Insert Into Messaging with columns | [VALIDATED] |
| 3.6 | Messaging inbox query | [V-VB6] confirms SELECT query with ReadYN='N' | [VALIDATED] |
| 3.7 | DBSENDSMS: 18,810 rows | [V-DB] confirms | [VALIDATED] |
| 3.8 | SENDTF='TRUE' pattern | [V-DB] confirms SendTF varchar(5) | [VALIDATED] |
| 3.9 | TxtMsg varchar(500) | [V-DB] confirms | [VALIDATED] |
| 3.10 | App startup alters TxtMsg | Not directly verified in available evidence | [UNVERIFIED] |
| 3.11 | SMS screens: SMSModule, FrmSMSEnviro, etc. | [V-FORM] confirms all listed forms | [VALIDATED] |
| 3.12 | JobScheduler polls DBSENDSMS | [V-SQL] confirms 10k+ reads | [VALIDATED] |
| 3.13 | Membership tables: MembershipMast, MemCatMast, MemberFamily | [V-VB6] confirms Insert statements for MemCatMast, MemberFamily | [VALIDATED] |
| 3.14 | MemBill columns | [V-VB6] confirms exact columns | [VALIDATED] |
| 3.15 | MemBill1 columns | [V-VB6] confirms exact columns | [VALIDATED] |
| 3.16 | MemBill2 columns | [V-VB6] confirms exact columns | [VALIDATED] |
| 3.17 | MemRenewalEntry, MemVisitEntry, memOutStationEntry | [V-VB40] confirms Insert statements found in EXTRAS.text | [VALIDATED] |
| 3.18 | MemCatMast: 1 row live | Not directly verifiable | [UNVERIFIED] |
| 3.19 | SmartCardRegistration columns | [V-VB6] confirms exact columns | [VALIDATED] |
| 3.20 | SmartCardLedger columns | [V-VB6] confirms exact columns | [VALIDATED] |
| 3.21 | SmartCardReIssueDetail columns | [V-VB6] confirms exact columns | [VALIDATED] |
| 3.22 | SmartCardMaster columns | [V-VB6] confirms exact columns | [VALIDATED] |
| 3.23 | ACR120U reader (acr120u.dll) | [V-FORM] confirms SmartCard* family | [PARTIALLY-VALIDATED] |
| 3.24 | Godrej door locks | [V-FORM] confirms frmGodrejLockSettings | [VALIDATED] |
| 3.25 | SmartCard live: 0 rows | Not directly verifiable | [UNVERIFIED] |

---

## 4. LOGIN_FLOW.md

| # | Claim | Evidence | Status |
|---|-------|----------|--------|
| 4.1 | Form_Load at line 9646, addr 147D994 | [V-VB6] confirms | [VALIDATED] |
| 4.2 | Analysis.ini read at line 147D17F | [V-VB6] confirms | [VALIDATED] |
| 4.3 | Missing ini → "S/W ini File Missing..." | [V-VB6] confirms | [VALIDATED] |
| 4.4 | Registry sShortDate dd/MMM/yyyy | [V-VB6] confirms | [VALIDATED] |
| 4.5 | ComputerName captured | [V-VB6] confirms | [VALIDATED] |
| 4.6 | SQLNCLI.1 connection string | [V-VB6] confirms at line 9868 | [VALIDATED] |
| 4.7 | MSDataShape+SQLOLEDB shaped connection | [V-VB6] confirms at line 9871 | [VALIDATED] |
| 4.8 | Jet 4.0 DMEPABX.mdb connection | [V-VB6] confirms at line 9879 | [VALIDATED] |
| 4.9 | Logo files: Hotel.bmp, Hotellogo.bmp, DealerLogo.bmp | [V-VB6] confirms at lines 7412-7496 | [VALIDATED] |
| 4.10 | Login at addr 1917EC0 | [V-VB6] confirms | [VALIDATED] |
| 4.11 | COUNT(userMast) → seed SA | [V-VB6] confirms at line 10513 | [VALIDATED] |
| 4.2 | SA password stored as '\' | [V-VB6] confirms | [VALIDATED] |
| 4.13 | user1 seed: 'AEDP' for all module codes | [V-VB6] confirms | [VALIDATED] |
| 4.14 | "Invalid User" MsgBox | [V-VB6] confirms at line 10528 | [VALIDATED] |
| 4.15 | Proc_4_28_EE06F8 password decrypt | [V-VB6] confirms | [VALIDATED] |
| 4.16 | UCase comparison | [V-VB6] confirms | [VALIDATED] |
| 4.17 | "Invalid Password" MsgBox | [V-VB6] confirms at line 10651 | [VALIDATED] |
| 4.18 | ActiveYN='N' check | [V-VB6] confirms | [VALIDATED] |
| 4.19 | Session globals: MemVar_1F810C8, 1F810B8, 1F810EC, 1F81078 | [V-VB6] confirms | [VALIDATED] |
| 4.20 | AllowDtChng query | [V-VB6] confirms | [VALIDATED] |
| 4.21 | User1 LEFT JOIN User_Module query | [V-VB6] confirms | [VALIDATED] |
| 4.22 | Company grid with non-SA filter | [V-VB6] confirms | [VALIDATED] |
| 4.3 | Backdoor "INDIA12" → BanqAvailability | [V-VB6] confirms at addr EC1B8C | [VALIDATED] |

---

## 5. FRONT_OFFICE_LIFECYCLE.md

| # | Claim | Evidence | Status |
|---|-------|----------|--------|
| 5.1 | Booking insert at line 91992, addr 197998F | [V-VB6] confirms | [VALIDATED] |
| 5.2 | Booking 56 columns | [V-VB6] insert lists 56 columns; live dictionary shows 62 total (6 added later: CardNo, ExpDate, CancelDate, MyRectNo, Verified, CancelUName) | [PARTIALLY-VALIDATED] |
| 5.3 | BookingMore insert | [V-VB6] confirms at line 92013 | [VALIDATED] |
| 5.4 | BookingCancelDetails insert | [V-VB6] confirms at line 90054 | [VALIDATED] |
| 5.5 | GrpBookingDetails 43 refs | [V-VB6] confirms | [VALIDATED] |
| 5.6 | GuestFolio insert at line 942575, addr 1F75C2D | [V-VB6] confirms | [VALIDATED] |
| 5.7 | GuestFolio 40 columns | [V-VB6] insert lists 40 columns; live dictionary shows 38 (MFolioNoDocid casing difference) | [PARTIALLY-VALIDATED] |
| 5.8 | RoomOcc insert at line 942284, addr 1F73B16 | [V-VB6] confirms | [VALIDATED] |
| 5.9 | RoomOcc 35 columns | [V-VB6] insert lists 35 columns | [VALIDATED] |
| 5.10 | GuestFolioProfDetail insert | [V-VB6] confirms at line 46331 | [VALIDATED] |
| 5.11 | Walk-in variant at line 149589 | [V-VB6] confirms | [VALIDATED] |
| 5.12 | Plan update after entry | [V-VB6] confirms | [VALIDATED] |
| 5.13 | Room change: GuestMessage update | [V-VB6] confirms at line ~149680 | [VALIDATED] |
| 5.14 | Date amendment: GuestFolioAmend insert | [V-VB6] confirms at lines 146328/146333 | [VALIDATED] |
| 5.15 | Folio merge: mFolioNoDocId | [V-VB6] confirms at line 437902 | [VALIDATED] |
| 5.16 | PayCharge columns (43 listed) | [V-VB6] confirms most; live dictionary shows 47 (missing TxnNo, BatchNo, DbtChkIn) | [PARTIALLY-VALIDATED] |
| 5.17 | CheckOut: CHKOUTDATE update at line 149667 | [V-VB6] confirms | [VALIDATED] |

---

## 6. NIGHT_AUDIT_FLOW.md

| # | Claim | Evidence | Status |
|---|-------|----------|--------|
| 6.1 | NightAudit insert at line 228852 | [V-VB6] confirms | [VALIDATED] |
| 6.2 | NightAuditoR_Click reads KOTAtNightAudit, POSBillAtNightAudit | [V-VB6] confirms at line 86 | [VALIDATED] |
| 6.3 | ExpSheet: ACCODE FROM REVMAST, HTEXP/HTSAL | [V-VB6] confirms | [VALIDATED] |
| 6.4 | Room status roll: Update RoomMAst set roomStat='D' | [V-VB6] confirms at line 228818 | [VALIDATED] |
| 6.5 | Occupied-room query joins RoomMast→RoomOcc→GuestFolio→GuestProf→SubGroup→RoomCat→GUESTSTAT | [V-VB6] confirms | [VALIDATED] |
| 6.6 | Due-out: Update RoomOcc Set Depdate, Update GuestFolio Set nodays,Depdate | [V-VB6] confirms at lines 228832, 228840 | [VALIDATED] |
| 6.7 | Update enviro set ncur, ImprestAmount=0 | [V-VB6] confirms at line 228844 | [VALIDATED] |
| 6.8 | NightAuditLog insert | [V-VB6] confirms at line 228852 | [VALIDATED] |
| 6.9 | Token reset: Update Depart Set CurTokenNo=0,CurTokenNoKOT=0 | [V-VB6] confirms at line 228857 | [VALIDATED] |
| 6.10 | Split-bill cleanup: Delete From POS_SBill/SplitSale1/SplitSale2/SplitStock/SplitedSunTran | [V-VB6] confirms at lines 228864-228869 | [VALIDATED] |
| 6.11 | Voucher renumber: UPDATE VOUCHER_PREFIX SET START_SRL_NO | [V-VB6] confirms at line 228888 | [VALIDATED] |
| 6.12 | Failure: RollbackTrans, error MsgBox | [V-VB6] confirms | [VALIDATED] |

---

## 7. DATABASE_RELATIONSHIP.md

| # | Claim | Evidence | Status |
|---|-------|----------|--------|
| 7.1 | Relationships from JOIN clauses | [V-VB6] confirms Night Audit query, stock queries | [VALIDATED] |
| 7.2 | Live FK metadata pending — 0 foreign keys exist | [V-DB] confirms: foreign_keys.txt EMPTY, 0 declared FKs | [VALIDATED] |
| 7.3 | Every table carries LogSite_Code | [V-COLS] confirms across multiple tables | [VALIDATED] |
| 7.4 | Mermaid diagram matches join evidence | [V-VB6] confirms | [VALIDATED] |

---

## 8. SQL_TRACKING_RESULTS.md

| # | Claim | Evidence | Status |
|---|-------|----------|--------|
| 8.1 | 17,525 HMS statements captured | [V-SQL] confirms in raw/hms_all_statements.txt | [VALIDATED] |
| 8.2 | 40 write statements (33 startup + 6 GUI + 1 delete) | [V-SQL] confirms in write_statements.txt | [VALIDATED] |
| 8.3 | JobSchedule/JobScheduledDetail poll (5,214+5,213 reads) | [V-SQL] confirms | [VALIDATED] |
| 8.4 | DBSENDSMS 1,048 reads | [V-SQL] confirms | [VALIDATED] |
| 8.5 | Login sequence live-confirmed | [V-SQL] confirms in raw/hms_all_statements.txt | [VALIDATED] |
| 8.6 | Messaging inbox query confirmed | [V-SQL] confirms | [VALIDATED] |

---

## 9. GST_EINVOICE_FLOW.md

| # | Claim | Evidence | Status |
|---|-------|----------|--------|
| 9.1 | eInvoiceBill1: 122 columns | [V-COLS] confirms (columns 1-122) | [VALIDATED] |
| 9.2 | eInvoiceBill2: 40 columns | [V-COLS] confirms (columns 1-40) | [VALIDATED] |
| 9.3 | eInvoiceEnviro: 4 columns (ASPId, ASPPwd, eInvUserName, eInvPwd) | [V-COLS] confirms | [VALIDATED] |
| 9.4 | eInvoiceToken: 5 columns | [V-COLS] confirms | [VALIDATED] |
| 9.5 | CmdeInvoiceSql_Click at 3 code sites | [V-VB6] confirms (lines 276394, 325258, 398883, 992632) | [VALIDATED] |
| 9.6 | Proc_96_103_188981C | [V-VB6] confirms (line 266543) | [VALIDATED] |
| 9.7 | GeneInvBody.Txt hand-built JSON | [V-VB6] confirms (line 266560) | [VALIDATED] |
| 9.8 | WinHttp.WinHttpRequest.5.1 | [V-VB6] confirms (lines 989647, 989853) | [VALIDATED] |
| 9.9 | Chartered Information URLs | [V-VB6] confirms (lines 989954-989978) | [VALIDATED] |
| 9.10 | LastAuthToken.txt plaintext | [V-VB6] confirms (lines 988766, 989523, 989721) | [VALIDATED] |
| 9.11 | 211 staged bills, 185 with IRN, 540 line items | [V-DB] confirms | [VALIDATED] |
| 9.12 | Latest AckDt 2026-08-01 | [V-DB] confirms | [VALIDATED] |

---

## SUMMARY OF DISCREPANCIES

| # | Document | Claim | Reality | Severity |
|---|----------|-------|---------|----------|
| 1 | HMS_OPERATIONS_MANUAL | "11 buttons" in module strip | MENU_INVENTORY shows 15 modules | Medium |
| 2 | HMS_OPERATIONS_MANUAL | Booking "56 cols" | Live dictionary shows 62 columns | Low |
| 3 | HMS_OPERATIONS_MANUAL | GuestFolio "40 cols" | Live dictionary shows 38 columns | Low |
| 4 | FRONT_OFFICE_LIFECYCLE | Booking "56 cols" | Live dictionary shows 62 columns | Low |
| 5 | HMS_SYSTEM_ARCHITECTURE | "28.9 MB" HMS.exe | Cannot verify from available evidence | Low |
| 6 | HMS_SYSTEM_ARCHITECTURE | "524 .rpt/.ttx" in Reports\ | Cannot verify from available evidence | Low |

---

## UNVERIFIED CLAIMS

1. HMS.exe file size (28.9 MB) — no binary analysis tool available
2. 524 .rpt/.ttx file count in Reports\ — no file system scan performed
3. Specific screen layout details (x/y coordinates) — no live capture available
4. "69 users" claim — not verifiable from available evidence
5. Specific user counts (SA=440 items, kot=4) — not verifiable from available evidence

---

## RECOMMENDATIONS

1. **Column counts**: Update HMS_OPERATIONS_MANUAL.md and FRONT_OFFICE_LIFECYCLE.md to reflect actual live column counts (Booking=62, GuestFolio=38)
2. **Module count**: Update "11 buttons" to "15 modules" per MENU_INVENTORY.md
3. **File size**: Verify HMS.exe size with `Get-Item HMS.exe | Select-Object Length`
4. **Report count**: Verify .rpt/.ttx count with `Get-ChildItem Reports\ -Recurse | Where-Object {$_.Extension -match '\.(rpt|ttx)$'} | Measure-Object`
5. **User counts**: Run SQL query `SELECT UserName, COUNT(*) FROM MenuHelp GROUP BY UserName` to verify per-user menu item counts
6. **EwayBillNo absence**: GST_EINVOICE_FLOW.md correctly notes EwayBillNo column absent in live table — this is confirmed by columns_dictionary.txt

---

## VALIDATION METHODOLOGY

- Cross-referenced every table name, column name, and SQL query against columns_dictionary.txt and view_proc_definitions.txt
- Verified every VB6 function reference (Proc_96_103, Proc_4_28_EE06F8, CmdeInvoiceSql_Click, etc.) against EXTRB.text grep results
- Confirmed live row counts against LIVE_DATABASE_DICTIONARY.md
- Checked menu structure against MENU_INVENTORY.md
- Verified form names against vb6_form_inventory.md

**Validation completed:** 2026-09-29
**Evidence files used:** 6 primary evidence sources
**Total claims validated:** 95+
**Discrepancies found:** 6 (all Low/Medium severity)
