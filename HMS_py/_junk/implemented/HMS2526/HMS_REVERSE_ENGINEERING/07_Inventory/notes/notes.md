# 07_Inventory — Notes, Findings, Known Issues

Evidence tags: `[VERIFIED-VB6]`, `[VERIFIED-SQL]`, `[VERIFIED-CONFIG]`, `[INFERRED]`, `[UNKNOWN]`.
Line numbers = `HMS_REVERSE_ENGINEERING\EXTRAS.text` unless stated.
Menu line numbers = `19_VB6_Logic\menu_tree_raw.txt`.
Report file checks = `<HMS2526>\Reports` (371 `.rpt` + 194 `.ttx`) `[VERIFIED-CONFIG]`.

Module scope: menu hex `10` (`Material Mgmt`, L476426–L476504) **plus** the related
`Material Mgmt Setup` hex `&HC` (L476079–L476102), both gated on module letter **`J`**
(L476426 / L476079: `InStr(2, MemVar_1F81228, "J", 0) <> 0`).

---

## IN-1 — Three menu rows with no dispatcher branch, three keys with no menu row

**Menu → nothing** `[VERIFIED-VB6]`:

| Caption | Menu | Registered at | Dispatcher |
|---|---|---|---|
| `Indent Register` | L297 | L476474 (idx `&H20`) | **absent** |
| `Purchase Order Register` | L298 | L476476 (idx `&H21`) | **absent** |
| `M.R. Register` | L303 | L476486 (idx `&H26`) | **absent** |

The captions appear **only** at those three registration lines plus three
`rInventRepView.Method_arg_54` title lookups (L638166, L638169, L638187) — never in a
`If (var_188 = …)` test. `[VERIFIED-VB6]`

**Key → nothing** — the mirror image:

| Key | Line | Would have opened |
|---|---|---|
| `Pending M.R.` | L478573 | `rInventRepView` / `PurchBill` |
| `Pending Indent` | L478636 | `rInventRepView` / `IndentReg` |
| `Pending Purchase Order` | L479187 | `rInventRepView` / `PurchOrder` |
| `Restaurant Issue Report` | L479244 | `rInventRepView` / `RestIssue` |
| `Location Master` | L477752 | `New Godown` |
| `Kitchen stock Transfer` | L479156 | (no menu row) |
| `Change Kitchen/Store` | L479265 | (no menu row) |
| `Requistion Slip Entry` | L479138 | misspelled twin of menu `Requisition Slip` (L281), which *is* matched at L478657 |

* Severity: **High** — clicking the three report menu items falls through to the shared exit
  L480825 (`Print 1, var_94` / `Close 1` / `Exit Sub`) with **no form and no message**
  `[VERIFIED-VB6]`.
* `Location Master` is a full working form (`Godown`, 70 rows in `GodownMast`) with no way to
  reach it from the UI. `[VERIFIED-SQL]`
* Cause: two separately-maintained caption lists (the menu builder and the dispatcher) with no
  shared constant. `[INFERRED]`

---

## IN-2 — Duplicate `VAT Register III` row makes `Form24 Annexure-A` unreachable

* `menu_tree_raw.txt` **L308** and **L309** both read `10|1|Reports|VAT Register III`.
* Registration matches exactly:
  * **L476496** `("VAT Register III", &H10, 1, "Reports", …, &HB, "MatRep", 1)`
  * **L476499** `("VAT Register III", &H10, 1, "Reports", …, &HC, "MatRep", 1)` —
    preceded by **L476498** `var_124 = "Form24 Annexure-A"`.
* **L476498 proves the intent**: `Proc_165_0_14C1708` takes the caption as its literal first
  argument (L475667), and `var_124` is **never read** by that procedure
  (verified across the whole body L475664–L475816). `[VERIFIED-VB6]`
* Dispatcher has both branches — L478608 `VAT Register III`, L478615
  `Form24 Annexure-A` → `New rInventRepView` — but `MenuHelp.Option` for idx `&HC` resolves to
  the stored caption `VAT Register III`, so **L478615 can never be hit from the menu**
  and `Form24AnnexureA.rpt` / `.ttx` (both present) are unreachable. `[VERIFIED-VB6]`
* Severity: **High** (one statutory report becomes undiscoverable).
* Same root cause appears in `06_House_Keeping` **HK-14** and as dead keys here **IN-1**.

---

## IN-3 — Ten report keys have no exact `.rpt` file

Checked case-insensitively against `<HMS2526>\Reports` `[VERIFIED-CONFIG]`:

| Key | Closest file present |
|---|---|
| `KitchenStkRep` | `KitchenStk.rpt`, `KitchenStockTr.rpt` |
| `PurchaseReg` | `PurchReg.rpt` |
| `PurchaseSumm` | `PurchSumm.rpt` |
| `CashCreditPurch` | `PurchCashCredit.rpt` |
| `StockRegStore` | `StockRegister.rpt`, `RStockRegister.rpt` |
| `StockSummStore` | `StockSumm.rpt`, `RStockSummary.rpt` |
| `DailyStoreIssRpt` | `DailyStoreIss.rpt` |
| `ExcessConsumption` | `ExcessConsum.rpt` |
| `StockSummaryP/SBasis` | `StockSummaryPSBasisDT.rpt`, `…SM.rpt` |
| `ProductionReport` | `Production.rpt` |

* Resolution code builds
  `MemVar_1F810B4 & "\" & <key> & ".ttx"` (L636046) then
  `MemVar_1F810B4 & <key> & ".RPT"` (L636048) — an **exact** name. `[VERIFIED-VB6]`
* Severity: **Critical** — 10 of 26 report menu items cannot load their template.
* Cause: `.rpt` files were renamed/shortened at some point while the VB6 keys were not.
  `[INFERRED]`

---

## IN-4 — `LiquorSaleRep` has no file at all

* Menu **L10** `10|1|Reports|Liquor Sale Report`; registration **L11653** (from `frmCompany`,
  idx `&H13`, `MatRep`); dispatch **L479258–L479264** → `GRepFormName = "LiquorSaleRep"`.
  `[VERIFIED-VB6]`
* **No `Liquor*` file of any extension exists in `Reports\`** (0 of 566 files).
  `[VERIFIED-CONFIG]`
* `rInventRepView` itself hardcodes the human title at **L638151** and **L647698**
  (`Method_arg_54 ("Liquor Sale Report")`), so the viewer knows the report even though the
  template is gone. `[VERIFIED-VB6]`
* Severity: **High**.
* The row is also **detached**: it sits at the very top of `menu_tree_raw.txt` (L10) while its
  sibling `Store Issue Report` is at L7 — both were registered from `frmCompany`, not from the
  module block L476426–L476504 (see **IN-6**).

---

## IN-5 — `PurchBill.ttx` exists with no `PurchBill.rpt`

* Dispatch key `Pending M.R.` (L478573) → `GRepFormName = "PurchBill"`.
* `Reports\` contains `PurchBill.ttx` **but no `PurchBill.rpt`**; only
  `PurchBillOther.rpt`, `PurchBillSaleInvoice.rpt`, `PurchBillTaxInvoice.rpt`.
  `[VERIFIED-CONFIG]`
* The `.ttx` is what `CreateFieldDefFile` rewrites — so the field-definition step would succeed
  and only the `.RPT` open would fail. `[VERIFIED-VB6]`
* Severity: **High**. Also moot in practice because the key has no menu row (**IN-1**).

---

## IN-6 — Two hex-`10` rows are registered from `frmCompany`, not from the module block

* `module` / `Transactions` / `Reports` and all their children are registered inside
  `Proc_165_1_1EF3904`, gated by `InStr(…, "J", …)` at **L476426** and ending at **L476504**:
  1 module header (L476428) + 2 groups (L476430, L476454) + 11 transactions (L476432–L476452)
  + 24 reports (L476456–L476503) = **38 calls**. `[VERIFIED-VB6]`
* **`Store Issue Report` (L11647, idx `&H12`) and `Liquor Sale Report` (L11653, idx `&H13`)
  are registered from the `frmCompany` object** (object begins L9605) with the same
  `Module_Name = "MatRep"` and the same parent `"Reports"`. `[VERIFIED-VB6]`
* Consequence in the dump: they surface as the two detached head rows
  `menu_tree_raw.txt` **L7** and **L10**, separated from the main block L274–L311.
* Severity: Medium — works, but the module's menu is not self-contained and would silently
  lose two reports if `frmCompany`'s registration were skipped.

---

## IN-7 — Whitespace / case-variant duplicate guards in the dispatcher

The decompiler emitted these as a **nested `If Not (…) Then / If (…) Then` pair**, i.e. a
flattened disjunction. `[VERIFIED-VB6]`

| Outer | Inner | Meaning |
|---|---|---|
| L477692 `Not = "Item List"` | L477693 `= "Item  List"` | one space vs **two** |
| L477948 `Not = "Item Entry"` | L477949 `= "Item Entry "` | **trailing** space |
| L478557 `Not = "Issue Checklist"` | L478558 `= "Issue CheckList"` | casing (`l` vs `L`) |
| L479169 `Not = "Purchase Register"` | L479170 `= "Purchase Register "` | trailing space |
| L479178 `Not = "Purchase Summary"` | L479179 `= "Purchase Summary "` | trailing space |
| L479201 `Not = "Stock Register"` | L479202 `Not = "Stock Register  "` **then** L479203 `= "Stock Register "` | **three** spellings (0, 1, 2 spaces) |
| L479212 `Not = "Stock Summary"` | L479213 `= "Stock Summary  "` | 2 trailing spaces |
| L479228 `Not = "Stock In Hand"` | L479229 `= "Stock In Hand "` | trailing space |

* Stored captions in `menu_tree_raw.txt` use the **no-space** spelling (L289, L290, L292, L293,
  L294, L302) and `Item  List` uses the **two-space** spelling (L122) to match
  registration L476099.
* Severity: Medium. Exact runtime semantics of the nested pair are `[UNKNOWN]` (decompiler
  artifact), but the intent is clearly "accept either spelling" `[INFERRED]`. The three-way
  `Stock Register` nest suggests captions were edited in `menuHelp` at some point without
  touching the code. `[INFERRED]`

---

## IN-8 — Duplicate handler blocks

Identical report bodies appear twice in the dispatcher:

| Report | Occurrence 1 | Occurrence 2 |
|---|---|---|
| `Stock Register` → `StockRegStore` | L479201–L479211 | L478525–L478533 |
| `Stock Summary` → `StockSummStore` | L479212–L479220 | L478534–L478542 |
| `House Keeping Screen` (cross-module) | L478717–L478722 | L479076–L479081 |

Also `House Keeping Op.Stock Entry` (L479057) and `Issue/Recd. Entry` (L479070) live in the
hex-10 window but belong to **06_House_Keeping** (registration L476408 / L476410).

* Severity: Low (behaviour identical), but it confirms copy-paste maintenance and makes
  "change one site" edits miss the twin. `[VERIFIED-VB6]`

---

## IN-9 — `Requisition Slip` vs `Requistion Slip Entry`

* Menu + registration use the correct spelling: `menu_tree_raw.txt` **L281**,
  registration **L476442** (idx 5, `Purch`).
* Dispatcher has **two** branches:
  * **L478657** `If (var_188 = "Requisition Slip") Then` → opens `New pReqSlip` — **this is the
    live one.**
  * **L479138** `If (var_188 = "Requistion Slip Entry") Then` — misspelled ("Requistion") and
    suffixed; **no menu row carries it** → dead. `[VERIFIED-VB6]`
* Severity: Low (one live path works), Medium for maintenance — the dead branch looks like the
  real one when reading L479131–L479156 in sequence.

---

## IN-10 — `.RPT` path built without a separator

| Line | Statement | `\` present |
|---|---|---|
| L636046 | `CreateFieldDefFile(var_C4, MemVar_1F810B4 & "\" & var_88 & ".ttx", &HFF)` | yes |
| **L636048** | `0.Method_arg_1C (MemVar_1F810B4 & var_C0 & ".RPT", var_A4, var_B8)` | **no** |
| L656549–L656551 | `var_29C = MemVar_1F810B4 & "\"` … `var_29C & var_AC & ".RPT"` | yes |
| L658123–L658125 | same pattern | yes |

* Same defect as `06_House_Keeping` **HK-5** and `04_Reservation` (L120781 in
  `rRepHousePreview`).
* Compare `rFomRepView` **L663351–L663352** and `rRepReserv` **L166066–L166067**, which both
  append `"\"`.
* Severity: Medium — works only if `var_C0` already carries a leading `\`. `[INFERRED]`

---

## IN-11 — Zero declared foreign keys; every cascade is client-side

* `18_Database\foreign_keys.txt` is **0 bytes** → **0 FK constraints in `MOONData2627`**
  `[VERIFIED-SQL]`.
* Cascades such as the Purchase Bill delete (L72487–L72501) and the Purchase Order delete
  (L212015–L212058) are hand-written `DELETE` lists in VB6. `[VERIFIED-VB6]`
* The multi-table saves **are** wrapped in ADO transactions — `BeginTrans` /
  `CommitTrans` / `RollbackTrans` are present in every inventory form (see
  `sql/sql_notes.md` §5 for the per-form line pairs). In `pPBill` the unit runs
  `BeginTrans` **L73485** … `CommitTrans` **L74061**, and the `Voucher_Prefix` bump
  (L74026) plus `LastVou` write (L74043–L74058) are **inside** it. `[VERIFIED-VB6]`
* What is *not* covered: an **interleaving** of two sessions. Both read `Start_Srl_No`, both
  compute `n+1`, both commit — the transaction guarantees atomicity of *one* session, not
  isolation between two. `[INFERRED]`
* Severity: **Critical** for the port — referential integrity must be re-created as real
  constraints or the migration will silently accept orphans.

---

## IN-12 — `MAX(SUBSTRING(...))` key allocation

| Table | Expression | Line | Form |
|---|---|---|---|
| `ItemGrp` | `IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 … Where ISNUMERIC(substring(Code,3,4))=1` | **L51415** | `FrmItemGroupMast` |
| `ItemCatMast` | same, 4-digit tail + `isnumeric` guard | **L130222** | `FrmItemCatMast` |
| `GodownMast ∪ Depart` | `Max(CAST(SUBSTRING(Code,4,Len(Code)-3) …))` over a derived table | **L180111** | `DepartMast` |

`[VERIFIED-VB6]`

* Assumes a fixed site prefix + fixed-width serial; the `ISNUMERIC(...) = 1` guard silently
  skips any row whose tail is not numeric, so one bad code raises the allocation — and two
  concurrent inserts can still collide, because nothing enforces uniqueness beyond the PK.
* Codebase-wide the same idiom is used ~25+ times (`BussSource`, `GuestStat`, `MarketSeg`,
  `RevMast`, `Waiter`, `TaxStru`, `PlanMast`, `RoomCat`, `City`, `State`, `Country`,
  `GuestProf`, `GroupProf`, …) — so it is a **cross-module** defect, not an inventory one.
* Same family as `06_House_Keeping` **HK-11**.
* Severity: Medium.

---

## IN-13 — Voucher serial allocation: two incompatible styles, and one is a race

* **Style A — absolute assignment (read-modify-write, racy):**
  `Update Voucher_Prefix Set Start_Srl_No=<computed>` at
  **L74026** (`pPBill`), **L111212** (`kClStk`), **L208518** (`PIndent`), **L212680**
  (`pPOrder`), **L216661** (`pMREntry`), **L425719** (`FrmOPStock`), **L452711** / **L452731**
  (`FrmStockTransfer`), **L588363** (`RsStoreRecEntry`), **L591282** / **L591303**
  (`RsKitchenStk`), **L607231** / **L607252** (`RsKitchenMaterial`), **L834309** (`pReqSlip`).
  `[VERIFIED-VB6]`
* **Style B — `Start_Srl_No=Start_Srl_No+1` (single statement):**
  **L109819** (`pGIss`), plus L22605 / L22835 / L40954 / L41210 elsewhere in the app.
  Still not concurrency-safe under `READ COMMITTED` (two readers see the same value), but it
  at least cannot be corrupted by a stale cached value. `[VERIFIED-VB6]`
* Read side: `SELECT … Start_Srl_No …` precedes every Style-A write.
* Application-level defence only:
  `MsgBox "Duplicate Voucher No."` **L74695** (`pPBill`), L82893 / L84472 (HK);
  `MsgBox "Duplicate Order No."` **L211206** / **L214078** (`pPOrder`);
  `MsgBox "Duplicate Invoice No."` **L111548** (`kClStk`).
  These are `Count(*)` checks in VB6, **not** DB constraints. `[VERIFIED-VB6]`
* `LastVou` is updated separately (L74043 / L74050–L74052) as a per-user cache.
* Severity: **Critical** under multi-user load — two operators can receive the same number.
* The race exists **across modules** (`06_House_Keeping` **HK-9**) ⇒ fix once, centrally.

---

## IN-14 — `Site` and `DATELOCK` are empty, so two validations are inert

| Table | Rows | Consequence |
|---|---|---|
| `Site` | **0** | every `LEFT JOIN Site` (e.g. the party ledger register at L22258) yields NULL `Site_Desc` |
| `DATELOCK` (`DataLock`) | **0** | `MsgBox "Date Locked!"` at **L112576** (`kClStk`) and **L213326** (`pPOrder`) can never fire |

`[VERIFIED-SQL]` for row counts, `[VERIFIED-VB6]` for the call sites.

* Severity: Medium — two "safety" behaviours look present in code but are dead against this
  dataset. Do **not** port them as if they work; decide the intended behaviour first.
  `[INFERRED]`

---

## IN-15 — Dormant inventory tables

`[VERIFIED-SQL tables_rowcounts.txt]`

| Table | Rows | Written by |
|---|---|---|
| `KClStk` | **0** | `kClStk` (`Kitchen Closing Stock`) — full save path exists L111182/L111146 |
| `TranTaxDetail` | **0** | `RsKitchenMaterial` L607181 / L606547 / L607037 |
| `TranSunDetail` | **0** | `RsKitchenMaterial` L607206 / L606552 / L607038 |
| `DenominationDetail` | 0 | `FrmDenomination` (object L602545–L604298) L602932 / L602973 — not part of hex `10` |
| `DenominationFormat` | 0 | same form |
| `ShiftMast` | 0 | `Stock.ShiftCode` has no master rows |

Contrast with the live chain:

```
Stock 61 925  >  Sale2 66 055  >  SunTran 98 025  >  Ledger 40 818
Purch2 3 826  >  Purch1 880  >  GIN 890
Indent1 13 022  >  Indent 2 115
POrder1 47  >  POrder 13
```

* Severity: Medium for migration — `Kitchen Closing Stock` and the Excise Gate Pass were never
  used against this dataset, so there is **no regression baseline** for them. `[INFERRED]`
* `RawConsumption` (88 094 rows) has **no producer** in hex `10` / `&HC` —
  it is written by another module. `[VERIFIED-VB6]`

---

## IN-16 — Menu index gaps in the `Reports` group

* `Purch` children use `Menu_Index` `&H15`…`&H28` (21…40) but only **18** are registered:
  `&H15,16,17,18,19,1A,1B,1C,1E,20,21,22,23,24,25,26,27,28` — **`&H1D` (29) and `&H1F` (31)
  are skipped.** `[VERIFIED-VB6]` (L476456–L476490)
* `MatRep` children use `1, &HA, &HB, &HC, &HF, &H10` — **`&HD`, `&HE` are skipped**, and the
  sequence does not start at 0 (L476492–L476503) because `&H0`…`&H4` collide with the two
  `frmCompany` rows (`&H12`, `&H13`) elsewhere. `[INFERRED]`
* Transaction children are dense: `0`…`&HA`, 11 rows, no gaps (L476432–L476452).
* `Material Mgmt Setup` children skip idx **7** (Party=0, Dept=1, Group=2, Category=3,
  Item=4, Consumption=5, Sundry=6, **[7 missing]**, Opening=8, Item List=9, Enviro=`&HB`) —
  L476083–L476101. `[VERIFIED-VB6]`
* Severity: Low — `Menu_Index` only orders siblings, but the gaps are a fingerprint of rows
  that were **deleted after registration**. `[INFERRED]`

---

## Screenshot coverage
10 PNGs in `screenshots\07_Inventory\` `[VERIFIED-CONFIG]`:
`06-Inventory_MenuTab.png`, `B032_Menu_20260928_195554.png`,
`C3_02_Inventory__Operations__Indent.png`,
`C3_02_Inventory__Operations__Purchase_.png`,
`C3_03_Inventory__Operations__MR_Entry.png`,
`C3_03_Inventory__Operations__Purchase_.png`,
`C3_04_Inventory__Operations__MR_Entry.png`,
`C3_04_Inventory__Operations__Purchase_.png`,
`C3_05_Inventory__Operations__Purchase_.png`,
`C3_S1_Inventory__Operations__Indent.png`.

Captured: the Inventory menu tab, `Indent`, `Purchase Order`, `M.R. Entry` (several passes).
Not captured `[UNKNOWN]`: Purchase Bill, Requisition Slip, Stock Issue on Requisition,
Kitchen Closing Stock, Stock Transfer, Finish Material Receive Entry, Excise Invoice Cum
Gate Pass, Gravy Item Entry, **every one of the 26 reports**, and all 10
`Material Mgmt Setup` masters.

---

## Open questions
1. Which builder consumes `Flag = 'V'`? `Consumption Master` is registered with `Opt2 = 2`
   (L476093) ⇒ `Flag = 'V'`; the list builder at L3636 filters `Flag <> 'V'`. A second builder
   at **L6629** matches `Opt2<>0 AND Flag='V'` uniquely. `[UNKNOWN]`
2. What did `rInventRepView`'s three missing `.rpt` variants (`StockRegister`, `StockSummary…`)
   get renamed to, and is the rename recorded anywhere? `[UNKNOWN]`
3. Is `RawConsumption` (88 094 rows) produced by POS, by `FrmConsumMast`, or by an external
   feed? No producer in hex `10` / `&HC`. `[UNKNOWN]`
4. What does `Enviro.TouchScreen` (read at L477031) change about dispatch? Not referenced again
   in the hex-10 branches. `[UNKNOWN]`
5. `var_AC` = `OutletCode` from the `menuHelp` query at L477046 is used to branch
   `Item Group` (L477929) — what outlet codes other than `BANQ` / `ODC` were expected?
   `[UNKNOWN]`
6. `pPBill` allows `Import Only In Add Mode.` (L71344) — which import path feeds it, and does
   the PyPort need it? `[UNKNOWN]`
