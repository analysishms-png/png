# 03_Finance - Reports

All FA reports are hosted by **`FaReports`** (EXTRAS.text L558503-L572402) and printed through
**`rFaRepView`** (L763058-L776752) / `FaRepView` (L572403-L572630).
The dispatcher sets `GRepFormName` on the form; `FaReports` branches on it. `[VERIFIED-VB6]`

Report folder path: `MemVar_1F810B4` = INI key `2` = `C:\PENDRIVE\HMS\Reports`
(`00_Project_Discovery/ini_analysis.txt` L7); `MemVar_1F813B0 = MemVar_1F810B4` (EXTRAS.text L9821),
so Finance `.RPT` files resolve in the same `Reports\` folder as everything else. `[VERIFIED-VB6]`
Live folder contains **371 `.rpt` files**. `[VERIFIED-SQL]`

## 1. Report menu rows and their `GRepFormName`

**Registration census for module `&HB`.** 28 `Proc_165_0_14C1708(..., &HB, ...)` calls exist in
`EXTRAS.text`: 26 inside `Proc_165_1_1EF3904` at **L475885-L475935**, plus 2 strays in
`Proc_4_36_13480F8` (`Expense Voucher` L11645, `Journal Books Log` L11681). One duplicate
(`Expense Voucher` L11645 == L475901) → **27 unique captions**, of which **24 are leaves**
(7 transaction screens + 17 report rows) and 3 are structure (`Financial Setup` L475885 type 4,
`Transaction` L475887 type 3, `Reports` L475903 type 3). `[VERIFIED-VB6]`

**DB menu census.** `MenuHelp_SA_tree.txt` has **33 rows with `OPT1=11`**: 3 structural
(`Finance|11|0|0|0|N`, `Transaction|11|11|0|0|N`, `Reports|11|13|0|0|N`) + **30 leaves**
(5 `Flag=E` entry rows under `OPT2=11`, 25 `Flag=R` report rows under `OPT2=13`). `[VERIFIED-SQL]`

### 1a. The 25 report rows present in `menuHelp`

`OPT3` is the per-group ordinal; note `Control Ledger` and `Journal Books Log` collide at `OPT3=32`,
and `Roz Namcha` and `TDS Report` at `OPT3=33`. `[VERIFIED-SQL]`

| menuHelp `Option` | OPT3 | Static registration | `GRepFormName` | Dispatch line | `.RPT` in `Reports\`? |
|---|---|---|---|---|---|
| Trial Balance | 11 | L475907 | `LEDTRIAL` — via **`FaMagic`**, not `FaReports` | L477328 | `[UNKNOWN]` |
| Ledger | 13 | L475909 | `Led` | L477383 | `[UNKNOWN]` |
| Cash Book | 15 | L475913 | `CashBook` | L477401 | `[UNKNOWN]` |
| Bank Book | 16 | L475915 | `BankBook` | L477408 | `[UNKNOWN]` |
| Journal Books | 17 | L475917 | `JournalBook` | L477415 | `[UNKNOWN]` |
| Annexure | 18 | L475919 | `Annexure` | L477422 | `[UNKNOWN]` |
| Bank Register | 19 | L475921 | `BankReg` | L477429 | `[UNKNOWN]` |
| Ageing Analysis for Debtors | 20 | L475923 | `AgingDr` | L477438 | `AgeingReport.rpt` (shared) `[INFERRED]` |
| Ageing Analysis for Creditors | 21 | L475925 | `AgingCr` | L477447 | `AgeingReport.rpt` (shared) `[INFERRED]` |
| Cheque Cleared Register | 22 | L475927 | `Clg` | L477456 | `[UNKNOWN]` |
| Cheque Not Cleared Register | 23 | L475929 | `ClgNot` | L477465 | `[UNKNOWN]` |
| Outstanding Report For Debtors | 24 | *(none)* | `LedDeb` | L477474 | `OutStanding.rpt` `[INFERRED]` |
| Outstanding Report For Creditors | 25 | *(none)* | `LedCred` | L477486 | `OutStanding.rpt` `[INFERRED]` |
| Daily Transaction Summary | 26 | *(none)* | `DailySumm` | L477496 | `[UNKNOWN]` |
| Non Transaction Report | 27 | *(none)* | `NonTrans` | L477503 | `[UNKNOWN]` |
| Reference Report | 28 | *(none)* | `RefReport` | L477512 | `FaAgRefNo.rpt` ✔ (L564664) |
| Detailed Trial Ledger | 29 | L475931 | `DetailedTrial` | L477521 | `[UNKNOWN]` |
| A/c Check List | 30 | *(none)* | `AcCheckList` | L477530 | `[UNKNOWN]` |
| Bill Wise Outstanding Report For Debtors | 31 | L475933 | `DUELIST` | L477538 | `FaDueList.rpt` ✔ (L570135) |
| Control Ledger | 32 | *(none)* | `CONTROLLED` | L477545 | `[UNKNOWN]` |
| Journal Books Log | 32 | L11681 *(stray)* | `JournalBookLog` | L477559 | `FaJRNLLog.RPT` **missing** ✗ |
| Roz Namcha | 33 | *(none)* | `RozNamcha` | L477552 | `[UNKNOWN]` |
| TDS Report | 33 | *(none)* | **no dispatcher branch** | — | `[UNKNOWN]` |
| Cash Flow | 15 | *(none)* | `CASHFLOW` — via **`FaMagic`** | L477340 | `[UNKNOWN]` |
| Fund Flow | 16 | *(none)* | `FUNDFLOW` — via **`FaMagic`** | L477352 | `[UNKNOWN]` |

*(none)* = no `Proc_165_0_14C1708(..., &HB, 1, ...)` registration exists. `[VERIFIED-VB6]`

**Dispatch keys are the menu captions, not the `GRepFormName`.** Every branch above is
`If (var_188 = "<caption>") Then ... var_90.GRepFormName = "<key>"`, and `var_188` comes from
`var_94 = Proc_165_3_EEA710(arg_C, var_130)` (L477039) → `Select [Option] From MenuHelp Where Code=<n>`
(L480844) → `var_188 = var_94` (L477055).
So a `menuHelp` row only works if its `Option` string matches a branch **exactly**, including spaces. `[VERIFIED-VB6]`

Two `menuHelp` report rows therefore hit **no** branch and fall through silently
(dispatcher starts `On Error Resume Next`, L477022):

- **`Roz Namcha`** — the branch that produces `GRepFormName = "RozNamcha"` is keyed **`Day  Book`
  (two spaces)** at L477552, not `Roz Namcha`. `[VERIFIED-VB6]`
- **`TDS Report`** — `If (var_188 = "TDS Report")` exists nowhere in EXTRAS.text. `[VERIFIED-VB6]`

### 1b. Registered in code but absent from `menuHelp`

| Caption | Registration | `GRepFormName` | Dispatch line |
|---|---|---|---|
| `Day Book` (single space) | L475905 | `DayBook` | L477376 |
| `Day  Book` (double space) | L475935 | **`RozNamcha`** | L477552 |
| `Interest Ledger` | L475911 | `LedInt` | L477391 |

`Day Book` and `Day  Book` differ only in the second space yet dispatch to **different** reports
(`DayBook` vs `RozNamcha`). `[VERIFIED-VB6]` `[VERIFIED-SQL]`

### 1c. Net set difference (module `&HB` only)

- **In `menuHelp`, no static registration (11):** `A/c Check List`, `Cash Flow`, `Control Ledger`,
  `Daily Transaction Summary`, `Fund Flow`, `Non Transaction Report`, `Outstanding Report For Creditors`,
  `Outstanding Report For Debtors`, `Reference Report`, `Roz Namcha`, `TDS Report`. `[VERIFIED-SQL]`
  → 9 of them still dispatch normally (a dispatcher branch exists; only the legacy seed is missing).
  → **`Roz Namcha` and `TDS Report` are dead** (no branch for those exact strings, §1a).
- **In code, no `menuHelp` row (5):** `Adjustment Entry` (L475891), `Delete Adjustment Entry` (L475893),
  `Day Book` (L475905), `Day  Book` (L475935), `Interest Ledger` (L475911). `[VERIFIED-VB6]`
  All 5 have live dispatcher branches (L477257, L477264, L477376, L477552, L477391) but **no DB menu
  row**, so with the DB-driven runtime menu they are unreachable in this database. `[INFERRED]`
  `Adjustment Entry` / `Delete Adjustment Entry` are the serious ones — real transaction screens
  (`FaAdjust` / `FaAdjustDel`).

## 2. Where `GRepFormName` is consumed inside `FaReports`

`[VERIFIED-VB6]`

| Line | Branch |
|---|---|
| L558823 | `GRepFormName = "DayBook" Or "JournalBook" Or "JournalBookLog"` |
| L558873 | `GRepFormName = "LedDeb" Or "MemLed"` |
| L559376, L560869, L560969, L561026, L561167, L562688, L562745, L562842 | `Led / LedInt / LedDeb / MemLed / LedCred / AcCheckList` |
| L561861, L563283 | `GRepFormName = "Annexure"` |
| L562454 | `LedDeb Or MemLed` |
| L562612, L563709 | `GRepFormName = "AcCheckList"` |
| L563183 | `CStr((GRepFormName = "DUELIST"))` |
| L564321 | `AgingDr Or AgingRepDr` |
| L564325 | `AgingCr Or AgingRepCr` |
| L569903, L569916 | `GRepFormName = "DueListCreditorOverLay"` in due-list SQL |

## 3. Crystal `.RPT` resolution

Two mechanisms `[VERIFIED-VB6]`:

1. **Helper with an explicit name** — `Proc_183_57_1044F1C(var, "<ReportName>")`
   at L564677 (`"RefReport"`) and L572399 (`"AgeingReport"`).
2. **Direct `Method_arg_1C` (print) calls** inside `FaReports`:

| Line | Report file |
|---|---|
| L564664 | `MemVar_1F813B0 & "\FaAgRefNo.RPT"` — present ✔ |
| L566584 | `MemVar_1F813B0 & "\FaJRNLLog.RPT"` — **not in `Reports\`** ✗ |
| L569531 | `MemVar_1F813B0 & "\FaTAGADALET.RPT"` — present ✔ |
| L569595 | `MemVar_1F813B0 & "\FaTAGADADR.RPT"` — **not in `Reports\`** ✗ |
| L570135 | `MemVar_1F813B0 & "\FaDueList.RPT"` — present ✔ |
| L571498 | `var_124 & global_124 & ".RPT"` with `global_124 = "FABudgetVarience"` (L571489) — present ✔ |
| L571841 | same with `global_124 = "FABudgetRep"` (L571834) — present ✔ |
| L572223 | `MemVar_1F813B0 & "\AGEINGREPORT.RPT"` → `AgeingReport.rpt` — present ✔ |
| L567397 | `global_124 = "DayBook"` → `DayBook.rpt` — **not in `Reports\`** ✗ |

`ttx`/`rpt` pairs for the rest of FA: `FaBankRecon.rpt`, `FaJvchr.rpt`, `FaJvchr000.rpt`,
`FaJvchrRect.rpt`, `FaGrpListTree.rpt`, `FaPartyTree.rpt`, `FaPartyMast.rpt`, `FaArea.rpt`,
`FaCity.rpt`, `FaCountry.rpt`, `FaState.rpt`, `CNB.rpt`, `OutStanding.rpt`,
`BillWiseAdjustmentReport.rpt`, `ChequePrint.rpt`, `GuestTrialBalance.rpt`, `NaGuestTrialBal.rpt`
are all present but their dispatcher keys are `[INFERRED]` (no direct source line binds them).

`17_Reports/REPORTS_ANALYSIS.md` maps `.rpt`/`.ttx` pairs globally but does not resolve the
`GRepFormName → file` table. `[VERIFIED-SQL]`

## 4. Financial statements (`FaMagic`, L541582-L544597)

| Dispatch caption | `OpenType` | Dispatch line | Menu reach |
|---|---|---|---|
| Balance Sheet | `BALSHEET` | L477292/L477293 | **none** (orphan branch) |
| Profit And Loss Account | `PROFLOSS` | L477304/L477305 | **none** |
| Trial Balance (Group) | `GROUPTRIAL` | L477316/L477317 | **none** |
| Trial Balance | `LEDTRIAL` | L477328/L477329 | `menuHelp` `Trial Balance\|11\|13\|11\|0\|R` |
| Cash Flow | `CASHFLOW` | L477340/L477341 | `menuHelp` `Cash Flow\|11\|13\|15\|0\|R` |
| Fund Flow | `FUNDFLOW` | L477352/L477353 | `menuHelp` `Fund Flow\|11\|13\|16\|0\|R` |
| Cash And Bank Books | `CASHBANKSUM` | L477364/L477365 | **none** |

All set `ShowSiteWise = True`. `[VERIFIED-VB6]`
`FaMagic` SQL: `SELECT '' as O,SITE_DESC AS Site,SITE_CODE FROM SITE ORDER BY SITE_dESC` (L542525),
`SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='<site>'` (L542558, L542697),
`SELECT GROUPNAME FROM ACGROUP WHERE GROUPCODE=` (L544038). `[VERIFIED-VB6]`
`Site` has 0 rows → the site list for these statements is empty in this database. `[VERIFIED-SQL]`

## 5. Report-side environment writes

`UPDATE FAENVIRO SET TagadaHeader1 = <value>` (`EXTRAS.text` L558875) — the report banner is editable
from the report screen and persists to the finance environment row. `[VERIFIED-VB6]`

## 6. Report criteria controls observed

- Site picker `SELECT '' as O, Site_Code AS Code, Site_Desc AS NAME From Site Order by Site_Desc`
  (`EXTRAS.text` L558978) — empty in this DB. `[VERIFIED-VB6]` `[VERIFIED-SQL]`
- Group picker `SELECT '' as O,GroupName,GroupCode as Code from AcGroup Order by GroupName` (L561627,
  L563702). `[VERIFIED-VB6]`
- Account picker over `SUBGROUP` / `ViewSubgroup` (L561863, L563700). `[VERIFIED-VB6]`
- City picker `SELECT '' as O,CityName,CityCode as Code from City Order by CityName` (L561758). `[VERIFIED-VB6]`
- Budget join over `Budget` (L563444) — table empty. `[VERIFIED-VB6]` `[VERIFIED-SQL]`

## 7. Print-format mechanism

`PrintFormats` / `PrinterSetup` tables are created/verified in `EXTRAS.text` L11698-L11699
(`Proc_6_96_FCA940(var_94, "PrintFormats", "Site_Code", ...)`, `... "PrintFormats", "U_EntDt" ...`).
Format selection detail for Finance reports: `[UNKNOWN]`.

## 8. Screenshots available for reports

`../../screenshots/03_Finance/` holds 13 `C4_L1+sub_Finance__Reports__*` PNGs plus
`C4_L1+sub_ReprtForm_*.png`:

Ageing_Analysi (×2), Annexure, Bank_Book, Bank_Register, Bill_Wise_Outs, Cash_Flow,
Cheque_Cleared, Cheque_Not_Cle, Detailed_Trial, Fund_Flow, Journal_Books (×2), Outstanding_Re.

Note the capture set includes `Cash_Flow` and `Fund_Flow` — consistent with those two being reachable
from the DB menu (`menuHelp` rows) even though they have no static registration. `[INFERRED]`
