# 08_POS — Reports

## 1. Report engine `[VERIFIED-CONFIG]`

`17_Reports\REPORTS_ANALYSIS.md`:
- The `Reports\` folder holds **524 files**: Crystal Reports `.rpt` + `.ttx` ADO field-definition stubs.
- Report path comes from INI key 2 (`C:\PENDRIVE\HMS\Reports`); runtime errors confirm the Crystal
  Reports ActiveX designer (Seagate CR 7/8 era).
- `PrintFormats` table referenced 39 times in code — per-form print-format overrides.

The VB6 side only ever sets a **viewer form** plus a **`GRepFormName` string**; the Crystal `.rpt` is
resolved by name from the reports path at runtime. `[VERIFIED-VB6]`

## 2. Report viewers used by POS `[VERIFIED-VB6]`

| Viewer | Used for | Instantiation sites |
|---|---|---|
| `rPOSRepView` | POS report group (`POSRep` / `MISREP` owner strings) | EXTRAS.text L477061, L479418, L479426, L479434 (etc.) |
| `rHallRepView` | banquet/hall variants when `Depart.RestType` is `BANQ` or `ODC` | EXTRAS.text L479458, L479591, L479653, L479695, L479830 |
| `rFomRepView` | front-office reports | EXTRAS.text L477068, L480187-region |

## 3. `GRepFormName` → report file mapping

`REPORTS_TXT\<GRepFormName>.txt` exists for every name below (233 report descriptor files).
`[VERIFIED-SQL]` (filesystem check of `REPORTS_TXT\`)

### 3.1 `POS Reports` group (menu rows L329–L350) `[VERIFIED-VB6]`

| Menu caption | Viewer | `GRepFormName` | Dispatch line |
|---|---|---|---|
| Sales Register | `rPOSRepView` *or* `rHallRepView` (if `RestType` = `BANQ`/`ODC`) | `SalesRegister` | L479835 / L479831 |
| Stewardwise Sale | `rPOSRepView` | `WaiterWiseSale` | L479419 |
| Tablewise Sales | `rPOSRepView` | `TableWiseSale` | L479427 (dispatch caption `Table wise Sale`) |
| Settlement Summary | `rPOSRepView` | `CashierSettlement` | L479441 |
| Tax Report | `rPOSRepView` / `rHallRepView` | `TaxReport` / `TaxReportHall` | L479464 / L479459 |
| KOT Wise Details | `rPOSRepView` | `KOTWiseDetails` | L479496 |
| Discount Register | `rPOSRepView` | `DiscountReg` | L479504 |
| Cover Analysis | `rPOSRepView` / `rHallRepView` | `CoverAnalysis` / `CoverAnalysis` | L479597 / L479592 |
| Pending KOT | `rPOSRepView` | `PendingKot` | L479606 (and L480024) |
| Item wise Sale | `rPOSRepView` | `ItemWiseSale` | L479614 (and L480066) |
| Deleted Unsettled Bill | `rPOSRepView` | `DelBillUnsetBill` | L479622 |
| NC KOT Detail | `rPOSRepView` | `NCKOTWiseDetails` | L479630 |
| Sales Day Book | `rPOSRepView` | `SalesDayBook` | L477061–L477062 |
| Tax Register | `rPOSRepView` | `TaxRegister` | L479449 |
| Order Detail Report | `rPOSRepView` | `OrderDetailReport` | L479638 |
| Taxwise Details | `rPOSRepView` | `TaxDetails` | L479475 (dispatch caption `Taxwise  Details`, two spaces) |
| NC KOT Summary | `rPOSRepView` | `NCKOTSummary` | L479482 |
| Discount Register (PartyWise) | `rPOSRepView` | `DiscountPartyWiseReg` | L479645 |
| Not Delivered Order | **screen** `FrmDeliveredItemDetail` | — | L479510–L479511 |
| Group Wise Sale | `rPOSRepView` | `ItemWiseGroupWiseSaleReport` | L479518 |
| Customer Detail | `rPOSRepView` | `CustomerDetail` | L479527 |
| Denomination Detail | **screen** `FrmDenomination` | — | L479547–L479548 |
| Payment Receive Entry (POS) | **screen** `RsPaymentReceice` | — | L479433–L479434 |
| Bill Wise Adjustment Report | `rPOSRepView` | `BillWiseAdjustmentReport` | L479555 |

### 3.2 `POS M.I.S.` group (menu rows L352–L362) `[VERIFIED-VB6]`

| Menu caption | Viewer | `GRepFormName` | Dispatch line |
|---|---|---|---|
| Collection Summary | `rPOSRepView` / `rHallRepView` | `CashierCollection` | L479659 / L479654 |
| Open Item Sales | `rPOSRepView` | `OpenItemSale` | L479668 |
| Void Bills | `rPOSRepView` | `VoidBills` | L479676 |
| KOT Change Report | `rPOSRepView` | `KOTRateChange` | L479686 |
| Tax Summary | `rPOSRepView` / `rHallRepView` | `TaxSumm` / `TaxSummaryHall` | L479701 / L479696 |
| Discount Summary | `rPOSRepView` | `DiscountSumm` | L479710 |
| Monthwise Sales | `rPOSRepView` | `MonthOutletWiseSale` | L479562 |
| ABC  Analysis | `rPOSRepView` | `ABCAnalysisSale` | L479569 |
| Sale Summary | `rPOSRepView` | `SaleSumm` | L479576 (also `SalesSummary` at L479968 for the caption `Sale Summary`) |
| Tax Invoice Detail | `rPOSRepView` | `TaxInvoiceDetail` | EXTRAS.text L7794 (MDI `MISREP` handler) |
| Edited Bills | `rPOSRepView` | `EditedBills` | L479583 |

### 3.3 Additional POS reports reachable but not in the static dump `[VERIFIED-VB6]`

Dispatch exists for `Sale Summary Consolidated` → `SaleSummConsolidated` (L479982),
`Taxwise Sale Report` → `TaxWiseSale` (L479996), `KOT Edit/Delete Report` → `KotEditDelete`
(L480010), `Cashier Summary` → `CashierSummary` (L480038), `Cashier Sale` → `CashierSale`
(L480052), `Sales Register per cover` → `SalRegPerCover` (L480080),
`Registered Guest Detail` → `RegisteredGuestDetail` (L479534), `Delivery Status` → `DeliveryStatus`
(L479541). These captions are not in `menu_tree_raw.txt` rows `11|…` — `[UNKNOWN] — searched all
`^11|` rows in menu_tree_raw.txt (53 rows), none match`.

## 4. The `BANQ` / `ODC` report fork `[VERIFIED-VB6]`

Several captions are dispatched twice, chosen by `var_AC`, which carries `Depart.RestType`:

```vb
If (var_188 = "Sales Register") Then
  If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then
     Set var_90 = New rHallRepView : var_90.GRepFormName = "SalesRegister"
  Else
     Set var_90 = New rPOSRepView  : var_90.GRepFormName = "SalesRegister"
  End If
```
(EXTRAS.text L479827–L479841)

Same fork for `Tax Report` (L479453–L479468 → `TaxReportHall` vs `TaxReport`), `Tax Summary`
(L479692–L479705 → `TaxSummaryHall` vs `TaxSumm`), `Cover Analysis` (L479588–L479601), and
`Collection Summary` (L479650–L479663).

Meaning: the **same menu caption** can open a POS Crystal report or a banquet Crystal report
depending on which outlet is selected. `[VERIFIED-VB6]`

## 5. Report descriptor files (`REPORTS_TXT\`) `[VERIFIED-SQL]`

`REPORTS_TXT\` holds **233** `.txt` descriptors. Each begins with a fixed header block:

```
REPORT NAME   : SalesRegister
REPORT NO.    : 199
CATEGORY      : SALES / POS
STOCK/INVENTORY: NAHI - ye non-stock report hai
MENU PATH     : Banquet > Reports  [Sub: BanqRep_Click]
SOURCE TABLES : Sale1, Sale2, PayCharge, SunTran
...
DATABASE DUMP (visahl.sql) TABLES: Stock, Sale1, Sale2, SunTran, PayCharge
```
followed by a generic parameterised SQL sketch. Note the `MENU PATH` and `SOURCE TABLES` in these
files are **generic per-category** boilerplate (the same values appear in `SettleRepHall.txt`), so
they are `[VERIFIED-SQL]` for *file content* but `[INFERRED]` at best for *actual* per-report
sources. Per-report sources were re-derived from `EXTRAS.text` above instead.

All 49 `GRepFormName` values used by POS were confirmed present as
`REPORTS_TXT\<name>.txt`. `[VERIFIED-SQL]`

## 6. Crystal report objects (from `REPORTS_ANALYSIS.md`) `[VERIFIED-CONFIG]`

Relevant `.ttx`/`.rpt` groupings for this module:

- `CashierReport` / `CashierCollect` / `CashierSettlement` (.ttx) → cashier shift totals
  (drives `Settlement Summary`).
- `catlog/catlog1`, `HallMenuCatalog` → banquet menu catalog.
- `HallEstimate` / `HallBill` → banquet estimate/bill print.
- Viewer names seen in code: `rFomRepView`, `rHallRepView`, `rInventRepView`, `rMemberRepView`,
  `rPOSRepView`, `REPVIEW`.
- GST artifacts: `EGST.rar` in `Reports`, `GSTR1_Excel_Workbook_Template_V1.5.xlsx` at root,
  `eInvoice/eInvoiceBill1` runtime tables.

## 7. Screenshot coverage for reports `[VERIFIED-UI]`

Captured: `C2_Point_Of_Sale__POS_Reports__*.png` (Payment Receive, Sales Register, Stewardwise Sale,
Tablewise Sales), `C3_P5B1_…POS_Reports__Paym.png`, `C3_S1_…POS_Reports__Paym.png`, and eight
`C4_L1+sub_Point_Of_Sale__POS_MIS__*.png` (Open Item Sales, Void Bills, KOT Change Report,
Discount Summary, Monthwise Sales, ABC Analysis, Sale Summary, Edited Bills).

Not captured: 12 of the 22 `POS Reports` items and 3 of the 11 `POS M.I.S.` items
(`Tax Invoice Detail`, `Collection Summary`, `Tax Summary`). `[VERIFIED-UI]`

## 8. Unknown `[UNKNOWN]`

- The `.rpt` file behind each `GRepFormName` was not opened (the `Reports\` folder is described in
  `REPORTS_ANALYSIS.md` but the individual `.rpt` binaries were not parsed for this module).
  `[UNKNOWN] — 17_Reports\REPORTS_ANALYSIS.md lists the mapping approach but no per-name .rpt
  extraction was performed here`.
- Crystal `REPORT NO.` numbering (`SalesRegister` = 199, `SettleRepHall` = 205) — the authoritative
  numbering table was not located. `[UNKNOWN] — searched REPORTS_TXT headers and EXTRAS.text for a
  report-number constant table`.
