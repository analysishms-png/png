# 07_Inventory — VB6 Logic

All line numbers = `HMS_REVERSE_ENGINEERING\EXTRAS.text` unless stated.
`menu_tree_raw.txt` = `HMS_REVERSE_ENGINEERING\19_VB6_Logic\menu_tree_raw.txt` (524 lines).

---

## 1. Registration block (`Proc_165_1_1EF3904`, object `ModuleAdd` L475662–L481014)

### 1.1 Material Mgmt (menu hex `10`)

Gate: **L476426** `If (InStr(2, MemVar_1F81228, "J", 0) <> 0) Then` `[VERIFIED-VB6]`
Module char = **`"J"`**.

| Call | Line | Args |
|---|---|---|
| `Proc_165_0_14C1708("Material Mgmt", &H10, 4, vbNullString, vbNullString, 0, "Purchase", 1)` | L476428 | module header, Opt1=`&H10`=16, Opt2=4 |
| `("Transactions", &H10, 3, ., ., &HFF, "TransPurch", 1)` | L476430 | group, Opt2=3, Menu_Index=`&HFF` |
| `("Gravy Item Entry", &H10, 0, "Transactions", ., 0, "Purch", 1)` | L476432 | index 0 |
| `("Indent", ., 1, .)` | L476434 | index 1 |
| `("Purchase Order", ., 2, .)` | L476436 | index 2 |
| `("M.R. Entry", ., 3, .)` | L476438 | index 3 |
| `("Purchase Bill", ., 4, .)` | L476440 | index 4 |
| `("Requisition Slip", ., 5, .)` | L476442 | index 5 |
| `("Stock Issue on Requisition", ., 6, .)` | L476444 | index 6 |
| `("Kitchen Closing Stock", ., 7, .)` | L476446 | index 7 |
| `("Stock Transfer", ., 8, .)` | L476448 | index 8 |
| `("Finish Material Receive Entry", ., 9, .)` | L476450 | index 9 |
| `("Excise Invoice Cum Gate Pass", ., &HA, .)` | L476452 | index 10 |
| `("Reports", &H10, 3, ., ., &HFF, "MatReports", 1)` | L476454 | report group |
| `("Kitchen Stock Report I/R Basis", &H10, 1, "Reports", ., &H15, "Purch", 1)` | L476456 | Opt2=1 → Flag `R` |
| `("Purchase Register", ., &H16, .)` | L476458 | |
| `("Purchase Summary", ., &H17, .)` | L476460 | |
| `("Cash/Credit Purchase", ., &H18, .)` | L476462 | |
| `("Stock Register", ., &H19, .)` | L476464 | |
| `("Stock Summary", ., &H1A, .)` | L476466 | |
| `("Stock In Hand", ., &H1B, .)` | L476468 | |
| `("Excess Consumption Report", ., &H1C, .)` | L476470 | |
| `("Store Issue Register", ., &H1E, .)` | L476472 | index skips `&H1D` |
| `("Indent Register", ., &H20, .)` | L476474 | index skips `&H1F` |
| `("Purchase Order Register", ., &H21, .)` | L476476 | |
| `("Daily Store Issue Reports", ., &H22, .)` | L476478 | |
| `("VAT Register", ., &H23, .)` | L476480 | |
| `("Purchase Ledger", ., &H24, .)` | L476482 | |
| `("Issue CheckList", ., &H25, .)` | L476484 | |
| `("M.R. Register", ., &H26, .)` | L476486 | |
| `("Stock Summary P/S Basis", ., &H27, .)` | L476488 | |
| `("ABC Analysis", ., &H28, .)` | L476490 | |
| `("Production Report I/R Basis", &H10, 1, "Reports", ., 1, "MatRep", 1)` | L476492 | new `Module_Name` |
| `("VAT Register II", ., &HA, "MatRep")` | L476494 | |
| `("VAT Register III", ., &HB, "MatRep")` | L476496 | |
| **`var_124 = "Form24 Annexure-A"`** | **L476498** | intended override — **never read by the registrar** |
| `("VAT Register III", ., &HC, "MatRep")` | L476499 | stored caption is the duplicate literal |
| `("Form III", ., &HF, "MatRep")` | L476501 | index skips `&HD`, `&HE` |
| `("UPVAT XXIV", ., &H10, "MatRep")` | L476503 | |
| `End If` | L476504 | |

38 calls in this block. `[VERIFIED-VB6]`

### 1.2 Two extra registrations from a different object

`Proc_165_0_14C1708` is also called from **`frmCompany`** (object begins L9605):

| Call | Line | Args |
|---|---|---|
| `("Store Issue Report", &H10, 1, "Reports", ., &H12, "MatRep", 1)` | **L11647** | fills the `&H11`/`&H12` gap in the `MatRep` index ladder |
| `("Liquor Sale Report", &H10, 1, "Reports", ., &H13, "MatRep", 1)` | **L11653** | |

These two produce the detached rows `menu_tree_raw.txt` **L7** and **L10**.
`[VERIFIED-VB6]`

### 1.3 Material Mgmt Setup (menu hex `&HC`)

Gate: **L476079** `If (InStr(2, MemVar_1F81228, "J", 0) <> 0) Then` `[VERIFIED-VB6]`
— **the same `"J"` char gates the setup block.**

| Call | Line | Args |
|---|---|---|
| `("Material Mgmt Setup", &HC, 3, "Main Setup", ., &HFF, "CCenter", 1)` | L476081 | group under `Main Setup` |
| `("Party Master", &HC, 0, "Material Mgmt Setup", ., 0, "CCenterMas", 1)` | L476083 | index 0 |
| `("Department", ., 1, .)` | L476085 | index 1 |
| `("Item Group", ., 2, .)` | L476087 | index 2 |
| `("Item Category", ., 3, .)` | L476089 | index 3 |
| `("Item Entry", ., 4, .)` | L476091 | index 4 |
| `("Consumption Master", &HC, 2, ., ., 5, .)` | L476093 | Opt2=2 → Flag **`V`** |
| `("Purchase Sundry Setting", ., 6, .)` | L476095 | index 6 |
| `("Opening Stock", ., 8, .)` | L476097 | **index 7 skipped** |
| `("Item  List", ., 9, .)` | L476099 | two spaces in caption |
| `("Enviro Inventry", ., &HB, .)` | L476101 | **index &HA skipped** |
| `End If` | L476102 | |

Menu dump: **L113–L123** (1 group + 10 leaves). `[VERIFIED-VB6]`

### 1.4 Registrar behaviour (shared, cited here for completeness)

`Proc_165_0_14C1708` **L475664–L475816** `[VERIFIED-VB6]`:

* signature `(caption, Opt1, Opt2, parent, ?, Menu_Index, Module_Name, ?)`
* idempotency guard on an existing `UserModule` row (L475695, L475701)
* computes the `OPT2/3/4` ladder from `Max(optN)` (L475721–L475775)
* packs `Code = Opt1*1000000 + Opt2*10000 + Opt3*100 + Opt4` (L475793–L475801)
* inserts `UserModule` (L475803) and `MenuHelp` (L475808–L475812, `UserName='SA'`,
  `ShowInlist='N'`)
* **`arg_C` (the literal caption) is stored verbatim; `var_124` is never read by this
  procedure.** This single fact makes `Form24 Annexure-A` (L476498) inert.

### 1.5 `Opt2` → `Flag` / `PARAM_STR` map (L475805 / L475810 / L475811) `[VERIFIED-VB6]`

| 3rd param (`Opt2`) | `Flag` | `PARAM_STR` | Used by hex `10` / `&HC` |
|---|---|---|---|
| `0` | `'E'` | `'AEDP'` | 11 transaction leaves; 9 of 10 setup leaves |
| `1` | `'R'` | `'***P'` | **all 24 + 2 report leaves** |
| `2` | `'V'` | `''` | `Consumption Master` (L476093) |
| `3` | `'N'` | `''` | `Transactions` L476430, `Reports` L476454, `Material Mgmt Setup` L476081 |
| `4` and `Opt1 <= 45` | `'N'` | `''` | `Material Mgmt` module header L476428 (`Opt1 = 16 <= 45`) |

Menu builder filter (**L3636**): `Flag <> 'V'` — so rows with `Flag='V'` are **excluded**
from the built menu. `Consumption Master` therefore has `Flag='V'` but *is* present in
`menu_tree_raw.txt` **L119**. `[VERIFIED-VB6]` → the dump is produced from the
registration replay, not from the built menu. Reconciliation:
`menu_tree_raw.txt` shows `C|2|Material Mgmt Setup|Consumption Master` (Opt2=2 ⇒ `Flag='V'`)
while `MenuHelp` rows for it are filtered out at runtime by L3636. See `notes/notes.md` **IN-11**.

---

## 2. Dispatcher (`Proc_165_2_1E3A588(arg_C, arg_10)`, L476999–L480832)

### 2.1 Preamble `[VERIFIED-VB6]`

| Line | What it does |
|---|---|
| L477022 | `On Error Resume Next` — **every** error in the dispatcher is swallowed |
| L477023 | `Execute "Select * from Enviro"` |
| L477025 | reloads `Enviro` filtered by `LOGSITE_CODE` |
| L477031 | reads `Enviro.TouchScreen` into `MemVar_1F8120C` |
| **L477034** | `Open "C:\moduleFILE.TXT" For Append As 1 Len = &HFF` — **unconditional debug trace on every menu click** |
| L477039 | `var_94 = Trim(Proc_165_3_EEA710(arg_C, var_130))` — the dispatch key |
| L477040–L477045 | builds `arg_10 = arg_10 & " > " & var_94` (breadcrumb caption) |
| **L477046** | `SELECT Param_Str AS UPrivilege, Module_Name, OutletCode FROM menuHelp WHERE UserName='…' AND CompCode='…' AND Code=<arg_C>` |
| L477050 | `Module_name` + `UPrivilege` → `var_A8` |
| L477052 | `OutletCode` → `var_AC` (used by the `Item Group` branch) |
| L477055 | `var_188 = var_94` — every branch below tests `var_188` |

### 2.2 Chain structure

The body is a **flat sequence of `If … Then … GoTo loc_1E2A553 … End If` blocks**.
`loc_1E2A553` is the shared exit; the label definition is not present in the dump
(`rg 'loc_1E2A553:'` returns nothing) — it lands on the cleanup at **L480825–L480831**
(`Print 1, var_94` → `Close 1` → `Set var_90/… = Nothing` → `Exit Sub`). `[VERIFIED-VB6]`

**Consequence:** if `var_188` matches no branch, control falls off the end of the chain into
the same cleanup — **no form opens and no error is raised**. Every dead menu item in this
module therefore fails silently. `[INFERRED]` from the control-flow shape + `On Error Resume Next`.

### 2.3 Whitespace-variant guards (decompiler artefact)

Seven handlers are emitted as a nested pair instead of a plain equality test:

```
479169:  If Not (var_188 = "Purchase Register") Then
479170:    If (var_188 = "Purchase Register ") Then
479171:    End If
479172:    Set var_90 = New rInventRepView
          …
479177:  End If
```

Taken literally the outer test makes the block run for *every* caption except
`"Purchase Register"`, which cannot be the intent (each block ends in `GoTo`). The
decompiler has flattened a disjunction over whitespace variants into nested `If`s and dropped
the `Else`. `[INFERRED]` **Exact runtime semantics: `[UNKNOWN]`.**

Affected captions and lines:

| Outer test | Inner test | Body |
|---|---|---|
| `Not (… = "Purchase Register")` L479169 | `"Purchase Register "` L479170 | L479172–L479176 |
| `Not (… = "Purchase Summary")` L479178 | `"Purchase Summary "` L479179 | L479181–L479185 |
| `Not (… = "Stock Register")` L479201 | `Not (… = "Stock Register  ")` L479202 → `"Stock Register "` L479203 | L479206–L479210 |
| `Not (… = "Stock Summary")` L479212 | `"Stock Summary  "` L479213 (two spaces) | L479215–L479219 |
| `Not (… = "Stock In Hand")` L479228 | `"Stock In Hand "` L479229 | L479231–L479235 |
| `Not (… = "Issue Checklist")` L478557 | `"Issue CheckList"` L478558 | L478560–L478564 |
| `Not (… = "Item List")` L477692 | `"Item  List"` L477693 | L477695–L477698 |
| `Not (… = "Item Entry")` L477948 | `"Item Entry "` L477949 | L477951–L477954 |

Note L478557 outer test uses `"Issue Checklist"` (lowercase `l`) while the menu stores
`"Issue CheckList"` (capital `L`, L476484) — the inner test carries the correct casing.

### 2.4 Duplicated handler blocks

The same three report captions are handled **twice**, in two non-adjacent regions of the
chain:

| Caption | First occurrence | Second occurrence | `GRepFormName` |
|---|---|---|---|
| `Stock Register` / `Stock Register ` | L478525–L478533 | L479201–L479211 | `StockRegStore` (both) |
| `Stock Summary` / `Stock Summary  ` | L478534–L478542 | L479212–L479220 | `StockSummStore` (both) |

Because the first match wins (`GoTo` after `.Show`), the earlier block at L478525/L478534
executes. Harmless (identical effect) but doubles the maintenance surface.
`[VERIFIED-VB6]`

### 2.5 Transaction dispatch (hex `10`)

| `var_188` | Lines | Effect |
|---|---|---|
| `Gravy Item Entry` | L479101–L479106 | `New RsGravyItemEntry` |
| `Indent` | L479107–L479112 | `New PIndent` |
| `Purchase Order` | L479113–L479118 | `New pPOrder` |
| `M.R. Entry` | L479119–L479124 | `New pMREntry` |
| `Purchase Bill` | L479125–L479130 | `New pPBill` |
| `Requisition Slip` | L478657–L478662 | `New pReqSlip` |
| `Stock Issue on Requisition` | L479144–L479149 | `New pGIss` |
| `Kitchen Closing Stock` | L479150–L479155 | `New kClStk` |
| `Stock Transfer` | L478663–L478668 | `New RsKitchenStk` |
| `Finish Material Receive Entry` | L478669–L478674 | `New RsStoreRecEntry` |
| `Excise Invoice Cum Gate Pass` | L478675–L478680 | `New RsKitchenMaterial` |

Every one follows the identical 4-line template:
`Set var_90 = New <Form>` → `var_90.CAPTION = CVar(arg_10)` → `Call var_90.Show` →
`GoTo loc_1E2A553`. `[VERIFIED-VB6]`

### 2.6 Setup dispatch (hex `&HC`)

| `var_188` | Lines | Effect |
|---|---|---|
| `Party Master` | L477917–L477922 | `New FrmParty` |
| `Department` | L477923–L477928 | `New DepartMast` |
| `Item Group` | L477929–L477941 | **branch on `var_AC`**: if `OutletCode` is `BANQ`/`ODC` → `New HallItemGroupMast` with `.MDIRestCode = var_114 & Proc_165_4_1028884(arg_C, MemVar_1F81078)`; else → `New FrmItemGroupMastRaw` with `.RestType = "<>'Finish'"` |
| `Item Category` | L477942–L477947 | `New FrmItemCatRaw` |
| `Item Entry` / `Item Entry ` | L477948–L477955 | `New FrmItemMastRaw` |
| `Consumption Master` | L477956–L477961 | `New FrmConsumMast` |
| `Purchase Sundry Setting` | L477746–L477751 | `New DepartSundry` |
| `Opening Stock` | L477758–L477763 | `New FrmOPStock` |
| `Item List` / `Item  List` | L477692–L477699 | `New FrmItemMast` |
| `Enviro Inventry` | L477962–L477967 | `New frmPurEnviro` |
| `Location Master` | L477752–L477757 | `New Godown` — **no menu row exists** |

`[VERIFIED-VB6]`

---

## 3. Report dispatch (hex `10`)

All report branches construct `rInventRepView` and set `.GRepFormName`, then `.CAPTION =
CVar(arg_10)` and `.Show`. Representative:

```
479162: If (var_188 = "Kitchen Stock Report I/R Basis") Then
479163:   Set var_90 = New rInventRepView
479164:   var_90.GRepFormName = "KitchenStkRep"
479165:   var_90.CAPTION = CVar(arg_10)
479166:   Call var_90.Show
479167:   GoTo loc_1E2A553
479168: End If
```

Full caption → key → line table: `07_Inventory\screens\screens.md` section C.
File presence per key: `07_Inventory\reports\reports.md`.

`rInventRepView` (object **L634572–L661019**) resolves files at:

| Line | Statement |
|---|---|
| L636046 | `CreateFieldDefFile(var_C4, MemVar_1F810B4 & "\" & var_88 & ".ttx", &HFF)` |
| **L636048** | `Call 0.Method_arg_1C (MemVar_1F810B4 & var_C0 & ".RPT", var_A4, var_B8)` — **missing `\`** |
| L656549–L656551 | `… & "\"` then `var_29C & var_AC & ".RPT"` — correct |
| L658123–L658125 | same correct pattern |

`MemVar_1F810B4` = `Analysis.ini` `[HMS]` key `2` = `C:\…\HMS2526\Reports`.
Inside the viewer the report title is looked up by caption, e.g.
`Call 0.Method_arg_54 ("Liquor Sale Report")` (L638151), `("Daily Store Issue Reports")`
(L638172), `("Store Issue Report")` (L638184), `("Indent Register")` (L638166),
`("Purchase Order Register")` (L638169), `("M.R. Register")` (L638187).
`[VERIFIED-VB6]` + `[VERIFIED-CONFIG]`

---

## 4. No transaction wrapper, no parameters

Across all 1 224 extracted inventory SQL lines (`%TEMP%\opencode\sql_inv.txt`):

* every statement is built by string concatenation — no `?` placeholders, no `Command`
  parameters `[VERIFIED-VB6]`
* `DELETE` cascades are performed by the client because **`foreign_keys.txt` is 0 bytes** —
  **0 declared foreign keys in `MOONData2627`** `[VERIFIED-SQL]`
* no `BeginTrans` / `CommitTrans` / `Rollback` observed around any inventory save
  `[VERIFIED-VB6]`
* debug trace to `C:\moduleFILE.TXT` on every menu click (L477034) `[VERIFIED-VB6]`

---

## 5. Cross-references

* Menu tree and screenshot mapping: `07_Inventory\screens\screens.md`
* Report key ↔ file: `07_Inventory\reports\reports.md`
* Extracted SQL: `07_Inventory\sql\queries.sql`
* Table/column/PK inventory: `07_Inventory\sql\sql_notes.md`
* Findings IN-1 … IN-15: `07_Inventory\notes\notes.md`
