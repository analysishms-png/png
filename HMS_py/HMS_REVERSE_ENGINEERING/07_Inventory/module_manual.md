# MODULE NAME — 07_Inventory (Material Mgmt)

Evidence tags: `[VERIFIED-VB6]`, `[VERIFIED-SQL]`, `[VERIFIED-UI]`, `[VERIFIED-CONFIG]`,
`[INFERRED]`, `[UNKNOWN]`. Line numbers without a path = `HMS_REVERSE_ENGINEERING\EXTRAS.text`;
`menu_tree_raw.txt` = `HMS_REVERSE_ENGINEERING\19_VB6_Logic\menu_tree_raw.txt`.

---

## 1. Purpose

Stores / purchase / material management: indent → purchase order → goods receipt (M.R.) →
purchase bill, store issue against indent, kitchen closing stock, stock transfer, and the
consumption/BOM masters that drive them — plus the statutory VAT / Form-24 / UP-VAT reports.

Two menu modules, **both gated on the same module letter `J`**:

| Menu module | Hex | Registered | Registration block | Gate |
|---|---|---|---|---|
| `Material Mgmt` | `&H10` = 16 | **40 menu rows** (2 detached) | **L476426–L476504** (38 calls) + **L11647 / L11653** from `frmCompany` | `InStr(2, MemVar_1F81228, "J", 0) <> 0` at **L476426** |
| `Material Mgmt Setup` | `&HC` = 12 | **10 menu rows** (parent + 10 children = 11) | **L476079–L476102** | `InStr(…, "J", …)` at **L476079** |

`[VERIFIED-VB6]`

Owns the **stock ledger**: `Stock` (65 columns, **61 925 rows**) is written by 9 different
forms in this module. `[VERIFIED-SQL]`

Nothing else in HMS writes `Purch1` / `Purch2` / `POrder` / `GIN` / `Indent` / `Indent1`.
`[VERIFIED-VB6]`

---

## 2. Menu Structure

Source: `menu_tree_raw.txt` `[VERIFIED-VB6]`.

```
10|4||Material Mgmt                                         L274  (module, opt2=4 -> Flag 'N')
├─ 10|3||Transactions                                       L275  (group, "TransPurch")
│  ├─ 10|0|Transactions|Gravy Item Entry                    L276
│  ├─ 10|0|Transactions|Indent                              L277
│  ├─ 10|0|Transactions|Purchase Order                      L278
│  ├─ 10|0|Transactions|M.R. Entry                          L279
│  ├─ 10|0|Transactions|Purchase Bill                       L280
│  ├─ 10|0|Transactions|Requisition Slip                    L281
│  ├─ 10|0|Transactions|Stock Issue on Requisition          L282
│  ├─ 10|0|Transactions|Kitchen Closing Stock               L283
│  ├─ 10|0|Transactions|Stock Transfer                      L284
│  ├─ 10|0|Transactions|Finish Material Receive Entry       L285
│  └─ 10|0|Transactions|Excise Invoice Cum Gate Pass        L286
├─ 10|3||Reports                                            L287  (group, "MatReports")
│  ├─ 10|1|Reports|Kitchen Stock Report I/R Basis           L288
│  ├─ 10|1|Reports|Purchase Register                        L289
│  ├─ 10|1|Reports|Purchase Summary                         L290
│  ├─ 10|1|Reports|Cash/Credit Purchase                     L291
│  ├─ 10|1|Reports|Stock Register                           L292
│  ├─ 10|1|Reports|Stock Summary                            L293
│  ├─ 10|1|Reports|Stock In Hand                            L294
│  ├─ 10|1|Reports|Excess Consumption Report                L295
│  ├─ 10|1|Reports|Store Issue Register                     L296
│  ├─ 10|1|Reports|Indent Register                          L297  *** no dispatcher branch
│  ├─ 10|1|Reports|Purchase Order Register                  L298  *** no dispatcher branch
│  ├─ 10|1|Reports|Daily Store Issue Reports                L299
│  ├─ 10|1|Reports|VAT Register                             L300
│  ├─ 10|1|Reports|Purchase Ledger                          L301
│  ├─ 10|1|Reports|Issue CheckList                          L302
│  ├─ 10|1|Reports|M.R. Register                            L303  *** no dispatcher branch
│  ├─ 10|1|Reports|Stock Summary P/S Basis                  L304
│  ├─ 10|1|Reports|ABC Analysis                             L305
│  ├─ 10|1|Reports|Production Report I/R Basis              L306
│  ├─ 10|1|Reports|VAT Register II                          L307
│  ├─ 10|1|Reports|VAT Register III                         L308
│  ├─ 10|1|Reports|VAT Register III                         L309  *** DUPLICATE of L308
│  ├─ 10|1|Reports|Form III                                 L310
│  └─ 10|1|Reports|UPVAT XXIV                               L311

detached hex-10 rows (registered from frmCompany, L11647 / L11653):
10|1|Reports|Store Issue Report                             L7
10|1|Reports|Liquor Sale Report                             L10

Material Mgmt Setup (hex &HC):
C|3|Main Setup|Material Mgmt Setup                          L113  (group, "CCenter")
├─ C|0|Material Mgmt Setup|Party Master                     L114
├─ C|0|Material Mgmt Setup|Department                       L115
├─ C|0|Material Mgmt Setup|Item Group                       L116
├─ C|0|Material Mgmt Setup|Item Category                    L117
├─ C|0|Material Mgmt Setup|Item Entry                       L118
├─ C|2|Material Mgmt Setup|Consumption Master               L119  *** opt2=2 -> Flag 'V'
├─ C|0|Material Mgmt Setup|Purchase Sundry Setting          L120
├─ C|0|Material Mgmt Setup|Opening Stock                    L121
├─ C|0|Material Mgmt Setup|Item  List                       L122  *** TWO spaces in the name
└─ C|0|Material Mgmt Setup|Enviro Inventry                  L123  (sic — "Inventry")
```

**40 hex-`10` rows** = 1 module + 2 groups + 11 transactions + 26 reports.
**11 hex-`&HC` rows** = 1 group + 10 children (registration L476081–L476101).
`[VERIFIED-VB6]` + `[VERIFIED-CONFIG]`

Menu storage: `menuHelp` 9 212 rows, `UserModule` 450 rows. `[VERIFIED-SQL]`

`Flag` derivation from `Opt2` (**L475805 / L475811**): `0→'E'`, `1→'R'`, `2→'V'`, `3→'N'`,
`4 & Opt1≤45→'N'`, else `'V'`. `PARAM_STR` (**L475810**): `0→'AEDP'`, `1→'***P'`, else `''`.
`[VERIFIED-VB6]`

Resulting `Flag` for this module: 11 transaction leaves + 9 setup leaves = `'E'`;
all 26 report leaves = `'R'`; `Consumption Master` = `'V'`; the three group/header rows = `'N'`.

---

## 3. Screens

Full table with dispatch lines, object ranges and screenshots:
`07_Inventory\screens\screens.md`.

### Transactions (hex `10`)

| Menu item | Dispatch | Form object | Object range |
|---|---|---|---|
| Gravy Item Entry | L479101 | `RsGravyItemEntry` | L428231–L430168 |
| Indent | L479107 | `PIndent` | L207648–L210585 |
| Purchase Order | L479113 | `pPOrder` | L210586–L214602 |
| M.R. Entry | L479119 | `pMREntry` | L214603–L219214 |
| Purchase Bill | L479125 | `pPBill` | L70625–L80458 |
| Requisition Slip | **L478657** | `pReqSlip` | L833098–L835728 |
| Stock Issue on Requisition | L479144 | `pGIss` | L108102–L110808 |
| Kitchen Closing Stock | L479150 | `kClStk` | L110809–L112651 |
| Stock Transfer | L478663 | **`RsKitchenStk`** (not `FrmStockTransfer`) | L589535–L592562 |
| Finish Material Receive Entry | L478669 | `RsStoreRecEntry` | L587256–L589534 |
| Excise Invoice Cum Gate Pass | L478675 | `RsKitchenMaterial` | L605914–L609681 |

Cross-module entries dispatched from the same window:
`Issue/Recd. Entry` **L479070** → `FrmStockTransfer` (L452276–L454520),
`House Keeping Op.Stock Entry` **L479057** → optional `FrmChangeDepart` (L204660–L204829)
then `HKHouseOpStk`. `[VERIFIED-VB6]`

### Setup (hex `&HC`)

| Menu item | Dispatch | Form object | Object range |
|---|---|---|---|
| Party Master | L477917 | `FrmParty` | L19849–L22995 |
| Department | L477923 | `DepartMast` | L179642–L181005 |
| Item Group | L477929 | `FrmItemGroupMast` **or** `FrmItemGroupMastRaw` (branch on `OutletCode` `BANQ`/`ODC`), `FrmItemCatMast` | L50883–L52019 / L127293–L129628 / L129629–L131330 |
| Item Category | L477942 | `FrmItemCatMast` | L129629–L131330 |
| Item Entry | L477948 → L477949 | `FrmItemMastRaw` | L127293–L129628 |
| Consumption Master | L477956 | `FrmConsumMast` | L56138–L58097 |
| Purchase Sundry Setting | L477746 | `DepartSundry` | — |
| Opening Stock | L477758 | `FrmOPStock` | L424548–L426551 |
| Item  List | L477692 → L477693 | `FrmItemMast` | L612894–L613795 |
| Enviro Inventry | L477962 | `frmPurEnviro` | L889475–L890269 |
| *(no menu row)* Location Master | **L477752** | `Godown` | L206837–L207647 |

### Report viewer

| Form | Range | Notes |
|---|---|---|
| `rInventRepView` | **L634572–L661019** | the only viewer for all 26 hex-10 reports |
| `REPVIEW` | L8722–L8889 | legacy viewer, referenced by no hex-10 branch `[VERIFIED-VB6]` |

Unreachable inventory forms: `DepOpStk` L422753–L424547, `RsTableMast` L107258–L108101,
`FrmItemGroupMast` L50883–L52019 (the non-Raw `Item Group` branch uses
`HallItemGroupMast`/`FrmItemGroupMastRaw`). `[VERIFIED-VB6]`

---

## 4. Masters

**Owned by hex `&HC`:**

| Master | Table | Rows | Columns | PK | Write lines |
|---|---|---|---|---|---|
| Party (sub-group/ledger) | `SubGroup` 3 238 · `Ledger` 40 818 | | 79 · 29 | `SubCode` family · `DocId,V_SNo` | L22391 (INSERT), L22959 (DELETE), L22652/L22877 (Ledger) |
| Department | `Depart` | **73** | 74 | `Code` | L180129 / L179844; also seeds `GodownMast` L180153 and `Voucher_Type` L180234–L180306 |
| Item group | `ItemGrp` | **140** | 14 | `Code` | L51434 / L51167 / L51453; key via `MAX(SUBSTRING)` **L51415** |
| Item category | `ItemCatMast` | **50** | 19 | `Code` | L130245 / L129943; key **L130222** |
| Item entry | `ItemMast` | **3 355** | 50 | `Code,RestCode` | L128888 / L128457; also `RsGravyItemEntry` L429598/L429318 |
| Item list (legacy) | `Item` | **3 187** | 9 | `Code` | L613510 / L613261 |
| Consumption / BOM | `BOM` | **2 048** | 17 | `FinItem,RawSno,AppDate` | L57212 / L56876 / L57158; also `RsGravyItemEntry` L427577/L427280 |
| Opening stock | → `Stock` | 61 925 | 65 | `DocId,Sno` | L425700 / L425367 |
| Location / godown | `GodownMast` | **70** | 10 | `Code` | L207115 / L206928 |
| Enviro | `Enviro` | **1 row / 222 cols** | 222 | — | `frmPurEnviro` |
| Rates | `ItemRate` | **718** | 11 | `ItemCode,RestCode,AppDate` | L429326 (DELETE) |
| Units | `UnitMast` | **32** | 8 | `Name,Site_Code,LogSite_Code` | L128987 / L129004 / L429642 |

`[VERIFIED-SQL]` for rows/columns/PKs; `[VERIFIED-VB6]` for the writers.

**Consumed (read-only) from elsewhere:** `AcGroup` 73 (L20428, L21375, L22375),
`SubGroupCurrBal` 6 166 (L22157), `TaxStru` 56 (validated at L76880, L77517),
`City`/`State`/`Country` (L20434–L20435), `Voucher_Type` 171 / `Voucher_Prefix` 171,
`LastVou` 22. `[VERIFIED-SQL]` + `[VERIFIED-VB6]`

---

## 5. Transactions

| # | Transaction | Form | Tables written | Evidence |
|---|---|---|---|---|
| 1 | Indent | `PIndent` | `Indent`, `Indent1`, `Voucher_Prefix` | L208436, L208486, L208518 `[VERIFIED-VB6]` |
| 2 | Requisition slip | `pReqSlip` | `Indent`, `Indent1`, `Voucher_Prefix` | L834236, L834277, L834309 |
| 3 | Purchase order | `pPOrder` | `POrder`, `POrder1`, `Voucher_Prefix` | L212494, L212636, L212680 |
| 4 | Material receipt (M.R.) | `pMREntry` | `Stock`, `GIN`, `Voucher_Prefix` | L216615, L216548, L216661 |
| 5 | Purchase bill | `pPBill` | `Purch1`, `Purch2`, `Stock`, `Sale2`, `SunTran`, `Ledger`, `Voucher_Prefix`, `LastVou` | L73560, L73641, L73827, L73948, L73997, L72501, L74026, L74043 |
| 6 | Issue against indent | `pGIss` | `Stock`, `Indent.ClearYN`, `Voucher_Prefix` | L109730, **L109742** (`ClearYN='Y'`), **L109259** (`ClearYN=''`), L109819 |
| 7 | Kitchen closing stock | `kClStk` | `KClStk`, `Voucher_Prefix` | L111182, L111212 |
| 8 | Stock transfer | `FrmStockTransfer` | `Stock` (delete + insert) | L452641, L452680, L452441, L452603 |
| 9 | Kitchen stock (menu `Stock Transfer`) | `RsKitchenStk` | `Stock`, `Voucher_Prefix` | L591196, L591249, L591282, L591303 |
| 10 | Finish material receive | `RsStoreRecEntry` | `Stock`, `Voucher_Prefix` | L588328, L588363 |
| 11 | Excise invoice cum gate pass | `RsKitchenMaterial` | `Stock`, `TranTaxDetail`, `TranSunDetail`, `Voucher_Prefix` | L607086, L607132, L607181, L607206, L607231 |
| 12 | Opening stock | `FrmOPStock` | `Stock`, `Voucher_Prefix` | L425700, L425719 |
| 13 | Gravy item entry | `RsGravyItemEntry` | `ItemMast`, `ItemRate` (DELETE), `BOM` | L429598, L429326, L427577 |

Direction of a stock row is carried by `QtyIss` vs `QtyRec`. `[VERIFIED-VB6]`

Every one of these saves opens an **ADO transaction** (`BeginTrans` / `CommitTrans` /
`RollbackTrans`) — per-form line pairs are tabulated in `sql\sql_notes.md` §5.
`[VERIFIED-VB6]`

Client-side cascade example, Purchase Bill (L72487–L72565):
`BeginTrans` → delete `Purch2`, `Purch1`, `Sale2`, `SunTran`, `Stock`, `Ledger` →
`CommitTrans` (L72551) / `RollbackTrans` (L72565). `[VERIFIED-VB6]`

---

## 6. Operations

| Op | Menu item | Form | Notes |
|---|---|---|---|
| Add / Edit / Delete | Party Master | `FrmParty` | sub-group + ledger + current balance; delete L22959 |
| Add / Edit / Delete | Department | `DepartMast` | also seeds `GodownMast` (L180153) and 4 HK `Voucher_Type` rows (L180234–L180306) |
| Add / Edit / Delete | Item Group | `HallItemGroupMast` / `FrmItemGroupMastRaw` | branch on `OutletCode ∈ {BANQ, ODC}` (L477929); raw variant sets `.RestType = "<>'Finish'"` |
| Add / Edit / Delete | Item Category | `FrmItemCatMast` | key L130222 |
| Add / Edit / Delete | Item Entry | `FrmItemMastRaw` | guard pair `Not "Item Entry"` / `"Item Entry "` (L477948/949) |
| Add / Edit / Delete | Item  List | `FrmItemMast` | guard pair `"Item List"` / `"Item  List"` (L477692/93) |
| Add / Edit / Delete | Consumption Master | `FrmConsumMast` | `Opt2=2` ⇒ `Flag='V'`, excluded from the L3636 menu query |
| Add / Edit / Delete | Purchase Sundry Setting | `DepartSundry` | L477746 |
| Add / Edit | Opening Stock | `FrmOPStock` | writes `Stock` inside a transaction (L425363→L425380) |
| Add / Edit | Enviro Inventry | `frmPurEnviro` | edits `Enviro` (222 columns, 1 row) |
| Add / Edit / Delete | Location Master | `Godown` | **no menu row anywhere** (L477752) |
| Raise / amend / delete | Indent, Purchase Order, M.R., Purchase Bill | `PIndent`, `pPOrder`, `pMREntry`, `pPBill` | see §5 |
| Issue | Stock Issue on Requisition | `pGIss` | clears `Indent.ClearYN` |
| Receive | Finish Material Receive Entry | `RsStoreRecEntry` | |
| Transfer | Stock Transfer | `RsKitchenStk` | menu says "Stock Transfer", form is the kitchen-stock voucher |
| Transfer | Issue/Recd. Entry *(06_HK menu)* | `FrmStockTransfer` | the other half of the same pair |
| — | Kitchen Closing Stock | `kClStk` | `KClStk` has **0 rows** — never used |

---

## 7. Reports

Detail in `07_Inventory\reports\reports.md`. Viewer = **`rInventRepView`**
(L634572–L661019) for all 26.

| Menu (line) | `GRepFormName` | Dispatch | exact `.rpt`? |
|---|---|---|---|
| Kitchen Stock Report I/R Basis (L288) | `KitchenStkRep` | L479162 | ❌ |
| Purchase Register (L289) | `PurchaseReg` | L479169/170 | ❌ |
| Purchase Summary (L290) | `PurchaseSumm` | L479178/179 | ❌ |
| Cash/Credit Purchase (L291) | `CashCreditPurch` | L479194 | ❌ |
| Stock Register (L292) | `StockRegStore` | L479201 **+** L478525 | ❌ |
| Stock Summary (L293) | `StockSummStore` | L479212 **+** L478534 | ❌ |
| Stock In Hand (L294) | `StockINHand` | L479228/229 | ✅ `StockInHand.rpt` |
| Excess Consumption Report (L295) | `ExcessConsumption` | L479237 | ❌ |
| Store Issue Register (L296) | `StoreIssReg` | L479251 | ✅ `StoreIssReg.rpt` |
| Indent Register (L297) | — | **none** | — *(dead click)* |
| Purchase Order Register (L298) | — | **none** | — *(dead click)* |
| Daily Store Issue Reports (L299) | `DailyStoreIssRpt` | L479221 | ❌ |
| VAT Register (L300) | `VATRegister` | L478543 | ✅ `.rpt`+`.ttx` |
| Purchase Ledger (L301) | `PurchaseLedger` | L478550 | ✅ `.rpt`+`.ttx` |
| Issue CheckList (L302) | `IssueReg` | L478557/558 | ✅ `.rpt`+`.ttx` |
| M.R. Register (L303) | — | **none** | — *(dead click)* |
| Stock Summary P/S Basis (L304) | `StockSummaryP/SBasis` | L478580 | ❌ |
| ABC Analysis (L305) | `ABCAnalysis` | L478587 | ✅ `.rpt`+`.ttx` |
| Production Report I/R Basis (L306) | `ProductionReport` | L478594 | ❌ |
| VAT Register II (L307) | `VATRegisterII` | L478601 | ✅ `.rpt`+`.ttx` |
| VAT Register III (L308) | `VATRegisterIII` | L478608 | ✅ `.rpt`+`.ttx` |
| VAT Register III *(dup)* (L309) | intended `Form24AnnexureA` | handler at L478615 **unreachable** | — |
| Form III (L310) | `FormIII` | L478622 | ✅ `FORMIII.rpt` |
| UPVAT XXIV (L311) | `UPVATXXIV` | L478629 | ✅ `.rpt`+`.ttx` |
| Store Issue Report *(detached, L7)* | `StoreIssueReport` | L478566 | ✅ `.rpt` (no `.ttx`) |
| Liquor Sale Report *(detached, L10)* | `LiquorSaleRep` | L479258 | ❌ **no file of any kind** |

**10 of 26 have no exact `.rpt`**; **1 has no file at all**. `[VERIFIED-CONFIG]`

Engine Crystal Reports; path = `Analysis.ini` key `2` = `<HMS2526>\Reports`
(371 `.rpt` + 194 `.ttx` = 566 files). Built at **L636046** (`.ttx`, with `\`) and
**L636048** (`.RPT`, **without** `\`); correct `\` versions at L656549–L656551 and
L658123–L658125. `[VERIFIED-VB6]` + `[VERIFIED-CONFIG]`

---

## 8. Permissions

Same two-layer model as `04_Reservation` (see that manual §8 for the full mechanism).

**Layer 1 — menu visibility** (`menuHelp`, filtered at **L3636**):
```sql
SELECT * FROM MENUHELP
 WHERE Flag <> 'V' AND USERNAME = '<user>' AND CompCode = '<company>'
   AND [Option] <> '-' AND ShowInList = 'Y'
 ORDER BY OPT1, OPT2, OPT3, OPT4
```
`[VERIFIED-VB6]`
Note: `Consumption Master` is registered with `Opt2 = 2` (L476093) ⇒ `Flag = 'V'`, so it is
**excluded by this query** and is instead matched by **L6629**
(`… Opt3=0 AND Opt4=0 AND Opt2<>0 AND Flag='V' AND UserName='SA'`). `[VERIFIED-VB6]`

Module gate: **`"J"`** at **L476426** (hex `10`) and **L476079** (hex `&HC`). `[VERIFIED-VB6]`

**Layer 2 — action permissions** (`UserPermission`, 76 columns / 76-row table) `[VERIFIED-SQL]`:
columns are `CompCode, UserName, LogSite_Code, POSDiscountAllowUpto, CancelGuestBill,
ChangeRoomDtl, DeleteGuestCharges, Site_Code, POSSettlementYN, ChangeGuestCharges, backcolor,
ChangeGuestProfile, FacilityBilling, EditItemInKOT, FOMDiscountAllowUpto, CancelReservation,
FreeItemAllow, RefundCashCardAmt`.

None of these is read anywhere inside the inventory object ranges
(L19849–L22995, L50883–L52019, L56138–L58097, L70625–L80458, L108102–L112651,
L179642–L181005, L206837–L219214, L422753–L430168, L452276–L454520, L481015–L482172,
L587256–L609681, L612894–L613795, L833098–L835728, L889475–L890269).
`[VERIFIED-VB6]`

→ **No Inventory action is permission-gated.** `[VERIFIED-VB6]`

Two dead columns exist in the schema anyway — `CancelReservation` (DDL only, L264821) and
`FOMDiscountAllowUpto` (DDL only, L264820) — never referenced by any code.
`[VERIFIED-VB6]`

Delete confirmations are UI-only: `MsgBox "Delete Record ?"` style guards in
`FrmParty` / `PIndent` / `pPOrder`. `[VERIFIED-VB6]`

---

## 9. Business Rules

| # | Rule | Evidence |
|---|---|---|
| IN-BR-1 | Import is only allowed in Add mode: `MsgBox "Import Only In Add Mode."` | L71344 `[VERIFIED-VB6]` |
| IN-BR-2 | Transfer (godown) location must exist: `MsgBox "Transfer Location Not Exits"` | L71360 |
| IN-BR-3 | Every purchase line must have a tax structure: `TaxStru` join; violation → error at L76880, L77517 | L76880, L77517 |
| IN-BR-4 | Voucher-wise sundry must be configured: `MsgBox "Voucher wise Sundry not defined"` | L71900 |
| IN-BR-5 | Item must resolve: `MsgBox "Item Not Found!"` | L72264 (`pPBill`), L217239 (`pMREntry`) |
| IN-BR-6 | Purchase order number must be non-zero: `MsgBox "Order No Can Not Be 0"` | L211162 |
| IN-BR-7 | Purchase order numbers must be unique: `MsgBox "Duplicate Order No."` | L211206, L214078 |
| IN-BR-8 | A PO row cannot be removed if stock already references it: `MsgBox "Can't Remove Row :Related Entry Exists In Stock"` | L211834 |
| IN-BR-9 | Date lock: `MsgBox "Date Locked!"` | L112576 (`kClStk`), L213326 (`pPOrder`) — **inert: `DATELOCK` has 0 rows** `[VERIFIED-SQL]` |
| IN-BR-10 | Mandatory grid fields: `"Item Required"` L213470, `"Quantity Required"` L213512, `"Rate Required"` L213546 | `pPOrder` |
| IN-BR-11 | Per-row mandatory fields: `"Quantity Required in Row n"` L68581, L77491, L83822, L86224, L127059, L214094, L218457; `"Rate Required in Row n"` L77499, L214103; `"Acc. Quantity Required in Row n"` L218467; `"Recd. Quantity Required in Row n"` L218476 | |
| IN-BR-12 | Duplicate item name + part no rejected: `MsgBox "Duplicate Item Name & PartNo Not Allowed"` | L213752 |
| IN-BR-13 | Duplicate invoice number rejected: `MsgBox "Duplicate Invoice No."` | L111548 (`kClStk`) |
| IN-BR-14 | Duplicate voucher numbers rejected: `MsgBox "Duplicate Voucher No."` (checked against `Stock`/`Purch1`) | L74695 (`pPBill`) |
| IN-BR-15 | `Site` join is required by the party ledger register; but `Site` has **0 rows** → `Site_Desc` is always NULL | L22258 `[VERIFIED-SQL]` |
| IN-BR-16 | Item groups branch on outlet: `OutletCode ∈ {BANQ, ODC}` → `HallItemGroupMast`, else `FrmItemGroupMastRaw` with `.RestType = "<>'Finish'"` | L477929 `[VERIFIED-VB6]` |
| IN-BR-17 | Stock issue clears the indent: `UPDATE Indent SET ClearYN='Y' WHERE Docid=…`; a cancel/void resets `ClearYN=''` via `Stock.ContraDocId` | L109742, L109259 |
| IN-BR-18 | Item group code = `MAX(SUBSTRING(Code,3,4))+1` guarded by `ISNUMERIC(...) = 1` | L51415 |
| IN-BR-19 | `Voucher_Prefix.Start_Srl_No` is written **two incompatible ways**: absolute (`= <n>`, L74026/L208518/L212680/L216661/L425719/L452711/…) and `= Start_Srl_No+1` (L109819) | `[VERIFIED-VB6]` |
| IN-BR-20 | Excise/gate-pass lines write `TranTaxDetail` + `TranSunDetail`; both tables hold **0 rows** | L607181, L607206 `[VERIFIED-SQL]` |

---

## 10. VB6 Logic

Detail: `07_Inventory\logic\vb6_logic.md`.

* Registration — hex `10` **L476426–L476504** (gate `"J"`, 38 calls: 1 module + 2 groups +
  11 transactions + 24 reports); hex `&HC` **L476079–L476102** (1 group + 10 children);
  plus **L11647 / L11653** inside `frmCompany`. `[VERIFIED-VB6]`
* Registrar `Proc_165_0_14C1708` **L475664–L475816** — 8 params, idempotency guard
  L475695/L475701, `Code = opt1*1000000+opt2*10000+opt3*100+opt4` (L475793–L475801),
  inserts `UserModule` L475803 and `MenuHelp` L475808–L475812.
  **The 5th param (`var_124`, caption override) is stored but never read** — so
  `var_124 = "Form24 Annexure-A"` at L476498 has no effect. `[VERIFIED-VB6]`
* Dispatcher **L476999–L480832** — inventory branches at L477692, L477746, L477752,
  L477758, L477917, L477923, L477929, L477942, L477948, L477956, L477962, L478543,
  L478557, L478566, L478573, L478580–L478642, L478657, L478663, L478669, L478675,
  L479101–L479264, L479265.
  Preamble: reload `Enviro` L477023/L477025, read `TouchScreen` L477031,
  `var_94 = Trim(Proc_165_3_EEA710(arg_C, var_130))` L477039, breadcrumb L477040–L477045,
  `menuHelp` privilege query L477046 → `OutletCode` → `var_AC` L477052.
  Debug trace `Open "C:\moduleFILE.TXT" For Append` at **L477034**; `On Error Resume Next`
  at L477022. `[VERIFIED-VB6]`
* **Shared exit `loc_1E2A553` is not present in the dump** → unmatched keys fall through to
  cleanup L480825–L480831 (`Print 1, var_94`, `Close 1`, `Exit Sub`): **no form, no error.**
  `[VERIFIED-VB6]`
* Whitespace / case-variant guard pairs: L477692/93, L477948/49, L478557/58, L479169/70,
  L479178/79, L479201/02/03, L479212/13, L479228/29. `[VERIFIED-VB6]`
* Duplicate handler blocks: `Stock Register` (L479201 + L478525), `Stock Summary`
  (L479212 + L478534), `House Keeping Screen` (L478717 + L479076). `[VERIFIED-VB6]`
* `MAX(SUBSTRING(...))` key generation: `ItemGrp` L51415, `ItemCatMast` L130222,
  `GodownMast ∪ Depart` L180111. `[VERIFIED-VB6]`
* Voucher machinery: read `Voucher_Prefix` → write `Start_Srl_No` → upsert `LastVou`.
  `[VERIFIED-VB6]`

---

## 11. SQL Logic

All statements in `07_Inventory\sql\queries.sql`; interpretation in `sql\sql_notes.md`.

* 1 224 inventory-tagged statements extracted; **every one is string-concatenated — zero
  `?` placeholders, no `Command` parameters.** `[VERIFIED-VB6]`
* Site filters: `Site_Code` + `LogSite_Code`, plus the
  `LOGSITE_CODE='<site>' OR LOGSITE_CODE='HO'` two-site idiom (e.g. L20444, L50927).
* **Zero declared FKs** (`foreign_keys.txt` = 0 bytes) → every cascade is client-side
  `[VERIFIED-SQL]`; the cascades *are* wrapped in ADO transactions (§5).
* Views consumed: `ViewSubgroup` (`view_proc_definitions.txt` L54) by party pickers.
  `ViewBooking` (L28) and `RoomOccDet` (L25) are not hex-10 dependencies.
* No PK: `ComplaintCategory`, `RoomCheckOutStatus`, `BookingCancelDetails` (none of these are
  inventory tables — every inventory table in §12 **has** a PK). `[VERIFIED-SQL]`
* Key-allocation idiom uses `MAX(SUBSTRING(...))` with an `ISNUMERIC` guard (L51415) —
  collision-prone under concurrency. `[VERIFIED-VB6]`
* `Site` (0 rows) and `DATELOCK` (0 rows) are joined/queried but empty ⇒ two validations are
  inert. `[VERIFIED-SQL]`

---

## 12. Tables

| Table | Rows | Columns | PK | Role |
|---|---|---|---|---|
| `Stock` | **61 925** | 65 | `DocId,SNo` | stock ledger (**owned**) — written by 9 forms |
| `Purch2` | **3 826** | 53 | `DocId,SNo` | purchase bill lines (owned) |
| `Purch1` | **880** | 36 | `DocId` | purchase bill header (owned) |
| `Sale2` | 66 055 | 19 | `DocId,Sno,SNo1` | written by `pPBill` (owned here) |
| `SunTran` | 98 025 | 24 | `DocId,Sno` | written by `pPBill` |
| `Ledger` | 40 818 | 29 | `DocId,V_SNo` | written by `pPBill` / `pGIss` / `FrmParty` |
| `GIN` | **890** | 29 | `Docid` | goods inward note (owned) |
| `Indent1` | **13 022** | 24 | `DocId,Sno` | indent lines (owned) |
| `Indent` | **2 115** | 17 | `DocId` | indent header (owned) |
| `POrder1` | **47** | 27 | `Docid,Sno` | PO lines (owned) |
| `POrder` | **13** | 29 | `Docid` | PO header (owned) |
| `KClStk` | **0** | 16 | `DocId,Sno` | kitchen closing stock (owned, unused) |
| `TranTaxDetail` | **0** | 19 | `DocId,Sno,SNo1` | excise/gate-pass tax (owned, unused) |
| `TranSunDetail` | **0** | 13 | `Docid,Sno` | excise/gate-pass sundry (owned, unused) |
| `GodownMast` | **70** | 10 | `Code` | store locations (owned) |
| `ItemMast` | **3 355** | 50 | `Code,RestCode` | items (owned) |
| `Item` | **3 187** | 9 | `Code` | legacy item list (owned) |
| `ItemGrp` | **140** | 14 | `Code` | item groups (owned) |
| `ItemCatMast` | **50** | 19 | `Code` | item categories (owned) |
| `ItemRate` | **718** | 11 | `ItemCode,RestCode,AppDate` | rates (owned) |
| `BOM` | **2 048** | 17 | `FinItem,RawSno,AppDate` | consumption/BOM (owned) |
| `Depart` | **73** | 74 | `Code` | departments (owned) |
| `UnitMast` | **32** | 8 | `Name,Site_Code,LogSite_Code` | units (owned) |
| `SubGroup` | 3 238 | 79 | — | party master (written by `FrmParty`) |
| `Voucher_Prefix` | 171 | 10 | `V_Type,Date_From,Site_Code,LogSite_Code` | serial allocation |
| `Voucher_Type` | 171 | 37 | `V_Type,Site_Code,LogSite_Code` | voucher config |
| `LastVou` | 22 | 7 | `UNAME,ENAME,DOCID,Site_Code` | per-user last-document cache |
| `Enviro` | **1** | **222** | — | global environment (edited by `Enviro Inventry`) |
| `TaxStru` | 56 | — | — | tax structure (consumed) |
| `AcGroup` | 73 | — | `ID,Site_Code,LogSite_Code` | ledger groups (consumed) |
| `SubGroupCurrBal` | 6 166 | — | — | balances (consumed) |
| `RawConsumption` | **88 094** | 19 | `DocId,Sno` | **no producer in this module** |
| `Site` | **0** | — | — | empty → `LEFT JOIN` yields NULL |
| `DATELOCK` | **0** | — | — | empty → `Date Locked!` never fires |
| `ShiftMast` | **0** | — | — | empty → `Stock.ShiftCode` has no master |

`[VERIFIED-SQL]`

---

## 13. Fields

Full inventories in `sql\sql_notes.md`; raw definitions in
`18_Database\columns_dictionary.txt`. Summary of the owned tables:

* **`Stock`** (65): `DocId, Sno, Vtype, VNo, Site_Code, Vprefix, Vdate, PartyCode, RestCode,
  RoomCat, RoomType, RoomNo, ContraDocId, ContraSno, Item, QtyIss, QtyRec, Unit, Rate, Amount,
  TaxPer, TaxAmt, DiscPer, DiscAmt, VoidYN, Remarks, KOTDocId, KOTSno, VTime, U_Name, U_EntDt,
  U_AE, Total, DiscApp, RoundOff, DepartCode, GodownCode, ChalQty, RecdQty, AccQty, RejQty,
  RecdUnit, Specification, ItemRate, DelFlag, LandVal, ConvRatio, IndentDocId, IndentSNo,
  IssQty, IssueUnit, LogSite_Code, FreeSno, SchemeCode, SeqNo, Company, ExpDate, MfdDate,
  ItemRestCode, ShiftCode, MRP, SChrgApp, SChrgPer, SChrgAmt, RefDocId`
* **`Purch1`** (36): `DocId, VNo, Vdate, Vtype, Vprefix, Site_Code, RestCode, Party, Total,
  DiscPer, DiscAmt, NonTaxable, Taxable, Tax, ServiceCharge, AddAmt, DedAmt, RoundOff, NetAmt,
  U_Name, U_EntDt, U_AE, DelFlag, PartyBillNo, PartyBillDt, CashParty, LogSite_Code, TinNo,
  Remark, InvoiceType, InvoiceNo, CGST, SGST, IGST, Payable, BillImagePath`
* **`Purch2`** (53): mirrors `Stock` plus `GodCode, PostVal, Taxstru, AcCode`
* **`Indent`** (17): `DocId, Vtype, VNo, Site_Code, Vprefix, VDate, VTime, Department, Remarks,
  U_Name, U_EntDt, U_AE, ClearYN, LogSite_Code, Company, Godown, RefDocId`
* **`Indent1`** (24): `DocId, Sno, Vtype, VNo, VDate, Site_Code, Vprefix, Item, Qty, Unit,
  U_Name, U_EntDt, U_AE, Rate, Amount, Specification, ClearYN, ConvFactor, WtQty, WtUnit,
  LogSite_Code, TaxStru, TaxAmt, Total`
* **`POrder`** (29): `Docid, VNo, VDate, VType, VPrefix, Site_Code, QuotNo, QuotDate,
  PartyCode, FormCode, Sample, Form31No, Remark, DispatchMode, DespatchThru, PaymentTerms,
  Prices, PackCharge, MaxQty, ForwardCharges, DeliverySch, DiscPer, ExPer, TaxPer, STaxPer,
  U_Name, U_EntDt, U_AE, LogSite_Code`
* **`POrder1`** (27): `Docid, Sno, VNo, VDate, VType, VPrefix, Site_Code, PartyCode, ItemCode,
  Qty, Unit, Rate, PerUnit, Amount, U_Name, U_EntDt, U_AE, IndentDocId, IndentSno,
  Specification, ConvRatio, WtQty, WtUnit, LogSite_Code, TaxStru, TaxAmt, Total`
* **`GIN`** (29): `Docid, VNo, VDate, VPrefix, VType, Site_Code, OCDocid, OCDate, PartyCode,
  PartyName, GodownCode, Remark, DebitNote, F4No, RateDiffDetail, D3Desp, GRNLineRej,
  POrdDocid, POrdDate, ChalNo, ChalDate, MemINVNo, MemInvDate, InspectedBy, ApprovedBy,
  U_Name, U_EntDt, U_AE, LogSite_Code`
* **`GodownMast`** (10): `Code, Name, ShortName, U_Name, U_EntDt, U_AE, DepartCode, SysYn,
  Site_Code, LogSite_Code`
* **`ItemGrp`** (14): `Code, Name, Type, Status, Site_Code, U_Name, U_EntDt, U_AE, RestCode,
  Choose_Limit, LogSite_Code, CatType, CommodityCode, PicPath`
* **`ItemCatMast`** (19): `Code, Name, RoundOff, AcName, U_Name, U_EntDt, U_AE, OutletYN,
  Flag, TaxStru, CatType, RestCode, DrCr, RevCode, Site_Code, LogSite_Code, TaxStruType,
  Status, TaxP`
* **`Item`** (9): `Code, Name, BarCode, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code,
  CommodityCode`
* **`BOM`** (17): `Site_Code, FinItem, FinQty, RawItem, RawQty, RawSno, U_Name, U_EntDt,
  U_AE, Waste, Cost, Total, SavedForQty, AppDate, WtUnit, LogSite_Code, RestCode`
* **`KClStk`** (16): `DocId, Sno, Vtype, VNo, Site_Code, Vprefix, Vdate, Item, Qty, Unit,
  DepartCode, Remarks, U_Name, U_EntDt, U_AE, LogSite_Code`
* **`UnitMast`** (8): `Name, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code, PriceType, Status`

Key vocabularies `[VERIFIED-VB6]`: stock direction = `QtyIss` vs `QtyRec`;
`Indent.ClearYN ∈ {'', 'Y'}` (L109259 / L109742); `ItemGrp.Type` /
`ItemMast.ItemType ∈ {'Store Item','Consumables',…}`; `ItemCatMast.Flag`;
`Stock.DelFlag` / `VoidYN` for voiding.

`Enviro` (222 columns) is edited wholesale by `Enviro Inventry`; the dispatcher reads
`Enviro.TouchScreen` at L477031 before every menu action. `[VERIFIED-VB6]`

---

## 14. Workflow

Mermaid: `07_Inventory\flowcharts\workflow.mmd`.

```
menu (hex 10 / &HC, gate "J") → MenuHelp.Option → var_188 → dispatch
  ├─ masters     FrmParty / DepartMast / FrmItemGroupMast* / FrmItemCatMast /
  │              FrmItemMastRaw / FrmConsumMast / Godown / frmPurEnviro
  │                 → SubGroup, Ledger, Depart, ItemGrp, ItemCatMast, ItemMast, BOM, Enviro
  ├─ requisition PIndent / pReqSlip        → Indent + Indent1
  ├─ purchasing  pPOrder                   → POrder + POrder1
  ├─ receiving   pMREntry                  → Stock + GIN
  ├─ billing     pPBill                    → Purch1 + Purch2 + Stock + Sale2 + SunTran + Ledger
  ├─ issuing     pGIss                     → Stock + Indent.ClearYN
  ├─ kitchen     kClStk / RsKitchenStk     → KClStk / Stock        (KClStk = 0 rows)
  ├─ transfer    FrmStockTransfer / RsStoreRecEntry / RsKitchenMaterial → Stock
  ├─ opening     FrmOPStock                → Stock
  ├─ reports     rInventRepView → <Reports>\<name>.ttx | .RPT   (10 keys have no file)
  └─ dead        Indent Register / Purchase Order Register / M.R. Register (no branch)
                  Location Master / Kitchen stock Transfer / Change Kitchen/Store
                  Requistion Slip Entry (no menu row)
```

---

## 15. Screenshots

10 PNGs in `screenshots\07_Inventory\` `[VERIFIED-CONFIG]`:
`06-Inventory_MenuTab.png`, `B032_Menu_20260928_195554.png`,
`C3_02_Inventory__Operations__Indent.png`,
`C3_02_Inventory__Operations__Purchase_.png`,
`C3_03_Inventory__Operations__MR_Entry.png`,
`C3_03_Inventory__Operations__Purchase_.png`,
`C3_04_Inventory__Operations__MR_Entry.png`,
`C3_04_Inventory__Operations__Purchase_.png`,
`C3_05_Inventory__Operations__Purchase_.png`,
`C3_S1_Inventory__Operations__Indent.png`

`screenshots\README.md` is a pointer only; images are never duplicated.

Captured: the Inventory menu tab, `Indent`, `Purchase Order`, `M.R. Entry`.
Not captured `[UNKNOWN]`: Purchase Bill, Requisition Slip, Stock Issue on Requisition,
Kitchen Closing Stock, Stock Transfer, Finish Material Receive Entry, Excise Invoice Cum
Gate Pass, Gravy Item Entry, **all 26 reports**, and **all 10 `Material Mgmt Setup`
masters**.

---

## 16. Test Cases

| ID | Scenario | Steps | Expected | Evidence |
|---|---|---|---|---|
| TC-I-01 | Dead report menu row | Material Mgmt → Reports → `Indent Register` | **nothing happens** (no dispatcher branch) | L297 / L476474 vs L476999–L480832 |
| TC-I-02 | Dead report menu row | … → `Purchase Order Register` | nothing happens | L298 / L476476 |
| TC-I-03 | Dead report menu row | … → `M.R. Register` | nothing happens | L303 / L476486 |
| TC-I-04 | Duplicate caption | … → `VAT Register III` (appears twice) | both open `VATRegisterIII`; `Form24AnnexureA` never opens | L308/L309, L476496/L476499, L478608/L478615 |
| TC-I-10 | Missing template | … → `Liquor Sale Report` | viewer opens, template not found (no `Liquor*` file) | L479258 + folder listing |
| TC-I-11 | Missing template | … → `Kitchen Stock Report I/R Basis` | template `KitchenStkRep.*` absent (only `KitchenStk.*`) | L479162 + folder listing |
| TC-I-12 | Missing template | … → `Cash/Credit Purchase` | `CashCreditPurch.*` absent (only `PurchCashCredit.rpt`) | L479194 + folder listing |
| TC-I-13 | Working report | … → `Stock In Hand` | `StockInHand.rpt` opens | L479228 + folder listing |
| TC-I-14 | Working report | … → `ABC Analysis` | `ABCAnalysis.rpt` opens | L478587 + folder listing |
| TC-I-15 | `.ttx` without `.rpt` | dispatch `Pending M.R.` | field-def step succeeds, `.RPT` open fails | L478573, `PurchBill.ttx` only |
| TC-I-16 | Path separator | trace `rInventRepView` open | `.ttx` path has `\` (L636046), `.RPT` path does **not** (L636048) | L636046/L636048 |
| TC-I-20 | Indent lifecycle | raise indent → issue against it | `Indent1` rows created; `Indent.ClearYN` becomes `'Y'` | L208436/L208486 → L109742 |
| TC-I-21 | Re-issue/void | cancel the issue | `ClearYN` reset to `''` via `Stock.ContraDocId` | L109259 |
| TC-I-22 | Purchase order validation | save with `Order No = 0` | `MsgBox "Order No Can Not Be 0"` | L211162 |
| TC-I-23 | Duplicate PO number | re-use an order no | `MsgBox "Duplicate Order No."` | L211206 / L214078 |
| TC-I-24 | Remove a PO row with stock | delete a line already received | `MsgBox "Can't Remove Row :Related Entry Exists In Stock"` | L211834 |
| TC-I-25 | Missing grid fields | PO with no item/qty/rate | `MsgBox "Item Required"` / `"Quantity Required"` / `"Rate Required"` | L213470 / L213512 / L213546 |
| TC-I-26 | Date lock | back-date into a locked period | **expected no message** — `DATELOCK` has 0 rows | L213326 + rowcounts |
| TC-I-27 | Purchase bill cascade | save a purchase bill | `Purch1`, `Purch2`, `Stock`, `Sale2`, `SunTran`, `Ledger` all written inside `BeginTrans` L73485 → `CommitTrans` L74061 | L73560/L73641/L73827/L73948/L73997 |
| TC-I-28 | Purchase bill delete | delete an existing bill | 6 tables deleted inside `BeginTrans` L72487 → `CommitTrans` L72551 | L72488–L72501 |
| TC-I-29 | Party ledger register | open Party Master ledger | `LEFT JOIN Site` returns NULL `Site_Desc` (Site = 0 rows) | L22258 + rowcounts |
| TC-I-30 | Item group code | add a second item group | code = `MAX(SUBSTRING(Code,3,4))+1` with `ISNUMERIC` guard | L51415 |
| TC-I-31 | Item Group outlet branch | open Item Group with `OutletCode` = `BANQ` then = `HO` | `HallItemGroupMast` vs `FrmItemGroupMastRaw` | L477929 |
| TC-I-32 | `Item  List` guard | click menu `Item  List` (2 spaces) | `FrmItemMast` opens via the L477693 variant | L477692/93, menu L122 |
| TC-I-33 | `Location Master` | look for a Location Master menu row | **no menu row exists** — the form is unreachable | L477752 vs 524-line menu file |
| TC-I-34 | `Requisition Slip` | click menu `Requisition Slip` | `pReqSlip` opens (live branch L478657); the misspelled key `Requistion Slip Entry` (L479138) is never matched | L281, L478657, L479138 |
| TC-I-35 | `Stock Transfer` naming | click `Stock Transfer` | `RsKitchenStk` opens, **not** `FrmStockTransfer` | L478663 |
| TC-I-36 | `Consumption Master` visibility | trace it through both menu builders | excluded by the L3636 query (`Flag<>'V'`), matched by L6629 (`Flag='V'`) | L476093, L475811, L3636, L6629 |
| TC-I-37 | Permission gate | attempt any inventory save as a non-`SA` user | no permission check occurs | `UserPermission` never read in inventory ranges |
| TC-I-38 | Excise gate pass | save an `Excise Invoice Cum Gate Pass` | `Stock` written; `TranTaxDetail` / `TranSunDetail` written but tables stay at 0 rows in this dataset | L607181 / L607206 + rowcounts |

---

## 17. Known Issues

Full detail in `07_Inventory\notes\notes.md`.

| ID | Severity | Issue |
|---|---|---|
| IN-1 | **High** | 3 menu rows with no dispatcher branch (`Indent Register`, `Purchase Order Register`, `M.R. Register`) **and** 8 keys with no menu row (`Pending M.R.`, `Pending Indent`, `Pending Purchase Order`, `Restaurant Issue Report`, `Location Master`, `Kitchen stock Transfer`, `Change Kitchen/Store`, `Requistion Slip Entry`) |
| IN-2 | **High** | Duplicate `VAT Register III` row makes `Form24 Annexure-A` unreachable — `var_124` caption override is never read |
| IN-3 | **Critical** | 10 of 26 report keys have no exact `.rpt` in `Reports\` |
| IN-4 | **High** | `LiquorSaleRep` — no file of any extension exists |
| IN-5 | **High** | `PurchBill.ttx` exists with no `PurchBill.rpt` |
| IN-6 | Medium | 2 hex-10 rows registered from `frmCompany` (L11647/L11653) instead of the module block ⇒ detached head rows L7/L10 |
| IN-7 | Medium | 8 whitespace/case-variant duplicate guards in the dispatcher (`Item List`/`Item  List`, `Stock Register`×3, …) |
| IN-8 | Low | Duplicate handler blocks (`Stock Register`, `Stock Summary`, `House Keeping Screen`) |
| IN-9 | Low | `Requisition Slip` (live, L478657) vs `Requistion Slip Entry` (dead, misspelled, L479138) |
| IN-10 | Medium | `.RPT` path built without `\` at **L636048** (L656549/L658123 do it correctly) |
| IN-11 | **Critical** | **0 declared foreign keys**; all cascades client-side (they *are* inside ADO transactions) |
| IN-12 | Medium | `MAX(SUBSTRING(...))` key allocation on `ItemGrp` / `ItemCatMast` / `GodownMast ∪ Depart` — collision-prone |
| IN-13 | **Critical** | Two incompatible `Voucher_Prefix` styles; the absolute-assignment style races across sessions; uniqueness enforced only by VB6 `Count(*)` |
| IN-14 | Medium | `Site` (0 rows) and `DATELOCK` (0 rows) ⇒ `LEFT JOIN` NULLs and an inert `Date Locked!` check |
| IN-15 | Medium | Dormant tables `KClStk`, `TranTaxDetail`, `TranSunDetail`, `DenominationDetail/Format`, `ShiftMast` all 0 rows ⇒ no regression baseline |
| IN-16 | Low | `Menu_Index` gaps (`&H1D`, `&H1F`, `&HD`, `&HE`, setup idx 7) — fingerprint of rows deleted after registration |

Also inherited (not module-specific): dispatcher writes a trace to **`C:\moduleFILE.TXT`**
on every menu click (**L477034**) and runs under `On Error Resume Next` (**L477022**), so a
failed SQL statement inside a menu handler is never surfaced to the user.
`[VERIFIED-VB6]`

---

## 18. Migration Notes

1. **Reconcile menu ↔ dispatch first — it is one shared list.** Rename the three dead report
   rows (`menu_tree_raw.txt` L297/L298/L303) to `Pending Indent` / `Pending Purchase Order` /
   `Pending M.R.`, or add the three missing `If` branches. Conversely decide whether
   `Restaurant Issue Report`, `Location Master`, `Kitchen stock Transfer`,
   `Change Kitchen/Store` should get menu rows. Today both sides are half-populated.
   `[VERIFIED-VB6]`
2. **Fix the duplicate `VAT Register III`** (menu L309 / registration L476499): either restore
   the caption `"Form24 Annexure-A"` in `menuHelp`, or make the dispatcher key on
   `Menu_Index` instead of `Caption`. `[VERIFIED-VB6]`
3. **Resolve 10 missing report templates.** Either rename the `.rpt` files to the keys
   (`KitchenStkRep`, `PurchaseReg`, `PurchaseSumm`, `CashCreditPurch`, `StockRegStore`,
   `StockSummStore`, `DailyStoreIssRpt`, `ExcessConsumption`, `StockSummaryP/SBasis`,
   `ProductionReport`) or retarget the keys. `LiquorSaleRep` needs a template authored or the
   menu row dropped. `[VERIFIED-CONFIG]`
4. **Add `PurchBill.rpt`** (or retarget `Pending M.R.` to an existing sibling). `[VERIFIED-CONFIG]`
5. **Declare foreign keys.** `foreign_keys.txt` is empty; minimum set: `Purch1.DocId` →
   `Purch2.DocId`, `Indent.DocId` → `Indent1.DocId`, `POrder.Docid` → `POrder1.Docid`,
   `Stock.Item` → `ItemMast.Code`, `Stock.GodownCode` → `GodownMast.Code`,
   `Stock.IndentDocId` → `Indent.DocId`, `Indent1.Item` → `ItemMast.Code`. Then the
   client-side `DELETE` lists in `queries.sql` become `ON DELETE` rules. `[VERIFIED-SQL]`
6. **Replace serial allocation with a sequence.** Unify the two styles (absolute vs `+1`) into
   `SEQUENCE`/`IDENTITY`. `[VERIFIED-VB6]`
7. **Parameterise everything** — all 1 224 statements are concatenated; several concatenate
   directly into `DELETE … WHERE DocID='` (L72497, L73491, L73496). `[VERIFIED-VB6]`
8. **Rewrite the `MAX(SUBSTRING(...))` key generators** (3 sites in this module) as sequences;
   drop the `ISNUMERIC` silent-skip guard. `[VERIFIED-VB6]`
9. **Decide the `Site` and `DATELOCK` story.** Either seed `Site` (the ledger register joins
   it) and populate `DATELOCK`, or remove the joins/checks. Do not port dead validation.
   `[VERIFIED-SQL]`
10. **Add permission checks.** No `UserPermission` column is read by this module; purchases,
    issues and stock transfers are ungated. Two schema columns (`CancelReservation`,
    `FOMDiscountAllowUpto`) exist solely as dead DDL. `[VERIFIED-VB6]`
11. **Fix the `.RPT` path builder** — always append `\` before the filename (L636048 is the
    one site that does not). `[VERIFIED-VB6]`
12. **Collapse the whitespace/case guard pairs** into a single normalised caption lookup
    (trim + case-fold) so `Item  List`, `Stock Register `, `Issue CheckList` are all handled by
    one code path. `[VERIFIED-VB6]`
13. **Establish a test baseline.** `KClStk`, `TranTaxDetail`, `TranSunDetail` are empty —
    Kitchen Closing Stock and the Excise Gate Pass have never been exercised against this
    dataset. Seed data before any parity test. `[VERIFIED-SQL]`
14. **Retire `C:\moduleFILE.TXT`** logging (L477034) and the blanket
    `On Error Resume Next` (L477022) — the latter hides every failed statement.
    `[VERIFIED-VB6]`
15. **Port shape (PyQt6) `[INFERRED]`:** one `MasterForm` factory reused for Party /
    Department / ItemGroup / ItemCategory / Item / ItemList / Consumption / Godown / Enviro;
    a `VoucherForm` base class for Indent / Requisition / POrder / MR / PurchaseBill /
    Issue / Transfer / OpeningStock (shared: grid validation, `Voucher_Prefix` sequence,
    `LastVou` cache, transaction wrapper); a `ReportViewer{template, params}`; and a single
    `stock_ledger` service owning `Stock` writes so `QtyIss`/`QtyRec` semantics are not
    re-implemented 9 times.
16. **Do not record credentials.** `UserMast.PASSWD` exists in the schema; it must never appear
    in this documentation set. `[VERIFIED-SQL]`
