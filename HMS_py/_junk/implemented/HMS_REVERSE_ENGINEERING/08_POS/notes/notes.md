# 08_POS — notes, findings, open items

Evidence tags: `[VERIFIED-VB6]`, `[VERIFIED-SQL]`, `[VERIFIED-UI]`, `[VERIFIED-CONFIG]`,
`[INFERRED]`, `[UNKNOWN]`.

---

## Notable findings

### F-POS-01 — Settlement Entry uses an unassigned shared form instance `[INFERRED]`

`Settlement Entry` is dispatched with `Set var_90 = MemVar_1F81F64` (EXTRAS.text L479938) and, in the
MDI toolbar path, `global_52 = MemVar_1F81F64` (EXTRAS.text L698).

- `MemVar_1F81F64` is referenced exactly **twice** in `EXTRAS.text` (L698, L479938) and twice in
  `HMS.bas` (same two lines) — **both reads, no `Set ... = New ...` anywhere**. `[VERIFIED-VB6]`
- Its property surface — `LocalRestCode`, `OpenType`, `OpenMode`, `Connection15`, `AdvType`,
  `CAPTION`, `Show` — is identical to `POSAdvanceDepDialog` (compare EXTRAS.text L479363–L479387
  for `Order Booking Advance`). `[VERIFIED-VB6]`
- Both use `OpenType = 5`, `OpenMode = 2` and the same `Select 'B'+ShortName as Adv_Type From Depart`
  voucher lookup. `[VERIFIED-VB6]`
- `rg "As New POSAdvanceDepDialog"` over `EXTRAS.text` and `HMS.bas` → **0 hits**. `[UNKNOWN]`

**Conclusion `[INFERRED]`:** a module-level `Dim ... As New POSAdvanceDepDialog` (declaration not
present in the decompile). **Why it matters:** the settlement dialog is a *singleton* — opening
Settlement Entry twice re-uses the same object, so state from a previous settlement can leak.

### F-POS-02 — the POS menu is partly generated at runtime from `Depart` `[VERIFIED-VB6]`

Static registrations cover `Point Of Sale` (EXTRAS.text L476507), `Restaurant Change` (L476509),
`POS Status` (L476511), `POS Operations` (L476513) and its 12 children (L476515–L476537,
`KOT Entry` L476515 … `Token Entry` L476537), `POS Reports` (L476539) and its 22 children
(L476541–L476583, `Sales Register` L476541 … `Denomination Detail` L476583),
`POS M.I.S.` (L476585) and its 11 children (L476587–L476607, `Collection Summary` L476587 …
`Edited Bills` L476607).

Then EXTRAS.text L476608 runs:

```vb
Select Code,Name,KOTYN,Order_Booking from depart where OutletYN='Y' And LogSite_Code='<site>'
```
and, per outlet, registers **one group header per outlet name** (type 3, L476612) plus children
keyed on the outlet flags (L476613–L476655):
- always: `KOT Entry` (L476615-region), `Table Change Entry`, `KOT Transfer` (L476619),
  `Token Entry` (L476621), `Display Table` (L476641), `Bill Lookup` (L476654),
- `Order Booking` (L476644) / `Order Booking Advance` (L476646) only when
  `Depart.Order_Booking = 'Y'` (loop condition at L476643-region, `Loop Until ... = "N"` at L476649).

**So the live POS menu is larger than the 53 rows in `menu_tree_raw.txt`** — the dump captured only
the static part plus stray rows. `[VERIFIED-VB6]`

### F-POS-03 — menu dump shows two rows that belong to a different grouping `[VERIFIED-VB6]`

`menu_tree_raw.txt` L11 and L14 park `Payment Receive Entry (POS)` and `Bill Wise Adjustment Report`
under group `POS Reports` at the *top of the file*, unlike the rest of module 11 (L312–L362).

Their registrations are separate calls with explicit owner strings `"POSRep"` and ordinal `&H2A` /
`&H2B` (EXTRAS.text L11655 and L11671) instead of the main block's sequential ordinals
(`&H29` = `Denomination Detail`, EXTRAS.text L476583-region). That explains the dump ordering.

### F-POS-04 — discount is permission-gated by `UserPermission.POSDiscountAllowUpto` `[VERIFIED-VB6]`

`RSSaleBill` raises `U are not Authorised to give discount` (L320115, L320275, L321359, L321452) when
`global_520 = 0`, otherwise `U are Authorised to give discount upto <n>` (L320118, L320278, L321362,
L321455). The limit is loaded at EXTRAS.text L320452-region:

```vb
SELECT POSDiscountAllowUpto FROM UserPermission WHERE LOGSITE_CODE='...' And CompCode='...'
And UserName='<user>'
...
global_520 = CSng(var_F4)          ' EXTRAS.text L320459
```
Guard reads `If (global_520 = CDbl(0)) Then` at L320113, L320273, L321357, L321450, L323772.
`[VERIFIED-VB6]`

> `UserPermission` is a permission table — no credential values are reproduced here.

### F-POS-05 — settlement is blocked for production outlets `[VERIFIED-VB6]`

`Select Count(*) From Depart Where Code='...' And RestType='Production'` → if `> 0`,
`MsgBox "Operation is not allowed for Perticular Department"` + `Exit Sub` (EXTRAS.text L698-region,
loc labels `L142C14A` / `L142C1B5`).

### F-POS-06 — `Sale1` re-save is delete-then-insert `[VERIFIED-VB6]`

`Delete From Sale1 Where DocId=...` (L324253) immediately precedes `Insert Into Sale1 ...`
(L324352). Combined with the fact that `foreign_keys.txt` is **empty (0 FKs)** `[VERIFIED-SQL]`,
nothing in the schema protects referential integrity on `Sale2`/`SunTran`/`PayCharge` children.

### F-POS-07 — `RestType` is the module switch, including inside the POS menu `[VERIFIED-VB6]`

`var_AC = "BANQ"` / `"ODC"` selects `rHallRepView` over `rPOSRepView` (EXTRAS.text L479455,
L479830) and `FrmHallItemCatMast` over `FrmItemCatMast` (L477862-region). An outlet classified
`BANQ`/`ODC` therefore behaves as banquet even when opened from module `11`.

---

## Table-level observations `[VERIFIED-SQL]`

| Observation | Source |
|---|---|
| `KOT` has 28 101 rows and a composite PK `(DocId,Sno)` | `tables_rowcounts.txt`, `indexes_pks.txt` L102 |
| `SunTran` (98 025) ≫ `Sale1` (12 686) — roughly 7.7 sundry lines per bill | `tables_rowcounts.txt` |
| `Sale2` 66 055 rows over 12 686 bills ≈ 5.2 tax lines per bill | `tables_rowcounts.txt` |
| `TOKEN`, `POS_SBill`, `SplitSale1`, `SplitSale2`, `SplitSunTran`, `TempPosDel`, `DenominationDetail`, `HappyHours` are all **0 rows** — features exist in code but are unused | `tables_rowcounts.txt` |
| `Waiter` = 58 rows, `Depart` = 73 rows, `RoomMast` = 86 rows | `tables_rowcounts.txt` |
| **0 foreign keys declared across the whole DB** | `foreign_keys.txt` (empty) |
| `HallBook1` is 0 rows even though banquet code writes to it — banquet detail lines were never used in production data | `tables_rowcounts.txt` |

---

## Cross-module touch points

| POS concept | Touches module | Evidence |
|---|---|---|
| `POSAdvanceDepDialog` executes `... And HallbOOK.Docid='<pDocId>'` | 09_Banquet | EXTRAS.text L598703 |
| `POSAdvanceDepDialog` executes `... And PD.Docid=...`, `ContraDocID='<pDocId>'` | 09_Banquet | EXTRAS.text L598740, L599013 |
| `Sales Register` opens `rHallRepView` when `RestType` is `BANQ`/`ODC` | 09_Banquet | EXTRAS.text L479830–L479835 |
| `FrmPOSBillDeletion` excludes `RestType='Banquet'` from its outlet picker | 09_Banquet | EXTRAS.text L514244 |
| `KOT`/`Stock` guards are shared with Kitchen/Inventory | 07_Inventory, Kitchen | EXTRAS.text L613991 |
| `Voucher_Prefix` serial bump is a global (428 references) | all modules | EXTRAS.text L15644, L22605 |
| `RsStatusScreen` also touches `MemFacilityBilling` | 14_Members_Management | EXTRAS.text L611461 |

---

## Undocumented / untested items

| ID | Item | Reason |
|---|---|---|
| U-POS-01 | Crystal `.rpt` internals per `GRepFormName` | `.rpt` binaries not parsed `[UNKNOWN] — 17_Reports\REPORTS_ANALYSIS.md only describes the mapping approach` |
| U-POS-02 | ~~`global_520` discount-limit source~~ | **resolved**: `UserPermission.POSDiscountAllowUpto` (EXTRAS.text L320452-region, L320459) — see F-POS-04. Remaining unknown: the `UserPermission` row contents (credential-adjacent, deliberately not extracted) `[UNKNOWN] — data not read` |
| U-POS-03 | Print/ESC-POS rendering routines | `[UNKNOWN] — obfuscated names (Proc_6_44_*, Proc_6_37_*); Depart.Printer/PrintType columns exist but no readable renderer` |
| U-POS-04 | `MemVar_1F81F64` declaration | `[UNKNOWN] — 0 hits for "As New POSAdvanceDepDialog"`; see F-POS-01 |
| U-POS-05 | Runtime POS menu rows (per-outlet groups) | not in `menu_tree_raw.txt`; `[VERIFIED-VB6]` code path exists but the dump predates it — see F-POS-02 |
| U-POS-06 | Live transaction screens (12 `POS Operations`) | no screenshots `[VERIFIED-UI] — 20 PNGs, none show an Operations form` |
| U-POS-07 | Type/NULL behaviour of extracted SQL | not executed, per task rules `[UNKNOWN] — no live SQL run` |

---

## Verification checklist performed for this module

- [x] 53 module-11 rows recounted directly from `menu_tree_raw.txt` (`^11\|` → 53, rows L11, L14,
      L312–L362).
- [x] Every `EXTRAS.text` line cited in `screens.md`, `logic\vb6_logic.md`, `sql\queries.sql`,
      `reports\reports.md` was produced by a real `rg -n` / `Get-Content -Skip` read of that file.
- [x] Object boundaries cross-checked against the `'Object:` markers.
- [x] Row counts and PKs read from `18_Database\tables_rowcounts.txt` and `indexes_pks.txt`.
- [x] `flowcharts\workflow.mmd` parses cleanly with `mermaid.parse()` (flowchart-v2).
- [x] `screenshots\README.md` uses the exact required pointer text with 20 PNGs.
- [ ] Machine-render of the flowchart to SVG: `mmdc` not installed `[UNKNOWN] — only parser
      validation performed`.
