# 09_Banquet — notes, findings, open items

Evidence tags: `[VERIFIED-VB6]`, `[VERIFIED-SQL]`, `[VERIFIED-UI]`, `[VERIFIED-CONFIG]`,
`[INFERRED]`, `[UNKNOWN]`.

---

## Notable findings

### F-BANQ-01 — the duplicated `Catalog Selection` row hides Chef Pre-Costing `[VERIFIED-VB6]`

Two identical registrations exist in each branch of the banquet operation menu:

```vb
var_148 = "BANQ"
Proc_165_0_14C1708("Catalog Selection", &H12, 0, "Indoor Catering", vbNullString, 2, "Hallop", 0)  ' L476667
var_148 = "BANQ"
var_124 = "Chef Pre-Costing"                                                                        ' L476669
Proc_165_0_14C1708("Catalog Selection", &H12, 0, "Indoor Catering", vbNullString, 3, "Hallop", 0)  ' L476670
```
and the ODC twin at **L476738 / L476740 / L476741**.

The dispatch ladder contains a **separate branch for the intended caption**:

```vb
If (var_188 = "Chef Pre-Costing") Then      ' EXTRAS.text L479771
    Set var_90 = New HallChefPreCosting     ' L479772
```
while the actual caption reaches:
```vb
If (var_188 = "Catalog Selection") Then     ' EXTRAS.text L479764
    Set var_90 = New CateringBooking        ' L479765
```

**Consequence:** the menu dump shows `12|0|Indoor Catering|Catalog Selection` twice
(`menu_tree_raw.txt` L367 and L368; ODC L402 and L403). Both rows dispatch to `CateringBooking`.
`HallChefPreCosting` is **never reachable from the menu by caption**. `[VERIFIED-VB6]`

Corroboration: `MenuHelp_SA_tree.txt` line **278** reads
`Chef Pre-Costing|18|12|14|0|E` — the permission tree carries the correct caption, and screenshot
`C2_Banquet__Operation__Chef_Pre-Costing.png` exists (opened by a path not captured here).
`[VERIFIED-CONFIG]` + `[VERIFIED-UI]`

> `[INFERRED]` the decompiler may have flattened a variable caption argument (`var_124`) into the
> literal `"Catalog Selection"`; the `var_124` assignment one line earlier supports this.
> `[UNKNOWN] — whether the running app shows one or two identical rows`.

### F-BANQ-02 — `Banquet Taxwise Details` typed as a report, flagged as an entry `[UNKNOWN]`

`menu_tree_raw.txt` L392 / L427 give it row type `1` (report) and its dispatch
(`If var_188 = "Banquet Taxwise Details"` at **EXTRAS.text L479916**) opens `rHallRepView` with
`GRepFormName = "TaxwiseDetailReportHall"` (L479919) — so it *is* a report.

But `MenuHelp_SA_tree.txt` line **301** records it as
`Banquet Taxwise Details|18|15|13|0|**E**`, while every other banquet report row ends in `R`
(lines 284–287: `Tax Report ... R`, `Tax Summary ... R`). `[VERIFIED-CONFIG]`

`[UNKNOWN] — no legend for the trailing flag column exists in MenuHelp_*_tree.txt`. If `E`/`R`
drives entry-vs-report permission, this row is classified inconsistently.

### F-BANQ-03 — no `Indoor Catering` group row exists `[VERIFIED-VB6]`

All 29 Indoor rows (`menu_tree_raw.txt` L364–L392) declare parent `Indoor Catering`, but no row
has caption `Indoor Catering`. The only type-`3` group row in module 12 is `OutDoor Catering`
(L393). Registration confirms it: the first Indoor child is registered with parent
`"Indoor Catering"` (L476661) without any prior registration of that name.

`[INFERRED]` the menu builder synthesises the missing group node from the parent string.

### F-BANQ-04 — `Banquet Settlement` and `Banquet Booking Advance` are one form, two roles
`[VERIFIED-VB6]`

Both open `HallAdvanceDepDialog`:
- Settlement: `If (var_188 = "Banquet Settlement") → Set var_90 = New HallAdvanceDepDialog`
  (EXTRAS.text L479785 → L479786) — no extra property set.
- Booking Advance: L479816 → L479817 with `AdvType = "AD"`, `OpenMode = 2`, `OpenType = 6`.

Both are openable from **both** banquet branches. `Banquet Settlement` is registered with menu row
type **`2`** (EXTRAS.text L476674 Indoor, L476745 ODC; dump rows `menu_tree_raw.txt` L370 / L405)
— the **only type-`2` rows in module 12**, and the same odd type used by POS `Restaurant Change`
(L476509). `Banquet Booking Advance` is ordinary type `0` (L476682).
`[INFERRED]` type `2` = "shared/dual-purpose screen".

### F-BANQ-05 — banquet shares the POS settlement singleton `[INFERRED]`

`Settlement Entry` (a POS caption) is dispatched inside the same ladder at **EXTRAS.text L479937**
with `Set var_90 = MemVar_1F81F64` (L479938) — the never-`New`ed shared instance documented as
**F-POS-01** in `../08_POS/notes/notes.md`. Banquet outlets routed through POS therefore inherit
the same state-leak risk.

Additionally `BanqModule` (EXTRAS.text L835729) drives two more shared instances,
`hAdvanceDepDialog` / `hAdvanceDepDialogSecondry`, selected when `arg_2C = "S"`
(L835735-region). `[VERIFIED-VB6]` for the reads; `[INFERRED]` for the `As New` declarations
(`[UNKNOWN] — 0 hits for "As New hAdvanceDepDialog"`).

### F-BANQ-06 — every banquet detail table is empty while headers are not `[VERIFIED-SQL]`

| Header | Rows | Detail | Rows |
|---|---|---|---|
| `HallBook` | 147 | `HallBook1` | **0** |
| `HallSale1` | 38 | `HallSale2`, `HallStock` | **0 / 0** |
| `HallSale1Est` | 0 | `HallStockEst`, `SunTranEst`, `SunTranHEst` | **0** |
| — | — | `HallPreCosting` | **0** |
| `Booking` | 25 | `BookingInquiry`, `BookingDetail` | **0 / 0** |
| `VenueMast` | 10 | `VenueFeatures`, `FeatureMast` | **0 / 0** |

Implications `[INFERRED]`:
- banquet bookings are header-only — no itemised `HallBook1` lines ever existed;
- **no banquet bill has any tax line** (`HallSale2` = 0 over 38 bills) — either tax was always 0
  or the tax writer never ran;
- Chef Pre-Costing, estimate billing, venue features and guest comments are **code-complete but
  unused**;
- `VenueOCC` (216) exceeds `HallBook` (147) → occupancy rows are date/venue-granular.

### F-BANQ-07 — delete-then-insert re-save with zero FKs `[VERIFIED-VB6]` + `[VERIFIED-SQL]`

`HallBooking` wipes `HallBook`, `HallBook1` and `VenueOCC` (L394978, L394986, L394994) before
writing; `HallBill` wipes `SunTran`, `SunTranH`, `HallStock`, `HallSale1` (L400388–L400412) and
again through the generic helper including `HallSale2` (L401165–L401184). No transaction
boundary is visible. `foreign_keys.txt` is empty. An interrupted save can orphan or delete rows
with no constraint to stop it.

### F-BANQ-08 — report-name / table-name collision `[VERIFIED-SQL]` + `[VERIFIED-VB6]`

`Booking Inquiry Detail` loads `GRepFormName = "BookingDetail"` (EXTRAS.text L479869), and
`BookingDetail` is also a real table (PK `(Code,VenueCode)`, 10 cols, 0 rows). Harmless today
because the viewer only passes the string to Crystal, but a migration that maps
`GRepFormName → object` naively could collide.

### F-BANQ-09 — ODC report ordinal gaps `[VERIFIED-VB6]`

ODC `Reports` registrations use ordinals `0,1,2,3,4,5,7,9,10,11`
(EXTRAS.text L476757–L476775) — **6 and 8 are skipped**; Indoor uses contiguous `0..9`
(L476686–L476704). ODC masters also skip ordinal 6 (`Banquet Bill Sundry Setting` = 7,
L476730). `[INFERRED]` two deleted menu entries were never renumbered.

### F-BANQ-10 — `Booking Chart` is a dead branch `[VERIFIED-VB6]`

`If (var_188 = "Booking Chart") Then GoTo loc_1E2A553 End If` (EXTRAS.text L479792–L479794) —
no form is created. No menu row carries that caption, so the branch is currently unreachable
dead code. `[VERIFIED-VB6]`

---

## Table-level observations `[VERIFIED-SQL]`

| Observation | Source |
|---|---|
| **0 foreign keys** in the whole `MOONData2627` schema | `foreign_keys.txt` (empty file) |
| `SunTran` 98 025 rows is ~75× `HallSale1` — banquet bills contribute almost nothing | `tables_rowcounts.txt` |
| `VenueOCC` PK `(FPDocid,VenuCode)` → occupancy is booking×venue granular | `indexes_pks.txt` |
| `HallSale1Est` PK `(DocId)` mirrors `HallSale1` but the tax detail table `HallSale2Est` does **not** exist | `columns_dictionary.txt` (no `HallSale2Est` rows) |
| `GuestComments` PK `(Code,LogSite_Code)` is a 2-column key (site-scoped) unlike other single-column PKs | `indexes_pks.txt` |
| `FunctionType` = 8 rows, `VenueMast` = 10, `VenueCapacity` = 32 | `tables_rowcounts.txt` |

---

## Cross-module touch points

| Banquet concept | Touches module | Evidence |
|---|---|---|
| `var_AC = "BANQ"/"ODC"` forks POS menu captions to hall forms | 08_POS | EXTRAS.text L477828, L477929, L477855 |
| `Settlement Entry` uses `MemVar_1F81F64` (POS singleton) | 08_POS | EXTRAS.text L479938 |
| POS `POSAdvanceDepDialog` runs `HallbOOK.Docid='<pDocId>'` | 08_POS → 09 | EXTRAS.text L598703 |
| `FrmPOSBillDeletion` excludes `RestType='Banquet'` | 08_POS | EXTRAS.text L514244 |
| `SunTran` / `SunTranH` written by both `HallBill` and `RSSaleBill` | 08_POS | EXTRAS.text L400388 / L324266 |
| `Voucher_Prefix` serial bump shared | all | `indexes_pks.txt` / `tables_rowcounts.txt` |
| `UserPermission` gates discount & menu visibility | 14, all | `18_Database\` + EXTRAS.text L460883 |
| `eInvoiceBill1` shared with POS e-invoicing | 08_POS | EXTRAS.text L399171 |

---

## Undocumented / untested items

| ID | Item | Reason |
|---|---|---|
| U-BANQ-01 | Crystal `.rpt` internals for the 14 banquet reports | `.rpt`/`.ttx` absent — `[UNKNOWN] — 17_Reports contains only REPORTS_ANALYSIS.md` |
| U-BANQ-02 | Per-report table provenance | descriptor files are category boilerplate — `[UNKNOWN] — searched REPORTS_TXT\` for the 14 names` |
| U-BANQ-03 | `GuestComments` write SQL | `[UNKNOWN] — searched 454521..456080 for INSERT/UPDATE/Delete on GuestComments; no literal` |
| U-BANQ-04 | Meaning of menu row type `2` | `[UNKNOWN] — no type legend in 19_VB6_Logic` |
| U-BANQ-05 | `E` vs `R` flag in `MenuHelp_*_tree.txt` | `[UNKNOWN] — no legend for the trailing column` |
| U-BANQ-06 | Whether the app shows 1 or 2 identical `Catalog Selection` rows | `[UNKNOWN] — no screenshot of the menu group` |
| U-BANQ-07 | `hAdvanceDepDialog*` declaration site | `[UNKNOWN] — 0 hits for "As New hAdvanceDepDialog"` |
| U-BANQ-08 | Generic writers `Proc_154_5_10DBE9C`, `Method_TopCtrl1_UnknownEvent_*` | their SQL is assembled at runtime — `[UNKNOWN] — bodies not expanded for this module` |
| U-BANQ-09 | Live execution of any extracted statement | deliberately not run |
| U-BANQ-10 | Screens: 9 operations + 8 setup + 8 reports + all ODC screens | `[VERIFIED-UI] — 15 PNGs only; see screens.md §7.1` |

---

## Verification checklist performed for this module

- [x] 65 module-12 rows recounted directly from `menu_tree_raw.txt` (`^12\|` → 65, rows L363–L427).
- [x] Per-type counts recomputed: type 0 = 31, type 1 = 30, type 2 = 2, type 3 = 1, type 4 = 1.
- [x] Every `EXTRAS.text` line cited in `screens.md`, `logic\vb6_logic.md`, `sql\queries.sql`,
      `reports\reports.md` was produced by a real `rg -n` / `Get-Content -Skip` read of that file.
- [x] Object boundaries read from `'Object:` markers (23 banquet-owned objects).
- [x] Row counts and PKs read from `18_Database\tables_rowcounts.txt` / `indexes_pks.txt` /
      `columns_dictionary.txt`.
- [x] All 14 banquet `GRepFormName` values confirmed present in `REPORTS_TXT\`.
- [x] `flowcharts\workflow.mmd` parses cleanly with `mermaid.parse()` → `flowchart-v2`.
- [x] `screenshots\README.md` uses the exact required pointer text with 15 PNGs.
- [x] No credential / GUI-password / `UserPermission` value written anywhere in this folder.
- [ ] Machine-render of the flowchart to SVG: `mmdc` not installed `[UNKNOWN] — parser validation
      only`.
