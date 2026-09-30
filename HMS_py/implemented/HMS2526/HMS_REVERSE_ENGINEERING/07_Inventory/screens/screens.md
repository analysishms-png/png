# 07_Inventory — Screen Inventory

Menu hex code **10** (`&H10` = 16), Material / Store management, 40 menu rows.
Menu source: `19_VB6_Logic\menu_tree_raw.txt` **L274–L311** (38 rows) plus two rows detached
at the head of the dump: **L7** and **L10** (2 rows) = 40 total.
Registration source: `EXTRAS.text` `Proc_165_0_14C1708` calls — Material Mgmt block
**L476426–L476504** (38 calls) plus **L11647** and **L11653** (2 calls, from a different
object — see section H).
Dispatch source: `EXTRAS.text` `Proc_165_2_1E3A588(arg_C, arg_10)` **L476999–L480832**.
Setup sub-module hex **`&HC`** ("Material Mgmt Setup"), menu **L113–L123**, registration
**L476079–L476102**.

Evidence tags: `[VERIFIED-VB6]` = line-cited decompiled source; `[VERIFIED-SQL]` = DB extract;
`[VERIFIED-CONFIG]` = file-system / INI; `[INFERRED]` = reasoned from surrounding code;
`[UNKNOWN]` = not determinable from available artefacts.

---

## A. Group headers (no screen)

| # | menu_tree line | Caption | Type | Module_Name | Registration line |
|---|---|---|---|---|---|
| 1 | L274 | Material Mgmt | 4 (module) | `Purchase` | EXTRAS.text L476428 |
| 2 | L275 | Transactions | 3 (group) | `TransPurch` | L476430 |
| 3 | L287 | Reports | 3 (group) | `MatReports` | L476454 |
| 4 | L113 | Material Mgmt Setup | 3 (group, hex `&HC`, parent `Main Setup`) | `CCenter` | L476081 |

`[VERIFIED-VB6]` module gate for hex `10`:
`If (InStr(2, MemVar_1F81228, "J", 0) <> 0) Then` (**L476426**) — the whole Material Mgmt
block is registered only when the user's module string contains `J`.
The identical gate `"J"` guards the Material Mgmt Setup block under hex `&HC` (**L476079**).
`[VERIFIED-VB6]`

---

## B. Transactions children (type 0 = entry screen)

All 11 rows are registered with `Opt2 = 0` → `Flag = 'E'`, `Menu_Index` 0…&HA,
`Module_Name = "Purch"`, parent caption `"Transactions"`. `[VERIFIED-VB6]`

| menu_tree | Caption (as stored) | Idx | Registration | Dispatch handler | Target | Object range |
|---|---|---|---|---|---|---|
| L276 | Gravy Item Entry | 0 | L476432 | L479101–L479106 | `New RsGravyItemEntry` | L428231–L430168 |
| L277 | Indent | 1 | L476434 | L479107–L479112 | `New PIndent` | L207648–L210585 |
| L278 | Purchase Order | 2 | L476436 | L479113–L479118 | `New pPOrder` | L210586–L214602 |
| L279 | M.R. Entry | 3 | L476438 | L479119–L479124 | `New pMREntry` | L214603–L219214 |
| L280 | Purchase Bill | 4 | L476440 | L479125–L479130 | `New pPBill` | L70625–L80458 |
| L281 | Requisition Slip | 5 | L476442 | L478657–L478662 | `New pReqSlip` | L833098–L835728 |
| L282 | Stock Issue on Requisition | 6 | L476444 | L479144–L479149 | `New pGIss` | L108102–L110808 |
| L283 | Kitchen Closing Stock | 7 | L476446 | L479150–L479155 | `New kClStk` | L110809–L112651 |
| L284 | Stock Transfer | 8 | L476448 | L478663–L478668 | **`New RsKitchenStk`** — *not* `FrmStockTransfer` | L589535–L592562 |
| L285 | Finish Material Receive Entry | 9 | L476450 | L478669–L478674 | `New RsStoreRecEntry` | L587256–L589534 |
| L286 | Excise Invoice Cum Gate Pass | &HA | L476452 | L478675–L478680 | `New RsKitchenMaterial` | L605914–L609681 |

`FrmStockTransfer` (**L452276–L454520**) exists in the decompile but is **never opened by any
branch of the hex-10 dispatch chain**. `[VERIFIED-VB6]` See `notes/notes.md` **IN-8**.

---

## C. Reports children (type 1 = report)

All 24 rows registered with `Opt2 = 1` → `Flag = 'R'`, `PARAM_STR = '***P'` (registrar map at
L475805 / L475810 / L475811), which is exactly what the menu builder uses to pick the `Rep`
icon: `IIf(Flag = "E", "Frm", IIf(Flag = "R", "Rep", .))` (L3651). `[VERIFIED-VB6]`

First 18 rows use `Module_Name = "Purch"`, `Menu_Index` `&H15`…`&H28` (two gaps: `&H1D`, `&H1F`
never used). Last 6 rows use `Module_Name = "MatRep"`, `Menu_Index`
`1, &HA, &HB, &HC, &HF, &H10` (gaps at `2…9`, `&HD`, `&HE`).

| menu_tree | Caption (as stored) | Idx / Module | Registration | Dispatch handler | Viewer + `GRepFormName` |
|---|---|---|---|---|---|
| L288 | Kitchen Stock Report I/R Basis | `&H15` / `Purch` | L476456 | L479162–L479168 | `rInventRepView` → `KitchenStkRep` |
| L289 | Purchase Register | `&H16` / `Purch` | L476458 | L479169–L479177 (`If Not` guard) | `rInventRepView` → `PurchaseReg` |
| L290 | Purchase Summary | `&H17` / `Purch` | L476460 | L479178–L479186 (`If Not` guard) | `rInventRepView` → `PurchaseSumm` |
| L291 | Cash/Credit Purchase | `&H18` / `Purch` | L476462 | L479194–L479200 | `rInventRepView` → `CashCreditPurch` |
| L292 | Stock Register | `&H19` / `Purch` | L476464 | L479201–L479211 **and** L478525–L478533 | `rInventRepView` → `StockRegStore` |
| L293 | Stock Summary | `&H1A` / `Purch` | L476466 | L479212–L479220 **and** L478534–L478542 | `rInventRepView` → `StockSummStore` |
| L294 | Stock In Hand | `&H1B` / `Purch` | L476468 | L479228–L479236 (`If Not` guard) | `rInventRepView` → `StockINHand` |
| L295 | Excess Consumption Report | `&H1C` / `Purch` | L476470 | L479237–L479243 | `rInventRepView` → `ExcessConsumption` |
| L296 | Store Issue Register | `&H1E` / `Purch` | L476472 | L479251–L479257 | `rInventRepView` → `StoreIssReg` |
| L297 | **Indent Register** | `&H20` / `Purch` | L476474 | **— none —** | dead click (see IN-1) |
| L298 | **Purchase Order Register** | `&H21` / `Purch` | L476476 | **— none —** | dead click (see IN-1) |
| L299 | Daily Store Issue Reports | `&H22` / `Purch` | L476478 | L479221–L479227 | `rInventRepView` → `DailyStoreIssRpt` |
| L300 | VAT Register | `&H23` / `Purch` | L476480 | L478543–L478549 | `rInventRepView` → `VATRegister` |
| L301 | Purchase Ledger | `&H24` / `Purch` | L476482 | L478550–L478556 | `rInventRepView` → `PurchaseLedger` |
| L302 | Issue CheckList | `&H25` / `Purch` | L476484 | L478557–L478565 (`If Not` guard) | `rInventRepView` → `IssueReg` |
| L303 | **M.R. Register** | `&H26` / `Purch` | L476486 | **— none —** | dead click (see IN-1) |
| L304 | Stock Summary P/S Basis | `&H27` / `Purch` | L476488 | L478580–L478586 | `rInventRepView` → `StockSummaryP/SBasis` |
| L305 | ABC Analysis | `&H28` / `Purch` | L476490 | L478587–L478593 | `rInventRepView` → `ABCAnalysis` |
| L306 | Production Report I/R Basis | `1` / `MatRep` | L476492 | L478594–L478600 | `rInventRepView` → `ProductionReport` |
| L307 | VAT Register II | `&HA` / `MatRep` | L476494 | L478601–L478607 | `rInventRepView` → `VATRegisterII` |
| L308 | VAT Register III | `&HB` / `MatRep` | L476496 | L478608–L478614 | `rInventRepView` → `VATRegisterIII` |
| L309 | **VAT Register III (duplicate)** | `&HC` / `MatRep` | L476499 (`var_124 = "Form24 Annexure-A"` at **L476498**) | — intended key `Form24 Annexure-A` exists at **L478615–L478621**, but the stored caption is the duplicate literal | unreachable (see IN-2) |
| L310 | Form III | `&HF` / `MatRep` | L476501 | L478622–L478628 | `rInventRepView` → `FormIII` |
| L311 | UPVAT XXIV | `&H10` / `MatRep` | L476503 | L478629–L478635 | `rInventRepView` → `UPVATXXIV` |
| **L7** (detached) | Store Issue Report | `&H12` / `MatRep` | **L11647** | L478566–L478572 | `rInventRepView` → `StoreIssueReport` |
| **L10** (detached) | Liquor Sale Report | `&H13` / `MatRep` | **L11653** | L479258–L479264 | `rInventRepView` → `LiquorSaleRep` |

Dispatch-only keys with **no menu caption** (handlers present, rows absent):

| Dispatch key | Line | Effect |
|---|---|---|
| `Pending M.R.` | L478573–L478579 | `rInventRepView` → `PurchBill` |
| `Pending Indent` | L478636–L478642 | `rInventRepView` → `IndentReg` |
| `Pending Purchase Order` | L479187–L479193 | `rInventRepView` → `PurchOrder` |
| `Restaurant Issue Report` | L479244–L479250 | `rInventRepView` → `RestIssue` |
| `Requistion Slip Entry` *(typo)* | L479138–L479143 | `New pReqSlip` (duplicate of L478657) |
| `Kitchen stock Transfer` | L479156–L479161 | `New RsKitchenStk` (duplicate of L478663) |
| `Change Kitchen/Store` | L479265–L479271 | `New FrmChangeKitch` |

`[VERIFIED-VB6]`

---

## D. Material Mgmt Setup children (hex `&HC`, menu L114–L123)

All registered with `Module_Name = "CCenter"`, parent caption `"Material Mgmt Setup"`,
group registered under parent `"Main Setup"` (L476081). `[VERIFIED-VB6]`

| menu_tree | Caption (as stored) | Idx | Registration | Dispatch handler | Target | Object range |
|---|---|---|---|---|---|---|
| L114 | Party Master | 0 | L476083 | L477917–L477922 | `New FrmParty` | L19849–L22995 |
| L115 | Department | 1 | L476085 | L477923–L477928 | `New DepartMast` | L179642–L181005 |
| L116 | Item Group | 2 | L476087 | L477929–L477941 | `New HallItemGroupMast` if `OutletCode in ("BANQ","ODC")` else `New FrmItemGroupMastRaw` with `RestType = "<>'Finish'"` | — |
| L117 | Item Category | 3 | L476089 | L477942–L477947 | **`New FrmItemCatRaw`** (not `FrmItemCatMast`) | — |
| L118 | Item Entry | 4 | L476091 | L477948–L477955 (`If Not` guard) | `New FrmItemMastRaw` | L127293–L129628 |
| L119 | Consumption Master | 5 | L476093 | L477956–L477961 | `New FrmConsumMast` | L56138–L58097 |
| L120 | Purchase Sundry Setting | 6 | L476095 | L477746–L477751 | `New DepartSundry` | — |
| L121 | Opening Stock | 8 | L476097 | L477758–L477763 | `New FrmOPStock` | L424548–L426551 |
| L122 | Item  List *(two spaces)* | 9 | L476099 | L477692–L477699 (`If Not` guard) | `New FrmItemMast` | L612894–L613795 |
| L123 | Enviro Inventry | &HB | L476101 | L477962–L477967 | `New frmPurEnviro` | L889475–L890269 |

`Menu_Index` **7** and **&HA** are never registered in this group — the ladder jumps
`6 → 8 → 9 → &HB` (L476095 → L476097 → L476099 → L476101) while the menu dump shows exactly
10 contiguous leaves. Cosmetic only: the visual order comes from `OPT2..OPT4`, not from
`Menu_Index`. `[VERIFIED-VB6]`

**`FrmItemGroupMast` (L50883–L52019) and `FrmItemCatMast` (L129629–L131330) exist but are
never opened from this menu** — the dispatch opens the `*Raw` / `Hall*` variants instead.
`[VERIFIED-VB6]` See `notes/notes.md` **IN-9**.

---

## E. Report-viewer forms used by this module

| Form | Object range in EXTRAS.text | Used for |
|---|---|---|
| `rInventRepView` | L634572–L661019 | **all** hex-10 reports (inventory + material) |
| `rFomRepView` | L661020–L724969 | generic Front Office viewer (not used by hex 10) |
| `REPVIEW` | L8722–L8889 | `[UNKNOWN]` — shared report preview shell |
| `rRepReserv` | L165804–L177653 | Reservation only |

Report file resolution inside `rInventRepView` (three call sites):
* **L636046** `CreateFieldDefFile(var_C4, MemVar_1F810B4 & "\" & var_88 & ".ttx", &HFF)`
  followed by **L636048** `Call 0.Method_arg_1C (MemVar_1F810B4 & var_C0 & ".RPT", …)`
  — **the `.RPT` concatenation is missing the `\` separator.**
* **L656549–L656551** and **L658123–L658125** build the path correctly with an explicit
  `var_29C = MemVar_1F810B4 & "\"`.

`MemVar_1F810B4` = report directory = `Analysis.ini` key `2` = `<HMS2526>\Reports`
(566 files: 371 `.rpt`, 194 `.ttx`). `[VERIFIED-VB6]` + `[VERIFIED-CONFIG]`
See `notes/notes.md` **IN-10**.

---

## F. Objects present in EXTRAS.text but NOT reachable from menu hex `10` or `&HC`

| Object | EXTRAS.text range | Why unreachable | Tag |
|---|---|---|---|
| `FrmStockTransfer` | L452276–L454520 | `Stock Transfer` opens `RsKitchenStk` instead (L478664) | `[VERIFIED-VB6]` |
| `FrmItemGroupMast` | L50883–L52019 | `Item Group` opens `HallItemGroupMast` / `FrmItemGroupMastRaw` (L477931/L477935) | `[VERIFIED-VB6]` |
| `FrmItemCatMast` | L129629–L131330 | `Item Category` opens `FrmItemCatRaw` (L477943) | `[VERIFIED-VB6]` |
| `Godown` | L206837–L207647 | reached by dispatch key `Location Master` (L477752) but **no `Location Master` row exists anywhere in `menu_tree_raw.txt`** (524 lines) | `[VERIFIED-VB6]` |
| `DepOpStk` | L422753–L424547 | `[UNKNOWN]` — no dispatch key found | `[UNKNOWN]` |
| `RsTableMast` | L107258–L108101 | POS/hex `&H11` territory | `[INFERRED]` |
| `FrmChangeDepart` | L204660–L204829 | opened opportunistically by HK `House Keeping Op.Stock Entry` (L479057–L479069), not by hex 10 | `[VERIFIED-VB6]` |

---

## G. Screenshots

Live captures are stored at `HMS_REVERSE_ENGINEERING\screenshots\07_Inventory\` — **10 PNGs**
(do not copy here; `07_Inventory\screenshots\README.md` is a pointer only):

| File | Content |
|---|---|
| `06-Inventory_MenuTab.png` | MDI menu tab for Inventory |
| `B032_Menu_20260928_195554.png` | menu tree capture |
| `C3_S1_Inventory__Operations__Indent.png` | Indent screen (C3 S1 pass) |
| `C3_02_Inventory__Operations__Indent.png` | Indent screen |
| `C3_02_Inventory__Operations__Purchase_.png` | Purchase screen (truncated name) |
| `C3_03_Inventory__Operations__MR_Entry.png` | M.R. Entry screen |
| `C3_03_Inventory__Operations__Purchase_.png` | Purchase screen |
| `C3_04_Inventory__Operations__MR_Entry.png` | M.R. Entry screen |
| `C3_04_Inventory__Operations__Purchase_.png` | Purchase screen |
| `C3_05_Inventory__Operations__Purchase_.png` | Purchase screen |

No capture exists for: Material Mgmt Setup children, Gravy Item Entry, Purchase Bill,
Requisition Slip, Stock Issue on Requisition, Kitchen Closing Stock, Stock Transfer,
Finish Material Receive Entry, Excise Invoice Cum Gate Pass, or **any** of the 26 reports.
`[UNKNOWN — un-captured]`

---

## H. Why two menu rows sit at the top of the dump

`menu_tree_raw.txt` is produced by replaying every `Proc_165_0_14C1708(...)` call in source
order. The Material Mgmt block (L476426–L476504) is inside `Proc_165_1_1EF3904`
(`ModuleAdd`, object L475662–L481014). `Store Issue Report` (L11647) and `Liquor Sale Report`
(L11653) are registered from a **different object — `frmCompany` (object starts L9605)** — so
they appear earlier in the replay and land at the head of the file, before the `13|…` and
`C|…` blocks. `[VERIFIED-VB6]` + `[INFERRED]` on the dump-generation mechanism.

Both rows are therefore *registered* and *dispatchable* (L478566, L479258) but visually
detached from the `Material Mgmt ▸ Reports` group in the dump. Whether the live MDI menu
renders them under `Reports` depends on `menuHelp.OPT1..OPT4`, not on file order.
`[UNKNOWN]` — no screenshot of the Inventory Reports submenu was captured.
