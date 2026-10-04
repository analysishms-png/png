# 03_Finance - VB6 logic

All line numbers are `EXTRAS.text` unless stated. Tags: `[VERIFIED-VB6]` decompiled source,
`[VERIFIED-SQL]` DB extracts, `[INFERRED]`, `[UNKNOWN]`.

## 1. Menu construction

- `Public Sub Proc_165_0_14C1708(caption, moduleHex, type, parent, iconKey, index, menuName, flag)`
  at **L475664** — generic menu-item registrar used by every module. `[VERIFIED-VB6]`
- `Public Sub Proc_165_1_1EF3904` at **L475818-L476998** — the routine that contains *all* static menu
  registrations, including the whole `&HB` block at L475885-L475935 and the whole `&HC` block at
  L475938-L476204. It is guarded at entry by
  `If (Len(MemVar_1F81228) = 1) Then Exit Sub` (L475830-L475831) and keyed on
  `Ucase(Mid(MemVar_1F81228,1,1))` (L475835) — i.e. it registers one module per call, selected by the
  module hex string. `[VERIFIED-VB6]`
- **No textual caller of `Proc_165_1_1EF3904` exists in EXTRAS.text** (`rg "1EF3904"` returns only the
  definition). Its invocation path is `[UNKNOWN]` — likely dynamic dispatch or an event proc.
- A second registration routine, `Proc_4_36_13480F8` at **L11625-L11684**, registers a scattered set of
  "missed" items across modules: `Expense Voucher` (`&HB`, L11645), `Member Select Category` (`&HC`, L11677),
  `Journal Books Log` (`&HB`, L11681), plus GST / POS / MIS items. `[VERIFIED-VB6]`

### Registration arguments for module `&HB` (Finance)

Format: `("caption", &HB, type, parent, iconKey, index, menuName, flag)`.

```
L475885 ("Financial Setup", &HB, 4, vbNullString, vbNullString, 0)                  <- root
L475887 ("Transaction",     &HB, 3, vbNullString, vbNullString, &HFF, "FAT")       <- group
L475889 ("Voucher Entry",   &HB, 0, "Transaction", vbNullString, 0, "fate", 1)
L475891 ("Adjustment Entry",... 1, ...)
L475893 ("Delete Adjustment Entry", ... 2, ...)
L475895 ("Bank Reconciliation", ... 3, ...)
L475897 ("T.D.S. Challan Entry", ... 4, ...)
L475899 ("T.D.S. Certificate Entry", ... 5, ...)
L475901 ("Expense Voucher", ... 6, ...)
L475903 ("Reports", &HB, 3, vbNullString, vbNullString, &HFF, "farp", 1)            <- group
L475905..L475935  16 report rows, type 1, parent "Reports", menuName "FAREPORT"
```

Type codes: `4` = module root, `3` = group header, `0` = screen, `1` = report, `2` = screen-variant. `[INFERRED]`
Counts for module `&HB`: 4→1, 3→2, 0→6(+1 stray), 1→16(+1 stray). `[VERIFIED-VB6]`

## 2. Runtime menu assembly (the surface that actually renders)

1. Module tabs — `EXTRAS.text` L8279-L8280:
   `Select [Option] Name,OPT1 from MenuHelp Where Flag<>'V' And OPT1<>0 And OPT2=0 And OPT3=0 And OPT4=0
    And UserName='<MemVar_1F810C8>' And CompCode='<MemVar_1F81128>' Order By Code`
   Each row becomes a `CmdMainMenu` element (`Me.CmdMainMenu.Load`, L8334). `[VERIFIED-VB6]`
2. Sub-menu items — `EXTRAS.text` L8386-L8393: a predicate is assembled from `arg_C..arg_18`
   (`And OPT1=.. And OPT2=.. And OPT3=.. And OPT4=..`), then
   `Select [Option] Name,Cast(Code As Varchar) CODE from MenuHelp Where Flag<>'V' <pred> And UserName='..'`.
   Each row becomes a `CmdSubMenu` element whose `Tag` carries `Code` (L8401-L8411). `[VERIFIED-VB6]`
3. Click — `CmdSubMenu_UnknownEvent_9(Index)` at **L4635**:
   `Select OPT1,OPT2,OPT3,OPT4,FLAG,CODE from MenuHelp Where Code=<Code> And UserName='..' And CompCode='..'`
   (L4644-L4647), then walks `Flag`/`Opt1..Opt4` to set `global_80`/`global_84`/`global_88` breadcrumb
   globals (L4653-L4676), and finally
   `Proc_165_2_1E3A588(CLng(var_88.Fields.Item("Code").Value), global_68)` at **L4700**. `[VERIFIED-VB6]`

## 3. Dispatcher — `Proc_165_2_1E3A588(arg_C, arg_10)` (L476999-L480833)

Prologue (all `[VERIFIED-VB6]`):

| Line | Statement | Purpose |
|---|---|---|
| L477022 | `On Error Resume Next` | silent failure for every downstream error |
| L477023 | `Execute "Select * from Enviro"` | global environment |
| L477025 | `Proc_6_16_EA44E0(..., "Select * From Enviro WHERE LOGSITE_CODE=", ...)` | site-scoped environment |
| L477031 | `MemVar_1F8120C = Proc_6_37_E618F4(...Item("TouchScreen"))` | touch-screen mode flag |
| L477034 | `Open "C:\moduleFILE.TXT" For Append As 1` | **hard-coded breadcrumb log** |
| L477039 | `var_94 = Trim(Proc_165_3_EEA710(arg_C, var_130))` | caption lookup by `MenuHelp.Code` |
| L477040-L477045 | breadcrumb `arg_10 = arg_10 & " > " & var_94` | menu path string |
| L477046-L477047 | `SELECT Param_Str AS UPrivilege,Module_Name,OutletCode FROM menuHelp WHERE UserName='..' AND CompCode='..' AND Code=<arg_C>` | **per-item privilege + outlet context** |
| L477050-L477052 | `var_A8 = ...(Module_name, UPrivilege)`, `var_AC = ...(OutletCode, ...)` | consumed by the form |
| L477055 | `var_188 = var_94` | **the dispatch key** |

Then a single flat chain on `var_188` in two rendering styles:

- **If-style**: `If (var_188 = "<caption>") Then ... End If` — L477056-L480197 (439 branches extracted).
- **Loop-style**: `Loop Until (var_188 = "<caption>") ... Set var_90 = New <Form>` — L480204-L480800
  (`'do at: 1E2xxxx` back-annotation shows the original VB6 structure).

There is **exactly one dispatcher for all modules**; no second dispatcher exists. `[VERIFIED-VB6]`

## 4. Lookup helpers

| Proc | Line | SQL |
|---|---|---|
| `Proc_165_3_EEA710(arg_C)` | L480834/L480844 | `Select [Option] From MenuHelp Where Code=<n> AND UserName='..' and compcode='..'` |
| `Proc_165_4_1028884(arg_C)` | L480853/L480862 | `Select OutletCode From MenuHelp Where Code=<n> AND UserName='..' AND CompCode='..'` then `Select RestType,BackColor From Depart Where Code='<outlet>'` (L480867) |
| `Proc_165_5_1042728(arg_C)` | L480880 | `[UNKNOWN]` body not extracted |
| `Proc_165_6_1342C90` | L480907 | `[UNKNOWN]` body not extracted |

## 5. Finance dispatch branches (module `&HB` + Finance groups of `&HC`)

### 5.1 Transactions

| `var_188` | Line | Instantiation | Notes |
|---|---|---|---|
| `Voucher Entry` | L477250 | `New FaVrEnt` | core posting engine |
| `Adjustment Entry` | L477257 | `New FaAdjust` | |
| `Delete Adjustment Entry` | L477264 | `New FaAdjustDel` | |
| `Bank Reconciliation` | L477271 | `New FaChqClear` | |
| `T.D.S. Challan Entry` | L477278 | `New FaTDSChal` | |
| `T.D.S. Certificate Entry` | L477285 | `New FaTDSCertificate` | |
| `Expense Voucher` | L479131 | `New FaTaxVoucher` | purchase/expense voucher |

### 5.2 Statements (`FaMagic`, parameterised by `OpenType`)

| `var_188` | Line | `OpenType` | Reachable? |
|---|---|---|---|
| `Balance Sheet` | L477292/L477293 | `BALSHEET` | no menu row anywhere |
| `Profit And Loss Account` | L477304/L477305 | `PROFLOSS` | no menu row anywhere |
| `Trial Balance (Group)` | L477316/L477317 | `GROUPTRIAL` | no menu row anywhere |
| `Trial Balance` | L477328/L477329 | `LEDTRIAL` | `menuHelp` `Trial Balance\|11\|13\|11\|0\|R` |
| `Cash Flow` | L477340/L477341 | `CASHFLOW` | `menuHelp` only |
| `Fund Flow` | L477352/L477353 | `FUNDFLOW` | `menuHelp` only |
| `Cash And Bank Books` | L477364/L477365 | `CASHBANKSUM` | no menu row anywhere |

All seven set `ShowSiteWise = True`. `[VERIFIED-VB6]`

### 5.3 Reports → `FaReports` + `GRepFormName`

| `var_188` | Line | `GRepFormName` |
|---|---|---|
| `Ageing Analysis (Debtors)` | L477139 | `AgingRepDr` (Menu Help `OPT1=13`, POS module) |
| `Ageing Analysis (Creditors)` | L477148 | `AgingRepCr` |
| `Day Book` | L477376 | `DayBook` |
| `Ledger` | L477383 | `Led` |
| `Interest Ledger` | L477391 | `LedInt` |
| `Cash Book` | L477401 | `CashBook` |
| `Bank Book` | L477408 | `BankBook` |
| `Journal Books` | L477415 | `JournalBook` |
| `Annexure` | L477422 | `Annexure` |
| `Bank Register` | L477429 | `BankReg` |
| `Ageing Analysis for Debtors` | L477438 | `AgingDr` |
| `Ageing Analysis for Creditors` | L477447 | `AgingCr` |
| `Cheque Cleared Register` | L477456 | `Clg` |
| `Cheque Not Cleared Register` | L477465 | `ClgNot` |
| `Outstanding Report For Debtors` | L477474 | `LedDeb` |
| `Outstanding Report For Creditors` | L477486 | `LedCred` |
| `Daily Transaction Summary` | L477496 | `DailySumm` |
| `Non Transaction Report` | L477503 | `NonTrans` |
| `Reference Report` | L477512 | `RefReport` |
| `Detailed Trial Ledger` | L477521 | `DetailedTrial` |
| `A/c Check List` | L477530 | `AcCheckList` |
| `Bill Wise Outstanding Report For Debtors` | L477538 | `DUELIST` |
| `Control Ledger` | L477545 | `CONTROLLED` |
| `Day  Book` (2 spaces) | L477552 | `RozNamcha` |
| `Journal Books Log` | L477559 | `JournalBookLog` |

`GRepFormName` is consumed inside `FaReports` at L558823, L558873, L559376, L560869, L561861, L562612,
L563183 (`DUELIST`), L563709, L564321/L564325 (`AgingDr`/`AgingCr`), L569903/L569916. `[VERIFIED-VB6]`

### 5.4 Finance masters dispatched from Main Setup groups

| `var_188` | Line | Instantiation |
|---|---|---|
| `Group Accounts` | L478022/L478023 | `New FaGrEnt` |
| `Ledger Accounts` | L478029/L478030 | `New FaSubGroup` |
| `Narration Master` | L478140 | `New FaNarrMast` |
| `T.D.S. Category` | L478147 | `New FaTDSCat` |
| `Country Master` | L477596 | `New FaCountryMast` |
| `State Master` | L477602 | `New FaStateMast` |
| `City Master` | L477608 | `New FaCityMast` |
| `Account Merging` | L478173/L478174 | `New AccountMerg`, sets `.ParentForm = "Check Out"` |
| `Voucher Serialisation` | L478180/L478181 | `New FrmSerialiseVr` |
| `Current Balance Updation` | L480459/L480460 | `New FaCurrBalUpdate` (Loop-Until region) |
| `FA Environment` | L478155-L478159 | no `New <form>`: `Call 0.Method_arg_54(var_94)`, `0.Method_arg_2B0(var_CC)`, `MemVar_1F81818 = Nothing` `[VERIFIED-VB6]` |
| `Voucher Environment` | L478161-L478165 | same indirect pattern |
| `Year End Updation (Finance)` | L478170-L478172 | **empty body (no-op)** |
| `Opening Balance Updation` | L478167-L478168 | **empty body (no-op)** |

## 6. Voucher posting engine — `FaVrEnt` (L525401-L535557)

Save path `[VERIFIED-VB6]`:

1. Duplicate/existence check `SELECT COUNT(*) FROM LEDGERM WHERE DocId='<id>'` — L534951.
2. Validation: `Entry Does not Include Required Debit Account` — L534965;
   `Entry Does not Include Required Credit Account` — L534971;
   `There Must be a TDS Vr.Type` — L534992.
3. Header insert `INSERT INTO LedgerM (DocId,V_Type,v_Prefix,V_No,Site_Code,V_Date,Narration,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES (...)` — L535274.
   Edit path instead runs `UPDATE LedgerM SET DocId=..., V_Type=..., v_Prefix=..., V_No=...` — L535309.
4. Line inserts `INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,Chq_No,Chq_Date,Clg_Date,AgRefNo,GROUPCODE,GROUPNATURE,LOGSITE_CODE) VALUES (...)` — L535121;
   simpler variants without cheque columns at L535469 and L535498.
5. Serial bookkeeping `INSERT INTO LastVoucher (User_Name,V_Type,Last_Ent_Date,DOCID,U_Name,U_EntDt,SITE_CODE,LOGSITE_CODE) VALUES (...)` — L535344.
6. Audit copy: `Insert Into LedgerMLog Select * From LedgerM Where DocId='..'` + `Update LedgerLog Set SeqNo=..` — L535548-L535553.

Delete path (cascade) `[VERIFIED-VB6]`:
`DELETE FROM LEDGER WHERE DOCID=..` L529418 / re-run L535049;
`DELETE FROM LEDGERM WHERE DocID=` L529439;
`DELETE FROM LEDGERADJ WHERE DocID1=.. OR DocID2=..` L529442;
`DELETE FROM LEDGERREF WHERE DocID=` L529443;
`DELETE FROM LEDGERTDS WHERE DocID=` L529444 (re-run L535049-L535066).

Date-lock guard: `DateLock` source `SELECT EDATE,SDATE FROM DateLock WHERE CODE='..'` (L531108) and the
user-facing message `Back Date Entry Blocked.` (L529493, L531100); `DateLock` is switched by
`UPDATE FAENVIRO SET DateLock='Y'` (L267937, L555687). `DATELOCK` table has **0 rows** — so the guard is
driven by `FaEnviro.DateLock`, not by `DateLock` rows. `[VERIFIED-VB6]` `[VERIFIED-SQL]`

## 7. Adjustment — `FaAdjust` (L546942-L547815) `[VERIFIED-VB6]`

- candidate rows: `Select DocId,... From Ledger L Left Join SubGroup SG ... Where L.SubCode='<sub>'` — L547154.
- posting: `Insert Into LEDGERAdj (DocId1,V_SNo1,DocId2,V_SNo2,CR,SubCode,U_Name,U_EntDt,U_AE,site_code,logsite_code) Values (...)` — L547406.
- residual check: `SELECT IsNull(Sum(CR),0) AS TSum From LEDGERAdj Where SubCode='<sub>'` — L547161.

## 8. Bank reconciliation — `FaChqClear` (L548011-L549703)

`Update Ledger Set Chq_No='..', Chq_Date=.., Clg_Date=..` at L548238, L548252, L548261 (three grid columns).
Rule message: `Clg.Date Must be Greater Than Cheque Date` — L531692. `[VERIFIED-VB6]`

## 9. Multi-site guard

`Record is Created at Other Site, Can't Edit/Delete it` — L521823, L521849.
Implemented as `LOGSITE_CODE='<site>' OR LOGSITE_CODE='HO'` predicates, e.g. L521992, L521999, L522012, L522022.
Deletion guard `Transactions Exist Can't Delete it` — L522841. `[VERIFIED-VB6]`

## 10. Duplicate-name guard

`Duplicate A/c Name not Allowed` — L523073, L523090, L523607, L523625 (backed by
`Select NameHelp From SubGroup Where NameHelp='..'`, L523068/L523085). `[VERIFIED-VB6]`

## 11. Shared voucher helpers — `FaVoucher` (L18720-L19098)

- `SELECT NCAT FROM VOUCHER_TYPE WHERE V_TYPE='<vt>'` — L18731, L18769, L19084 (voucher nature lookup).
- `SELECT COUNT(*) FROM Ledger WHERE V_Type=` — L18968; `... FROM LedgerM WHERE V_Type=` — L18976
  (used to decide whether a voucher type may be edited/deleted). `[VERIFIED-VB6]`

## 12. Running balances — `FaLib` (L519755-L521907)

- `SELECT COUNT(*) FROM SUBGROUPCURRBAL WHERE LogSite_Code='<site>' AND SubCode='<sc>' AND V_Date=..` — L519779
  then `Update SubGroupCURRBAL Set Curr_Bal=Curr_Bal+..` / `INSERT INTO SUBGROUPCURRBAL (...)` — L519798.
- group roll-up: `SELECT MAINGRCODE FROM ACGROUP Where GroupCode='..' AND AliasYN='N'` (L519802),
  `SELECT * FROM ACGROUP Where MAINGRCODE='..' AND AliasYN='N'` (L519809),
  `SELECT COUNT(*) FROM ACGROUPCURRBAL ...` (L519814) then `Update ACGroupCURRBAL Set Curr_Bal=Curr_Bal+..` /
  `INSERT INTO ACGROUPCURRBAL (...)` (L519831).
- opening totals: `SELECT isnull(sum(ledger.Amtcr),0) AS OpRec FROM ledger where subcode='..'` (L521528),
  `... Amtdr ... AS OpIss` (L521534), site-scoped variants L521541/L521548. `[VERIFIED-VB6]`

## 13. Shared helpers used by forms

- `Proc_183_57_1044F1C(var, "RefReport")` — L564677; `Proc_183_57_1044F1C(var, "AgeingReport")` — L572399
  (report-name → Crystal report resolution). `[VERIFIED-VB6]`
- `MemVar_1F810B4` = Crystal `Reports\` path (assigned at L9758); `MemVar_1F813B0 = MemVar_1F810B4` (L9821).
  INI key `2=C:\PENDRIVE\HMS\Reports` (`00_Project_Discovery/ini_analysis.txt` L7). `[VERIFIED-VB6]`

## 14. Notable code smells carried into the rebuild

- `On Error Resume Next` at the top of the dispatcher swallows every lookup failure (L477022). `[VERIFIED-VB6]`
- Hard-coded `C:\moduleFILE.TXT` append log (L477034). `[VERIFIED-VB6]`
- Two branches inside the Finance group have **empty bodies** (§5.4) — clicking them does nothing.
- Caption with a **double space**: `Day  Book` (registration L475935, dispatch L477552) vs `Day Book` (L475905/L477376)
  — two different reports distinguished only by whitespace. `[VERIFIED-VB6]`
- `Happy Hours [ Fee Items ]` (registration) vs `Happy Hours [ Free Items ]` (dispatch) — Main Setup only; see
  `../02_Main_Setup/logic/vb6_logic.md`.
