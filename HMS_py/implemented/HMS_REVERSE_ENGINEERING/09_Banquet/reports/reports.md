# 09_Banquet — Reports

Evidence tags: `[VERIFIED-VB6]`, `[VERIFIED-SQL]`, `[VERIFIED-CONFIG]`, `[VERIFIED-UI]`,
`[INFERRED]`, `[UNKNOWN]`.

---

## 1. Report engine

- Viewer class **`rHallRepView`** — `'Object: rHallRepView` at **EXTRAS.text L777000**,
  next object at L800470. `[VERIFIED-VB6]`
- Reports are selected by a single string property: `var_90.GRepFormName = "<name>"`, then
  `Call var_90.Show`. `[VERIFIED-VB6]`
- The POS twin is `rPOSRepView` (EXTRAS.text L726131). The fork is
  `If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then New rHallRepView Else New rPOSRepView`.
  `[VERIFIED-VB6]`
- Engine facts: Crystal Reports ActiveX, 524 `.rpt`/`.ttx` files, path from INI key 2
  (`C:\PENDRIVE\HMS\Reports`), format table `PrintFormats` (39 references).
  `[VERIFIED-CONFIG]` — `17_Reports\REPORTS_ANALYSIS.md`.
- Descriptor files: `REPORTS_TXT\<GRepFormName>.txt` (233 files). All **14** banquet report
  names are present. `[VERIFIED-SQL]`

> The `REPORTS_TXT` descriptors are **generic per-category boilerplate** (SOURCES section).
> Per-report table provenance must be re-derived from `EXTRAS.text`, not from the descriptor.

## 2. Banquet Reports (menu group `Reports`, Indoor + ODC)

Registrations: Indoor EXTRAS.text L476686–L476704, ODC L476757–L476775.
Dispatch: EXTRAS.text L479827–L479923. `[VERIFIED-VB6]`

| # | Menu caption | `GRepFormName` | Viewer | If line | Reports_TXT |
|---|---|---|---|---|---|
| 1 | `Sales Register` | `SalesRegister` | **forked** `rHallRepView` / `rPOSRepView` | L479827 | OK |
| 2 | `OutStanding Report` | `PartyOutStanding` | `rHallRepView` | L479842 | OK |
| 3 | `Party wise OutStanding` | `PartyWiseOutStanding` | `rHallRepView` | L479850 | OK |
| 4 | `Cashier  Report` | `CashierCollection` | `rHallRepView` | L479858 | OK |
| 5 | `Booking Inquiry Detail` | `BookingDetail` | `rHallRepView` | L479866 | OK |
| 6 | `Settlement  Report` | `SettleRepHall` | `rHallRepView` | L479874 | OK |
| 7 | `Daily Function Sheet` | `DailyFuncSheet` | `rHallRepView` | L479884 | OK |
| 8 | `Item Wise Sales Report` | `ItemWiseSaleHall` | `rHallRepView` | L479892 | OK |
| 9 | `Company Wise Sale Report` | `CompanyWiseSaleHall` | `rHallRepView` | L479900 | OK |
| 10 | `Function Wise Item Detail` | `FunctionWiseItemDetail` | `rHallRepView` | L479908 | OK |

**Alias noted `[VERIFIED-VB6]`:** the branch for `Settlement  Report` is written as
`If Not (var_188 = "Settlement  Report") Then / If (var_188 = "Banquet Settlement Report") Then`
(L479874/L479875) — the decompiled boolean is inverted but the loaded form is the same
(`SettleRepHall`). Menu caption has **two spaces** between `Settlement` and `Report`.

`SettleRepHall` and `BookingDetail` are shared names with other modules — `BookingDetail` is also
a **table** (`BookingDetail`, PK `(Code,VenueCode)`), so the report name collides with a table
name in the same database. `[VERIFIED-SQL]`

## 3. Banquet Reports (MIS)

Registrations: Indoor L476708/L476710, ODC L476779/L476781. `[VERIFIED-VB6]`

| # | Menu caption | `GRepFormName` | Viewer | If line | Reports_TXT |
|---|---|---|---|---|---|
| 1 | `Cover Analysis` | `CoverAnalysis` | **forked** (both branches use the *same* name) | L479588 | OK |
| 2 | `Collection Summary` | `CashierCollection` | **forked** (both branches, same name) | L479650 | OK |

> **Finding:** `Collection Summary` and the report menu's `Cashier  Report` load the **same**
> `GRepFormName` (`CashierCollection`) through different branches — two menu entries, one Crystal
> report. `[VERIFIED-VB6]` (assignment lines **L479654** (hall branch) / **L479659** (POS branch)
> for `Collection Summary`, vs **L479861** for `Cashier  Report`)

## 4. Banquet Tax Reports

Registrations: Indoor L476714–L476718, ODC L476785–L476789. `[VERIFIED-VB6]`

| # | Menu caption | `GRepFormName` | Viewer | If line | Reports_TXT |
|---|---|---|---|---|---|
| 1 | `Tax Report` | `TaxReportHall` (else `TaxReport`) | **forked** | L479455 | OK |
| 2 | `Tax Summary` | `TaxSummaryHall` (else `TaxSumm`) | **forked** | L479692 | OK |
| 3 | `Banquet Taxwise Details` | `TaxwiseDetailReportHall` | `rHallRepView` (unconditional) | L479916 | OK |

## 5. Shared captions that banquet can reach through `var_AC`

These are **not** module-12 menu rows, but the dispatch ladder is shared, so a banquet-classed
outlet can open them. `[VERIFIED-VB6]`

| Caption | If line | Hall branch | POS branch |
|---|---|---|---|
| `Tax Report` | L479455 | `TaxReportHall` | `TaxReport` |
| `Tax Summary` | L479692 | `TaxSummaryHall` | `TaxSumm` |
| `Cover Analysis` | L479588 | `CoverAnalysis` | `CoverAnalysis` |
| `Collection Summary` | L479650 | `CashierCollection` | `CashierCollection` |
| `Sales Register` | L479827 | `SalesRegister` | `SalesRegister` |
| `Menu Category` | L477828 | `FrmHallItemCatMast` | `FrmItemCatMast` |
| `Item Group` | L477929 | `HallItemGroupMast` | `FrmItemGroupMastRaw` |
| `Menu Item` | L477855 | `HallMenuItemEntry` | `RsMenuItemEntry` |

Note `Cover Analysis` / `Collection Summary` are **not** forks in substance — both branches set
the identical `GRepFormName`; only the viewer class differs. `[VERIFIED-VB6]`

## 6. Report viewer

| Fact | Value | Tag |
|---|---|---|
| Viewer class | `rHallRepView` | `[VERIFIED-VB6]` L777000 |
| `GRepFormName` values in whole app | 225 distinct | `[VERIFIED-VB6]` (rg count over `EXTRAS.text`) |
| Banquet names checked against `REPORTS_TXT\` | 14 / 14 present | `[VERIFIED-SQL]` |
| Descriptor format | `GRepFormName`, `REPORT NO.`, SOURCES, fields | `[VERIFIED-SQL]` |
| Print format table | `PrintFormats` (39 refs) | `[VERIFIED-CONFIG]` |
| Path source | INI key 2 → `C:\PENDRIVE\HMS\Reports` | `[VERIFIED-CONFIG]` |

## 7. Screenshots

8 of the 15 banquet PNGs show report viewers `[VERIFIED-UI]`:

| PNG | Report |
|---|---|
| `C4_L1+sub_Banquet__Reports__OutStanding_Re_20260928_214012.png` | OutStanding Report |
| `C4_L1+sub_Banquet__Reports__Party_wise_Out_20260928_214014.png` | Party wise OutStanding |
| `C4_L1+sub_Banquet__Reports__Cashier__Repor_20260928_214016.png` | Cashier Report |
| `C4_L1+sub_Banquet__Reports__Booking_Inquir_20260928_214018.png` | Booking Inquiry Detail |
| `C4_L1+sub_Banquet__Reports__Settlement__Re_20260928_214020.png` | Settlement Report |
| `C4_L1+sub_Banquet__Reports__Daily_Function_20260928_214022.png` | Daily Function Sheet |
| `C4_L1+sub_Banquet__Reports__Item_Wise_Sale_20260928_214025.png` | Item Wise Sales Report |
| `C4_L1+sub_Banquet__Reports__Company_Wise_S_20260928_214027.png` | Company Wise Sale Report |

**Not captured:** `Sales Register`, `Function Wise Item Detail`, `Cover Analysis`,
`Collection Summary`, `Tax Report`, `Tax Summary`, `Banquet Taxwise Details`. `[VERIFIED-UI]`

## 8. Not documented / unknown

| Item | Reason |
|---|---|
| Crystal `.rpt` internals (tables, joins, formulas) for the 14 banquet reports | `.rpt`/`.ttx` files are **not** in `17_Reports` — only `REPORTS_ANALYSIS.md`. `[UNKNOWN]` |
| Per-report table provenance (which of `HallSale1` / `HallBook` / `SunTran` / `PayChargeH` each report reads) | cannot be read from the descriptor boilerplate and `GRepFormName` carries no SQL. `[UNKNOWN] — searched `REPORTS_TXT\` for the 14 names; descriptors contain only category SOURCES` |
| Crystal `REPORT NO.` numbering table | not located. `[UNKNOWN]` |
| Whether `SettleRepHall` and `PartyOutStanding` are distinct Crystal files | names differ, so almost certainly yes; not verified against `.rpt`. `[INFERRED]` |
| `Banquet Taxwise Details` typed `E` (entry) instead of `R` (report) in `MenuHelp_SA_tree.txt:301` while `menu_tree_raw.txt` calls it type `1` | `[UNKNOWN] — no legend for the trailing flag column in MenuHelp_*_tree.txt` |
| ODC report ordinal gaps (6 and 8 unused) | cosmetic; no functional impact found. `[INFERRED]` |
