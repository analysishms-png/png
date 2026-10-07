# 08_POS — Screens / Menu Inventory

Module code: **`11`** (hex `&H11`), menu caption **`Point Of Sale`**.
Menu rows are taken verbatim from `19_VB6_Logic\menu_tree_raw.txt`; line numbers in parentheses are
row numbers in that file (1-based). Form dispatch is from `EXTRAS.text` (object `'Object: ModuleAdd`,
EXTRAS.text L475662).

Evidence legend: `[VERIFIED-VB6]` = decompiled VB6 source with line cite, `[VERIFIED-SQL]` = SQL extract
from `18_Database`, `[VERIFIED-UI]` = live capture under `screenshots\08_POS`, `[VERIFIED-CONFIG]` =
INI/registry/MenuHelp tree, `[INFERRED]` = reasoned from surrounding code, `[UNKNOWN]` = not found.

---

## 1. Row count (exact)

`menu_tree_raw.txt` contains **53 rows** whose first field is `11`
(rows L11, L14 and L312–L362). `[VERIFIED-VB6]`

Breakdown by the 4th field of the row (row-type column):

| Row type | Meaning | Rows | Count |
|---|---|---|---|
| `4` | module header | L312 `11\|4\|\|Point Of Sale` | 1 |
| `2` | group header (POS Operations) | L315 | 1 |
| `3` | group header (POS Reports, POS M.I.S.) | L328, L351 | 2 |
| `2` | screen under POS Operations | L316–L327 | 12 |
| `1` | report under POS Reports | L329–L349 | 21 |
| `0` | report/screen under POS Reports | L350 `Denomination Detail` | 1 |
| `1` | report under POS M.I.S. | L352–L362 | 11 |
| `0` / `1` | stray rows carrying group `POS Reports` at top of file | L11, L14 | 2 |
| `2` / `0` | Restaurant Change / POS Status | L313, L314 | 2 |
| | | **Total** | **53** |

## 2. Full menu tree `[VERIFIED-VB6]`

```
11|4||Point Of Sale                                        (L312)
  11|2||Restaurant Change                                  (L313)
  11|0||POS Status                                         (L314)
  11|2||POS Operations                                     (L315)
    11|2|POS Operations|KOT Entry                           (L316)
    11|2|POS Operations|Table Change Entry                  (L317)
    11|2|POS Operations|Sale Bill Entry                     (L318)
    11|2|POS Operations|Settlement Entry                    (L319)
    11|2|POS Operations|POS Bill Reprint                    (L320)
    11|2|POS Operations|Split Sale Bill                     (L321)
    11|2|POS Operations|Display Table                       (L322)
    11|2|POS Operations|Order Booking                       (L323)
    11|2|POS Operations|Bill Lookup                         (L324)
    11|2|POS Operations|Order Booking Advance               (L325)
    11|2|POS Operations|KOT Transfer                        (L326)
    11|2|POS Operations|Token Entry                         (L327)
  11|3||POS Reports                                        (L328)
    Sales Register (L329), Stewardwise Sale (L330), Tablewise Sales (L331),
    Settlement Summary (L332), Tax Report (L333), KOT Wise Details (L334),
    Discount Register (L335), Cover Analysis (L336), Pending KOT (L337),
    Item wise Sale (L338), Deleted Unsettled Bill (L339), NC KOT Detail (L340),
    Sales Day Book (L341), Tax Register (L342), Order Detail Report (L343),
    Taxwise Details (L344), NC KOT Summary (L345), Discount Register (PartyWise) (L346),
    Not Delivered Order (L347), Group Wise Sale (L348), Customer Detail (L349),
    Denomination Detail (L350, row type 0 = screen, not Crystal report)
  11|3||POS M.I.S.                                        (L351)
    Collection Summary (L352), Open Item Sales (L353), Void Bills (L354),
    KOT Change Report (L355), Tax Summary (L356), Discount Summary (L357),
    Monthwise Sales (L358), ABC  Analysis (L359), Sale Summary (L360),
    Tax Invoice Detail (L361), Edited Bills (L362)
  --- stray rows carrying group "POS Reports" but parked at top of file ---
  11|0|POS Reports|Payment Receive Entry (POS)             (L11)
  11|1|POS Reports|Bill Wise Adjustment Report             (L14)
```

`Denomination Detail` (L350) is row type `0` even though it sits inside the `POS Reports` group — it opens a
**data-entry screen** (`FrmDenomination`), not a Crystal report. `[VERIFIED-VB6]` (EXTRAS.text L479547–L479548)

### 2.1 Rows the dump does **not** contain (runtime-generated) `[VERIFIED-VB6]`

After the static block, `EXTRAS.text` L476608 executes
`Select Code,Name,KOTYN,Order_Booking from depart where OutletYN='Y' And LogSite_Code='<site>'`
and registers **one group header per outlet** (row type 3, EXTRAS.text L476612) with children
(L476615–L476655): `KOT Entry`, `Table Change Entry`, `KOT Transfer`, `Token Entry`, `Sale Bill Entry`,
`Settlement Entry`, `POS Bill Reprint`, `Split Sale Bill`, `Display Table`, `Bill Lookup`, and
`Order Booking` / `Order Booking Advance` only when `Depart.Order_Booking='Y'`.
A separate registration pass (EXTRAS.text L184687–L184818) also re-adds the same captions under the
caller's own menu group. So **53 is the static count only**; the live menu is a superset.

## 3. Menu registration in code `[VERIFIED-VB6]`

Menu rows are emitted by `Proc_165_0_14C1708(Caption, ModuleHex, RowType, GroupName, ...)`.
POS Operations baseline block (module `&H11` = 17 = "11", owner string `"POSEnt"`):

| Caption | Registration line |
|---|---|
| KOT Entry | EXTRAS.text L476515 |
| Table Change Entry | EXTRAS.text L476517 |
| Sale Bill Entry | EXTRAS.text L476519 |
| Settlement Entry | EXTRAS.text L476521 |
| POS Bill Reprint | EXTRAS.text L476523 |
| Split Sale Bill | EXTRAS.text L476525 |
| Display Table | EXTRAS.text L476527 |

A second, permission-driven registration pass exists around EXTRAS.text L184687–L184818 and registers the
same captions with `var_174` (the caller's menu group) — e.g. `("KOT Entry", &H11, 0, var_174, ...)` at
L184687, `("Settlement Entry", &H11, 0, var_174, vbNullString, 3)` at L184755, `("Bill Lookup", &H11, 0,
var_174, vbNullString, 8)` at L184818. `[VERIFIED-VB6]`

The two stray rows come from their own registrations:
`("Payment Receive Entry (POS)", &H11, 0, "POS Reports", vbNullString, &H2A, "POSRep", 1)` at EXTRAS.text
L11655 and `("Bill Wise Adjustment Report", &H11, 1, "POS Reports", vbNullString, &H2B, "POSRep", 1)` at
L11671. That is why they land at the top of the dump instead of inside the `POS Reports` block.
`[VERIFIED-VB6]`

## 4. Caption → form dispatch (`ModuleAdd`) `[VERIFIED-VB6]`

| Menu caption | Instantiated form / viewer | EXTRAS.text |
|---|---|---|
| Restaurant Change | `FrmChangeRest` | L480172–L480176 |
| POS Status | `RsStatusScreen` | L480176–L480192 |
| KOT Entry | `RsKOTEntry` | L479268–L479282 |
| Table Change Entry | `RsTbChange` | L479282–L479290 |
| Sale Bill Entry | `RSSaleBill` | L479289–L479307 |
| Split Sale Bill | `RsSaleBillSplit` | L479298–L479314 |
| POS Bill Reprint | `POSBillReprint` | L479307–L479326 |
| Display Table | `RsTouchDisplayTB` if `MemVar_1F8120C="Yes"`, else `RsPOSDisplay` (`OpenMode=2`) | L479314–L479349 |
| Order Booking | `RsBookingEntry` (`OpenMode=2`), VType from `Voucher_Type Where Ncat='ORDER'` | L479334–L479372 |
| Bill Lookup | `RSSaleBillDisplay` | L479349–L479361 |
| Order Booking Advance | `POSAdvanceDepDialog` (`OpenMode=2`, `OpenType=5`), VType from `Voucher_Type Where Ncat='PADV'` | L479361–L479387 |
| KOT Transfer | `RsKOTTransfer` | L479385–L479393 |
| Token Entry | `RsTouchScreenTOKENEntry` if `MemVar_1F8120C="Yes"`, else `RsTokenEntry` | L479393–L479412 |
| Settlement Entry | `Set var_90 = MemVar_1F81F64` — shared instance, `OpenType=5`, `OpenMode=2`, `AdvType` from `Select 'B'+ShortName as Adv_Type From Depart Where Code=...` | L479937–L479967 |
| Payment Receive | `RsPaymentReceice` | L479411–L479425 |
| Payment Receive Entry (POS) | `RsPaymentReceice` | L479433–L479445 |
| Denomination Detail | `FrmDenomination` | L479547–L479553 |

**Touch-screen switch:** `MemVar_1F8120C = "Yes"` selects the touch-screen variants
(`RsTouchDisplayTB`, `RsTouchScreenTOKENEntry`). `[VERIFIED-VB6]` (EXTRAS.text L479316, L479394)

**Settlement Entry instance:** `MemVar_1F81F64` is *read* at exactly two places (EXTRAS.text L698 in the
`MDIForm1` toolbar handler and L479938 in `ModuleAdd`) and is never assigned with `New` anywhere in
`EXTRAS.text` / `HMS.bas`. Its member set (`LocalRestCode`, `OpenType`, `OpenMode`, `Connection15`,
`AdvType`, `CAPTION`, `Show`) is identical to `POSAdvanceDepDialog`. `[INFERRED]` — Settlement Entry opens
a module-level `As New POSAdvanceDepDialog`. See `notes\notes.md` item N-POS-03.

**MDI toolbar mirror:** the MDI form's POS toolbar duplicates the same dispatch by button index:
index 2 → `New RSSaleBill`, index 3 → `MemVar_1F81F64` (settlement), index 4 → `New POSBillReprint`,
index 5 → `New RsSaleBillSplit`, index 6 → `New RsPOSDisplay`, index 7 → `New RsBookingEntry`,
index 8 → `New RSSaleBillDisplay`, index 9 → `New POSAdvanceDepDialog`. `[VERIFIED-VB6]`
(EXTRAS.text L698, L779, and surrounding block L680–L800)

Settlement additionally refuses production outlets: `Select Count(*) From Depart Where Code='...' And
RestType='Production'` → if `>0` show `"Operation is not allowed for Perticular Department"` and `Exit Sub`.
`[VERIFIED-VB6]` (EXTRAS.text L698-region, L142C14A/L142C1B5 loc labels)

## 5. Setup screens reachable from POS (module `C` group `Point of Sale Setup`) `[VERIFIED-VB6]`

Registered at EXTRAS.text L476007–L476031 with module `&HC` (12 = "C"):

`Setup Outlet` → `OutLetMast` (L477816), `Table Master` → `RsTableMast` (L477822),
`Menu Group` → `FrmItemGroupMast` with `RestType = "='Finish'"` (L477840),
`Menu Category` → `FrmItemCatMast`, or `FrmHallItemCatMast` when `RestType` is `BANQ`/`ODC` (L477862–L477905),
`Session Master` (L477887), `NC Type` (L477893), `Happy Hours`, `Combo Pack`, `Menu Item Rate`,
`Outlet Bill Sundry Setting`, `Open Item Consumption`, `Happy Hours [ Fee Items ]`, `Customer History`
(`menu_tree_raw.txt` L79–L92).

`Waiter` master form is `FrmWaiterMast` (`'Object:` EXTRAS.text L26563 region per `vb6_form_inventory.md`).

## 6. Screenshot inventory `[VERIFIED-UI]`

20 PNGs at `screenshots\08_POS\`:

| PNG | Shows |
|---|---|
| `07-POS_MenuTab.png` | POS menu tab in the main menu bar |
| `B032_Menu_20260928_195556.png` | menu tree with `Point Of Sale` expanded |
| `C2_Point_Of_Sale__POS_Reports__Payment_.png` | Payment Receive Entry (POS) |
| `C2_Point_Of_Sale__POS_Reports__Sales_Re.png` | Sales Register |
| `C2_Point_Of_Sale__POS_Reports__Stewardw.png` | Stewardwise Sale |
| `C2_Point_Of_Sale__POS_Reports__Table_wi.png` | Tablewise Sales |
| `C3_P5B1_Point_Of_Sale__POS_Reports__Paym.png` | Payment Receive detail screen |
| `C3_P5C5/6/7_Point_Of_Sale__Hight_Way_point__.png` | `Hight Way point` outlet: bill/split/settlement flows |
| `C3_P5D8_Point_Of_Sale__MOON_TEA_CAFE__Bi.png` | `MOON TEA CAFE` outlet bill screen |
| `C3_S1_Point_Of_Sale__POS_Reports__Paym.png` | POS Reports sub-menu |
| `C4_L1+sub_Point_Of_Sale__POS_MIS__*.png` (8) | POS M.I.S. report viewers: Open Item Sales, Void Bills, KOT Change Report, Discount Summary, Monthwise Sales, ABC Analysis, Sale Summary, Edited Bills |

**Not captured** (no PNG): all 12 `POS Operations` transaction screens (KOT Entry, Sale Bill Entry,
Settlement Entry, …), `Restaurant Change`, `POS Status`, `Denomination Detail`. `[UNKNOWN]` — nothing under
`screenshots\08_POS\` or `screenshots\_duplicates\` matches those captions.
