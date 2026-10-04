# 07_Inventory — Reports

Engine and file-resolution mechanism are the same Crystal Reports pipeline documented in
`04_Reservation\reports\reports.md`; only the call sites differ. Summary:

```
MenuHelp.Option  ->  Proc_165_3_EEA710  ->  var_188
                  ->  dispatcher branch ->  viewer form + GRepFormName
                  ->  CreateFieldDefFile  ReportPath & "\" & <name> & ".ttx"
                  ->  Method_arg_1C       ReportPath & "\" & <name> & ".RPT"
ReportPath = Analysis.ini key 2 = <HMS2526>\Reports   [VERIFIED-CONFIG]
```

Inventory viewer = **`rInventRepView`**, object **EXTRAS.text L634572–L661019**.
All 26 hex-10 report menu rows dispatch into it.

Path construction inside `rInventRepView` — three call sites, **one is broken**:

| Line | Statement | Separator |
|---|---|---|
| L636046 | `CreateFieldDefFile(var_C4, MemVar_1F810B4 & "\" & var_88 & ".ttx", &HFF)` | OK |
| **L636048** | `Call 0.Method_arg_1C (MemVar_1F810B4 & var_C0 & ".RPT", var_A4, var_B8)` | **missing `\`** |
| L656549–L656551 | `var_29C = MemVar_1F810B4 & "\"` → `var_29C & var_AC & ".RPT"` | OK |
| L658123–L658125 | same explicit-`\` pattern | OK |

`[VERIFIED-VB6]` + `[VERIFIED-CONFIG]` — see `notes/notes.md` **IN-10**.

`<HMS2526>\Reports\` holds **566 files = 371 `.rpt` + 194 `.ttx`** `[VERIFIED-CONFIG]`.
"present?" below = **exact, case-insensitive basename match** against that listing.

---

## A. Reports reachable from menu hex `10`

| menu_tree | Caption | `GRepFormName` | Dispatch | `.rpt` exact | `.ttx` exact | Closest file actually present |
|---|---|---|---|---|---|---|
| L288 | Kitchen Stock Report I/R Basis | `KitchenStkRep` | L479162–L479168 | **NO** | **NO** | `KitchenStk.rpt` / `KitchenStk.ttx`, `KitchenStockTr.rpt` |
| L289 | Purchase Register | `PurchaseReg` | L479169–L479177 | **NO** | **NO** | `PurchReg.rpt` / `PurchReg.ttx` |
| L290 | Purchase Summary | `PurchaseSumm` | L479178–L479186 | **NO** | **NO** | `PurchSumm.rpt` |
| L291 | Cash/Credit Purchase | `CashCreditPurch` | L479194–L479200 | **NO** | **NO** | `PurchCashCredit.rpt` |
| L292 | Stock Register | `StockRegStore` | L479201–L479211 **and** L478525–L478533 | **NO** | **NO** | `StockRegister.rpt`, `RStockRegister.rpt` |
| L293 | Stock Summary | `StockSummStore` | L479212–L479220 **and** L478534–L478542 | **NO** | **NO** | `StockSumm.rpt`, `RStockSummary.rpt` |
| L294 | Stock In Hand | `StockINHand` | L479228–L479236 | YES `StockInHand.rpt` | YES | — |
| L295 | Excess Consumption Report | `ExcessConsumption` | L479237–L479243 | **NO** | **NO** | `ExcessConsum.rpt` / `ExcessConsum.ttx` |
| L296 | Store Issue Register | `StoreIssReg` | L479251–L479257 | YES `StoreIssReg.rpt` | **NO** | — |
| L297 | **Indent Register** | — | **none** | — | — | dead click (**IN-1**); `IndentReg.rpt` exists but is only reachable via dispatch key `Pending Indent` |
| L298 | **Purchase Order Register** | — | **none** | — | — | dead click (**IN-1**); `PurchOrder.rpt` reachable only via `Pending Purchase Order` |
| L299 | Daily Store Issue Reports | `DailyStoreIssRpt` | L479221–L479227 | **NO** | **NO** | `DailyStoreIss.rpt` |
| L300 | VAT Register | `VATRegister` | L478543–L478549 | YES `.rpt`+`.ttx` | YES | — |
| L301 | Purchase Ledger | `PurchaseLedger` | L478550–L478556 | YES `.rpt`+`.ttx` | YES | — |
| L302 | Issue CheckList | `IssueReg` | L478557–L478565 | YES `.rpt`+`.ttx` | YES | — |
| L303 | **M.R. Register** | — | **none** | — | — | dead click (**IN-1**); `PurchBill.ttx` has no `.rpt` at all |
| L304 | Stock Summary P/S Basis | `StockSummaryP/SBasis` | L478580–L478586 | **NO** | **NO** | `StockSummaryPSBasisDT.rpt/.ttx`, `StockSummaryPSBasisSM.rpt/.ttx` |
| L305 | ABC Analysis | `ABCAnalysis` | L478587–L478593 | YES `.rpt`+`.ttx` | YES | — |
| L306 | Production Report I/R Basis | `ProductionReport` | L478594–L478600 | **NO** | **NO** | `Production.rpt` |
| L307 | VAT Register II | `VATRegisterII` | L478601–L478607 | YES `.rpt`+`.ttx` | YES | — |
| L308 | VAT Register III | `VATRegisterIII` | L478608–L478614 | YES `.rpt`+`.ttx` | YES | — |
| L309 | VAT Register III *(duplicate)* | intended `Form24AnnexureA` | handler at **L478615–L478621** keyed `"Form24 Annexure-A"` | — | — | **unreachable**: stored caption is the duplicate (see **IN-2**). `Form24AnnexureA.rpt/.ttx` exist but no menu row can reach them |
| L310 | Form III | `FormIII` | L478622–L478628 | YES `FORMIII.rpt` | YES `FORMIII.ttx` | — |
| L311 | UPVAT XXIV | `UPVATXXIV` | L478629–L478635 | YES `.rpt`+`.ttx` | YES | — |
| **L7** (detached) | Store Issue Report | `StoreIssueReport` | L478566–L478572 | YES `.rpt` | **NO** | — |
| **L10** (detached) | Liquor Sale Report | `LiquorSaleRep` | L479258–L479264 | **NO** | **NO** | **no `Liquor*` file of any kind exists** |

**11 of 26 report menu rows have no exact `.rpt` match** (9 distinct keys + 2 dead rows).
`[VERIFIED-CONFIG]` + `[VERIFIED-VB6]`

### Report group metadata

* Group `Reports` registered with `Module_Name = "MatReports"` — L476454
* 18 children with `Module_Name = "Purch"`, `Menu_Index` `&H15`…`&H28` (gaps `&H1D`, `&H1F`) —
  L476456…L476490
* 6 children with `Module_Name = "MatRep"`, `Menu_Index` `1, &HA, &HC, &HB, &HF, &H10` —
  L476492…L476503
* 2 more `MatRep` children registered from **`frmCompany`** (`&H12`, `&H13`) — L11647, L11653
* all registered with 3rd param (`Opt2`) `= 1` → registrar maps to **`Flag = 'R'`**
  (L475805 / L475811) and `PARAM_STR = '***P'` (L475810). That is what the menu builder uses
  for the `Rep` icon: `IIf(Flag = "E", "Frm", IIf(Flag = "R", "Rep", .))` (L3651).
  `[VERIFIED-VB6]`

### Registrar mapping from `Opt2` → `Flag` (L475805 / L475811) `[VERIFIED-VB6]`

| 3rd param (`Opt2`) | `Flag` | `PARAM_STR` (L475810) | Used by hex `10` / `&HC` |
|---|---|---|---|
| `0` | `'E'` | `'AEDP'` | 11 transaction leaves; 9 setup leaves |
| `1` | `'R'` | `'***P'` | all 26 report leaves |
| `2` | `'V'` | `''` | `Consumption Master` (L476093) |
| `3` | `'N'` | `''` | `Transactions` L476430, `Reports` L476454, `Material Mgmt Setup` L476081 |
| `4` and `Opt1 ≤ 45` | `'N'` | `''` | `Material Mgmt` header L476428 (`Opt1 = 16`) |

---

## B. Dispatch-only report keys (handler exists, no menu row)

| Dispatch key | Line | `GRepFormName` | `.rpt` exact | Menu row? |
|---|---|---|---|---|
| `Pending M.R.` | L478573–L478579 | `PurchBill` | **NO** — only `PurchBill.ttx`; siblings are `PurchBillOther.rpt`, `PurchBillSaleInvoice.rpt`, `PurchBillTaxInvoice.rpt` | **none** |
| `Pending Indent` | L478636–L478642 | `IndentReg` | YES `IndentReg.rpt` | **none** |
| `Pending Purchase Order` | L479187–L479193 | `PurchOrder` | YES `PurchOrder.rpt` | **none** |
| `Restaurant Issue Report` | L479244–L479250 | `RestIssue` | YES `RestIssue.rpt` | **none** |
| `KOT Wise Details` | L478643–L478649 | `KOTWiseDetails` | YES | **hex `11` (POS)** — `menu_tree_raw.txt` L334, not this module |
| `Deleted Unsettled Bill` | L478650–L478656 | `DelBillUnsetBill` | YES | **hex `11` (POS)** — `menu_tree_raw.txt` L339 |
| `Form24 Annexure-A` | L478615–L478621 | `Form24AnnexureA` | YES — but the menu caption that should carry this key is stored as the duplicate `VAT Register III` (**IN-2**) | L309, wrong caption |

`KOT Wise Details` / `Deleted Unsettled Bill` are listed here only because their `If` blocks
sit physically inside the hex-10 window of the dispatcher; their menu rows belong to Point of
Sale. `[VERIFIED-VB6]`

Note the pairing: **`Pending M.R.` / `Pending Indent` / `Pending Purchase Order` are the
intended keys for menu rows `M.R. Register` / `Indent Register` /
`Purchase Order Register`** — the two sides drifted apart and *both* are now dead.
`[INFERRED]` — intent inferred from the `GRepFormName` each side references
(`PurchBill`, `IndentReg`, `PurchOrder`), since neither caption appears on both sides.
`[VERIFIED-VB6]` for the facts.

---

## C. Inside `rInventRepView` (L634572–L661019)

The viewer resolves the human report title by caption, not by `GRepFormName`:

| Line | Call |
|---|---|
| L638151 | `Call 0.Method_arg_54 ("Liquor Sale Report")` |
| L638166 | `Call 0.Method_arg_54 ("Indent Register")` |
| L638169 | `Call 0.Method_arg_54 ("Purchase Order Register")` |
| L638172 | `Call 0.Method_arg_54 ("Daily Store Issue Reports")` |
| L638184 | `Call 0.Method_arg_54 ("Store Issue Report")` |
| L638187 | `Call 0.Method_arg_54 ("M.R. Register")` |
| L640149 | second lookup site for `"Indent Register"` |
| L647698 | `Call 0.Method_arg_54 ("Liquor Sale Report", var_C0, 1, 1, CLng(0), "01/")` |

So the **viewer** knows the captions `Indent Register`, `Purchase Order Register` and
`M.R. Register`, while the **dispatcher** does not. `[VERIFIED-VB6]`

Also referenced from the same viewer family: `GrossProfit` and `ItemConsumpReport` do **not**
occur anywhere in `EXTRAS.text` (0 hits) — they are report file names only, not dispatch
keys. `[VERIFIED-VB6]`

---

## D. Shared / non-inventory viewers seen near this code

These are *not* part of hex `10`; they are neighbouring branches of the same dispatcher and
are listed so the port does not mis-assign them:

| Caption | Viewer | Line |
|---|---|---|
| `Room Status Report` | `rRepHousePreview` → `RoomStatus` | L478511–L478517 (06_House_Keeping) |
| `Complaint Detail` | `rRepHousePreview` → `ComplaintList` | L478518–L478524 (06_House_Keeping) |
| `Room Occupancy` | `rFomRepView` → `RoomOccupancyReportSummary` | L478483–L478489 (Front Office) |
| `Room Type Occupancy` | `rFomRepView` → `RoomTypeOccupancyReport` | L478490–L478496 |
| `Room Wise Room Revenue` | `rFomRepView` → `RoomWiseRoomRevenueReport` | L478497–L478503 |
| `Occupancy Analysis` | `rFomRepView` → `RoomOccupancyAnalysisReport` | L478504–L478510 |

`[VERIFIED-VB6]`

---

## E. Summary of report-side defects

| Ref | Severity | Defect |
|---|---|---|
| **IR-1** | **Critical** | 9 report keys have no exact `.rpt` (`KitchenStkRep`, `PurchaseReg`, `PurchaseSumm`, `CashCreditPurch`, `StockRegStore`, `StockSummStore`, `DailyStoreIssRpt`, `ExcessConsumption`, `StockSummaryP/SBasis`, `ProductionReport`) → those menu items open a viewer that cannot resolve its template |
| **IR-2** | **Critical** | `LiquorSaleRep` — no file of any kind in `Reports\` |
| **IR-3** | **High** | `PurchBill.ttx` with no `PurchBill.rpt` (dispatch key `Pending M.R.`) |
| **IR-4** | **High** | 3 menu rows (`Indent Register`, `Purchase Order Register`, `M.R. Register`) have no dispatcher branch; their 3 dispatcher keys have no menu row |
| **IR-5** | **High** | duplicate `VAT Register III` row makes `Form24AnnexureA` unreachable |
| **IR-6** | Medium | `Stock Register` / `Stock Summary` each handled twice (L478525/L478534 and L479201/L479212) |
| **IR-7** | Medium | `.RPT` path built without a `\` separator at L636048 |
| **IR-8** | Low | 11 of 26 rows also lack an exact `.ttx` (needed by `CreateFieldDefFile`) |

Cross-references: `screens/screens.md` (menu ↔ dispatch), `reports.md` (this file),
`notes/notes.md` **IN-1 … IN-15**, `logic/vb6_logic.md` §3.
