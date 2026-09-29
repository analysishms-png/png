# MAIN SETUP MODULE

## 1. Purpose

Main Setup module HMS ka central configuration hub hai. Yahan se saare modules ke masters, parameters, aur environment settings manage hote hain. Is module ke bina koi bhi transaction module properly kaam nahi kyunki saare masters (Room, Item, Tax, Payment, etc.) yahin define hote hain.

**Evidence:** [VERIFIED-VB6] — 124 menu items (sabse zyada count), 6 sub-groups: General Setup, Front Office Setup, Point of Sale Setup, Banquet, Members Mgmt Setup, Material Mgmt Setup, PayRoll Setup, EPABX Setup, Financial Setup, Utility.

## 2. Menu Structure (from MENU_INVENTORY.md)

```
Main Setup (C)
├── General Setup
│   ├── Member Select Category
│   ├── Tax Master
│   ├── Tax Structure
│   ├── Payment Type
│   ├── Parameter
│   ├── Revenue Group Setting
│   ├── Printing Parameters
│   ├── Printing Setup
│   └── Revenue Wise Budget Entry
├── Front Office Setup
│   ├── Country Master
│   ├── State Master
│   ├── City Master
│   ├── Market Segment
│   ├── Business Source
│   ├── Guest Status
│   ├── Charge Master
│   ├── Fixed Charge
│   ├── Package Master
│   ├── Plan Master
│   ├── Season Master
│   ├── Room Features
│   ├── Room Category
│   ├── Room Master
│   ├── Company Master
│   ├── Forex Master
│   ├── Guest History
│   └── Room Display
├── Point of Sale Setup
│   ├── Item List
│   ├── Scheme Master
│   ├── Server Master
│   ├── Setup Outlet
│   ├── Table Master
│   ├── Menu Group
│   ├── Menu Category
│   ├── Menu Item
│   ├── Outlet Bill Sundry Setting
│   ├── Menu Item Rate
│   ├── Session Master
│   ├── Open Item Consumption
│   ├── Happy Hours
│   ├── Happy Hours [Fee Items]
│   ├── Combo Pack
│   ├── NC Type
│   └── Customer History
├── Banquet (Indoor Catering)
│   ├── Events
│   ├── Venue Features
│   ├── Venue Master
│   ├── Menu Category
│   ├── Item Group
│   ├── Menu Item
│   ├── Catalog Master
│   └── Banquet Bill Sundry Setting
├── Members Mgmt Setup
│   ├── Category Master
│   ├── Member Master
│   ├── Corporate Member Master
│   ├── Revenue Master
│   ├── Facility Master
│   ├── Category wise Revenue
│   ├── Category wise Facility
│   ├── Environment Settings
│   ├── Member Age Wise Revenue
│   └── Member Bill Sundry Setting
├── Material Mgmt Setup
│   ├── Party Master
│   ├── Department
│   ├── Item Group
│   ├── Item Category
│   ├── Item Entry
│   ├── Purchase Sundry Setting
│   ├── Opening Stock
│   ├── Item List
│   ├── Enviro Inventry
│   └── Consumption Master
├── PayRoll Setup
│   ├── Designation Master
│   ├── Category Master
│   ├── Holiday Master
│   └── Employee Master
├── EPABX Setup
│   ├── Call Type Master
│   ├── Extension Master
│   └── Call Codes Master
├── Financial Setup
│   ├── Group Accounts
│   ├── Ledger Accounts
│   ├── Narration Master
│   ├── T.D.S. Category
│   ├── FA Environment
│   ├── Voucher Environment
│   ├── Year End Updation
│   ├── Current Balance Updation
│   ├── Country Master
│   ├── State Master
│   ├── City Master
│   ├── Delete Message
│   ├── Account Merging
│   └── Voucher Serialisation
└── Utility
    ├── User Master
    ├── Permissions
    ├── Backup Data
    ├── Sundry Master
    ├── Inconsistency Check
    ├── Year End Updation
    ├── Menu Item Copy
    ├── Guest B'Day/Anniversary LookUp
    ├── Country Master
    ├── State Master
    ├── City Master
    ├── Company Master
    ├── Department
    ├── Ledger Accounts
    ├── Unit Master
    ├── Data Transfer
    ├── POS Bill Deletion
    ├── Data Transfer (POS)
    ├── PLU File (W.Scale)
    └── POS Recycle
```

## 3. Screens (from vb6_form_inventory.md)

### Core/MDI Forms
- **UserMast** — User creation/management
- **UserPermission** — Per-user module/screen permissions
- **ModuleAdd** — Module assignment to users
- **frmCompany** — Company selection (login ke baad)
- **frmEnviro** — Environment settings (site-wide config)
- **frmSessionMast** — Session management
- **frmYearEnd** — Year-end closing
- **FrmControlPanel** — Control panel
- **FrmChangeSite** — Site switching
- **FrmChangeDepart** — Department/outlet switching
- **frmMod_Print / frmMod_Print1 / frmPrintModule** — Module-wise printing
- **FrmJobScheduler** — Background job scheduler
- **FrmUploadProcess** — Data upload
- **FrmDataRecieving** — Data receiving
- **FrmSerialiseVr** — Voucher serialization
- **Transfer** — Data transfer
- **CompMast** — Company master

### General Setup Forms
- **FrmTaxMast** — Tax master (TaxMast.ttx / TaxMast.RPT)
- **FrmTaxStruMast** — Tax structure master
- **FrmPayTypeMast** — Payment type master (PayTypeMast.ttx / PayTypeMast.RPT)
- **SundryMast** — Sundry master
- **SundryVType** — Sundry voucher type
- **DepartMast** — Department master
- **DepartSundry** — Department sundry settings
- **FacilitySundry** — Facility sundry settings
- **OutLetMast** — Outlet master
- **OutLetSundry** — Outlet sundry settings
- **VoucherSundrySetting** — Voucher sundry setting

### Front Office Setup Forms
- **FrmChargeMast** — Charge master
- **FrmPlanPackMast** — Plan/package master
- **FrmPlanTokenMast** — Plan token master
- **frmSeasonMast** — Season master
- **frmFixedChargeMast** — Fixed charge master
- **FrmPackageMast** — Package master
- **FrmParty** — Party master
- **FrmPartyLocations** — Party locations
- **FrmGuestStat** — Guest status master
- **frmGuestParamMast** — Guest parameter master
- **GuestProfile** — Guest profile
- **GroupProfile** — Group profile
- **FrmInc** — Income master
- **FrmImage** — Image management
- **FrmBdayLookup** — Birthday lookup
- **FrmLostFound** — Lost & found
- **FrmComplaintMast** — Complaint master
- **FrmComplaintClearing** — Complaint clearing
- **FrmMergeCharge** — Merge charge
- **FrmRevMergeCharge** — Reverse merge charge
- **frmBlockMast** — Block master

### Reservation Setup Forms
- **FrmRoomCatMast** — Room category master
- **FrmRoomMast** — Room master
- **FrmRoomFeatureMast** — Room features master
- **FrmLocationMast** — Location master
- **FrmLocationFacilities** — Location facilities
- **FrmVenueMast** — Venue master
- **FrmVenueFeat** — Venue features
- **frmRevGroup** — Revenue group
- **FrmMarketSeg** — Market segment
- **FrmBusinessSrc** — Business source

### Finance Setup Forms
- **FaVtype** — Voucher type
- **FaSubGroup** — Sub-group (accounts/parties)
- **FaNarrMast** — Narration master
- **FaTDSCat** — TDS category
- **FaCityMast** — City master (Finance)
- **FaCountryMast** — Country master (Finance)
- **FaStateMast** — State master (Finance)
- **FaEnvron** — Finance environment
- **AccountMerg** — Account merging
- **FaCurrBalUpdate** — Current balance update

## 4. Masters

| Master | Table | Evidence |
|--------|-------|----------|
| Tax Master | TaxStru | [VERIFIED-VB6] |
| Tax Structure | TaxStru | [VERIFIED-VB6] |
| Payment Type | PayTypeMast | [VERIFIED-VB6] |
| Parameter | Enviro (221+ columns) | [VERIFIED-VB6] |
| Room Category | RoomCat | [VERIFIED-VB6] |
| Room Master | RoomMast | [VERIFIED-VB6] |
| Room Features | RoomFeatureMast | [VERIFIED-VB6] |
| Plan Master | PlanMast | [VERIFIED-VB6] |
| Package Master | PackageMast | [VERIFIED-VB6] |
| Season Master | SeasonMast | [VERIFIED-VB6] |
| Fixed Charge | FixedCharge | [VERIFIED-VB6] |
| Charge Master | RevMast | [VERIFIED-VB6] |
| Market Segment | MarketSeg | [VERIFIED-VB6] |
| Business Source | BussSource | [VERIFIED-VB6] |
| Guest Status | GUESTSTAT | [VERIFIED-VB6] |
| Company Master | SubGroup | [VERIFIED-VB6] |
| Forex Master | FrmForeignExMast | [VERIFIED-VB6] |
| Item Master | ItemMast | [VERIFIED-VB6] |
| Item Category | ItemCatMast | [VERIFIED-VB6] |
| Item Group | ItemGrp | [VERIFIED-VB6] |
| Unit Master | UnitMast | [VERIFIED-VB6] |
| Godown Master | GodownMast | [VERIFIED-VB6] |
| Department | Depart | [VERIFIED-VB6] |
| Employee | Employee | [VERIFIED-VB6] |
| Designation | PrDesigMast | [VERIFIED-VB6] |
| Category (HR) | PrCategoryMast | [VERIFIED-VB6] |
| Holiday | prHoliday | [VERIFIED-VB6] |
| Member Category | MemCatMast | [VERIFIED-VB6] |
| Member Master | MembershipMast | [VERIFIED-VB6] |
| Venue Master | VenueMast | [VERIFIED-VB6] |
| Function Type | FunctionType | [VERIFIED-VB6] |
| Ledger Accounts | Ledger | [VERIFIED-VB6] |
| Group Accounts | AcGroup | [VERIFIED-VB6] |
| Voucher Type | Voucher_Type | [VERIFIED-VB6] |
| Voucher Prefix | Voucher_Prefix | [VERIFIED-VB6] |
| Narration Master | FaNarrMast | [VERIFIED-VB6] |
| TDS Category | FaTDSCat | [VERIFIED-VB6] |
| Scheme Master | SchemeMast | [VERIFIED-VB6] |
| Table Master | RsTableMast | [VERIFIED-VB6] |
| Waiter Master | FrmWaiterMast | [VERIFIED-VB6] |
| Delivery Boy | FrmDeliveryBoyMast | [VERIFIED-VB6] |
| Server Master | Waiter | [VERIFIED-VB6] |
| Session Master | frmSessionMast | [VERIFIED-VB6] |
| Happy Hours | pHappyHours / NewHappyHours | [VERIFIED-VB6] |
| Combo Pack | ComboPack | [VERIFIED-VB6] |
| NC Type | NCType | [VERIFIED-VB6] |
| Sundry Master | SundryMast | [VERIFIED-VB6] |
| Sundry Type | SundryType | [VERIFIED-VB6] |
| Print Formats | PrintFormats | [VERIFIED-VB6] |
| User Master | userMast | [VERIFIED-VB6] |
| Permissions | User_Module | [VERIFIED-VB6] |
| Call Type | TelCallTypeMast | [VERIFIED-VB6] |
| Extension | TelExtensionMast | [VERIFIED-VB6] |
| Call Codes | TelCallCodeMast | [VERIFIED-VB6] |

## 5. Transactions

Main Setup me direct transactions nahi hote — yeh sirf configuration aur masters ka module hai. Lekin kuch utility operations hain:

- **Year End Updation** — Financial year closing
- **Current Balance Updation** — Ledger balance recalculation
- **Account Merging** — Ledger account merge
- **Voucher Serialisation** — Voucher number renumbering
- **Menu Item Copy** — Copy menu items across outlets
- **Data Transfer** — Inter-site data transfer
- **POS Bill Deletion** — Delete POS bills
- **POS Recycle** — Recycle POS data
- **Backup Data** — Database backup
- **Inconsistency Check** — Data integrity check

## 6. Operations

- **User Management** — User creation, password, permissions
- **Site Management** — Multi-site configuration (LogSite_Code)
- **Department/Outlet Switching** — FrmChangeDepart
- **Session Management** — frmSessionMast
- **Environment Settings** — frmEnviro (221+ Enviro columns)
- **Module Printing** — frmMod_Print / frmPrintModule
- **Job Scheduling** — FrmJobScheduler

## 7. Reports

Main Setup me koi direct reports nahi hain. Reports ke liye 17_Reports module dekhein.

## 8. Permissions

- **User Master** (userMast) — USER_NAME, PASSWD, LABEL, ActiveYN, ShortName, AllowDtChng [VERIFIED-VB6]
- **Permissions** (User_Module) — Per-user module access control [VERIFIED-VB6]
- **MenuHelp** table — Per-user + per-company menu hierarchy (OPT1..OPT4 columns) [VERIFIED-SQL]

## 9. Business Rules

1. **Multi-site architecture** — Har table me LogSite_Code column; site-specific data isolation [VERIFIED-VB6]
2. **Enviro table** — 221+ columns me site-wide settings (business date 'ncur', KOTAtNightAudit, POSBillAtNightAudit, etc.) [VERIFIED-VB6]
3. **Audit columns** — Har master/table me U_Name, U_EntDt, U_AE ('A'/'E'/'D') [VERIFIED-VB6]
4. **Voucher numbering** — Voucher_Type + Voucher_Prefix tables manage serial numbers per type per site [VERIFIED-VB6]
5. **DocId pattern** — varchar(21) = site-prefix + Vtype + serial [VERIFIED-VB6]
6. **Menu security** — MenuHelp table per-user + per-company menu control karta hai [VERIFIED-SQL]
7. **Company selection** — Login ke baad company select hoti hai; comp_code '2' selected [VERIFIED-SQL]
8. **LocationMast missing** — LocationMast table DB me nahi mila (BUG-001) [VERIFIED-SQL]

## 10. VB6 Logic (from EXTRAS.text)

### Form Loading Pattern
```vb
' Standard form load pattern (har master form ke liye)
global_52 = New FrmTaxMast
MemVar_1F81200 = FrmTaxMast.Menu.Caption
```

### Tax Master (FrmTaxMast)
- **File:** TaxMast.ttx / TaxMast.RPT [VERIFIED-VB6]
- **Grid:** DGTaxMast (DataGrid)
- **Operations:** Add/Edit/Delete via DGTaxMast events
- **Key fields:** Code, Name, TaxPer, OnAmt

### Tax Structure (FrmTaxStruMast)
- **File:** TaxStruMast.ttx / TaxStruMast.RPT [VERIFIED-VB6]
- **Grid:** DGTaxMast (shared with TaxMast)
- **Operations:** Tax structure composition (multiple taxes on amount)

### Payment Type (FrmPayTypeMast)
- **File:** PayTypeMast.ttx / PayTypeMast.RPT [VERIFIED-VB6]
- **Grid:** DGTaxMast (shared)
- **Key fields:** Code, Name, PayType

### Room Master (FrmRoomMast)
- **Key fields:** Code, Type='RO', roomStat, LogSite_Code [VERIFIED-VB6]
- **Room status:** 'D' = Dirty (Night Audit sets this) [VERIFIED-VB6]

### Room Category (FrmRoomCatMast)
- **Key fields:** Code, Name
- **Linked to:** RoomMast.RoomCat, RoomOcc.RoomCat

### Plan Master (FrmPlanPackMast)
- **Key fields:** Code, Name, Startdate, Enddate, FromTime, ToTime, Days, Active [VERIFIED-VB6]
- **Linked to:** RoomOcc.PlanCode, PlanMast.PlanDetails

### Scheme Master (SchemeMast)
- **Key fields:** Code, Name, Startdate, Enddate, FromTime, ToTime, Days, Active [VERIFIED-VB6]
- **SQL:** `Select Code,Name From SchemeMast Where ISNULL(Active,'')='Y' And (LOGSITE_CODE='<site>' or LOGSITE_CODE='HO') Order By Name` [VERIFIED-VB6]

### User Master (UserMast)
- **Key fields:** USER_NAME, PASSWD (obfuscated), LABEL, ActiveYN, ShortName, AllowDtChng [VERIFIED-VB6]
- **Login sequence:** COUNT(userMast) → SELECT USERMAST → AllowDtChng → User1⋈User_Module → company [VERIFIED-SQL]

### Environment (frmEnviro)
- **Key fields:** ncur (business date), ImprestAmount, KOTAtNightAudit, POSBillAtNightAudit, LogSite_Code [VERIFIED-VB6]
- **SQL:** `Select * From Enviro WHERE LOGSITE_CODE='KK'` — 3,770 reads, 50ms [VERIFIED-SQL]

## 11. SQL Logic (from SQL_TRACKING_RESULTS.md)

### Startup Normalization
```sql
-- PlanMast/RoomOcc/GrpBookingDetails ← RoomTaxStru backfill
-- ItemMast/ItemRate/Stock/StockLog/SplitStock ← MRP=IsNull(MRP,0)
-- RevMast Active/TaxInc defaults
-- Sale1/Sale1Log/SplitSale1/Paycharge/PaychargeLog ← AU_Name backfill
-- GuestReward/SmartCardRegistration reward-column normalization
-- Depart ← KOTAtNightAudit/CoverMandatory/MobileNoMandatory Enviro('KK') se sync
-- GuestProf FOM/POS flags backfill
-- MarketSeg/BussSource Active default
-- RoomDiscount Adult=1
-- Item←ItemMast CommodityCode sync
-- SunTranFacility Vtype '8'→'FACL'
-- FacilityBill1 LocationCode backfill
```

### Menu Engine
```sql
Select [Option] Name,OPT1..4 from MenuHelp 
Where Flag<>'V' And OPT1<>0 And OPT2=0... 
And UserName='SA' And CompCode='2' Order By Code
```

## 12. Tables (from DATABASE_INVENTORY.md)

| Table | Usage Count | Purpose |
|-------|-------------|---------|
| Depart | 1378 | Department/outlet master |
| Enviro | 226 | Site settings (221+ columns) |
| RoomMast | 310 | Room master |
| RoomCat | 223 | Room category |
| PlanMast | 321 | Tariff plan |
| PlanDetails | 194 | Plan details |
| ItemMast | 618 | Item master |
| ItemCatMast | 246 | Item category |
| ItemGrp | 223 | Item group |
| ItemRate | 70 | Item rate |
| UnitMast | 54 | Unit master |
| GodownMast | 130 | Godown master |
| TaxStru | 168 | Tax structure |
| SundryType | 187 | Sundry type |
| SundryMast | 136 | Sundry master |
| FixedCharge | 74 | Fixed charge |
| MarketSeg | 58 | Market segment |
| BussSource | 70 | Business source |
| MemCatMast | 79 | Member category |
| Employee | 112 | Employee master |
| VenueMast | 55 | Venue master |
| FunctionType | 47 | Function type |
| Ledger | 253 | Finance ledger |
| AcGroup | 114 | Account group |
| SubGroup | 741 | Account/party master |
| Voucher_Type | 563 | Voucher type |
| Voucher_Prefix | 434 | Voucher numbering |
| LASTVOU | 138 | Last voucher number |
| PrintFormats | 39 | Print formats |
| MenuHelp | 52 | Menu security |
| userMast | — | User master |
| User_Module | — | User permissions |
| company | — | Company master |
| RWParameter | 0 | Reward points parameter |
| SchemeMast | 0 | Scheme master |

## 13. Fields

### Key Fields (from columns_dictionary.txt)

**RWParameter (Reward Points):**
- Code (varchar(6)), SNo (smallint), Name (varchar(50)), Category (varchar(50))
- RPointOnAmt (float), RPoint (float), RPointValue (float)
- LimitLow (float), LimitUp (float), CompOperator (varchar(10))
- CondApp (varchar(25)), RedeemPer (float), AppUpToDiscPer (float)
- LimitAppOn (varchar(25)), PointEvalOn (varchar(25))

**SchemeMast:**
- Code (varchar(6)), Name (varchar(50)), Startdate (datetime), Enddate (datetime)
- FromTime (varchar(5)), ToTime (varchar(5)), Days (int), Active (varchar(1))

**GodownMast:**
- Code (varchar(6)), Name (varchar(25)), ShortName (varchar(6))
- DepartCode (varchar(6)), SysYn (varchar(1))

**Enviro (key columns):**
- ncur (business date), ImprestAmount, KOTAtNightAudit, POSBillAtNightAudit
- LogSite_Code, PurchaseGodown, StockRecGodown
- 221+ columns total

## 14. Workflow

```
Login → Company Selection → MDI Shell
  ↓
Main Setup (configuration)
  ├── General Setup → Tax, Payment, Parameters
  ├── Front Office Setup → Rooms, Plans, Charges, Companies
  ├── POS Setup → Items, Tables, Outlets, Menu
  ├── Banquet Setup → Venues, Events, Catalog
  ├── Members Setup → Categories, Revenue, Facilities
  ├── Material Setup → Items, Godowns, Departments
  ├── PayRoll Setup → Employees, Designations, Holidays
  ├── EPABX Setup → Extensions, Call Types
  ├── Financial Setup → Ledgers, Groups, Vouchers
  └── Utility → Users, Permissions, Backup, Transfer
```

## 15. Screenshots

Screenshots folder me available hain:
- `C2_Main_Setup__General_Setup__Parameter.png` — Parameter screen
- `C2_Main_Setup__General_Setup__Printing_.png` — Printing Parameters
- `C3_04_Main_Setup__General_Setup__Param.png` — Parameter screen
- `C3_05_Main_Setup__General_Setup__Print.png` — Printing Parameters
- `C3_S1_Main_Setup__General_Setup__Tax_M.png` — Tax Master
- `C3_03_Main_Setup__General_Setup__Payme.png` — Payment Type
- `C3_06_Main_Setup__General_Setup__Print.png` — Printing Setup
- `C3_S7_Main_Setup__Utility__Menu_Item_C.png` — Menu Item Copy
- `C3_S8_Main_Setup__Utility__Guest_LookU.png` — Guest LookUp

## 16. Test Cases

| Test Case | Description | Evidence |
|-----------|-------------|----------|
| TC-MS-001 | Tax Master create/edit/delete | [VERIFIED-VB6] |
| TC-MS-002 | Room Master create with Type='RO' | [VERIFIED-VB6] |
| TC-MS-003 | Plan Master with date range | [VERIFIED-VB6] |
| TC-MS-004 | User creation and permission assignment | [VERIFIED-VB6] |
| TC-MS-005 | Environment settings load (Enviro 221+ columns) | [VERIFIED-SQL] |
| TC-MS-006 | MenuHelp per-user menu hierarchy | [VERIFIED-SQL] |
| TC-MS-007 | Voucher serialization | [VERIFIED-VB6] |
| TC-MS-008 | Year End Updation | [VERIFIED-VB6] |
| TC-MS-009 | Data Transfer between sites | [VERIFIED-VB6] |
| TC-MS-010 | LocationMast missing (BUG-001) | [VERIFIED-SQL] |

## 17. Known Issues

1. **BUG-001:** LocationMast table missing in database — FrmLocationMast form exists but table nahi mila [VERIFIED-SQL]
2. **Duplicate menu items:** Country/State/City Master appear in multiple sub-groups (Front Office Setup, Financial Setup, Utility) — likely shared forms [VERIFIED-VB6]
3. **Enviro table width:** 221+ columns in single table — denormalized design [VERIFIED-VB6]
4. **RWParameter empty:** Table exists but 0 rows — reward points feature unused [VERIFIED-SQL]
5. **SchemeMast empty:** Table exists but 0 rows — scheme feature unused [VERIFIED-SQL]

## 18. Migration Notes

1. **Enviro table** — 221+ columns ko normalized karna chahiye (multiple config tables me split)
2. **MenuHelp** — Per-user menu hierarchy OPT1..OPT4 columns me hai — modern RBAC me convert karna hoga
3. **Voucher numbering** — Voucher_Type + Voucher_Prefix + LASTVOU system ko modern sequence generator se replace karna hoga
4. **Multi-site** — LogSite_Code pattern ko modern multi-tenant architecture (separate schemas/databases) me convert karna hoga
5. **User passwords** — PASSWD field obfuscated hai — modern hashing (bcrypt/Argon2) me replace karna hoga
6. **PrintFormats** — Table-based print format system ko modern reporting engine (SSRS/Power BI) se replace karna hoga
7. **Year End** — Year End Updation process ko modern accounting software ke closing procedures se align karna hoga
