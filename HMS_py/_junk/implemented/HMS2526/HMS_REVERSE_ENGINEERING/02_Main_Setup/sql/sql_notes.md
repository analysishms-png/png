# 02_Main_Setup - SQL notes

Evidence tags: `[VERIFIED-VB6]`, `[VERIFIED-SQL]`, `[INFERRED]`, `[UNKNOWN]`.
Companion statement file: `queries.sql`. Nothing here is ever executed from this folder.

## 1. Method

* Statements were pulled from the decompiled VB6 of every Main Setup object.
  A statement is attributed to an object only when the decompiler recorded it inside that
  object's range in `../../EXTRAS.text`. `[VERIFIED-VB6]`
* Row counts and column lists come from `../../18_Database/tables_rowcounts.txt` and
  `../../18_Database/columns_dictionary.txt` (MOONData2627). `[VERIFIED-SQL]`
* Primary keys come from `../../18_Database/indexes_pks.txt`
  (`Table|PKName|is_unique|is_primary|columns`; only `is_primary = 1` rows are used). `[VERIFIED-SQL]`
* Table names are matched **case-sensitively** against `columns_dictionary.txt`, because the
  dictionary is case-sensitive. `[VERIFIED-SQL]`

Totals:

| Metric | Value |
|---|---|
| Statements extracted | 2,047 |
| Objects (forms/modules) carrying SQL | 84 |
| Distinct tables touched | 146 |
| Distinct write targets (INSERT / UPDATE / DELETE) | **131** |
| Read-only references (FROM / JOIN only) | 18 |
| Declared foreign keys in the whole database | **0** (`foreign_keys.txt` is 0 bytes) |

## 2. Write-target inventory

`Refs` = number of statement occurrences. `Rows` = current row count in MOONData2627.
`PK` = declared primary key columns. `—` = not present in the extract.

| Table | Refs | Rows | PK |
|---|---:|---:|---|
| `ACGROUP` | 59 | 73 | ``ID,Site_Code`` |
| `AssignDelivery` | 2 | 0 | ``DocId`` |
| `Attend` | 4 | 1323 | ``V_Prefix,V_Date,Emp_Code`` |
| `Attendence` | 6 | 0 | ``Mth_Year,Emp_Code`` |
| `BOM` | 23 | 2048 | ``FinItem,RawSno,AppDate`` |
| `BudgetDetails` | 4 | 0 | ``SNo,Month_Year,LogSite_Code`` |
| `BussSource` | 11 | 6 | ``Code`` |
| `CatalogMast` | 17 | 0 | ``Code,ItemCode`` |
| `City` | 25 | 466 | ``CityCode`` |
| `ComboPackDetail` | 4 | 0 | — |
| `Comp_Inclusive` | 5 | 1 | ``CompanyCode,Inclusive`` |
| `Comp_PlanDet` | 6 | 8350 | — |
| `Country` | 28 | 13 | ``Code`` |
| `CreditCardhistory` | 2 | 0 | ``AppDate,TaxStru,CommPer,Site_Code`` |
| `Depart` | 72 | 73 | ``Code`` |
| `DepartPay` | 7 | 75 | ``RestCode,PayCode`` |
| `Desig` | 12 | 61 | ``Code`` |
| `EMPLOYEE` | 14 | 140 | ``Code`` |
| `Enviro` | 61 | 1 | ``LogSite_Code`` |
| `FAENVIRO` | 48 | 1 | — |
| `FeatureMast` | 12 | 0 | ``Code`` |
| `FixedCharge` | 21 | 1 | ``Code`` |
| `ForEx` | 12 | 0 | ``Code`` |
| `FreeItemDetail` | 5 | 0 | ``Code,SNo`` |
| `FunctionType` | 11 | 8 | ``Code`` |
| `GodownMast` | 19 | 70 | ``Code`` |
| `GroupCatalog` | 2 | 4 | — |
| `GuestFolio` | 13 | 11043 | ``DocId`` |
| `GuestFolioProfDetail` | 11 | 747 | ``Docid,GuestProf`` |
| `GUESTPROF` | 13 | 7804 | ``Code`` |
| `GuestProfFor` | 4 | 30 | ``Code,Sno`` |
| `GuestProfVeh` | 2 | 0 | ``Code,Sno`` |
| `GuestReward` | 2 | 11310 | ``DocId`` |
| `GuestStat` | 13 | 0 | ``Code`` |
| `HappyHours` | 10 | 0 | — |
| `HappyHoursHead` | 5 | 0 | ``SchemeCode`` |
| `Holiday` | 8 | 0 | ``Vdate,LogSite_Code`` |
| `Indent` | 1 | 2115 | ``DocId`` |
| `INDENT1` | 3 | 13022 | ``DocId,Sno`` |
| `Item` | 19 | 3187 | ``Code`` |
| `ItemCatMast` | 34 | 50 | ``Code`` |
| `ItemGrp` | 42 | 140 | ``Code`` |
| `ItemMast` | 58 | 3355 | ``Code,RestCode`` |
| `ItemRate` | 33 | 718 | ``ItemCode,RestCode,AppDate`` |
| `Kot` | 4 | 28101 | ``DocId,Sno`` |
| `Leave_Ench` | 2 | 0 | ``Sr_No`` |
| `LEDGER` | 58 | 40818 | ``DocId,V_SNo`` |
| `LedgerM` | 4 | 3158 | ``DocId`` |
| `LedgerMerge` | 3 | 0 | ``DocId,V_SNo`` |
| `LedgerMMerge` | 3 | 0 | ``DocId`` |
| `Loan` | 2 | 0 | ``Sr_No,V_Type`` |
| `MarketSeg` | 11 | 10 | ``Code`` |
| `MemAddRWA` | 42 | 31 | ``SubCode,Name,SNo`` |
| `MemAgeRevWise` | 2 | — | — |
| `MemberFamily` | 34 | 37 | ``SubCode,SNo`` |
| `MembershipRevMast` | 12 | 0 | ``Code`` |
| `MemCatFacility` | 2 | 0 | ``MemCatCode,AppDate,FcCode`` |
| `MemCatMast` | 24 | 1 | ``Code`` |
| `MemCatRevWise` | 3 | 0 | ``MemCat,AppDate,RevCode`` |
| `MemEnviro` | 3 | 1 | ``LogSite_Code`` |
| `MemFacilityMast` | 10 | 0 | ``Code`` |
| `MemProposedMemInf` | 16 | 0 | ``SubCode,SNo,Mark`` |
| `MemRevWise` | 6 | 0 | ``MemCode,AppDate,RevCode`` |
| `MemSelectCategory` | 6 | — | — |
| `menu` | 1 | — | — |
| `MenuHelp` | 32 | 9212 | — |
| `menuhelp1` | 1 | 1234 | — |
| `NarrMast` | 13 | 2 | ``Code`` |
| `NCTypeMast` | 9 | 16 | — |
| `OutletBarCodePartDetail` | 3 | 0 | ``BarCodePart,RestCode`` |
| `OverTime` | 2 | 0 | ``EmpCode,OTDate,Site_Code`` |
| `PayCharge` | 23 | 28550 | ``DocId,SNo`` |
| `Plan1` | 11 | 0 | ``Code,RevCode,Chrgcode`` |
| `PlanMast` | 28 | 9 | ``Code,App_Date`` |
| `PlanTokenDetails` | 4 | 0 | ``Chrgcode,PlanCode,App_Date`` |
| `PORDER1` | 1 | 47 | ``Docid,Sno`` |
| `POS_SBill` | 1 | 0 | ``DocId,OutletDocId`` |
| `PRINTERSETUP` | 5 | — | — |
| `PrintMast` | 17 | — | — |
| `purch2` | 5 | 3826 | ``DocId,Sno`` |
| `RateList` | 30 | 62 | ``RoomCat,RoomNo,Code,OccType`` |
| `RevMast` | 116 | 174 | ``Code`` |
| `RoomCat` | 19 | 2 | ``Type,Code`` |
| `RoomDiscount` | 8 | 1584 | — |
| `RoomFeature` | 12 | 0 | ``Code`` |
| `RoomMast` | 19 | 86 | ``Type,Code,RestCode,LogSite_Code`` |
| `RoomMast1` | 5 | 0 | ``RoomCode,Sno`` |
| `RoomOcc` | 3 | 11464 | ``DocId,SNo`` |
| `RoundOffSetting` | 4 | 5 | ``RoundOFFType,Site_Code,ModuleName`` |
| `Salary` | 3 | 282 | ``Mth_Year,Emp_Code`` |
| `Sale1` | 11 | 12686 | ``DocId`` |
| `Sale2` | 5 | 66055 | ``DocId,Sno,SNo1`` |
| `SchemeItemDetail` | 9 | 0 | ``Code,SNo`` |
| `SchemeMast` | 14 | 0 | ``Code`` |
| `SchemeOutletDiscount` | 4 | 0 | ``SchemeCode,RestCode`` |
| `SeasonMast` | 9 | 0 | ``FromDate,ToDate,Site_Code,LogSite_Code`` |
| `SeasonMast1` | 5 | 0 | ``Weekend,Site_Code,LogSite_Code`` |
| `SESSIONMAST` | 11 | 2 | ``Code`` |
| `SmartCardRegistration` | 3 | 0 | ``Code`` |
| `SplitedSunTran` | 1 | 0 | ``DocId,Sno`` |
| `SplitSale1` | 2 | 0 | ``DocId`` |
| `SplitSale2` | 1 | 0 | ``DocId,Sno,SNo1`` |
| `SplitStock` | 1 | 0 | ``DocId,Sno`` |
| `State` | 24 | 55 | ``Code`` |
| `STOCK` | 26 | 61925 | ``DocId,Sno`` |
| `SubGroup` | 91 | 3238 | ``SubCode`` |
| `SubgroupLog` | 7 | 0 | ``Site_Code,SubCode`` |
| `SundryMast` | 17 | 19 | ``Code`` |
| `SundryType` | 13 | 118 | ``V_Type,SundryCode,SNo,AppDate`` |
| `SundryTypeFix` | 6 | 9 | ``SundryCode,SNo`` |
| `SunTran` | 5 | 98025 | ``DocId,Sno`` |
| `Table_SearchField` | 2 | — | — |
| `TaxStru` | 29 | 56 | ``Code,Sno`` |
| `TDSCAT` | 12 | 4 | ``Code`` |
| `TelCallType` | 2 | 0 | ``Code`` |
| `TempPosDel` | 8 | 0 | — |
| `TransDel` | 2 | 0 | — |
| `TransIn` | 6 | 0 | — |
| `Transout` | 6 | 0 | — |
| `UnitMast` | 25 | 32 | ``Name,Site_Code,LogSite_Code`` |
| `user1` | 2 | 617 | — |
| `user2` | 3 | 84 | — |
| `userMAST` | 14 | 70 | ``USER_NAME`` |
| `UserModule` | 5 | 450 | — |
| `UserPermission` | 5 | 76 | ``CompCode,UserName,LogSite_Code`` |
| `VenueCapacity` | 12 | 32 | ``VenueCode,Capacity,Site_Code`` |
| `VenueFeatures` | 4 | 0 | ``VenueCode,Feature`` |
| `VenueMast` | 13 | 10 | ``Code`` |
| `Voucher_Prefix` | 41 | 171 | ``V_Type,Date_From,Site_Code,LogSite_Code`` |
| `Voucher_type` | 36 | 171 | ``V_Type,Site_Code,LogSite_Code`` |
| `VoucherCat` | 2 | 79 | ``Category,NCat`` |
| `Waiter` | 11 | 58 | ``Code`` |

## 3. Read-only references (never written by this module)

| Table | Refs | Rows | PK |
|---|---:|---:|---|
| `AreaMast` |  | 0 | ``AreaCODE`` |
| `Booking` | 4 | 25 | ``DocId,LogSite_Code`` |
| `CATEGORY` |  | 0 | ``Category`` |
| `category_emp` |  | — | — |
| `Company` | 8 | 1 | — |
| `EmpCategory` | 1 | 4 | ``Code`` |
| `MemCat` |  | — | — |
| `MemChildrenGenPic` | 1 | — | — |
| `memFamily` | 1 | — | — |
| `MemSpouseGen` | 1 | — | — |
| `PrintFormats` | 2 | — | — |
| `ProfileImages` | 1 | 0 | ``ProfileCode`` |
| `Site` | 2 | 0 | ``Site_Code`` |
| `SMSEnviro` | 1 | 1 | ``LogSite_Code`` |
| `SUBGROUPCURRBAL` | 9 | 6166 | ``LogSite_Code,SubCode,V_Date`` |
| `sysobjects` | 3 | — | — |
| `USER_module` | 2 | 617 | — |
| `ViewSubGroup` | 3 | — | — |

## 4. Tables referenced but absent from `columns_dictionary.txt`

These are touched by VB6 but have **no column definition** in `18_Database`. Their shape must
be recovered from the statements themselves before any migration. `[VERIFIED-SQL]`

| Table | Kind | Evidence |
|---|---|---|
| `category_emp` | read | `FrmEmployee`-region join |
| `MemCat` | read | Members revenue setup |
| `MemChildrenGenPic` | read/write | children photos |
| `memFamily` | read/write | family block of `MembershipMast` |
| `MemSpouseGen` | read | spouse block |
| `MemSelectCategory` | write | `Delete From MemSelectCategory Where Type=` (`EXTRAS.text` L986164) |
| `MemAgeRevWise` | write | `Insert Into MemAgeRevWise (MemCat,AppDate,RevCode,SValue,PerOrAmt,FrAge,ToAge,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code)` (L854089) |
| `PRINTERSETUP` | write | `DELETE FROM PRINTERSETUP WHERE SITE_CODE=` (L924228) |
| `PrintFormats` | read | print format picker |
| `PrintMast` | write | `Delete From PrintMast Where Code=` (L273789) |
| `sysobjects` | read | system catalog probe |
| `Table_SearchField` | write | `DELETE FROM Table_SearchField` (L486232) |
| `ViewSubGroup` | read | account picker (named "View" but used as a table) |

> `PrinterSetup`, `PrintMast`, `PrintFormats`, `Table_SearchField` together form the
> **print-configuration subsystem** (forms `frmPrintModule` / `frmMod_Print`), and it is
> entirely outside the provided schema extract. `[VERIFIED-SQL]`

## 5. `MenuHelp` - the menu/privilege table

19 columns: `CompCode, UserName, Opt1, Opt2, Opt3, Opt4, Code, Option, Menu_Index,
Menu_Visible, Pro_Name, Tag, User_Name, Param_Str, ID, Module_Name, Flag, ShowInList,
OutletCode`. `[VERIFIED-SQL]`

* **No declared PK** in `indexes_pks.txt`. `[VERIFIED-SQL]`
* Row `Code` is the join key used by every dispatch query (`queries.sql` A3-A5).
* `Option` is the dispatch **caption** - the value compared against `var_188`.
* `OPT1..OPT4` are the four menu nesting levels; `OPT1 = 12` is Main Setup.
* `Param_Str` is read **as** `UPrivilege`; `Module_Name` drives the `MemMas` /
  `MallMgmt` routing; `OutletCode` drives `BANQ` / `ODC` routing.
* `Flag <> 'V'` filters deleted/hidden rows.

OPT1 collisions inside Main Setup (non-fatal but ambiguous ordering):

| OPT3 | Rows |
|---:|---|
| 15 | Cash Flow / Cash Book (Finance rows) |
| 32 | Control Ledger / Journal Books Log |
| 33 | Roz Namcha / TDS Report |

see `../../03_Finance/sql/sql_notes.md` for the Finance side. `[VERIFIED-SQL]`

## 6. `Enviro` - single-row global configuration

222 columns, read wholesale on **every** menu click (`queries.sql` B1,
`EXTRAS.text` L477023-L477025). Written by `frmEnviro`:
`Insert Into Enviro(<~70 columns>)` (L140624), `Update Enviro Set AdvanceAc=` (L141153).
Relevant routing column: `PlanMastType` (L477234). `[VERIFIED-VB6]`

Columns the dispatcher consumes (`TouchScreen` at L477031, `PlanMastType` at L477234) are
read by name; the source of `MemVar_1F810B8` (the supervisor gate) is **not** visible in the
decompiled text and remains `[UNKNOWN]`.

## 7. Multi-site / audit column convention

Every master write carries the same six audit columns, always by string concatenation:

`U_Name, U_EntDt, U_AE` + at least one of `Site_Code, LogSite_Code, LOGSITE_CODE`

Examples: `CompMast` `Insert Into ... (Site_Code,SubCode,...,U_Name,U_EntDt,U_AE,CompanyType,LOGSITE_CODE,...)` (L40646);
`MemAgeRevWise` `(...,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code)` (L854089);
`Enviro` `(...,SITECODE,...,LogSite_Code,...)` (L140624). `[VERIFIED-VB6]`

Reads are scoped `LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO'`; deletes add
`AND LogSite_Code = '<site>'`. `[VERIFIED-VB6]`

## 8. Referential integrity

* **0 declared FKs** in the database. `[VERIFIED-SQL]`
* All integrity is enforced (when it is enforced at all) by VB6 `Select Count(*)` guards.
  Examples with line numbers are listed in `../logic/vb6_logic.md` §8.
* Cascading deletes are hand-written, e.g. `FrmParty`: `Delete From Ledger Where V_Type='F_AO'`
  (L22793, L22953) then `Delete From SubGroup` (L22959); `CompMast` reverses
  `RoomDiscount` / `Comp_PlanDet` / `Comp_Inclusive` / `Ledger` (L41122-L41132, L41169,
  L41395-L41412). `[VERIFIED-VB6]`

## 9. Table notes worth flagging before migration

| Table | Note |
|---|---|
| `user1`, `user2`, `menuhelp1` | shadow/backup copies wiped by `UserMast` on user save (`delete from user1/user2/menuhelp1 where user_name=` - L463215, L463220, L463225). `[VERIFIED-VB6]` |
| `UserModule` | per-outlet module flags, deleted by `OutLetMast` (L183395). Not in `indexes_pks.txt`. `[VERIFIED-VB6]` |
| `TransIn` / `Transout` / `TransDel` | data-transfer staging, truncated by `Transfer` (L486416, L486576, L488385). `[VERIFIED-VB6]` |
| `TempPosDel` | `Delete from TempPosDel` before POS bill deletion (L513982). `[VERIFIED-VB6]` |
| `FAENVIRO` | `INSERT INTO FAENVIRO (AGE1,LogSite_Code,Site_Code)` written by `FrmInc` (L267720) - a *second* finance-enviro table alongside `Enviro`. `[VERIFIED-VB6]` |
| `RoomDiscount` / `Comp_PlanDet` / `Comp_Inclusive` | child tables of `CompMast`; PK `Comp_PlanDet` is **not** declared. `[VERIFIED-SQL]` |
| `HappyHours` | no declared PK; written by `pHappyHours` / `NewHappyHours`. `[VERIFIED-SQL]` |
| `ComboPackDetail`, `GroupCatalog`, `NCTypeMast` | no declared PK. `[VERIFIED-SQL]` |
| `MenuHelp`, `PRINTERSETUP`, `PrintMast`, `Table_SearchField`, `MemSelectCategory`, `MemAgeRevWise` | no declared PK **and** no dictionary entry (or both). `[VERIFIED-SQL]` |

## 10. SQL construction hazards carried into the rebuild

1. **No parameterisation anywhere.** Every statement is built with `&` concatenation, so every
   user-supplied string is an injection point. `[VERIFIED-VB6]`
2. **Silent failure.** `On Error Resume Next` at `EXTRAS.text` L477022 wraps the whole
   dispatcher; a bad `MenuHelp` row produces no error and no form. `[VERIFIED-VB6]`
3. **`Select * from Enviro`** on every click, then field-by-field access by name - a renamed
   column breaks nothing visible until a branch reads it. `[VERIFIED-VB6]`
4. **No transaction control** is visible around multi-table saves (`FrmParty`, `CompMast`).
   `[INFERRED]`
5. **Mixed case** in identical tables (`Enviro`/`enviro`, `PRINTERSETUP`/`PrinterSetup`,
   `menuHelp`/`MenuHelp`) will break any migration that assumes case-insensitive names.
   `[VERIFIED-SQL]`