# 09_Banquet — Screens

Module hex code **`12`** (`&H12`) · caption **`Banquet`** · parent groups `Indoor Catering` /
`OutDoor Catering`. Source rows: `19_VB6_Logic\menu_tree_raw.txt` **L363–L427**.
Evidence tags: `[VERIFIED-VB6]`, `[VERIFIED-SQL]`, `[VERIFIED-UI]`, `[VERIFIED-CONFIG]`,
`[INFERRED]`, `[UNKNOWN]`.

---

## 1. Menu row inventory

`menu_tree_raw.txt` rows whose first field is `12` → **65 rows** `[VERIFIED-VB6]`
(rows L363–L427; recount performed on the file).

| Row type | Count | Captions |
|---|---|---|
| `4` module header | 1 | `Banquet` (L363) |
| `3` group header | 1 | `OutDoor Catering` (L393) |
| `0` screens / sub-groups | 31 | see tree below |
| `1` reports | 30 | 15 Indoor + 15 ODC |
| `2` screen-variant `[INFERRED]` | 2 | `Banquet Settlement` (L370, L405) |
| **total** | **65** | |

Split by parent: `Indoor Catering` **29** rows, `OutDoor Catering` **34** rows,
module header **1**, `OutDoor Catering` group header **1**. `[VERIFIED-VB6]`

> **Structural oddity `[VERIFIED-VB6]`:** there is **no type-`3` group row for
> `Indoor Catering`** — only `OutDoor Catering` gets one (L393). Every Indoor child declares
> `|Indoor Catering|` as its parent, but no row *is* that caption. The Indoor group node must be
> synthesised by the menu builder. `[INFERRED]`

## 2. Menu registration (source)

All registrations live in one block, `EXTRAS.text` **L476659–L476789**
(`Proc_165_0_14C1708(caption, &H12, type, parent, subparent, ordinal, owner, visible)`).

### 2.1 Module + Indoor Catering

| Caption | Type | Ordinal | Owner string | EXTRAS.text |
|---|---|---|---|---|
| `Banquet` | 4 | 0 | `Banquet` | L476659 |
| `Banquet Operation` | 0 | `&HFF` | `oper` | L476661 |
| `Booking Inquiry` | 0 | 0 | `Hallop` | L476663 |
| `Banquet Booking` | 0 | 1 | `Hallop` | L476665 |
| `Catalog Selection` | 0 | 2 | `Hallop` | L476667 |
| `var_124 = "Chef Pre-Costing"` *(caption override)* | — | — | — | **L476669** |
| `Catalog Selection` *(registered caption)* | 0 | 3 | `Hallop` | **L476670** |
| `Banquet Billing` | 0 | 4 | `Hallop` | L476672 |
| `Banquet Settlement` | **2** | 5 | `Hallop` | L476674 |
| `Venue Availability` | 0 | 6 | `Hallop` | L476676 |
| `Guest Comments` | 0 | 7 | `Hallop` | L476678 |
| `Banquet Estimate Billing` | 0 | 8 | `Hallop` | L476680 |
| `Banquet Booking Advance` | 0 | 9 | `Hallop` | L476682 |
| `Reports` *(sub-group)* | 0 | `&HFF` | `HallReport` | L476684 |
| `Sales Register` … `Function Wise Item Detail` | 1 | 0–9 | `BanqRep` | L476686–L476704 |
| `Banquet Reports (MIS)` *(sub-group)* | 0 | `&HFF` | `HallMIS` | L476706 |
| `Cover Analysis`, `Collection Summary` | 1 | 0–1 | `BanqRepMIS` | L476708, L476710 |
| `Banquet Tax Reports` *(sub-group)* | 0 | `&HFF` | `HallTax` | L476712 |
| `Tax Report`, `Tax Summary`, `Banquet Taxwise Details` | 1 | 0–2 | `HallTaxP` | L476714–L476718 |

Between each pair sits `var_148 = "BANQ"` (e.g. L476660, L476662) — the module marker used later
by the report fork. `[VERIFIED-VB6]`

### 2.2 OutDoor Catering

| Caption | Type | Ordinal | Owner | EXTRAS.text |
|---|---|---|---|---|
| `OutDoor Catering` | **3** | `&HFF` | `Banq1` | L476720 (marker `var_148 = "ODC"` at L476721) |
| `Venue Master` | 0 | 2 | `OdcEnt1` | L476722 |
| `Menu Category` | 0 | 3 | `OdcEnt1` | L476724 |
| `Item Group` | 0 | 4 | `OdcEnt1` | L476726 |
| `Menu Item` | 0 | 5 | `OdcEnt1` | L476728 |
| `Banquet Bill Sundry Setting` | 0 | **7** (6 skipped) | `OdcEnt1` | L476730 |
| `Operation` *(sub-group)* | 0 | `&HFF` | `OdcOPer` | L476732 |
| `Booking Inquiry` … `Banquet Booking Advance` | 0 | 0–9 | `OdcOP` | L476734–L476753 |
| — `var_124 = "Chef Pre-Costing"` | — | — | — | **L476740** |
| — `Catalog Selection` *(registered caption)* | 0 | 3 | `OdcOP` | **L476741** |
| `Banquet Settlement` | 2 | 5 | `OdcOP` | L476745 |
| `Reports` | 0 | `&HFF` | `OdcRepo` | L476755 |
| `Sales Register` … `Function Wise Item Detail` | 1 | **0,1,2,3,4,5,7,9,10,11** | `OdcRep` | L476757–L476775 |
| `Banquet Reports (MIS)` | 0 | `&HFF` | `OdcMisR` | L476777 |
| `Cover Analysis`, `Collection Summary` | 1 | 0, 1 | `OdcRep`, `OdcMis` | L476779, L476781 |
| `Banquet Tax Reports` | 0 | `&HFF` | `OdcTax` | L476783 |
| `Tax Report`, `Tax Summary`, `Banquet Taxwise Details` | 1 | 0–2 | `OdcTaxR` | L476785–L476789 |

**Ordinal gaps `[VERIFIED-VB6]`:** ODC `Reports` skips ordinals **6** and **8**
(`Daily Function Sheet`=7, `Item Wise Sales Report`=9), while Indoor uses a contiguous 0–9.
ODC masters skip ordinal **6**.

## 3. Menu tree (full listing, `menu_tree_raw.txt` L363–L427)

```
Banquet                                    12|4||                    L363
 Indoor Catering  (parent only — no own row)
  Banquet Operation                        12|0|Indoor Catering|    L364   [group-ish, type 0]
  Booking Inquiry                          12|0|Indoor Catering|    L365
  Banquet Booking                          12|0|Indoor Catering|    L366
  Catalog Selection                        12|0|Indoor Catering|    L367
  Catalog Selection   <-- should be "Chef Pre-Costing"                L368
  Banquet Billing                          12|0|Indoor Catering|    L369
  Banquet Settlement                       12|2|Indoor Catering|    L370
  Venue Availability                       12|0|Indoor Catering|    L371
  Guest Comments                           12|0|Indoor Catering|    L372
  Banquet Estimate Billing                 12|0|Indoor Catering|    L373
  Banquet Booking Advance                  12|0|Indoor Catering|    L374
  Reports                                  12|0|Indoor Catering|    L375
   Sales Register … Function Wise Item Detail (10 reports)           L376–L385
  Banquet Reports (MIS)                    12|0|Indoor Catering|    L386
   Cover Analysis, Collection Summary                                L387–L388
  Banquet Tax Reports                      12|0|Indoor Catering|    L389
   Tax Report, Tax Summary, Banquet Taxwise Details                  L390–L392
 OutDoor Catering                          12|3||                    L393
  Venue Master, Menu Category, Item Group,
  Menu Item, Banquet Bill Sundry Setting                              L394–L398
  Operation                                12|0|OutDoor Catering|   L399
   Booking Inquiry … Banquet Booking Advance (10 ops)                 L400–L409
   (row L402 "Catalog Selection" duplicated at L403)                  L402–L403
  Reports + 10 reports                                                L410–L420
  Banquet Reports (MIS) + Cover Analysis, Collection Summary          L421–L423
  Banquet Tax Reports + Tax Report, Tax Summary,
  Banquet Taxwise Details                                             L424–L427
```
*(1 + 29 Indoor + 1 ODC group + 34 ODC = 65)*

### 3.1 Exact row → line map

| Line(s) | Row(s) |
|---|---|
| L363 | `12|4\|\|Banquet` |
| L364 | `12|0\|Indoor Catering\|Banquet Operation` |
| L365–L367 | `Booking Inquiry`, `Banquet Booking`, `Catalog Selection` |
| **L368** | `Catalog Selection` (**2nd** — see F-BANQ-01) |
| L369–L374 | `Banquet Billing`, `Banquet Settlement`(type 2), `Venue Availability`, `Guest Comments`, `Banquet Estimate Billing`, `Banquet Booking Advance` |
| L375 | `Reports` |
| L376–L385 | `Sales Register`, `OutStanding Report`, `Party wise OutStanding`, `Cashier  Report`, `Booking Inquiry Detail`, `Settlement  Report`, `Daily Function Sheet`, `Item Wise Sales Report`, `Company Wise Sale Report`, `Function Wise Item Detail` |
| L386 | `Banquet Reports (MIS)` |
| L387–L388 | `Cover Analysis`, `Collection Summary` |
| L389 | `Banquet Tax Reports` |
| L390–L392 | `Tax Report`, `Tax Summary`, `Banquet Taxwise Details` |
| **L393** | `12|3\|\|OutDoor Catering` |
| L394–L398 | `Venue Master`, `Menu Category`, `Item Group`, `Menu Item`, `Banquet Bill Sundry Setting` |
| L399 | `Operation` |
| L400–L401 | `Booking Inquiry`, `Banquet Booking` |
| **L402–L403** | `Catalog Selection`, `Catalog Selection` (2nd) |
| L404–L409 | `Banquet Billing`, `Banquet Settlement`(type 2), `Venue Availability`, `Guest Comments`, `Banquet Estimate Billing`, `Banquet Booking Advance` |
| L410 | `Reports` |
| L411–L420 | 10 ODC reports |
| L421 | `Banquet Reports (MIS)` |
| L422–L423 | `Cover Analysis`, `Collection Summary` |
| L424 | `Banquet Tax Reports` |
| L425–L427 | `Tax Report`, `Tax Summary`, `Banquet Taxwise Details` |
| L428 | *(next module: `13|4\|\|Night Audit`)* |

> Row-count arithmetic `[VERIFIED-VB6]`: 1 (L363) + 29 Indoor (L364–L392) + 1 ODC group
> (L393) + 34 ODC (L394–L427) = **65**, matching the `^12\|` match count.

## 4. Sibling setup screens (module `C`, group `Banquet`)

`menu_tree_raw.txt` L93–L101: `12`-module **setup** subtree sits under module **`C`**,
group header `C|3||Banquet` (L93). `[VERIFIED-VB6]`

| Row | Caption | Dispatch (`EXTRAS.text`) |
|---|---|---|
| L94 | `Events` | `New FrmEventMast` — If L479716, `New` L479717 |
| L95 | `Venue Features` | `New FrmVenueFeat` — If L479722, `New` L479723 |
| L96 | `Venue Master` | `New FrmVenueMast` — If L479728, `New` L479729 |
| L97 | `Menu Category` | forked: `If (var_AC = "BANQ" Or var_AC = "ODC") → New FrmHallItemCatMast` (L477830) else `New FrmItemCatMast` (L477834) — If L477828 |
| L98 | `Item Group` | forked: BANQ/ODC → `New HallItemGroupMast` (L477931) else `New FrmItemGroupMastRaw` (L477935) — If L477929 |
| L99 | `Menu Item` | three-way: `BANQ → New HallMenuItemEntry` (L477857), `ODC → New HallMenuItemEntry` (L477863), else `New RsMenuItemEntry` (L477868) — If L477855 |
| L100 | `Catalog Master` | `New HallMenuCatalog` — If L479735, `New` L479736 |
| L101 | `Banquet Bill Sundry Setting` | `New HallSundry` — If L479742, `New` L479743 |

The `Menu Group` caption (POS setup) still reaches `FrmItemGroupMast` with `RestType = "='Finish'"`
unconditionally (EXTRAS.text L477842) — the banquet fork exists only for `Item Group` /
`Menu Category` / `Menu Item`. `[VERIFIED-VB6]`

Registration of the setup block: group header `Proc_165_0_14C1708("Banquet", &HC, 3, …, "HL", 1)`
at **EXTRAS.text L476037**, then the eight rows **L476039–L476053** with
`(caption, &HC, 0, "Indoor Catering", …, ordinal 0–7, owner "HallM", 1)` and
`var_148 = "BANQ"` between each (L476038, L476040, …, L476052). The POS setup block sits just
before it at **L476007–L476033** (`Point of Sale Setup`, owner `POSMas`). `[VERIFIED-VB6]`

## 5. Screen dispatch table (caption → form)

All in the `ModuleAdd` caption ladder, `EXTRAS.text` L479447–L480197.
Each branch sets `var_90 = New <Form>` then `var_90.CAPTION = arg_10` and `Call var_90.Show`.
`[VERIFIED-VB6]`

| Menu caption | Form created | `If` line | `New` line |
|---|---|---|---|
| `Events` | `FrmEventMast` | L479716 | L479717 |
| `Venue Features` | `FrmVenueFeat` | L479722 | L479723 |
| `Venue Master` | `FrmVenueMast` | L479728 | L479729 |
| `Catalog Master` | `HallMenuCatalog` | L479735 | L479736 |
| `Banquet Bill Sundry Setting` | `HallSundry` | L479742 | L479743 |
| `Booking Inquiry` | `FrmBookingInquiry` | L479749 | L479750 |
| `Banquet Booking` | `HallBooking` (`OpenMode = 2`) | L479756 | L479757 |
| `Catalog Selection` | `CateringBooking` | L479764 | L479765 |
| **`Chef Pre-Costing`** | `HallChefPreCosting` | **L479771** | **L479772** |
| `Banquet Billing` | `HallBill` | L479778 | L479779 |
| `Banquet Settlement` | `HallAdvanceDepDialog` | L479785 | L479786 |
| `Booking Chart` | *(no-op: `GoTo loc_1E2A553`)* | L479792 | — |
| `Venue Availability` | `BanqAvailability` | L479795 | L479796 |
| `Guest Comments` | `frmGuestComments` | L479802 | L479803 |
| `Banquet Estimate Billing` | `HallBillEstimate` | L479809 | L479810 |
| `Banquet Booking Advance` | `HallAdvanceDepDialog` (`AdvType="AD"`, `OpenMode=2`, `OpenType=6`) | L479816 | L479817 |
| `Restaurant Change` | `FrmChangeRest` | L480172 | — |
| `POS Status` | `RsStatusScreen` path | L480176 | — |
| `Settlement Entry` | `MemVar_1F81F64` (shared instance) | L479937 | L479938 |

Reports branch to `rHallRepView` / `rPOSRepView` — see `..\reports\reports.md`.

## 6. Forms with object boundaries (`'Object:` markers)

| Form | `'Object:` line | Ends before | Module |
|---|---|---|---|
| `resBanq` | EXTRAS.text L371338 | L372637 | banquet lobby/revenue |
| `CateringBooking` | L372637 | L377797 | **Catalog Selection** |
| `FrmEventMast` | L378923 | L379697 | setup: Events |
| `FrmHallItemCatMast` | L379697 | L381176 | setup: Menu Category |
| `HallItemGroupMast` | L381176 | L381985 | setup: Item Group |
| `HallMenuItemEntry` | L381985 | L383977 | setup: Menu Item |
| `HallSundry` | L383977 | L386324 | setup: Banquet Bill Sundry |
| `FrmBookingInquiry` | L386324 | L389222 | Booking Inquiry |
| `HallMenuCatalog` | L389222 | L391606 | Catalog Master |
| `HallBooking` | L393015 | L397814 | Banquet Booking |
| `HallBill` | L397814 | L406929 | Banquet Billing |
| `HallAdvanceDepDialog` | L406929 | L411351 | Banquet Settlement + Booking Advance |
| `HallEstimate` | L411351 | L418125 | estimate billing |
| `BanqAvailability` | L418142 | L419544 | Venue Availability |
| `HallChefPreCosting` | L419544 | L422753 | Chef Pre-Costing |
| `frmGuestComments` | L454521 | L456080 | Guest Comments |
| `HallBillEstimate` | L579496 | L593783 | Banquet Estimate Billing |
| `FrmVenueMast` | L631225 | L633079 | setup: Venue Master |
| `FrmVenueFeat` | L633079 | L634572 | setup: Venue Features |
| `rHallRepView` | L777000 | L800470 | all banquet Crystal reports |
| `RsTouchScreenBookingEntry` | L800470 | L835729 | touch-screen booking |
| `BanqModule` | L835729 | L883433 | banquet advance-dialog launcher |
| `hAdvanceDepDialog` | L439406 | L443815 | shared hall advance dialog |
| `hAdvanceDepDialogSecondry` | L443815 | L446632 | secondary variant |

`[VERIFIED-VB6]` — markers read directly from `rg -n "^'Object: "` on `EXTRAS.text`.

## 7. Screenshots

`screenshots\README.md` → pointer to `../../screenshots/09_Banquet/` (**15 PNGs**).

| File | Shows |
|---|---|
| `08-Banquet_MenuTab.png` | Banquet menu tab |
| `B032_Menu_20260928_195558.png` | menu overview |
| `C2_Banquet__Operation__Banquet_Booking.png` | Banquet Booking screen |
| `C2_Banquet__Operation__Catalog_Selectio.png` | Catalog Selection screen |
| `C2_Banquet__Operation__Chef_Pre-Costing.png` | Chef Pre-Costing screen |
| `C3_S1_Banquet__Operation__Booking_Inqu.png` | Booking Inquiry screen |
| `C3_P5D7_Bill_Look_Up.png` | Bill Look Up (POS instance of the same caption) |
| `C4_L1+sub_Banquet__Reports__*.png` (8 files) | report viewers: Booking Inquiry Detail, Cashier Report, Company Wise Sale, Daily Function, Item Wise Sales, OutStanding, Party wise OutStanding, Settlement Report |

`[VERIFIED-UI]`

### 7.1 Not captured `[VERIFIED-UI]`

No screenshot exists for: `Banquet Operation` group, `Banquet Settlement`,
`Venue Availability`, `Guest Comments`, `Banquet Estimate Billing`,
`Banquet Booking Advance`, `Reports` sub-menu, `Banquet Reports (MIS)` sub-menu,
`Banquet Tax Reports` sub-menu, any **setup** screen (`Events`, `Venue Features`,
`Venue Master`, `Menu Category`, `Item Group`, `Menu Item`, `Catalog Master`,
`Banquet Bill Sundry Setting`), any **OutDoor Catering** screen, `Cover Analysis`,
`Collection Summary`, `Tax Report`, `Tax Summary`, `Banquet Taxwise Details`,
`Sales Register`, `Daily Function Sheet`, `Party wise OutStanding`, `Booking Inquiry Detail`.

## 8. Notable screen-level findings

IDs are shared with `..\notes\notes.md` (the canonical findings register).

| ID | Finding | Tag |
|---|---|---|
| F-BANQ-01 | `var_124 = "Chef Pre-Costing"` (L476669, L476740) is assigned immediately **before** a registration whose caption argument is still `"Catalog Selection"` (L476670, L476741). The dispatch ladder has a dedicated `If var_188 = "Chef Pre-Costing"` branch (L479771). Result: the menu dump shows **two identical `Catalog Selection` rows** (L367/L368 and L402/L403) where one should read `Chef Pre-Costing`; the second row is therefore **unreachable by caption** — clicking either row yields `CateringBooking`, never `HallChefPreCosting`. Corroborated by `MenuHelp_SA_tree.txt` **line 278**, which reads `Chef Pre-Costing\|18\|12\|14\|0\|E`. | `[VERIFIED-VB6]` + `[VERIFIED-CONFIG]` |
| F-BANQ-02 | `Banquet Taxwise Details` is a report (`menu_tree_raw.txt` L392/L427 type `1`, dispatch L479916 → `TaxwiseDetailReportHall` L479919) yet `MenuHelp_SA_tree.txt` **line 301** flags it `E` while every other banquet report row ends in `R`. | `[VERIFIED-CONFIG]`, `[UNKNOWN]` flag legend |
| F-BANQ-03 | No `Indoor Catering` group row exists, yet every Indoor child declares it as parent (L364–L392). | `[VERIFIED-VB6]` + `[INFERRED]` (builder synthesises the node) |
| F-BANQ-04 | `Banquet Settlement` is the only **type `2`** row in module 12 (L476674 Indoor, L476745 ODC; dump rows L370 / L405) — the same odd type used by POS `Restaurant Change` (L476509). It and `Banquet Booking Advance` (type `0`, L476682) both open `HallAdvanceDepDialog` (L479786 / L479817, the latter with `AdvType="AD"`, `OpenType=6`) — one form, two roles. | `[VERIFIED-VB6]`, `[INFERRED]` type `2` meaning |
| F-BANQ-09 | ODC `Reports` ordinals skip 6 and 8 (L476757–L476775 uses 0–5,7,9–11); Indoor is contiguous. Cosmetic, but it means the two subtrees cannot be generated by one loop. | `[VERIFIED-VB6]` |
| F-BANQ-10 | `Booking Chart` has a dispatch branch that does nothing but `GoTo` (L479792–L479794) — a dead menu entry if it were ever registered. | `[VERIFIED-VB6]` |

Findings F-BANQ-05 … F-BANQ-08 (shared POS settlement singleton, empty detail tables,
delete-then-insert re-save, `GRepFormName`/table name collision) are data/logic-level and are
documented in `..\notes\notes.md` and `..\sql\sql_notes.md`.

