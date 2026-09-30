# MODULE MANUAL — 03_Finance

Module id: builder `&HB` (decimal 11) · menu_tree hex `B` · `menuHelp.OPT1 = 11` (root caption `Finance`;
builder root caption is `Financial Setup` — caption drift).
Evidence tags: `[VERIFIED-VB6]` source, `[VERIFIED-SQL]` database extracts, `[VERIFIED-UI]`,
`[VERIFIED-CONFIG]`, `[INFERRED]`, `[UNKNOWN]`.

## 1. Purpose
The double-entry general ledger of HMS: voucher entry/posting, bill-to-bill adjustment, bank (cheque)
reconciliation, T.D.S. challan & certificate, expense voucher (purchase-side), financial statements
(Balance Sheet / P&L / Trial Balance / Cash & Fund Flow), and 25 ledger/banking/ageing reports.
`[VERIFIED-VB6]`

The chart-of-accounts and finance *configuration* screens do **not** live here — they sit under
Main Setup → group `Financial Setup` (`&HC`, `OPT2=19`). See `screens/screens.md` §7. `[VERIFIED-VB6]`

## 2. Menu Structure
- Builder registrations: **28** `Proc_165_0_14C1708(..., &HB, ...)` calls — 26 at `EXTRAS.text`
  L475885–L475935 inside `Proc_165_1_1EF3904`, plus 2 strays inside `Proc_4_36_13480F8`
  (`Expense Voucher` L11645, `Journal Books Log` L11681). 27 unique captions, **24 leaves**
  (7 entry + 17 report) + 3 structural. `[VERIFIED-VB6]`
- `menu_tree_raw.txt` L20–L45 = 26 rows, plus stray duplicates at L6 (`Expense Voucher`) and
  L19 (`Journal Books Log`). `[VERIFIED-VB6]`
- `menuHelp` for user SA: **33 rows** with `OPT1=11` → 3 structural (`Finance|11|0`,
  `Transaction|11|11`, `Reports|11|13`) + **30 leaves** (5 `Flag=E` + 25 `Flag=R`). `[VERIFIED-SQL]`
- Runtime menu is built **from `menuHelp`**, not from the builder calls:
  module tabs `EXTRAS.text` L8279–L8280, sub-items L8392–L8393, click L4644/L4647,
  dispatch key `Proc_165_3_EEA710` L480844. `[VERIFIED-VB6]`
- The two surfaces disagree by 11 rows one way and 5 the other — `screens/screens.md` §0/§4/§5.

## 3. Screens
7 entry screens: `FaVrEnt`, `FaAdjust`, `FaAdjustDel`, `FaChqClear`, `FaTDSChal`, `FaTDSCertificate`,
`FaTaxVoucher`. 17 report rows all open **`FaReports`** parameterised by `GRepFormName`.
Full index/key tables in `screens/screens.md`.

## 4. Masters
Finance masters are registered under module `&HC` → group `Financial Setup` (`EXTRAS.text` L476127,
`menuHelp` `Finance|12|19|0|0|N`): `[VERIFIED-VB6]` `[VERIFIED-SQL]`

| Master | Form | Dispatch line | Table (rows) |
|---|---|---|---|
| Group Accounts | `FaGrEnt` | L478022 | `ACGROUP` (73) |
| Ledger Accounts | `FaSubGroup` | L478029 | `SubGroup` (3238) |
| Narration Master | `FaNarrMast` | L478140 | `NarrMast` (2) |
| T.D.S. Category | `FaTDSCat` | L478147 | `TDSCat` (4) |
| Account Merging | `AccountMerg` | L478173 | `LedgerMerge`/`LedgerMMerge` (0) |
| Voucher Serialisation | `FrmSerialiseVr` | L478180 | `Voucher_Prefix` (171) |
| Country / State / City | `FaCountryMast`/`FaStateMast`/`FaCityMast` | L477596/L477602/L477608 | `Country` 13 / `State` 55 / `City` 466 |
| FA Environment | *(indirect `0.Method_arg_54`, no `New <form>`)* | L478155–L478159 | `FaEnviro` (1) |
| Voucher Environment | *(same pattern)* | L478161–L478165 | `Voucher_Type`/`VoucherCat` |
| Current Balance Updation | `FaCurrBalUpdate` | L480459 | `AcGroupCurrBal` 2054 / `SubGroupCurrBal` 6166 |
| Year End Updation | `frmYearEnd` | L477223 | `DATELOCK` (0) |

## 5. Transactions
- **Voucher entry** `FaVrEnt` (L525401–L535557): header `INSERT INTO LedgerM` L535274,
  lines `INSERT INTO LEDGER` L535121 (+cheque-less variants L535469/L535498),
  serial `INSERT INTO LastVoucher` L535344, `UPDATE LedgerM SET DocId=` L535309.
- **Adjustment** `FaAdjust` (L546942): `Insert Into LEDGERAdj (DocId1,V_SNo1,DocId2,V_SNo2,CR,SubCode,...)`
  L547406, candidate read L547154, residual `IsNull(Sum(CR),0)` L547161.
- **Bank reconciliation** `FaChqClear` (L548011): `Update Ledger Set Chq_No/Chq_Date/Clg_Date`
  L548238/L548252/L548261.
- **T.D.S. challan** `FaTDSChal` (L544598): `UPDATE LEDGERTDS SET TDSPOST='Y'` L544695/L545034/L545144,
  `INSERT INTO LEDGER` L545181/L545213.
- **Expense voucher** `FaTaxVoucher` (L972429): `Select IsNull(Max(InvoiceNo),0)+1 From Purch1` L973227.
- Delete cascade (`FaVrEnt`): `DELETE FROM LEDGER` L529418/L535049, `LEDGERM` L529439,
  `LEDGERADJ` L529442, `LEDGERREF` L529443, `LEDGERTDS` L529444. `[VERIFIED-VB6]`

## 6. Operations
- Every edit/delete copies the old rows into `LedgerLog`/`LedgerMLog`
  (`Insert Into LedgerMLog Select * From LedgerM` + `Update LedgerLog Set SeqNo=` L535548–L535553). `[VERIFIED-VB6]`
- `FaCurrBalUpdate` rebuilds running balances: `UPDATE ACGROUPCURRBAL SET CURR_BAL=0` /
  `UPDATE SUBGROUPCURRBAL SET CURR_BAL=0` L553111–L553112, then `UPDATE Ledger SET AmtCr = Case When ...`
  L553961. `[VERIFIED-VB6]`
- `AccountMerg` rewrites `UPDATE LEDGER SET LEDGER.GROUPCODE=` (L524891-region, `FaSubGroup`). `[VERIFIED-VB6]`
- **No-op operations:** `Year End Updation (Finance)` L478170–L478172 and `Opening Balance Updation`
  L478167–L478168 dispatch to an empty body. `[VERIFIED-VB6]`

## 7. Reports
25 `menuHelp` report rows; host form `FaReports` (L558503–L572402) + `rFaRepView` (L763058–L776752).
Full table in `reports/reports.md` §1. Confirmed `.RPT` present: `FaAgRefNo`, `FaDueList`,
`FaTAGADALET`, `AGEINGREPORT`/`AgeingReport`, `FABudgetVarience`, `FABudgetRep`, `FaBankRecon`,
`FaJvchr*`, `FaGrpListTree`, `FaPartyTree`, `FaPartyMast`, `FaArea/FaCity/FaCountry/FaState`,
`CNB`, `OutStanding`, `BillWiseAdjustmentReport`, `ChequePrint`.
**Missing** while referenced from source: `FaTAGADADR.RPT` (L569595), `FaJRNLLog.RPT` (L566584),
`DayBook.rpt` (L567397). Most `GRepFormName` keys have **no** matching `.rpt` in `Reports\`: `[UNKNOWN]`
Path = INI key `2` (`C:\PENDRIVE\HMS\Reports`), `MemVar_1F813B0` (L9821). `[VERIFIED-CONFIG]`

## 8. Permissions
- At dispatch: `SELECT Param_Str AS UPrivilege, Module_Name, OutletCode FROM menuHelp WHERE
  UserName='..' AND CompCode='..' AND Code=<n>` (`EXTRAS.text` L477046–L477047) → `var_AC` = AEDP string. `[VERIFIED-VB6]`
- Menu visibility = `menuHelp` rows (per user + per company); action rights = `user1.PARAM_STR` 'AEDP'
  per form code (`19_VB6_Logic/MENUHELP_PER_USER_ANALYSIS.md` §3). `[VERIFIED-SQL]`
- `UserPermission` PK = `(CompCode, UserName, LogSite_Code)`, 76 rows. `[VERIFIED-SQL]`
- No finance-specific permission gate found inside `FaVrEnt`/`FaSubGroup` beyond this shared layer: `[INFERRED]`

## 9. Business Rules
- **Required accounts:** `Entry Does not Include Required Debit Account` L534965;
  `...Required Credit Account` L534971 (driven by `Voucher_Type.DefaultDrAc/DefaultCrAc`). `[VERIFIED-VB6]`
- **T.D.S. type:** `There Must be a TDS Vr.Type` L534992. `[VERIFIED-VB6]`
- **Multi-site:** `Record is Created at Other Site, Can't Edit/Delete it` L521823 / L521849;
  reads scoped `(LOGSITE_CODE='<site>' OR LOGSITE_CODE='HO')` L521992/L521999/L522012/L522022/L522751. `[VERIFIED-VB6]`
- **Referential guards:** `Transactions Exist Can't Delete it` L522841 (`FaSubGroup`);
  `T.D.S.Challan Already Made,Can't delete it` L529362/L530935. `[VERIFIED-VB6]`
- **Uniqueness:** `Duplicate A/c Name not Allowed` L523073/L523090/L523607/L523625 (keyed on `NameHelp`);
  duplicate code `Select AcCode From SubGroup Where AcCode=` L523573;
  duplicate voucher `SELECT COUNT(*) FROM LEDGERM WHERE DocId=` L534951. `[VERIFIED-VB6]`
- **Date lock:** `Back Date Entry Blocked.` L529493 / L531100; `SELECT EDATE,SDATE FROM DateLock WHERE CODE=`
  L531108; switch `UPDATE FAENVIRO SET DateLock='Y'` L267937 / L555687. `DATELOCK` table is **empty** —
  see `sql/sql_notes.md` §4. `[VERIFIED-VB6]` `[VERIFIED-SQL]`
- **Cheque:** `Clg.Date Must be Greater Than Cheque Date` L531692; `Date is Required` L531115. `[VERIFIED-VB6]`
- **Balance model:** debit/credit in two columns of `Ledger` (`AmtDr`/`AmtCr`), not a signed amount. `[VERIFIED-SQL]`

## 10. VB6 Logic
`Proc_165_0_14C1708` (menu build, L475664), `Proc_165_1_1EF3904` (all registrations, L475818),
`Proc_165_2_1E3A588` (dispatcher, L476999–L480833), `Proc_165_3_EEA710` (key lookup, L480834),
`CmdSubMenu_UnknownEvent_9` (click, L4635). Forms: `FaVrEnt` L525401, `FaAdjust` L546942,
`FaAdjustDel` L547816, `FaChqClear` L548011, `FaTDSChal` L544598, `FaTDSCertificate` L573445,
`FaTaxVoucher` L972429, `FaMagic` L541582, `FaReports` L558503, `FaLib` L519755, `FaSubGroup` L521908,
`FaGrEnt` L555999, `FaCurrBalUpdate` L552811, `AccountMerg` L500575. Detail in `logic/vb6_logic.md`.

## 11. SQL Logic
All statements extracted, never executed: `sql/queries.sql` (sections A–P). Schema/column notes and
PKs: `sql/sql_notes.md`. Report SQL: `FaReports` L558503–L572402; due-list join L569903;
budget join L563444; `AcCheckList` address query L563671.

## 12. Tables
`Ledger` 40818 · `LedgerM` 3158 · `LedgerLog` 19219 · `LedgerMLog` 2386 · `ledgerAdj` 264 ·
`ledgerRef` 0 · `LedgerTDS` 338 · `ACGROUP` 73 · `AcGroupCurrBal` 2054 · `SubGroup` 3238 ·
`SubGroupCurrBal` 6166 · `Voucher_Type` 171 · `VoucherCat` 79 · `Voucher_Prefix` 171 ·
`LastVoucher` 38 · `NarrMast` 2 · `TDSCat` 4 · `TDSChal`/`TDSChal1`/`TDSCerti` 0 · `FaEnviro` 1 ·
`Enviro` 1 · `DATELOCK` 0 · `Budget` 0 · `City` 466 · `Country` 13 · `State` 55 ·
`LedgerMerge`/`LedgerMMerge` 0 · `Voucher_Include`/`Voucher_Exclude` 0 · `Site` 0 ·
`menuHelp` 9212 · `UserPermission` 76.
**0 declared foreign keys** (`foreign_keys.txt` is 0 bytes). `[VERIFIED-SQL]`

## 13. Fields
Key columns in `sql/sql_notes.md` §2:
`Ledger` 29 cols (`DocId varchar(21)`, `V_SNo`, `V_Type varchar(5)`, `V_No`, `v_Prefix varchar(5)`,
`Site_Code`, `V_Date`, `SubCode varchar(8)`, `AmtCr`/`AmtDr float`, `ContraSub`, `Chq_No varchar(20)`,
`Chq_Date`, `Clg_Date`, `Narration varchar(500)`, `U_Name`, `U_EntDt`, `U_AE`, `AgRefNo varchar(21)`,
`Mth_Year varchar(7)`, `GroupCode varchar(6)`, `GroupNature`, `LogSite_Code`, `SeqNo`);
`LedgerM` 14 cols (`Narration varchar(255)`, `Trf_Date`); `ledgerAdj` 13 cols;
`ACGROUP` 20 cols (`MainGrCode varchar(255)` = self-referencing parent, `AliasYN`);
`SubGroup.SubCode` PK + `NameHelp` (upper-cased duplicate-check key) + `TDS_Catg`;
`Voucher_Type` 37 cols (`Category`, `NCat`, `DefaultDrAc`/`DefaultCrAc`, `Report_Index`);
`FaEnviro.Age1..Age6`, `TagadaHeader1..5`, behaviour flags.

## 14. Workflow
See `flowcharts/workflow.mmd` (two menu surfaces → DB-driven dispatch → privilege/Enviro check →
form → table → report), and `screens/screens.md` §0 for the menu-surface explanation.

## 15. Screenshots
20 PNGs in `../../screenshots/03_Finance/` — pointer only (`screenshots/README.md`):
`01-Finance_MenuTab`, `C2_Finance__Transaction__Voucher_Entry`, `C3_02_...Expense_Vo`, `C3_S1_...Voucher_En`,
13 `C4_L1+sub_Finance__Reports__*`, `C4_L1+sub_ReprtForm_*`, `B032_Menu_20260928_195544`. `[VERIFIED-UI]`

## 16. Test Cases
1. Click `Voucher Entry` → `FaVrEnt` opens, `var_188="Voucher Entry"` (L477250). `[VERIFIED-VB6]`
2. Post a voucher without a debit account → `Entry Does not Include Required Debit Account` (L534965).
3. Post a back-dated voucher with `FaEnviro.DateLock='Y'` → `Back Date Entry Blocked.` (L529493).
4. Edit an already-posted voucher → rows appear in `LedgerLog`/`LedgerMLog` (L535548–L535553).
5. Delete a posted voucher → `LEDGER`, `LEDGERM`, `LEDGERADJ`, `LEDGERREF`, `LEDGERTDS` all lose the
   `DocId` (L529418–L529444). `[VERIFIED-VB6]`
6. Create a ledger account with an existing name → `Duplicate A/c Name not Allowed` (L523073).
7. Delete a ledger account that has transactions → `Transactions Exist Can't Delete it` (L522841).
8. Click `Roz Namcha` or `TDS Report` → **nothing happens** (no dispatcher branch). Expected legacy bug. `[VERIFIED-VB6]`
9. Open `Adjustment Entry` → not present in the SA menu at all; must be driven from the dispatch key directly.
10. Run `Trial Balance` → `FaMagic` with `OpenType="LEDTRIAL"`; `Site` table empty → site picker blank. `[VERIFIED-SQL]`
11. Print `Reference Report` → `FaAgRefNo.RPT` found (L564664). Print `Journal Books Log` →
    `FaJRNLLog.RPT` **missing** → Crystal file error. `[VERIFIED-VB6]` `[VERIFIED-SQL]`
12. Menu click for a user with no `menuHelp` row → silent no-op (`On Error Resume Next`, L477022).

## 17. Known Issues
- Two menu surfaces disagree: 11 `menuHelp` rows with no registration, 5 registrations with no row. `[VERIFIED-SQL]`
- `Roz Namcha` and `TDS Report` are dead menu rows (no dispatcher branch for those exact strings). `[VERIFIED-VB6]`
- `Adjustment Entry` / `Delete Adjustment Entry` are orphan screens (registered + dispatchable, no menu row).
- `Day Book` vs `Day  Book` (one space vs two) dispatch to **different** reports (`DayBook` vs `RozNamcha`).
- Four true-orphan statement branches: `Balance Sheet`, `Profit And Loss Account`,
  `Trial Balance (Group)`, `Cash And Bank Books` — no menu anywhere. `[VERIFIED-VB6]` `[VERIFIED-SQL]`
- Hard-coded breadcrumb `C:\moduleFILE.TXT` (L477034). `[VERIFIED-VB6]`
- `Proc_165_1` has no textual caller → the entire static registration surface may be dead code. `[UNKNOWN]`
- `Year End Updation (Finance)` and `Opening Balance Updation` dispatch to empty bodies.
- `FaTAGADADR.RPT` / `FaJRNLLog.RPT` referenced but absent from `Reports\`.
- `DATELOCK` table empty while SQL still reads it (L531108) → the back-date guard may never trip
  from that query; only `FaEnviro.DateLock` is live. `[INFERRED]`
- `OPT3` collisions inside `OPT1=11`: 15/16 reused by Cash Flow/Fund Flow, 32/33 reused by
  Control Ledger/Journal Books Log and Roz Namcha/TDS Report.
- 0 declared foreign keys — integrity is entirely application-enforced.

## 18. Migration Notes
- Reproduce **both** menu surfaces or explicitly choose the DB one: `menuHelp` is authoritative at
  runtime (`Proc_165_3_EEA710` L480844); treat `Proc_165_0` registrations as the seed/legacy path.
- Dispatch on `MenuHelp.[Option]` **exact string** (including double spaces); never on `OPT3`.
- Import `menuHelp` 1:1 as roles/permissions + menu registry; combine with `user1.PARAM_STR` AEDP
  for CRUD claims (`MENUHELP_PER_USER_ANALYSIS.md` §4).
- Port `Ledger`'s two-column `AmtDr`/`AmtCr` model exactly — every report and balance query assumes it.
- Keep the `LedgerLog`/`LedgerMLog` audit copy as the edit history; add real FKs
  (`Ledger.DocId → LedgerM.DocId`, `LedgerTDS`, `ledgerAdj`, `ledgerRef`) that the VB6 never declared.
- Replace `C:\moduleFILE.TXT` with an audit table.
- Add a loud failure for unknown dispatch keys — the VB6 silently swallows them (`On Error Resume Next`).
- Resolve `GRepFormName → .rpt` before porting reports: ~15 keys have no file on disk. `[UNKNOWN]`
- Decide explicitly whether `Balance Sheet` / `P&L` / `Trial Balance (Group)` / `Cash And Bank Books`
  should be reachable — today they are not.
