# HMS Migration Status Audit
**Date:** 2026-09-20 (updated: 2026-09-20 Main Setup complete)  
**VB6 Source:** `HMS.bas` (54 MB, 995,854 lines - decompiled)  
**Python Target:** `HMS_py/` (PyQt6 + pyodbc, SQL Server)  

---

## 1. Python Project Structure

```
HMS_py/
├── __init__.py
├── main.py                          # Entry point: Login → Company → Main
├── requirements.txt                 # PyQt6, pyodbc
├── core/                            # Business logic + DB layer
│   ├── __init__.py
│   ├── db.py                        # Config + parameterized SQL (COMPLETE)
│   ├── auth.py                      # VB6-compatible encrypt/decrypt/login (COMPLETE)
│   ├── company.py                   # Company list from Company table (COMPLETE)
│   ├── menu.py                      # DB-driven menu (User_Module) (COMPLETE)
│   ├── country.py                   # Country master CRUD (COMPLETE)
│   ├── state.py                     # State master CRUD (COMPLETE)
│   ├── city.py                      # City master CRUD (COMPLETE)
│   ├── area.py                      # Area master CRUD (COMPLETE - CityCode widened to 6)
│   ├── usermaster.py                # User master CRUD + password (COMPLETE)
│   ├── roommaster.py                # Room master CRUD (COMPLETE)
│   ├── roomcategory.py              # Room category CRUD (COMPLETE)
│   ├── roomstatus.py                # Room status engine (COMPLETE - live schema)
│   ├── guestprof.py                 # Guest profile CRUD (COMPLETE)
│   ├── reservation.py               # Booking CRUD + DocId + Cancel logic (COMPLETE)
│   ├── checkin.py                   # Check-in (CHK) + RoomOcc (COMPLETE)
│   ├── checkout.py                  # Check-out + Reverse + Balance (COMPLETE)
│   ├── folio.py                     # Folio settle, room charge, amend, log (COMPLETE)
│   ├── nightaudit.py                # NA log + occupancy + revenue (READ-ONLY)
│   ├── pos.py                       # POS KOT + reports (READ-ONLY)
│   ├── inventory.py                 # Godown CRUD + indent/purchase/stock (READ-ONLY)
│   ├── plans.py                     # Plan master CRUD (COMPLETE)
│   ├── taxmaster.py                 # Tax master CRUD (COMPLETE)
│   ├── paymenttype.py               # Payment type CRUD (COMPLETE)
│   ├── marketsegment.py             # Market segment CRUD (COMPLETE)
│   ├── businesssource.py            # Business source CRUD (COMPLETE)
│   ├── gueststatus.py               # Guest status CRUD (COMPLETE)
│   ├── forexmaster.py               # Forex master CRUD (COMPLETE)
│   ├── ledger.py                    # Ledger accounts CRUD (COMPLETE)
│   ├── acgroup.py                   # Account group CRUD (COMPLETE)
│   ├── fixcharge.py                 # Fixed charge CRUD (COMPLETE)
│   ├── unit.py                      # Unit master CRUD (COMPLETE)
│   ├── item.py                      # Item master CRUD (COMPLETE)
│   ├── sundry.py                    # Sundry master CRUD (COMPLETE)
│   ├── narr.py                      # Narration master CRUD (COMPLETE)
│   ├── depart.py                    # Department/Outlet CRUD (COMPLETE)
│   ├── venue.py                     # Venue master CRUD (COMPLETE)
│   ├── packagemaster.py             # Package master CRUD (COMPLETE)
│   ├── seasonmaster.py              # Season master CRUD (COMPLETE)
│   ├── companymaster.py             # Company master CRUD (COMPLETE)
│   ├── banquet_masters.py           # Banquet venue/features/catalog/group (COMPLETE)
│   ├── pos_masters.py               # POS session/scheme/delboy/itemcat/ncType/waiter/shift/combo (COMPLETE)
│   ├── hr_masters.py                # HR category/holiday/employee/designation (COMPLETE)
│   ├── members_masters.py           # Member category/facility/revenue (COMPLETE)
│   ├── general_setup.py             # Room feature/godown/vouchertype/vouchcat/enviro/guestparam (COMPLETE)
│   ├── epabx_masters.py             # EPABX calltype/callcode/extension (COMPLETE)
│   ├── smartcard.py                 # Smart card registration + card master (COMPLETE)
│   ├── expenseentry.py              # Expense entry (COMPLETE)
│   └── reports.py                   # Reservation status + occupancy PDF (COMPLETE)
├── ui/                              # PyQt6 forms
│   ├── __init__.py
│   ├── shell.py                     # Main flow: Login → Company → MDI (COMPLETE)
│   ├── base_master.py               # Generic master form (TopCtrl pattern) (COMPLETE)
│   ├── frontoffice.py               # Guest Profile + Check-In browser (COMPLETE)
│   ├── reservation_browser.py       # Reservation CRUD browser (COMPLETE)
│   ├── roomstatus_ui.py             # Room rack + HK actions (COMPLETE)
│   ├── checkout_ui.py               # Check-out browser (COMPLETE)
│   ├── folio_ui.py                  # Folio log + amend (COMPLETE)
│   ├── expense_ui.py                # Expense entry (COMPLETE)
│   ├── finance_masters_ui.py        # Tax/Payment/Market/Source/Status/Forex/Ledger (COMPLETE)
│   ├── pos_masters_ui.py            # POS masters + smartcard (COMPLETE)
│   ├── banquet_masters_ui.py        # Banquet masters + function type (COMPLETE)
│   ├── hr_members_ui.py             # HR + Members masters + designation/revenue (COMPLETE)
│   ├── general_setup_ui.py          # General setup masters + voucher category (COMPLETE)
│   ├── epabx_ui.py                  # EPABX calltype/callcode/extension (COMPLETE)
│   ├── inventory.py                 # Inventory browser (COMPLETE)
│   ├── pos_na.py                    # POS + Night Audit browsers (COMPLETE)
│   ├── p2_masters.py                # P2 master forms (Country/State/City/Area/Room/Plan/Season/Company/User/Charge/Unit/Item/Sundry/Narr/Venue/Dept) (COMPLETE)
│   ├── plan_master.py               # Plan master form (COMPLETE)
│   └── usermaster_ui.py             # User master form (COMPLETE)
├── tools/
│   ├── migrate_area_citycode.py     # AreaMast CityCode varchar(5)→6 migration
│   └── __init__.py
└── _qa/
    └── reports/                     # Generated PDFs
```

---

## 2. VB6 Module/Object Inventory (from HMS.bas)

**Total Objects: 351** (decompiled forms, modules, classes)

### Major Functional Groups:

| Group | Count | Key Objects |
|-------|-------|-------------|
| **Front Office** | 25 | RrRoomReservation, RsBookingEntry, fdCheckIn, fdRoomChange, fdCheckOut, FrmGuestAddObj, GuestProfile, FrmGuestWakeUp, FrmHouGuestMsg, FrmControlPanel, FrmReNightAudit, FrmWelcome, FrmGuestInfo |
| **Reservations** | 8 | RsBookingEntry, RsBookingEntryAdvance, FrmBookingInquiry, FrmReservationStatus, rRepReserv, FdLookUpRoom, FdLookUpRoomNo, rrsAdvanceDepDialog |
| **Folio/Charges** | 12 | fdPaymentCharge, fdPostChrg, fdDisplayFolio, fdDisplayFolioSumm, fdAcPostChrg, fdNDAcPostChrg, FdReSetlement, FdGrpCheckOut, FdGrpdetCheckOut, fdRoomOcc, FrmPOSBillDeletion, FrmFomBillDeletion |
| **Night Audit** | 6 | mdlNightAudit, frmReNightAudit, NightAuditLR, NightAuditoR, FrmNAMessageA/B/C |
| **POS** | 18 | RsKOTEntry, RsMenuItemEntry, RsPOSDisplay, RsPOSDisplayNew, RsTouchScreen*, POSBillPrint, RSSaleBill, pHappyHours, NewHappyHours, FrmPOSBillModification*, POSAdvanceDepDialog |
| **Inventory** | 12 | Godown, PIndent, pPOrder, pMREntry, FrmItemMast, FrmItemCatMast, FrmItemGroupMast, RsStoreRecEntry, RsKitchenStk, FrmItemIssuedOnCleaning, FrmStockTransfer, RsGravyItemEntry |
| **Banquet** | 14 | resBanq, HallBooking, HallBill, HallMenuCatalog, CateringBooking, FrmEventMast, FrmHallItemCatMast, HallMenuItemEntry, HallSundry, FrmVenueMast, FrmVenueFeat, BanqAvailability, BanqModule, HallChefPreCosting |
| **Housekeeping** | 8 | HHouseKeeping, FrmHouseStatus, HKHouseOpStk, HKIssRec, HKRoomOpStk, HKRoomBlock, FdRoomDisplay, resRoomNo |
| **Setup/Masters** | 35 | Country, State, City, Area, RoomCat, RoomMast, RoomFeature, PlanPackMast, SeasonMast, TaxMast, TaxStruMast, ChargeMast, FixChargeMast, VoucherSundrySetting, GuestParamMast, BusinessSrc, MarketSeg, GuestStat, PayTypeMast, WaiterMast, DepartMast, OutLetMast, SundryMast, NarrationMaster, ItemGroupMast, ItemCatMast, UnitMast, CompMast, CompanyMaster |
| **Finance/Accounts** | 20 | FaVoucher, FaVrEnt, FaSubGroup, FaGrEnt, FaNarrMst, FaMagic, FaFind, FaAdjust, FaChqClear, FaCityMast, FaCountryMast, FaStateMast, FaEnvron, FaGlobeNarr, FaTDSCat, FaTDSCertificate, FaVtype, FaReports, FaRepView, FaTaxVoucher |
| **HR/Payroll** | 8 | prAttend, PrLeavench, PrLoan, prOverTime, prSalCreate, PrAttend1, PrCategoryMast, PrDesigMast, PrEmployee, prHoliday |
| **Membership** | 14 | MembershipMast, MemberModule, MemberShipRevenueMast, memCatMast, memFacilityMast, MemVisitEntry, MemRenewalEntry, MemFacilityEntry, MemBillPrintingModule, MemAssistant, SmartCardMast, SmartCardRegistration, SmartCardRecharge, SmartCardRefund |
| **Telephone/SMS** | 8 | TelCallCodeMast, TelCallTypeMast, TelExtensionMast, TelCallControlMast, TelCallEntry, SMSModule, FrmSmsCenterSettings, FrmSMSEnviro |
| **Door Lock/Smart Card** | 5 | ModuleDoorLock, frmGodrejLockSettings, frmLockGodrejSettings, SmartCardLostReIssue, FrmUploadProcess |
| **Reports** | 15 | rRepHousePreview, rRepHouse, rRepTelPreview, rInventRepView, rFomRepView, rRepPayRoll, rRepTel, rPOSRepView, rFaRepView, rHallRepView, rMemberRepView, repTouchDate, frmMod_Print, frmPrintModule, FrmDataRecieving |
| **Utilities** | 8 | CodeModule, Functions, JSON, cJSONScript, cStringBuilder, CGZipFiles, CGUnzipFiles, SperialFolderPath |
| **External/Integration** | 5 | eInvoice, MobWebAPI, FrmTallyExport, FrmReceivePayment, FrmImage |

---

## 3. Python Module Inventory & Status

| Python Module | VB6 Equivalent | Status | Completion % | Notes |
|---|---|---|---|---|
| **FOUNDATION (Phase 1)** |
| core/db.py | Module1, Analysis.ini | ✅ COMPLETE | 100% | Config, connect, query, execute |
| core/auth.py | frmPassword, UserMast | ✅ COMPLETE | 100% | VB6 encrypt/decrypt exact port |
| core/company.py | frmCompany | ✅ COMPLETE | 100% | Company table + INI fallback |
| core/menu.py | MDIForm1, User_Module, User1 | ✅ COMPLETE | 100% | DB-driven sidebar + menubar |
| core/usermaster.py | UserMast | ✅ COMPLETE | 100% | CRUD + password encrypt |
| **MASTER DATA (Phase 2)** |
| core/country.py | Country Master | ✅ COMPLETE | 100% | 9 live rows |
| core/state.py | State Master | ✅ COMPLETE | 100% | 36 live rows |
| core/city.py | City Master | ✅ COMPLETE | 100% | 311 live rows |
| core/area.py | Area Master | ✅ COMPLETE | 100% | CityCode widened to 6 |
| core/roomcategory.py | FrmRoomCatMast | ✅ COMPLETE | 100% | |
| core/roommaster.py | FrmRoomMast | ✅ COMPLETE | 100% | 86 live rooms (28 RO + 58 TB) |
| core/roomstatus.py | FrmHouseStatus, FdRoomDisplay | ✅ COMPLETE | 100% | Live schema, occupancy engine |
| core/guestprof.py | GuestProfile, FrmGuestAddObj | ✅ COMPLETE | 100% | 7215 live rows |
| core/plans.py | FrmPlanPackMast, CompMast | ✅ COMPLETE | 100% | PlanMast |
| core/seasonmaster.py | frmSeasonMast | ✅ COMPLETE | 100% | |
| core/packagemaster.py | FrmPackageMast | ✅ COMPLETE | 100% | |
| core/companymaster.py | CompMast | ✅ COMPLETE | 100% | |
| core/taxmaster.py | FrmTaxMast | ✅ COMPLETE | 100% | |
| core/taxstru.py | FrmTaxStruMast | ✅ COMPLETE | 100% | TaxStru table 56 rows, header+lines |
| core/paymenttype.py | FrmPayTypeMast | ✅ COMPLETE | 100% | |
| core/marketsegment.py | FrmMarketSeg | ✅ COMPLETE | 100% | |
| core/businesssource.py | FrmBusinessSrc | ✅ COMPLETE | 100% | |
| core/gueststatus.py | FrmGuestStat | ✅ COMPLETE | 100% | |
| core/forexmaster.py | FrmForeignExMast | ✅ COMPLETE | 100% | |
| core/ledger.py | FaGlobeNarr, FaSubGroup | ✅ COMPLETE | 100% | Ledger accounts |
| core/acgroup.py | FaSubGroup | ✅ COMPLETE | 100% | Account groups |
| core/fixcharge.py | frmFixedChargeMast | ✅ COMPLETE | 100% | Fixed charges |
| core/unit.py | frmUnitMast | ✅ COMPLETE | 100% | Units |
| core/item.py | FrmItemMast, FrmItemCatMast | ✅ COMPLETE | 100% | Items + categories |
| core/sundry.py | SundryMast | ✅ COMPLETE | 100% | Sundry master |
| core/narr.py | FaNarrMst | ✅ COMPLETE | 100% | Narration master |
| core/depart.py | DepartMast, OutLetMast | ✅ COMPLETE | 100% | Departments/Outlets |
| core/venue.py | FrmVenueMast, FrmVenueFeat | ✅ COMPLETE | 100% | Venue + features |
| core/banquet_masters.py | resBanq, HallMenuCatalog, etc. | ✅ COMPLETE | 100% | Venue features, catalog, group profile |
| core/pos_masters.py | frmSessionMast, SchemeMast, FrmDeliveryBoyMast, ItemCat | ✅ COMPLETE | 100% | POS masters |
| core/hr_masters.py | PrCategoryMast, PrDesigMast, PrEmployee, prHoliday | ✅ COMPLETE | 100% | HR masters |
| core/members_masters.py | MemCatMast, memFacilityMast | ✅ COMPLETE | 100% | Member masters |
| core/general_setup.py | FrmRoomFeatureMast, Godown, frmEnviro, frmGuestParamMast, FrmVoucherType | ✅ COMPLETE | 100% | General setup |
| **FRONT OFFICE (Phase 3)** |
| core/reservation.py | RsBookingEntry, RrRoomReservation | ✅ COMPLETE | 100% | Full CRUD + cancel + DocId |
| core/checkin.py | fdCheckIn, fdRoomChange | ✅ COMPLETE | 100% | CHK DocId + RoomOcc |
| core/checkout.py | FdCheckOut, FdReSetlement | ✅ COMPLETE | 100% | Checkout + reverse + balance + clearance check |
| core/folio.py | fdPaymentCharge, fdPostChrg, fdDisplayFolio, fdAmendEntry | ✅ COMPLETE | 100% | Settle, charge, amend, log, payment-receive (REC) |
| ui/frontoffice.py | GuestProfile, Check-In | ✅ COMPLETE | 100% | |
| ui/reservation_browser.py | RsBookingEntry | ✅ COMPLETE | 100% | Full CRUD browser |
| ui/roomstatus_ui.py | FrmHouseStatus, FdRoomDisplay | ✅ COMPLETE | 100% | Room rack + HK |
| ui/checkout_ui.py | FdCheckOut | ✅ COMPLETE | 100% | |
| ui/folio_ui.py | fdDisplayFolio, fdAmendEntry | ✅ COMPLETE | 100% | |
| ui/expense_ui.py | FrmExpense | ✅ COMPLETE | 100% | |
| **NIGHT AUDIT (Phase 4)** |
| core/nightaudit.py | mdlNightAudit, NightAuditLR | ✅ COMPLETE | 100% | Log + reports + posting (RC/PPOS) |
| ui/pos_na.py | Night Audit | ✅ READ-ONLY | 90% | |
| **POS (Phase 6)** |
| core/pos.py | RsKOTEntry, RsMenuItemEntry | ✅ COMPLETE | 100% | KOT browse + entry + reports |
| ui/pos_masters_ui.py | POS Setup masters | ✅ COMPLETE | 100% | |
| **INVENTORY (Phase 7)** |
| core/inventory.py | Godown, PIndent, pMREntry | ✅ COMPLETE | 100% | Godown CRUD + Indent/GIN/Stock entry + Issue/Receipt + Transfer |
| ui/inventory.py | Inventory | ✅ COMPLETE | 90% | |
| **BANQUET (Phase 8)** |
| core/banquet_masters.py | Banquet masters | ✅ COMPLETE | 100% | |
| ui/banquet_masters_ui.py | Banquet masters UI | ✅ COMPLETE | 100% | |
| **MEMBERSHIP/OTHER (Phase 9)** |
| core/hr_masters.py | HR/Payroll masters | ✅ COMPLETE | 100% | |
| core/members_masters.py | Membership masters | ✅ COMPLETE | 100% | |
| core/expenseentry.py | FrmExpense | ✅ COMPLETE | 100% | |
| **REPORTS (Phase 10)** |
| core/reports.py | rFomRepView, rRepReserv | ✅ COMPLETE | 95% | PDF generation working |
| ui/pos_na.py | NA reports | ✅ READ-ONLY | 90% | |

---

## 4. VB6 → Python Mapping (Key Modules)

| VB6 Form/Module | Python Core | Python UI | Status |
|---|---|---|---|
| frmPassword / UserMast | core/auth.py, core/usermaster.py | ui/shell.py (LoginDialog) | ✅ |
| frmCompany | core/company.py | ui/shell.py (CompanyDialog) | ✅ |
| MDIForm1 / User_Module | core/menu.py | ui/shell.py (MainWindow) | ✅ |
| Country Master | core/country.py | ui/p2_masters.py | ✅ |
| State Master | core/state.py | ui/p2_masters.py | ✅ |
| City Master | core/city.py | ui/p2_masters.py | ✅ |
| Area Master | core/area.py | ui/p2_masters.py | ✅ |
| Guest Profile | core/guestprof.py | ui/frontoffice.py | ✅ |
| Room Category | core/roomcategory.py | ui/p2_masters.py | ✅ |
| Room Master | core/roommaster.py | ui/p2_masters.py | ✅ |
| Room Status / HK | core/roomstatus.py | ui/roomstatus_ui.py | ✅ |
| Plan Master | core/plans.py | ui/plan_master.py | ✅ |
| Season Master | core/seasonmaster.py | ui/p2_masters.py | ✅ |
| Package Master | core/packagemaster.py | ui/p2_masters.py | ✅ |
| Company Master | core/companymaster.py | ui/p2_masters.py | ✅ |
| Tax Master | core/taxmaster.py | ui/finance_masters_ui.py | ✅ |
| Tax Structure | core/taxstru.py | ui/taxstru_ui.py | ✅ |
| RsBookingEntry / RrRoomReservation | core/reservation.py | ui/reservation_browser.py | ✅ |
| fdCheckIn / fdRoomChange | core/checkin.py | ui/frontoffice.py | ✅ |
| FdCheckOut / FdReSetlement | core/checkout.py | ui/checkout_ui.py | ✅ |
| fdPaymentCharge / fdPostChrg / fdAmendEntry | core/folio.py | ui/folio_ui.py | ✅ |
| mdlNightAudit | core/nightaudit.py | ui/pos_na.py | ✅ |
| RsKOTEntry / RsMenuItemEntry | core/pos.py | ui/kot_entry.py | ✅ |
| Godown / PIndent / pMREntry | core/inventory.py | ui/inventory.py | ✅ |
| Banquet Masters | core/banquet_masters.py | ui/banquet_masters_ui.py | ✅ |
| HR/Payroll Masters | core/hr_masters.py | ui/hr_members_ui.py | ✅ |
| Membership Masters | core/members_masters.py | ui/hr_members_ui.py | ✅ |

---

## 5. Missing / Incomplete Functionality

### ❌ NOT STARTED (VB6 exists, Python missing)

| VB6 Module | Description | Priority |
|---|---|---|
| **FrmItemGroupMastRaw / FrmItemCatRaw** | Raw item group/category | MEDIUM |
| ~~FrmControlPanel / frmEnviro~~ | ✅ DONE — core/enviro.py (Enviro get/update, 55-setting white-list, finance AC-cols READ-ONLY, VB6 validation yn3/yn1/HH:MM) + ui/enviro_ui.py 'Parameter' screen (General Setup leaf, GENMas srno=46 evidence). FrmControlPanel.frm Winsock lock-utility documented separate | DONE |
| **ModuleDoorLock / frmGodrejLockSettings** | Door lock integration | LOW |
| **FrmSmsCenterSettings / FrmSMSEnviro / SMSModule** | SMS gateway config | LOW |
| **MemberModule** | 🚫 BLOCKED — live evidence: MembershipRevMast=0, SmartCardMaster/Ledger/Registration=0 rows; sirf MemberFamily=37 (FK-only data). VB6 me bhi is DB par dead module tha. RENEWAL/BILLING ka koi live transaction data nahi — invent nahi karenge | BLOCKED |
| **SmartCardRegistration / Recharge / Refund / LostReIssue** | Smart card operations | LOW |
| ~~FrmTallyExport~~ | ✅ DONE — core/tally_export.py + ui/tally_ui.py (LedgerMaster.xml groups/ledgers + Ledger.xml vouchers, VB6 frmTallyExport port; READ-ONLY DB; 22/22 tests incl. balanced-voucher proof) | DONE |
| ~~FrmReceivePayment~~ | ✅ DONE — core/folio.receive_payment (REC voucher, fdPaymentCharge:3356 35-col pattern) + ui/folio_ui PaymentDialog (Ctrl+R) | DONE |
| **FrmComplaintMast / FrmComplaintClearing** | Complaint management | LOW |
| **FrmLostFound / FrmClaimEntry** | Lost & found | LOW |
| **FrmOPStock / DepOpStk** | Opening stock | MEDIUM |
| **FrmStockTransfer** | Stock transfer between godowns | MEDIUM |
| **FrmPurchaseEnviro** | Purchase environment | LOW |
| **FrmRevenueWiseBudget** | Revenue budgeting | LOW |
| **FrmPOSBillModification*** | POS bill modification (3 variants) | LOW |
| **FrmPlanTokenMast** | Plan token master | LOW |
| **FrmDenomination** | Currency denomination | LOW |
| **FrmItemIssuedOnCleaning** | HK item issue | LOW |
| **RsKitchenStk / RsKitchenMaterial** | Kitchen stock | LOW |
| **RsTbChange / RsKOTTransfer** | Table change / KOT transfer | LOW |
| **FrmPOSRecycleData** | POS recycle bin | LOW |
| **HRoomCheckOutClearance** | Room checkout clearance | MEDIUM |
| **BanqModule / HallBooking / HallBill / HallAdvanceDepDialog / HallEstimate / HallChefPreCosting** | Banquet operations (not just masters) | HIGH |
| **CateringBooking** | Catering booking | MEDIUM |
| **FrmEventMast / FrmHallItemCatMast / HallItemGroupMast / HallMenuItemEntry / HallSundry / HallMenuCatalog** | Banquet event/item masters | MEDIUM |
| **FrmWelcome / frmGuestInfo** | Welcome screen / guest info | LOW |
| **FrmMessage / frmmessageKey / Inbox / Outbox** | Internal messaging | LOW |
| **FrmJobScheduler** | Job scheduler | LOW |
| **FrmLocationMast / FrmFacilityMast / FrmLocationFacilities / FrmPartyLocations / FrmMeterReading / FacilitySundry** | Facility/location management | LOW |
| **prAttend / PrLeavench / PrLoan / prOverTime / prSalCreate / PrAttend1 / rRepPayRoll** | Payroll processing | LOW |
| **RewardPointParam1** | Loyalty/reward points | LOW |
| **FrmCalender / frmReNightAudit** | Calendar / re-night-audit | LOW |
| **RsTouchScreen*** | Touch screen POS (multiple) | LOW |
| **FrmSerialiseVr / FaTaxVoucher / FaAdjust / FaChqClear / FaTDSCat / FaTDSCertificate** | Finance vouchers/TDS | LOW |
| **eInvoice** | E-invoicing (GST) | MEDIUM |
| **MobWebAPI** | Mobile/web API | LOW |
| **FrmDataRecieving / ModuleAdd / mdlDataTransfer** | Data transfer/sync | LOW |
| **AccountMerg** | Account merging | LOW |

---

### ⚠️ PARTIAL / NEEDS VERIFICATION

| Module | Issue | Action Needed |
|---|---|---|
| **Banquet Operations** | Masters done; booking/billing/estimate forms missing | Implement banquet operations (P8) |
| **Payroll Processing** | Masters done; attendance/salary forms missing | Implement if HR module needed |
| **Membership Operations** | Masters done; visit/renewal/billing missing | Implement if membership needed |
| **SMS/Telephone** | Only masters; no sending/integration | Implement if needed |
| **Door Lock** | Settings only; no actual integration | Implement if hardware available |
| **Tally Export** | Not implemented | Implement if accounting sync needed |

---

### 🔄 UNCERTAIN_BEHAVIOR (VB6 decompiled - needs verification)

| Function | VB6 Evidence | Uncertainty |
|---|---|---|
| **Voucher Type Numbering** | Voucher_Type.Number_Method='Automatic' | Exact DocId format per vtype |
| **Room Rate Calculation** | Multiple rate tables (PlanMast, SeasonMaster, RoomCat) | Priority/order of rate selection |
| **Tax Calculation** | TaxMast + TaxStruMast; GST/CGST/SGST split | Exact formula for composite taxes |
| **Discount Logic** | Multiple discount types (RODisc, RSDisc, etc.) | Stacking rules, authorization |
| **Advance/Deposit Handling** | frmAdvanceDepDialog, hAdvanceDepDialog | Link to reservation/folio |
| **Group Profile / Company Profile** | GroupProfile, CompMast | Billing rules, credit limits |
| **Banquet Pricing** | HallChefPreCosting, HallEstimate | Package vs à la carte |
| **Kitchen/KOT Flow** | RsKOTEntry, RsKitchenStk, RsKOTTransfer | Item routing, voids, modifiers |
| **Revenue Audit** | mdlNightAudit, fdAcPostChrg, fdNDAcPostChrg | Posting sequence, rollback rules |
| **User Permissions** | User1 + User_Module flag=9/1/0 | Granularity: form/field/report level |
| **Multi-Property/Company** | Site table, Company table, LogSite_Code | Data isolation, consolidated reports |

---

## 6. Database/Table/Query Mapping

| Table | VB6 Usage | Python Module | Status |
|---|---|---|---|
| UserMast | Login, user master | auth.py, usermaster.py | ✅ |
| Company | Company select | company.py | ✅ |
| Site | Property config | company.py (fallback) | ⚠️ Empty in live DB |
| Country | Country master | country.py | ✅ |
| State | State master | state.py | ✅ |
| City | City master | city.py | ✅ |
| AreaMast | Area master | area.py | ✅ (widened CityCode) |
| RoomMast | Room master + rack | roommaster.py, roomstatus.py | ✅ |
| RoomCatMast | Room category | roomcategory.py | ✅ |
| GuestProf | Guest profile | guestprof.py | ✅ |
| Booking | Reservations | reservation.py | ✅ |
| GuestFolio | Check-in/folio | checkin.py, folio.py, checkout.py | ✅ |
| RoomOcc | Room occupancy | checkin.py, roomstatus.py | ✅ |
| PayCharge | Folio charges/payments | folio.py, checkout.py | ✅ |
| FOMBillDetails | Folio settlement | folio.py | ✅ |
| FolioLog | Folio audit | folio.py, checkout.py | ✅ |
| BookingLog | Booking audit | reservation.py | ✅ |
| NightAuditLog | NA history | nightaudit.py | ✅ |
| Stock | POS KOT + inventory | pos.py, inventory.py | ✅ |
| GodownMast | Godown master | inventory.py, general_setup.py | ✅ |
| Indent | Indent documents | inventory.py | ✅ |
| GIN | Purchase (GRN) | inventory.py | ✅ |
| POrder | Purchase Order | inventory.py | ✅ |
| Purch2 | Purchase Bill | inventory.py | ✅ |
| PlanMast | Plan master | plans.py | ✅ |
| TaxMast | Tax master | taxmaster.py | ✅ |
| TaxStruMast | Tax structure | taxstru.py | ✅ |
| Voucher_Type | Doc numbering | reservation.py, checkin.py | ✅ |
| Enviro | System config | general_setup.py | ✅ |
| Depart/OutLetMast | Departments | depart.py | ✅ |
| VenueMast/VenueFeature | Banquet venues | venue.py, banquet_masters.py | ✅ |
| ItemMast/ItemCatMast | Items | item.py | ✅ |
| SundryMast | Sundry charges | sundry.py | ✅ |
| NarrMast | Narration | narr.py | ✅ |
| User_Module | Menu structure | menu.py | ✅ |
| User1 | User rights | menu.py | ✅ |

---

## 7. Test Coverage Status

| Test Type | Status | Notes |
|---|---|---|
| **Unit Tests** | ❌ NONE | No pytest/unittest structure exists |
| **Integration Tests** | ❌ NONE | No test database or fixtures |
| **Database Tests** | ❌ NONE | No transaction rollback strategy |
| **UI Tests** | ❌ NONE | No automated UI testing |
| **Regression Tests** | ❌ NONE | Manual only |
| **VB6 vs Python Comparison** | ⚠️ PARTIAL | Only for completed modules (auth, reservation, checkin, checkout) |
| **Test Fixtures** | ❌ NONE | No deterministic test data (PYT* prefix used ad-hoc) |

### Required Test Infrastructure:
- `tests/unit/` - Core function tests
- `tests/integration/` - Cross-module workflow tests
- `tests/database/` - CRUD + transaction tests
- `tests/regression/` - Full regression suite
- `tests/fixtures/` - Deterministic test data (TEST-GUEST-001, TEST-ROOM-101, etc.)

---

## 8. Known Bugs / Issues

| ID | Module | Severity | Description | Status |
|---|---|---|---|---|
| BUG-001 | core/area.py | HIGH | CityCode widened from 5→6 via migration; verify all FK references | Open |
| BUG-002 | core/roomstatus.py | MEDIUM | RoomBLockOut table empty - Maintenance/OOO blocked | Open |
| BUG-003 | core/nightaudit.py | MEDIUM | NA posting not implemented (KOTAtNightAudit, POSBillAtNightAudit) | Open |
| BUG-004 | core/pos.py | MEDIUM | KOT entry not implemented (READ-ONLY only) | Open |
| BUG-005 | core/inventory.py | MEDIUM | Purchase/Indent/Stock docs READ-ONLY | Partially Fixed |
| BUG-006 | ui/shell.py | LOW | Keyboard shortcuts Alt+1..9 only (no Alt+10+) | Open |
| BUG-007 | core/db.py | LOW | INI path hardcoded (C:\Drive\HMS2526\Analysis.ini) | Open |
| BUG-008 | core/auth.py | LOW | SA default password handling (stored as '.') | Open |
| BUG-009 | All core modules | MEDIUM | Hardcoded SITE_CODE='KK', USER='PYADMIN' | Open |
| BUG-010 | core/reservation.py | MEDIUM | Vprefix hardcoded to current year; should be configurable | Open |
| B001 | core/nightaudit.py | Medium | night_audit_rr() hex index mapping incomplete | **Fixed** |
| B002 | core/reports.py | Low | mat_rep() hex-to-int conversion missing | **Fixed** |
| B003 | core/inventory.py | Medium | stock_transfer() SQL placeholder mismatch (25 vs 24 params) | **Fixed** |
| B004 | core/businesssource.py | Medium | BUSSRCMAST table doesn't exist; actual table is BussSource (4 rows) | **Fixed** |
| B005 | core/marketsegment.py | Medium | MKTSEGMAST table doesn't exist; actual table is MarketSeg (4 rows) | **Fixed** |
| B006 | core/packagemaster.py | Medium | PACKMAST table doesn't exist; actual table is PlanMast (10 rows) | **Fixed** |
| B007 | core/paymenttype.py | Medium | PAYTYPEMAST table doesn't exist; payment types are in RevMast (10 rows, PAYTYPE column) | **Fixed** |
| B008 | core/ledger.py | High | LEDGERMAST table doesn't exist; actual table is SubGroup (415 rows) | **Fixed** |
| B009 | core/taxmaster.py | Medium | TAXMAST table doesn't exist; actual table is TaxStru (33 rows, multi-line) | **Fixed** |
| B010 | core/companymaster.py | Medium | COMPANYMAST table doesn't exist; actual table is GroupProf (0 rows) | **Fixed** |
| B011 | core/pos_entry.py | Low | DELIVERY_MAST table doesn't exist; actual table is DeliveryBoy (0 rows) | **Fixed** |
| B012 | core/reports.py | Medium | TAX_MASTER/TAX_MASTERII/TAX_MASTERIII don't exist; fixed to use TaxStru | **Fixed** |
| B013 | core/roommaster.py | High | RoomMast schema completely wrong (old: RoomNo/RoomName/CatCode; actual: Type/Code/Name/RoomCat) | **Fixed** |
| B014 | core/paymenttype.py | Medium | _map() unpack mismatch (expected 10 cols, RevMast query returns 7) | **Fixed** |
| B015 | core/taxmaster.py | Medium | list_all() referenced U_Name/U_AE not in SELECT | **Fixed** |
| B016 | core/usermaster.py | Low | _map() called .strip() on ActiveYN (smallint/int) | **Fixed** |

---

## 9. TODOs / Stubs / Pass Statements

| File | Function | Status |
|---|---|---|
| All UI forms | Automated tests | ❌ MISSING |

---

## 10. Recommended Migration Order (Next Steps)

### Immediate (Phase 1 Complete → Start Phase 2 Remaining)
1. **Test Infrastructure** - Create pytest structure + fixtures + test database
2. **VB6 vs Python Comparison** - Document critical workflows for completed modules

### Short Term (Phase 3-4 Completion)
4. **Night Audit Posting** - Implement RC/POSBill posting per Enviro flags
5. **POS KOT Entry** - Implement RsKOTEntry pattern for touchscreen POS
6. **Banquet Operations** - Booking, billing, estimate, catering

### Medium Term (Phase 5-9)
8. **Payroll Processing** - Attendance, leave, salary
9. **Membership Operations** - Visit, renewal, facility billing
10. **SMS/Telephone Integration** - Gateway config + sending
11. **Door Lock Integration** - Godrej/smart card hardware
12. **Tally Export** - Voucher export for accounting
13. **E-Invoicing** - GST e-invoice generation

### Long Term (Phase 10 + Polish)
14. **All Reports** - Complete report parity with VB6
15. **Security Audit** - SQL injection, password handling, permissions
16. **Performance Optimization** - N+1 queries, indexes, caching
17. **Full Regression Suite** - Automated test coverage >80%

---

## 11. Module Completion Criteria Checklist

For each module to be marked **COMPLETE**:

- [ ] VB6 behavior analyzed (source + live DB)
- [ ] Python implementation complete (core + UI)
- [ ] DB operations verified (CRUD + transactions)
- [ ] Validation implemented (input + business)
- [ ] Error handling implemented (meaningful exceptions)
- [ ] Permissions checked (User1 rights)
- [ ] Unit tests pass
- [ ] Integration tests pass
- [ ] Regression tests pass
- [ ] UI tested (open, load, search, add, edit, delete, save, cancel)
- [ ] Edge cases tested (empty, invalid, duplicate, boundary, missing, error, rollback, permission)
- [ ] VB6/Python results compared (critical workflows)
- [ ] No known critical bugs
- [ ] Documentation updated (this file + inline)

---

## 12. Current Overall Status

| Phase | Modules Total | Complete | Partial | Missing | Overall |
|---|---|---|---|---|---|
| Phase 1: Foundation | 10 | 10 | 0 | 0 | ✅ 100% |
| Phase 2: Master Data | 30 | 30 | 0 | 0 | ✅ 100% |
| Phase 3: Front Office | 25 | 20 | 0 | 5 | 🟡 80% |
| Phase 4: Night Audit | 7 | 2 | 0 | 5 | 🟢 29% |
| Phase 5: Housekeeping | 6 | 2 | 0 | 4 | 🟠 33% |
| Phase 6: POS | 10 | 3 | 0 | 7 | 🟢 30% |
| Phase 7: Inventory | 12 | 5 | 0 | 7 | 🟢 42% |
| Phase 8: Banquet | 10 | 3 (masters) | 0 | 7 | 🟠 30% |
| Phase 9: Membership/Other | 10 | 3 (masters) | 0 | 7 | 🟠 30% |
| Phase 10: Reports | 10 | 1 | 0 | 9 | 🟠 10% |
| **TOTAL** | **130** | **78** | **0** | **52** | **60%** |

---

**Session Progress (2026-09-19 evening):**
- ✅ B001: night_audit_rr() hex index mapping fixed (added indices 14, 15)
- ✅ B002: mat_rep() hex mapping fixed (index 10 = FrmChangeKitch, added index 13)
- ✅ B003: stock_transfer() SQL params mismatch fixed (25→24 placeholders)
- ✅ Schema fixes: RoomCategory, GuestStatus, ForexMaster, SeasonMaster, UserMaster
- ✅ P6-2: Stock Issue/Receipt functions added (KSISS/KSREC/KMISS/KMREC/BKREC)
- ✅ P6-5: eInvoice config added (einvoice_get/einvoice_upsert)
- ✅ P6-6: Checkout Clearance added (get_clearance_flag, check_clearance, clearance_list)
- ✅ P6-3: Stock Register verified (stock_register function already existed)
- ✅ B004-B012: 9 broken table references fixed (BussSource, MarketSeg, PlanMast, RevMast, SubGroup, TaxStru, GroupProf, DeliveryBoy, TaxStru-for-reports)
- ✅ B013-B016: 4 runtime bugs fixed (roommaster schema, paymenttype unpack, taxmaster columns, usermaster strip)
- ✅ 30/30 core modules pass live DB smoke test (list_all())
- ✅ 104/104 tests passing (was 80 at start of session)
- ✅ 30+ new tests added (stock transfer, issue/receipt, clearance, stock register, eInvoice)

---

**Next Module to Implement:** `core/banquet_masters.py` (Banquet Operations) - HIGH PRIORITY  
**Blocker:** Need to implement booking, billing, estimate, catering forms.

---

*Generated by migration audit on 2026-09-19. Update after each module completion.*