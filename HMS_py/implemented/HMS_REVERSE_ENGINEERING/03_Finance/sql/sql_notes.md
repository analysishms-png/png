# 03_Finance - SQL notes (tables / fields / DB facts)

Database: `MOONData2627`. Sources: `../../18_Database/tables_rowcounts.txt`,
`../../18_Database/columns_dictionary.txt`, `../../18_Database/indexes_pks.txt`,
`../../18_Database/views_procs.txt`, `../../18_Database/view_proc_definitions.txt`,
`../../18_Database/foreign_keys.txt` (0 bytes).
No statement in `queries.sql` was executed against the live database. `[VERIFIED-SQL]`

## 1. Tables owned by this module

| Table | Rows | Role | PK (`indexes_pks.txt`) |
|---|---|---|---|
| `Ledger` | 40818 | **the general ledger — one row per voucher line** | `DocId, V_SNo` |
| `LedgerM` | 3158 | voucher header (one row per voucher) | `DocId` |
| `LedgerLog` | 19219 | historical copy of `Ledger` (audit) | `[UNKNOWN]` |
| `LedgerMLog` | 2386 | historical copy of `LedgerM` (audit) | `[UNKNOWN]` |
| `ledgerAdj` | 264 | bill-to-bill adjustment (FaAdjust) | `DocId1, V_SNo1, DocId2, V_SNo2, SubCode` |
| `ledgerRef` | 0 | reference/agreement-wise outstanding | `Id` |
| `LedgerTDS` | 338 | T.D.S. computed on a voucher line | `DocId, V_SNo` |
| `ACGROUP` | 73 | account groups (chart of accounts level 1) | `ID, Site_Code` |
| `AcGroupCurrBal` | 2054 | date-wise running balance per group | `[UNKNOWN]` |
| `SubGroup` | 3238 | ledger accounts (chart of accounts level 2) | `SubCode` |
| `SubGroupCurrBal` | 6166 | date-wise running balance per account | `[UNKNOWN]` |
| `Voucher_Type` | 171 | voucher type definitions (`Category='FA'` = finance) | `V_Type, Site_Code, LogSite_Code` |
| `VoucherCat` | 79 | voucher category / nature (`NCat`) | `Category, NCat` |
| `Voucher_Prefix` | 171 | year-wise serial prefixes | `V_Type, Date_From, Site_Code, LogSite_Code` |
| `LastVoucher` | 38 | per-user resume pointer | `user_name, V_Type` |
| `NarrMast` | 2 | narration master | `Code` |
| `TDSCat` | 4 | T.D.S. category (limit + percentage) | `Code` |
| `TDSChal` | 0 | T.D.S. challan header | `DocId` |
| `TDSChal1` | 0 | T.D.S. challan line | `[UNKNOWN]` |
| `TDSCerti` | 0 | T.D.S. certificate | `CertiNo` |
| `FaEnviro` | 1 | **all finance behaviour switches (1 site row)** | `[UNKNOWN]` |
| `Enviro` | 1 | global environment (`TouchScreen`, site) | `LogSite_Code` |
| `DATELOCK` | 0 | date-lock table — **empty**, see §4 | `CODE` |
| `Budget` | 0 | revenue/expense budget | `FromDate, ToDate, SrNo` |
| `LedgerMerge` / `LedgerMMerge` | 0 / 0 | merge staging (AccountMerging) | `[UNKNOWN]` |
| `Voucher_Include` / `Voucher_Exclude` | 0 / 0 | voucher filter tables (empty) | `[UNKNOWN]` |

`foreign_keys.txt` is empty → **0 declared foreign keys** for every table above.
All referential integrity is enforced in VB6 only. `[VERIFIED-SQL]`

## 2. Key field facts (from `columns_dictionary.txt`)

### `Ledger` — 29 columns in the extract (ordinals 1-4, 6-30; ordinal 5 absent from extract)

`DocId varchar(21)`, `V_SNo smallint`, `V_Type varchar(5)`, `V_No int`, `v_Prefix varchar(5)`,
`Site_Code varchar(2)`, `V_Date datetime`, `SubCode varchar(8)`, `AmtCr float`, `AmtDr float`,
`ContraSub varchar(8)`, `Chq_No varchar(20)`, `Chq_Date datetime`, `Clg_Date datetime`,
`Narration varchar(500)`, `U_Name varchar(10)`, `U_EntDt datetime`, `U_AE varchar(1)`,
`SQty float`, `Pqty float`, `AgRefNo varchar(21)`, `VTime datetime`, `Mth_Year varchar(7)`,
`emp_code varchar(10)`, `GroupCode varchar(6)`, `GroupNature varchar(1)`, `LogSite_Code varchar(2)`,
`TImp_Dt datetime`, `SeqNo smallint`.

Amount model: **debit and credit live in two columns of the same row** (`AmtCr` / `AmtDr`), not a signed
single amount. `AmtCr` is NULL-able with default 0 — a row is a debit when `AmtDr>0`, a credit when
`AmtCr>0`. `[INFERRED]`

### `LedgerM` — 14 columns
`DocId varchar(21)`, `V_Type varchar(5)`, `v_Prefix varchar(5)`, `V_No int`, `Site_Code varchar(2)`,
`V_Date datetime`, `Narration varchar(255)`, `U_Name varchar(10)`, `U_EntDt datetime`, `U_AE varchar(1)`,
`Trf_Date datetime`, `LogSite_Code varchar(2)`, `SeqNo smallint`.
Header narration is 255 chars vs 500 on the line. `[VERIFIED-SQL]`

### `ledgerAdj` — 13 columns
`DocId1`, `V_SNo1`, `DocId2`, `V_SNo2`, `Cr float`, `SubCode`, `Name varchar(50)`, `AgRefNo`,
`U_Name`, `U_EntDt`, `U_AE`, `Site_Code`, `LogSite_Code`.
Composite PK covers both documents plus `SubCode` → an adjustment is symmetric on the sub-account. `[VERIFIED-SQL]`

### `ACGROUP` — 20 columns
`ID int`, `Site_Code varchar(2)`, `GroupCode varchar(6)`, `GroupName varchar(50)`, `GroupNameBiLang`,
`GroupNature varchar(1)`, `Nature varchar(15)`, `MainGrCode varchar(255)`, `CurrentBalance float`,
`SubLedYN varchar(1)`, `BlOrd int`, `AliasYN varchar(1) default 'N'`, `SysGroup varchar(1) default 'N'`,
`GroupHelp varchar(50)`, `U_Name`, `U_EntDt`, `U_AE`, `TradingYN varchar(1) default 'N'`, `MainGrLen int`,
`LogSite_Code varchar(2)`.
`MainGrCode varchar(255)` is the self-referencing parent → **multi-level group tree**, and
`AliasYN='N'` filters alias groups in every roll-up query (`FaLib` L519802/L519809). `[VERIFIED-VB6]`

### `SubGroup` — first 40 columns
`SubCode varchar(8)` (PK), `Site_Code`, `Name varchar(75)`, `ShortName`, `NameHelp varchar(75)` (upper-cased
search key — every duplicate check queries `NameHelp`), `GroupCode varchar(6)`, `GroupNature`, `Nature`,
`Category`, contact block `Add1..Add3/CityCode/PIN/Phone/Mobile/FAX/EMail`, statutory `CSTNo/LSTNo/PANNo/ITWARD_NO`,
`TDS_Catg varchar(6)` → `TDSCat.Code`, `ActiveYN smallint`, `CreditLimit int`, `CreditDays int`,
`AreaCode`, `FName varchar(50)` (father/spouse), `CompanyType`, `AllowCredit`, `DiscountType`,
`Discount`, `Commission`, `BlackListed`, plus address/discount columns beyond ordinal 40.

### `Voucher_Type` — 37 columns (highlights)
`Category varchar(10)` (only `'FA'` reaches FaVrEnt), `NCat varchar(5)`, `V_Type varchar(5)` (part of PK),
`Contratype`, `Description varchar(30)`, `Report_Index varchar(3)`, `Number_Method varchar(9)`,
`Start_No int`, `Last_Ent_Date`, `Form_Name varchar(25)`, `Separate_Narr` / `Common_Narr`,
`Narration varchar(150)`, `Print_VNo`, `Header_Desc` / `Terms_Desc` / `Footer_Desc`,
`Exclude_Ac_Grp varchar(100)`, `SerialNo_From_Table varchar(50)`, `ChqNo` / `ChqDt` / `ClgDt` (per-type cheque
captions), `DefaultCrAc` / `DefaultDrAc varchar(8)` (defaults used by the required-Dr/Cr validation),
`FirstDrCr varchar(2)`, `Alias varchar(6)`, `Site_Code`, `LogSite_Code`.
`VoucherCat (Category, NCat)` is the category lookup. `[VERIFIED-SQL]`

### `FaEnviro` — finance switches
Ageing buckets `Age1..Age6 smallint` + `Amt1..Amt6 float`; report banners
`TagadaHeader1..5`, `TagadaFooter1..5` (varchar 75 each — `FaReports` writes `TagadaHeader1`, L558875);
behaviour flags (varchar 3, Y/N style): `CreditLimit`, `DebitLimit`, `NegativeCashBalance`, `ShowGroup`,
`DonotShowGroup`, `ShowCurrentBalance`, `VerticleBalanceSheet`, `ShowQty`, `ShowCityName`,
`LedDivCode`, `LedSiteCode`, `LedPrefix`, `FilterAC`, `AddressHelp`; print fills
`daterfill`/`titlerfill`/`pagenofill`; `RunPIF`. `[VERIFIED-SQL]`

## 3. Views used by report SQL

`ViewSubgroup` (`view_proc_definitions.txt`):
```sql
CREATE VIEW [dbo].[ViewSubgroup] AS
SELECT SubGroup.Site_Code, SubGroup.SubCode, SubGroup.Name, SubGroup.GroupCode, SubGroup.GroupNature,
       SubGroup.Nature, SubGroup.Add1, SubGroup.Add2, SubGroup.Add3, SubGroup.CityCode, SubGroup.PIN,
       SubGroup.Phone, ACGROUP.MainGrCode AS MainGrCodeS, ACGROUP.AliasYN AS GAliasYn,
       ACGROUP.GroupName AS GName, ACGROUP.SysGroup AS SysGrp,
       SubGroup.Name + ISNULL(City.CityName,'') AS NameWithCity, City.CityName,
       ACGROUP.GroupName, ACGROUP.TradingYN, ACGROUP.BlOrd, SubGroup.FName,
       SubGroup.LogSite_Code, SubGroup.ActiveYN
FROM SubGroup
LEFT OUTER JOIN ACGROUP ON SubGroup.GroupCode = ACGROUP.GroupCode
LEFT OUTER JOIN City    ON SubGroup.CityCode  = City.CityCode
```
This is exactly the source of `NameWithCity`, `GNAME`, `MAINGRCODES` used by the FaVrEnt account picker
(`EXTRAS.text` L528000/L528006). `[VERIFIED-SQL]` `[VERIFIED-VB6]`

`ViewLedger`:
```sql
CREATE VIEW [dbo].[ViewLedger] AS
SELECT Ledger.V_Date, Ledger.SubCode AS party, Ledger.ContraSub AS party1,
       Ledger.AmtCr AS credit, Ledger.AmtDr AS debit, Ledger.V_Type, Ledger.V_No,
       Ledger.v_Prefix AS v_add, Ledger.V_SNo, Ledger.Chq_No, Ledger.Chq_Date, Ledger.Clg_Date,
       LedgerM.Narration AS MNarr, Ledger.Narration AS Narr,
       Ledger.Site_Code, Ledger.DocId, Ledger.LogSite_Code
FROM Ledger LEFT OUTER JOIN LedgerM ON Ledger.DocId = LedgerM.DocId
```
`ViewLedgerLog` is the same shape over `LedgerLog`/`LedgerMLog` and adds `U_Name, U_EntDt, SeqNo`.
`FaReports` queries `VIEWLEDGER.V_DATE` directly (`EXTRAS.text` L569903). `[VERIFIED-SQL]`

## 4. Date-lock semantics (important for rebuild)

- Table `DATELOCK` has **0 rows** and PK `CODE`. `[VERIFIED-SQL]`
- The voucher guard reads `SELECT EDATE,SDATE FROM DateLock WHERE CODE='..'`
  (`EXTRAS.text` L531108) → this query always returns nothing against this database.
- The visible switch is `UPDATE FAENVIRO SET DateLock='Y'` (`EXTRAS.text` L267937, L555687),
  and `FaEnviro` holds 1 row. `[VERIFIED-VB6]` `[VERIFIED-SQL]`
- User-facing message `Back Date Entry Blocked.` (`EXTRAS.text` L529493, L531100).
- **[INFERRED]** The effective year-end lock is `FaEnviro.DateLock`; the `DateLock` table is a
  second, apparently abandoned, mechanism. A rebuild should keep both reads to remain bug-compatible.

## 5. Data volumes that shape report behaviour

- `Ledger` 40818 rows vs `LedgerM` 3158 rows → **~13 ledger lines per voucher** average. `[VERIFIED-SQL]`
- `LedgerLog` 19219 + `LedgerMLog` 2386 → a large share of vouchers has been edited at least once
  (every edit/delete copies rows into the *Log tables). `[INFERRED]`
- `ledgerRef` is **empty** → `DUELIST` / `Bill Wise Outstanding` / reference-wise reports will return
  no data until references are captured. `[VERIFIED-SQL]`
- `TDSChal`/`TDSChal1`/`TDSCerti`/`Budget`/`DATELOCK` are all **empty** → those screens open but have no
  persisted data. `[VERIFIED-SQL]`
- `FaEnviro` has **1 row** → finance settings are effectively single-site; `ShowSiteWise=True` on all
  `FaMagic` statements will still fan out by `Site_Code`. `[VERIFIED-SQL]` `[VERIFIED-VB6]`
- `Site` table is **empty (0 rows)** yet `FaMagic`/`FaReports` do `SELECT ... FROM SITE ORDER BY SITE_DESC`
  (`EXTRAS.text` L542525, L558978) → site pickers will render empty. `[VERIFIED-SQL]`

## 6. Multi-site (`LOGSITE_CODE`) convention

Nearly every read carries `(LOGSITE_CODE='<site>' OR LOGSITE_CODE='HO')` — `HO` is the head-office
shared read scope. Examples: `EXTRAS.text` L521992, L521999, L522012, L522022, L522751.
Writes always set `LOGSITE_CODE` to the current site. Guard message
`Record is Created at Other Site, Can't Edit/Delete it` at L521823/L521849. `[VERIFIED-VB6]`

## 7. Objects with SQL not fully extracted

| Object | EXTRAS.text range | SQL lines found in `finance_sql.txt` | Status |
|---|---|---|---|
| `FaGrEnt` | 555999-557753 | 37 | statements present, only fragments quoted here — `[INFERRED]` full DDL in `queries.sql` §L |
| `FaNarrMast` | 557754-558502 | 14 | `[UNKNOWN]` detail |
| `FaRepView` | 572403-572630 | 2 | `[UNKNOWN]` detail |
| `FaGlobeNarr` | 555838-555998 | 1 | `[UNKNOWN]` detail |
| `FaAdjustDel` | 547816-548010 | 3 | `[UNKNOWN]` detail |

Full per-object counts are in the working extract `%TEMP%/opencode/finance_sql.txt` (1266 lines, 25 objects).
