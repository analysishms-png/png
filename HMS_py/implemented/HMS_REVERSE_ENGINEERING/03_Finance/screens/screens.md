# 03_Finance - Screens

Module id: builder `&HB` (decimal 11) · menu_tree hex `B` · `menuHelp.OPT1 = 11` (root caption `Finance`).

Menu source: `19_VB6_Logic/menu_tree_raw.txt` L20-L45 (26 unique rows + 2 stray duplicate rows at L6 and L19).
Menu registration source: `EXTRAS.text` L475885-L475935 (`Proc_165_1_1EF3904`, module `&HB`) plus 2 stray
registrations at `EXTRAS.text` L11645 and L11681 (inside `Proc_4_36_13480F8`).

## 0. Which menu surface is authoritative?

There are **two independent menu surfaces**, and they do not agree:

| Surface | Source | Finance leaf rows |
|---|---|---|
| Static builder registrations | `Proc_165_0_14C1708` calls, module `&HB` — 28 calls, 27 unique captions, **24 leaves** (7 entry + 17 report) | `EXTRAS.text` L475885-L475935 + strays L11645/L11681 `[VERIFIED-VB6]` |
| Per-user DB menu | `MenuHelp_SA_tree.txt` rows with `OPT1=11` — 33 rows (3 structural + **30 leaves**: 5 `E` + 25 `R`) | `[VERIFIED-SQL]` |

At runtime the menu is built **from the database**, not from the builder calls:

- module tabs: `Select [Option] Name,OPT1 from MenuHelp Where Flag<>'V' And OPT1<>0 And OPT2=0 And OPT3=0 And OPT4=0 And UserName='...'` (`EXTRAS.text` L8279-L8280) `[VERIFIED-VB6]`
- sub-menu items: `Select [Option] Name,Cast(Code As Varchar) CODE from MenuHelp Where Flag<>'V' ... And UserName='...'` (`EXTRAS.text` L8392-L8393) `[VERIFIED-VB6]`
- click: `Select OPT1,OPT2,OPT3,OPT4,FLAG,CODE from MenuHelp Where Code=<n> And UserName='...'` (`EXTRAS.text` L4644/L4647) `[VERIFIED-VB6]`
- dispatch key resolution: `Select [Option] From MenuHelp Where Code=<n> AND UserName='...' and compcode='...'` (`Proc_165_3_EEA710`, `EXTRAS.text` L480844) `[VERIFIED-VB6]`

So `menuHelp.[Option]` is the canonical dispatch key; `Proc_165_0` registrations are a legacy/seed surface. `[INFERRED]`

## 1. Transaction / entry screens (menu type 0 - 7 items)

| # | Menu caption | menu_tree_raw | Builder registration | Index | Menu array | Form opened | Dispatch line | Evidence |
|---|---|---|---|---|---|---|---|---|
| 1 | Voucher Entry | L23 | `EXTRAS.text` L475889 | 0 | `fate` | `FaVrEnt` | `EXTRAS.text` L477250 | `[VERIFIED-VB6]` |
| 2 | Adjustment Entry | L24 | L475891 | 1 | `fate` | `FaAdjust` | L477257 | `[VERIFIED-VB6]` |
| 3 | Delete Adjustment Entry | L25 | L475893 | 2 | `fate` | `FaAdjustDel` | L477264 | `[VERIFIED-VB6]` |
| 4 | Bank Reconciliation | L26 | L475895 | 3 | `fate` | `FaChqClear` | L477271 | `[VERIFIED-VB6]` |
| 5 | T.D.S. Challan Entry | L27 | L475897 | 4 | `fate` | `FaTDSChal` | L477278 | `[VERIFIED-VB6]` |
| 6 | T.D.S. Certificate Entry | L28 | L475899 | 5 | `fate` | `FaTDSCertificate` | L477285 | `[VERIFIED-VB6]` |
| 7 | Expense Voucher | L6 (stray) / L20 | L475901 (+ stray L11645) | 6 | `fate` | `FaTaxVoucher` | L479131 | `[VERIFIED-VB6]` |

`menuHelp` group `Transaction|11|11|0|0|N` exposes only **5** of these 7 for user SA (5 `Flag=E` rows):
Voucher Entry `OPT3=11`, Expense Voucher `12`, Bank Reconciliation `14`, T.D.S. Challan Entry `15`,
T.D.S. Certificate Entry `16`.
**`Adjustment Entry` and `Delete Adjustment Entry` have no `menuHelp` row at all** (`OPT3=13` is skipped)
even though both are registered in code and both have live dispatcher branches. `[VERIFIED-SQL]`

## 2. Report screens (menu type 1 - 17 items: 16 in `Proc_165_1` + 1 stray)

See `../reports/reports.md`. Registered at `EXTRAS.text` L475905-L475935, menu array `FAREPORT`.
Form opened is always `FaReports`, parameterised by `GRepFormName`.

| Menu caption | menu_tree_raw | Builder reg. | Index (hex) | GRepFormName | Dispatch line |
|---|---|---|---|---|---|
| Day Book | L29 | L475905 | 0 | `DayBook` | L477376 |
| Trial Balance | L31 | L475907 | 1 | `FaMagic`/`LEDTRIAL` (see `reports.md`) | L477328 |
| Ledger | L32 | L475909 | 3 | `Led` | L477383 |
| Interest Ledger | L33 | L475911 | 4 | `LedInt` | L477391 |
| Cash Book | L34 | L475913 | 5 | `CashBook` | L477401 |
| Bank Book | L35 | L475915 | 6 | `BankBook` | L477408 |
| Journal Books | L36 | L475917 | 7 | `JournalBook` | L477415 |
| Annexure | L37 | L475919 | `&HA` (10) | `Annexure` | L477422 |
| Bank Register | L38 | L475921 | `&HD` (13) | `BankReg` | L477429 |
| Ageing Analysis for Debtors | L39 | L475923 | `&HE` (14) | `AgingDr` | L477438 |
| Ageing Analysis for Creditors | L40 | L475925 | `&HF` (15) | `AgingCr` | L477447 |
| Cheque Cleared Register | L41 | L475927 | `&H17` (23) | `Clg` | L477456 |
| Cheque Not Cleared Register | L42 | L475929 | `&H18` (24) | `ClgNot` | L477465 |
| Detailed Trial Ledger | L43 | L475931 | `&H1F` (31) | `DetailedTrial` | L477521 |
| Bill Wise Outstanding Report For Debtors | L44 | L475933 | `&H21` (33) | `DUELIST` | L477538 |
| Day  Book *(two spaces)* | L45 | L475935 | `&H23` (35) | `RozNamcha` | L477552 |
| Journal Books Log | L19 (stray) | L11681 (stray) | `&H24` (36) | `JournalBookLog` | L477559 |

Builder index values inside the `Reports` group are 0, 1, 3, 4, 5, 6, 7, `&HA`, `&HD`, `&HE`, `&HF`,
`&H17`, `&H18`, `&H1F`, `&H21`, `&H23`, `&H24` — gaps at 2, 8, 9, 11, 12, 16-22, 25-30, 32, 34.
These are **not** the same numbering as `menuHelp.OPT3` (e.g. `Trial Balance` = index 1 but `OPT3` 11;
`Ledger` = index 3 but `OPT3` 13; `Annexure` = index 10 but `OPT3` 18). The two numbering schemes
do not reconcile from the available evidence: `[INFERRED]` `[UNKNOWN]`
Neither surface uses the builder index at runtime — dispatch goes through `MenuHelp.Code` only.

## 3. Module / group headers

| Caption | Type | Builder reg. | menuHelp row | Evidence |
|---|---|---|---|---|
| Financial Setup (module root) | 4 | `EXTRAS.text` L475885 | `Finance\|11\|0\|0\|0\|N` | `[VERIFIED-VB6]` / `[VERIFIED-SQL]` |
| Transaction (group) | 3 | L475887 | `Transaction\|11\|11\|0\|0\|N` | both |
| Reports (group) | 3 | L475903 | `Reports\|11\|13\|0\|0\|N` | both |

Note the caption drift: the builder root caption is `Financial Setup`, the DB root caption is `Finance`. `[VERIFIED-VB6]`/`[VERIFIED-SQL]`

## 4. menuHelp-only rows (no static registration) — 11

`MenuHelp_SA_tree.txt` rows with `OPT1=11` that have **no** `Proc_165_0_14C1708(..., &HB, ...)` call
anywhere in EXTRAS.text. All 11 are report rows (`Flag=R`, `OPT2=13`).

| menuHelp row | OPT3 | Dispatcher branch | Dispatch line | Reachable? |
|---|---|---|---|---|
| Cash Flow | 15 | `FaMagic` / `CASHFLOW` | `EXTRAS.text` L477340 | yes |
| Fund Flow | 16 | `FaMagic` / `FUNDFLOW` | L477352 | yes |
| Outstanding Report For Debtors | 24 | `FaReports` / `LedDeb` | L477474 | yes |
| Outstanding Report For Creditors | 25 | `FaReports` / `LedCred` | L477486 | yes |
| Daily Transaction Summary | 26 | `FaReports` / `DailySumm` | L477496 | yes |
| Non Transaction Report | 27 | `FaReports` / `NonTrans` | L477503 | yes |
| Reference Report | 28 | `FaReports` / `RefReport` | L477512 | yes |
| A/c Check List | 30 | `FaReports` / `AcCheckList` | L477530 | yes |
| Control Ledger | 32 | `FaReports` / `CONTROLLED` | L477545 | yes |
| **Roz Namcha** | 33 | **none** (the `RozNamcha` branch is keyed `Day  Book`, L477552) | - | **NO** |
| **TDS Report** | 33 | **none** (`rg -F 'var_188 = "TDS Report"'` → 0 hits) | - | **NO** |

Evidence: `[VERIFIED-SQL]` for the rows, `[VERIFIED-VB6]` for the branch lines, `[VERIFIED-VB6]`
for the two negative checks.

`Cash Flow|11|13|15` and `Fund Flow|11|13|16` collide on `OPT3` with `Cash Book|11|13|15` and
`Bank Book|11|13|16`; `Control Ledger|11|13|32` with `Journal Books Log|11|13|32`;
`Roz Namcha|11|13|33` with `TDS Report|11|13|33`. Because dispatch goes through `MenuHelp.Code`
(not `OPT3`) this is not fatal, but a rebuild keyed on `OPT3` would lose rows. `[VERIFIED-SQL]` `[INFERRED]`

## 5. Dispatcher branches with no `menuHelp` row of their own

These captions have a live `If (var_188 = "...")` branch in `Proc_165_2_1E3A588` but **no**
`menuHelp` row anywhere in `MenuHelp_*_tree.txt`. With the DB-driven runtime menu they are
unreachable unless another user's `menuHelp` subtree contains them. `[VERIFIED-VB6]` `[VERIFIED-SQL]`

| Branch | Dispatch line | Form / parameter | Also registered? |
|---|---|---|---|
| Adjustment Entry | `EXTRAS.text` L477257 | `FaAdjust` | yes, L475891 |
| Delete Adjustment Entry | L477264 | `FaAdjustDel` | yes, L475893 |
| Day Book *(single space)* | L477376 | `FaReports` / `DayBook` | yes, L475905 |
| Day  Book *(two spaces)* | L477552 | `FaReports` / `RozNamcha` | yes, L475935 |
| Interest Ledger | L477391 | `FaReports` / `LedInt` | yes, L475911 |

## 5b. Branches reachable from **neither** menu surface (true orphans)

No `&HB` registration **and** no `menuHelp` row in any of the 5 extracted user trees:

| Branch | Dispatch line | Form / parameter | Evidence |
|---|---|---|---|
| Balance Sheet | `EXTRAS.text` L477292 | `FaMagic`, `OpenType="BALSHEET"`, `ShowSiteWise=True` | `[VERIFIED-VB6]` |
| Profit And Loss Account | L477304 | `FaMagic`, `OpenType="PROFLOSS"` | `[VERIFIED-VB6]` |
| Trial Balance (Group) | L477316 | `FaMagic`, `OpenType="GROUPTRIAL"` | `[VERIFIED-VB6]` |
| Cash And Bank Books | L477364 | `FaMagic`, `OpenType="CASHBANKSUM"` | `[VERIFIED-VB6]` |

By contrast `Cash Flow` (L477340) and `Fund Flow` (L477352) have **no registration but do have
`menuHelp` rows** (`Cash Flow|11|13|15`, `Fund Flow|11|13|16`) → reachable, see §4. `[VERIFIED-SQL]`

## 6. Dead items — two different kinds

**(a) Registered but no dispatcher branch:** none of the **24 leaf** captions.
Negative check with `rg -F "If (var_188 = \"<caption>\")" EXTRAS.text` over all 27 unique `&HB`
captions: 24/24 leaves matched; the 3 structural captions (`Financial Setup` L475885, `Transaction`
L475887, `Reports` L475903) correctly have **no** branch — they are rendered as headers by the menu
builder, never dispatched. `[VERIFIED-VB6]`

**(b) `menuHelp` row but no dispatcher branch (dead at runtime):**

| menuHelp row | Row | Evidence |
|---|---|---|
| `Roz Namcha\|11\|13\|33\|0\|R` | the `RozNamcha` report branch is keyed `Day  Book` (2 spaces), L477552 | `[VERIFIED-VB6]` `[VERIFIED-SQL]` |
| `TDS Report\|11\|13\|33\|0\|R` | `rg -F 'If (var_188 = "TDS Report")' EXTRAS.text` → 0 hits | `[VERIFIED-VB6]` `[VERIFIED-SQL]` |

Both fail silently: the dispatcher starts `On Error Resume Next` (L477022) and `var_188` simply
matches no branch, so no form opens and no message is shown. `[VERIFIED-VB6]`

## 7. Finance masters reachable from module `C` (Main Setup)

The chart-of-accounts and finance-config screens live under **Main Setup → Financial Setup**, not under this module:

| Caption | Group | Form | Dispatch line | menuHelp row |
|---|---|---|---|---|
| Group Accounts | Financial Setup | `FaGrEnt` | `EXTRAS.text` L478022 | `Group Accounts\|12\|19\|11\|0\|E` |
| Ledger Accounts | Financial Setup | `FaSubGroup` | L478029 | `Ledger Accounts\|12\|19\|12\|0\|E` |
| Narration Master | Financial Setup | `FaNarrMast` | L478140 | `Narration Master\|12\|19\|13\|0\|E` |
| T.D.S. Category | Financial Setup | `FaTDSCat` | L478147 | `T.D.S. Category\|12\|19\|14\|0\|E` |
| FA Environment | Financial Setup | *(no `New <form>` — indirect `0.Method_arg_54`)* | L478155-L478159 | `FA Environment\|12\|19\|15\|0\|E` |
| Voucher Environment | Financial Setup | *(same pattern)* | L478161-L478165 | `Voucher Environment\|12\|19\|16\|0\|E` |
| Year End Updation | Financial Setup | `frmYearEnd` | L477223 | `Year End Updation\|12\|19\|17\|0\|E` |
| Current Balance Updation | Financial Setup | `FaCurrBalUpdate` | L480459-L480460 | `Current Balance Updation\|12\|19\|18\|0\|E` |
| Account Merging | Financial Setup | `AccountMerg` | L478173-L478174 | `Account Merging\|12\|19\|19\|0\|E` |
| Voucher Serialisation | Financial Setup | `FrmSerialiseVr` | L478180-L478181 | `Voucher Serialisation\|12\|19\|20\|0\|E` |
| Country / State / City Master | Financial Setup | `FaCountryMast` / `FaStateMast` / `FaCityMast` | L477596 / L477602 / L477608 | also under `OPT2=20` Utility |

Group header registration: `("Financial Setup", &HC, 3, "Main Setup", vbNullString, &HFF, "fae", 1)` at
`EXTRAS.text` L476127. `[VERIFIED-VB6]`
menuHelp group: `Finance|12|19|0|0|N`. `[VERIFIED-SQL]`

Two no-op branches (registered + dispatched, empty body):
`Year End Updation (Finance)` at `EXTRAS.text` L478170-L478172 and `Opening Balance Updation` at L478167-L478168. `[VERIFIED-VB6]`

## 8. Object ranges (decompiled source)

| Object | EXTRAS.text lines | Role |
|---|---|---|
| `FaVoucher` | 18720-19098 | shared voucher helpers (`NCAT` from `Voucher_Type`, row counts) |
| `AccountMerg` | 500575-501369 | A/c Merging screen |
| `FaLib` | 519755-521907 | finance shared library (running balances) |
| `FaSubGroup` | 521908-525400 | Ledger Accounts (SubGroup master) |
| `FaVrEnt` | 525401-535557 | Voucher Entry (core posting engine) |
| `FaMagic` | 541582-544597 | financial statements (Balance Sheet / P&L / Trial / Cash-Flow) |
| `FaTDSChal` | 544598-546579 | T.D.S. Challan Entry |
| `FAFind` | 546580-546941 | find dialog |
| `FaAdjust` | 546942-547815 | Adjustment Entry |
| `FaAdjustDel` | 547816-548010 | Delete Adjustment Entry |
| `FaChqClear` | 548011-549703 | Bank Reconciliation |
| `FaCityMast` / `FaCountryMast` / `FaStateMast` | 549704-552810 | geo masters |
| `FaCurrBalUpdate` | 552811-554209 | Current Balance Updation |
| `FaEnvron` | 554210-555837 | FA Environment table access |
| `FaGlobeNarr` | 555838-555998 | global narration |
| `FaGrEnt` | 555999-557753 | Group Accounts (AcGroup) |
| `FaNarrMast` | 557754-558502 | Narration Master |
| `FaReports` | 558503-572402 | all FA report datasets |
| `FaRepView` | 572403-572630 | report viewer shell |
| `FaTDSCat` | 572631-573444 | T.D.S. Category |
| `FaTDSCertificate` | 573445-574825 | T.D.S. Certificate Entry |
| `FaVtype` | 574826-578256 | voucher type / serialisation |
| `rFaRepView` | 763058-776752 | report form used by `FaReports` |
| `frmTallyExport` | 961605-962570 | Tally XML export (dispatched from Main Setup) |
| `FaTaxVoucher` | 972429-982219 | Expense Voucher |

`[VERIFIED-VB6]`
