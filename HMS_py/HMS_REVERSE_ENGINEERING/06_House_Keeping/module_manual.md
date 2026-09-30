# MODULE NAME — 06_House_Keeping (House Keeping)

Evidence tags: `[VERIFIED-VB6]`, `[VERIFIED-SQL]`, `[VERIFIED-UI]`, `[VERIFIED-CONFIG]`,
`[INFERRED]`, `[UNKNOWN]`. Line numbers without a path = `HMS_REVERSE_ENGINEERING\EXTRAS.text`;
`menu_tree_raw.txt` = `HMS_REVERSE_ENGINEERING\19_VB6_Logic\menu_tree_raw.txt`.

---

## 1. Purpose

Room-status housekeeping (clean / dirty / out-of-order), housekeeping store stock (opening
stock, issue and receipt), complaint lifecycle (log → clear), lost-and-found and claims,
check-out clearance tracking, and room blocking.

Menu module **hex `0xF` = 15**, **17 registered items** (1 module + 2 groups + 10 transaction
leaves + 1 report group + 2 report leaves + 1 orphan-parent row), group codes `HouseKeeping`,
`SetHK`, `HouseSet`, `TransHK`, `ReportsHK`, `HouseREP`. `[VERIFIED-VB6]`

Owns three things no other module owns:
1. **`RoomMast.RoomStat`** — written at L80884
2. **`RoomBlockOut`** — written at L80755 / L80890, deleted at L80743 / L80860
3. **Check-out clearance flags** — `RoomCheckOutStatus` (L628538 / L628566)

Consumes `STOCK` (61 925 rows) for its vouchers. `[VERIFIED-SQL]`

---

## 2. Menu Structure

Source: `menu_tree_raw.txt` **L257–L273** `[VERIFIED-VB6]`.

```
F|4||House Keeping                                      L257  (module, opt1=&HF=15, opt2=4)
├─ F|3||Transactions                                   L258  (group, Module_Name "SetHK")
│  └─ F|0|Setup|Block Master                           L259  *** orphan parent: no "Setup" group row
├─ F|3||Transactions                                   L260  (duplicate caption, Module_Name "TransHK")
│  ├─ F|0|Transactions|Complaint Master                L261
│  ├─ F|0|Transactions|Complaint Clearance             L262
│  ├─ F|0|Transactions|Lost / Found Entry              L263
│  ├─ F|0|Transactions|Claim Entry                     L264
│  ├─ F|2|Transactions|House Keeping Op.Stock Entry    L265  *** opt2=2 -> Flag 'V'
│  ├─ F|0|Transactions|Issue/Recd. Entry               L266
│  ├─ F|0|Transactions|House Keeping Screen            L267
│  ├─ F|0|Transactions|Item Issued On Cleaning         L268  *** no dispatcher branch
│  ├─ F|0|Transactions|Check Out Clearance Screen      L269
│  └─ F|0|Transactions|Room Block                      L270
├─ F|3||Reports                                        L271  (Module_Name "ReportsHK")
│  ├─ F|1|Reports|Room Status Report                   L272
│  └─ F|1|Reports|Complaint Detail                     L273
```

Registration block: **L476390–L476425**, gated by
`InStr(2, MemVar_1F81228, "I", 0) <> 0` (**L476390**). `[VERIFIED-VB6]`

Menu storage: `menuHelp` 9 212 rows, `UserModule` 450 rows. `[VERIFIED-SQL]`
`Flag` derivation from `Opt2`: `0→'E'`, `1→'R'`, `2→'V'`, `3→'N'`, `4 & Opt1≤45→'N'`,
else `'V'` (**L475805 / L475811**). `PARAM_STR`: `0→'AEDP'`, `1→'***P'`, else `''`
(**L475810**). `[VERIFIED-VB6]`

---

## 3. Screens

Full table with dispatch lines, object ranges and screenshots:
`06_House_Keeping\screens\screens.md`.

| Screen | Form object | Object range |
|---|---|---|
| Housekeeping board | `HHouseKeeping` | L80459–L81618 |
| Opening stock voucher | `HKHouseOpStk` | L81996–L84053 |
| Issue / receipt voucher | `HKIssRec` **(never dispatched)** | L84054–L86468 |
| Complaint master | `FrmComplaintMast` | L481015–L482172 |
| Complaint clearance | `FrmComplaintClearing` | L448800–L449832 |
| Lost / found | `FrmLostFound` | L449833–L450496 |
| Claim entry | `FrmClaimEntry` | L450497–L451328 |
| Check-out clearance | `HRoomCheckOutClearance` | L628394–L629139 |
| Room block | `HKRoomBlock` | L831468–L833097 |
| Block master | `frmBlockMast` | L797827–L798637 |
| Item issued on cleaning | `FrmItemIssuedOnCleaning` **(unreachable)** | L604299–L605913 |
| Report viewer | `rRepHousePreview` | L120613–L122609 |
| *(dead twin)* | `rRepHouse` | L122609–L124927 |
| *(dead)* | `FrmChangeDepart` (pre-step for Op.Stock) | dispatched at L479059 |

Other House Keeping forms with **no dispatch hit**: `FrmGuestWakeUp` L86469–L87705,
`FrmHouGuestMsg` L87706–L88968, `HKRoomOpStk` L125147–L127292, `HWIHistory` L164888–L165803,
`FrmHouseStatus` L724969–L726130. `[VERIFIED-VB6]`

---

## 4. Masters

**Owned by this module:**

| Master | Table | Rows | PK | Notes |
|---|---|---|---|---|
| Block master | `BlockMast` | **0** | `Code` | L798396 / L798415 / L798140 |
| Complaint category | `ComplaintCategory` | **0** | **none** | L481839 |

**Consumed (read-only) from elsewhere:**

| Master | Table | Rows | Read at |
|---|---|---|---|
| Rooms | `RoomMast` | 86 | L81197, L81253, L628617, L628768, L80884 |
| Occupancy | `RoomOcc` | 11 464 | L81239, L81256, L628754, L628771 |
| Departments | `Depart` | 73 | L82473, L85622, L85628, L481371 |
| Store locations | `GodownMast` | 70 | L85652, L604646 |
| Items / groups / rates | `ItemMast` 3 355, `ItemGrp` 140, `ItemRate` 718 | | L82492, L85644, L605571 |
| Voucher config | `Voucher_Type` 171, `Voucher_Prefix` 171 | | L82038, L82378, L82398 |
| Folio charges | `PayCharge` | 28 550 | L628771 |

`[VERIFIED-SQL]` for rows; `[VERIFIED-VB6]` for the readers.

---

## 5. Transactions

| Transaction | Tables written | Evidence |
|---|---|---|
| Set / clear out-of-order | `RoomBlockOut` insert + delete, `RoomMast.RoomStat` update | L80755, L80890, L80743, L80860, L80884 `[VERIFIED-VB6]` |
| Opening stock voucher | `Stock` (Qtyrec), `Voucher_Prefix`, `LastVou` | L82366, L82398, L82405–L82420 `[VERIFIED-VB6]` |
| Issue voucher | `Stock` (QtyIss), `Voucher_Prefix`, `LastVou` | L85187, L85263, L85270–L85285 `[VERIFIED-VB6]` |
| Receipt voucher | `Stock` (Qtyrec), same | L85229 `[VERIFIED-VB6]` |
| Complaint log / amend | `ComplaintDetail` | L481847, L481871 `[VERIFIED-VB6]` |
| Complaint clear / reopen | `ComplaintDetail.Status`, `ClearingDate`, `ClearingPerson` | L449123, L449141 `[VERIFIED-VB6]` |
| Complaint delete | `ComplaintDetail` | L448856, L481515 `[VERIFIED-VB6]` |
| Category CRUD | `ComplaintCategory` | L481839 `[VERIFIED-VB6]` |
| Lost / found entry | `LostFoundDetail` | L450191, L450226, L449914 `[VERIFIED-VB6]` |
| Claim delivery | `LostFoundDetail.Status='Delivered'` | L450964 `[VERIFIED-VB6]` |
| Block master CRUD | `BlockMast` | L798396, L798415, L798140 `[VERIFIED-VB6]` |
| Check-out clearance | `RoomCheckOutStatus` (delete + insert) | L628528/628538, L628557/628566 `[VERIFIED-VB6]` |
| *(unreachable)* item issue list | `DepartWiseItemIssueList` | L604385–L605666 — **table does not exist** `[VERIFIED-SQL]` |

No `BeginTrans`/`CommitTrans` was observed around any of these. Surrounding transaction
`[UNKNOWN]`.

---

## 6. Operations

| Op | Menu item | Form | Notes |
|---|---|---|---|
| Add / Edit / Delete | Complaint Master | `FrmComplaintMast` | code via `MAX(SUBSTRING)` L481812 |
| Add / Edit / Delete | Complaint Clearance | `FrmComplaintClearing` | status flip `Solved` ⇄ `UnSolved` |
| Add / Edit / Delete | Lost / Found Entry | `FrmLostFound` | code via `MAX(SUBSTRING)` L450172 |
| Add / Edit | Claim Entry | `FrmClaimEntry` | `Status='Delivered'` L450964 |
| Add / Edit / Delete | Block Master | `frmBlockMast` | uniqueness on `Name` and `ShortName` L798596/L798609 |
| Add / Edit / Delete | House Keeping Op.Stock Entry | `HKHouseOpStk` | `FrmChangeDepart` pre-step when `MemVar_1F811B8` empty (L479058–L479064) |
| Issue / Receive | Issue/Recd. Entry | **`FrmStockTransfer`** (not `HKIssRec`) | L479070–L479075 |
| Room status change | House Keeping Screen | `HHouseKeeping` | room board; also writes `RoomBlockOut` |
| Mark cleared | Check Out Clearance Screen | `HRoomCheckOutClearance` | delete+insert on `RoomCheckOutStatus` |
| Block / unblock rooms | Room Block | `HKRoomBlock` | uses `BlockMast`; writes `RoomBlockOut` |
| — | Item Issued On Cleaning | `FrmItemIssuedOnCleaning` | **dead** — no dispatch branch |

---

## 7. Reports

Detail in `06_House_Keeping\reports\reports.md`.

| Menu | Viewer | `GRepFormName` | Dispatch | `.rpt` in `Reports\` |
|---|---|---|---|---|
| Room Status Report | `rRepHousePreview` | `RoomStatus` | L478511–L478517 | ✅ `RoomStatus.rpt` |
| Complaint Detail | `rRepHousePreview` | `ComplaintList` | L478518–L478524 | ❌ **missing** (only `ComplaintDetail.rpt`, `Complaint.rpt`) |

Engine Crystal Reports; path = `Analysis.ini` key `2` = `<HMS2526>\Reports`.
File built at **L120779** (`.ttx`, with `\`) and **L120781** (`.RPT`, **without** `\`).
`[VERIFIED-VB6]` + `[VERIFIED-CONFIG]`

Report data source **L121505 / L121509**:
```sql
SELECT C.Code, C.CDate, C.CTime, CC.Category, C.Description,
       Depart.Name, C.UName, C.Status
  FROM (ComplaintDetail C INNER JOIN Depart ON C.Depart = Depart.Code)
  INNER JOIN ComplaintCategory CC ON C.Category = CC.Code
```
Both source tables hold **0 rows** `[VERIFIED-SQL]` ⇒ the report prints nothing today.

`rRepHouse` (L122609–L124927) is **never constructed**. `LostFound.rpt` exists but is
referenced by no dispatcher branch. `[VERIFIED-VB6]`

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
Note: the `Flag = 'V'` row produced by `House Keeping Op.Stock Entry` (`Opt2 = 2`) is
**excluded by this query** and is instead matched by **L6629**
(`… Opt3=0 AND Opt4=0 AND Opt2<>0 AND Flag='V' AND UserName='SA'`). `[VERIFIED-VB6]`

Module gate: **`"I"`** at **L476390**. `[VERIFIED-VB6]`

**Layer 2 — action permissions** (`UserPermission`, 76 rows) `[VERIFIED-SQL]`:
none of `CancelReservation`, `CancelGuestBill`, `ChangeRoomDtl`, `DeleteGuestCharges`,
`ChangeGuestCharges`, `ChangeGuestProfile`, `RefundCashCardAmt`, `EditItemInKOT`,
`FreeItemAllow`, `FacilityBilling`, `POSSettlementYN` is read anywhere inside the House Keeping
object ranges L448800–L451328, L481015–L482172, L604299–L605913, L628394–L629139,
L797827–L798637, L80459–L86468, L831468–L833097. `[VERIFIED-VB6]`

→ **No House Keeping action is permission-gated.** `[VERIFIED-VB6]`

Delete confirmations are UI-only: `MsgBox "Delete Record ?"` at L448851, L449909, L481510.
`[VERIFIED-VB6]`

---

## 9. Business Rules

| # | Rule | Evidence |
|---|---|---|
| HK-BR-1 | A room must be vacant before a housekeeping action: `MsgBox "Sorry Room Is Not vacant"` | L80720 `[VERIFIED-VB6]` |
| HK-BR-2 | Dates earlier than the audit date are **coerced**, not rejected: `"Date Can not be less then Audit date,So Audit date (<d>) will be stored here"` | L80605, L80623 `[VERIFIED-VB6]` |
| HK-BR-3 | Leaving out-of-order requires two confirmations: `"Change Out of Order room to Vacant?"` then `"Clear Comments?"` | L80818, L80819 `[VERIFIED-VB6]` |
| HK-BR-4 | `RoomMast` must be populated first: `MsgBox "First Fill Room Master"` | L81278 `[VERIFIED-VB6]` |
| HK-BR-5 | The department must be HK-configured: `MsgBox "House Keeping Not Configured for selected Department"` | L82488 (and L125683) `[VERIFIED-VB6]` |
| HK-BR-6 | Voucher number must be non-zero: `MsgBox "Vr. No Can Not Be 0"` | L82848, L84427 `[VERIFIED-VB6]` |
| HK-BR-7 | Voucher numbers must be unique: `MsgBox "Duplicate Voucher No."` (checked against `STOCK`) | L82893, L84472; guards L82307, L83800, L84465 `[VERIFIED-VB6]` |
| HK-BR-8 | Voucher date must fall in the current fiscal year: `MsgBox "V.Date Not Between Current Fin. Year"` | L82934, L84513 `[VERIFIED-VB6]` |
| HK-BR-9 | Item line must be present: `MsgBox "Fill Item Name "` | L82275 `[VERIFIED-VB6]` |
| HK-BR-10 | Quantity required per row: `"Quantity Required in Row n"` | L83822 `[VERIFIED-VB6]` |
| HK-BR-11 | Duplicate lines rejected: `MsgBox "Duplicate Item Not Allowed"` | L84022 `[VERIFIED-VB6]` |
| HK-BR-12 | `BlockMast.Name` and `.ShortName` must be unique (per logsite) | L798596, L798609 `[VERIFIED-VB6]` |
| HK-BR-13 | Complaint uniqueness guards on `Category` and `Description` | L481804, L481833, L482074, L482088 `[VERIFIED-VB6]` |
| HK-BR-14 | Complaint status vocabulary `Solved` / `UnSolved`; reopening clears `ClearingDate` to `NULL` | L449123, L449141 `[VERIFIED-VB6]` |
| HK-BR-15 | Lost/found lifecycle ends at `Status='Delivered'` with `ClaimedBy`, `ContactNo`, `DDate` | L450964 `[VERIFIED-VB6]` |
| HK-BR-16 | Countable rooms = `RoomMast.Type='RO' AND InclCount='Y'`; occupancy excludes `Type IN ('O','C')` | L81253, L81239, L628754, L628768 `[VERIFIED-VB6]` |
| HK-BR-17 | `RoomBlockOut.Type='O'` is the out-of-order marker consumed by `04_Reservation` (L97971); `Type='M'` also read at L81181 | L80743, L81181, L97971 `[VERIFIED-VB6]` |
| HK-BR-18 | Housekeeping voucher prefix = `'O'+Depart.ShortName` (opening), `'I'`/`'R'+ShortName` (issue/receipt) | L82473, L85622, L85628 `[VERIFIED-VB6]` |
| HK-BR-19 | HK store items are `ItemMast.ItemType='Store'` with `TYPE IN ('Store Item','Consumables')` at both item and group level | L82492, L85644 `[VERIFIED-VB6]` |
| HK-BR-20 | HK godowns = `Depart.RestType='House Keeping'` joined to `GodownMast` | L85652 `[VERIFIED-VB6]` |

---

## 10. VB6 Logic

Detail: `06_House_Keeping\logic\vb6_logic.md`.

* Registration **L476390–L476425** (gate `"I"`, 17 calls) `[VERIFIED-VB6]`
* Dispatcher **L476999–L480832** — HK branches at L478511, L478518, L478681, L478687,
  L478693, L478699, L478705, L478717, L478723, L478729, L479057, L479070, L479076;
  **no branch for `Item Issued On Cleaning`** `[VERIFIED-VB6]`
* `HHouseKeeping` board logic §3 of `logic\vb6_logic.md` `[VERIFIED-VB6]`
* Voucher machinery (shared by `HKHouseOpStk` / `HKIssRec`): `Voucher_Type` + `Voucher_Prefix`
  read-modify-write + `LastVou` cache `[VERIFIED-VB6]`
* Replace-on-edit idiom (delete + insert) on `RoomCheckOutStatus` and `RoomBlockOut`
  `[VERIFIED-VB6]`
* `MAX(SUBSTRING(...))` key generation on 4 tables `[VERIFIED-VB6]`
* Debug trace appended to `C:\moduleFILE.TXT` on every menu click (**L477034**)
  `[VERIFIED-VB6]`

---

## 11. SQL Logic

All statements in `06_House_Keeping\sql\queries.sql`; interpretation in `sql\sql_notes.md`.

* Every statement is string-concatenated — **zero parameters** `[VERIFIED-VB6]`
* Site filters: `Site_Code` + `LogSite_Code`, plus the `(LOGSITE_CODE='x' OR LOGSITE_CODE='HO')`
  read idiom in 20+ statements (L81181, L81197, L81253, L81258, L628609…L798623, L831640,
  L481371, L481375) `[VERIFIED-VB6]`
* **Zero declared FKs** (`foreign_keys.txt` = 0 bytes) → all cascades are client-side
  `[VERIFIED-SQL]`
* Views consumed: none directly by this module `[VERIFIED-VB6]`
* Missing table: `DepartWiseItemIssueList` (7 references, table absent) `[VERIFIED-SQL]`
* No PK: `ComplaintCategory`, `RoomCheckOutStatus` `[VERIFIED-SQL]`

---

## 12. Tables

| Table | Rows | PK | Role |
|---|---|---|---|
| `BlockMast` | 0 | `Code` | block/cause master (owned) |
| `ComplaintCategory` | 0 | **none** | complaint categories (owned) |
| `ComplaintDetail` | 0 | `Code` | complaints (owned) |
| `LostFoundDetail` | 0 | `Code` | lost & found + claims (owned) |
| `RoomCheckOutStatus` | 0 | **none** | clearance flags (owned) |
| `RoomBlockOut` | **1** | `RoomCode,FromDate,VTime` | OOO blocks (owned; read by Reservation) |
| `RoomMast.RoomStat` | 86 rooms | — | column owned by this module |
| `Stock` | 61 925 | `DocId,Sno` | shared stock ledger |
| `Voucher_Prefix` | 171 | — | serial allocation |
| `Voucher_Type` | 171 | — | voucher config |
| `LastVou` | 22 | — | per-user last-document cache |
| `DepartWiseItemIssueList` | **table absent** | — | referenced 7× by dead code |

`[VERIFIED-SQL]`

---

## 13. Fields

Full inventories in `sql\sql_notes.md` §4. Summary of the owned tables:

* **`BlockMast`** (9): `Code, Name, ShortName, Status, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code`
* **`ComplaintCategory`** (6): `Code, Category, Site_Code, U_EntDt, U_AE, LogSite_Code`
* **`ComplaintDetail`** (15): `Code, CDate, CTime, Category, Description, Depart, UName, Status,
  ClearingDate, ClearingPerson, UName2, Site_Code, U_EntDt, U_AE, LogSite_Code`
* **`LostFoundDetail`** (21): `Code, FDate, FTime, FArea, FindBy, Description, UName1,
  ClaimedBy, ContactNo, OtherDetail, DeliveredBy, DDate, Status, Site_Code, U_EntDt, U_AE,
  LogSite_Code, AppValue, FFDate, FFTime, FPlace`
* **`RoomBlockOut`** (12): `RoomCode, Reasons, FromDate, ToDate, Type, GuestProf, Site_Code,
  U_Name, U_EntDt, U_AE, VTime, LogSite_Code`
* **`RoomCheckOutStatus`** (8): `FolioNoDocId, RoomCode, ChkOutClearanceYN, U_AE, U_Name,
  U_EntDt, Site_Code, LogSite_Code`
* **`Stock`** (65): see `sql\sql_notes.md` — direction carried by `QtyIss` vs `QtyRec`

Status vocabularies `[VERIFIED-VB6]`: `ComplaintDetail.Status ∈ {Solved, UnSolved}`;
`LostFoundDetail.Status` ends at `Delivered`; `RoomBlockOut.Type ∈ {O, M}`;
`RoomMast.RoomStat` written from the board grid.

---

## 14. Workflow

Mermaid: `06_House_Keeping\flowcharts\workflow.mmd`.

```
menu (hex 0xF, gate "I") → MenuHelp.Option → dispatch
  ├─ board      HHouseKeeping  → RoomStat + RoomBlockOut
  ├─ vouchers   HKHouseOpStk / HKIssRec → Stock + Voucher_Prefix + LastVou
  ├─ complaints FrmComplaintMast / FrmComplaintClearing → ComplaintDetail
  ├─ lost/found FrmLostFound / FrmClaimEntry → LostFoundDetail
  ├─ clearance  HRoomCheckOutClearance → RoomCheckOutStatus
  ├─ blocking   HKRoomBlock → RoomBlockOut  ──► 04_Reservation availability
  ├─ reports    rRepHousePreview → <Reports>\RoomStatus.RPT | ComplaintList.RPT
  └─ dead       Item Issued On Cleaning (no branch; DepartWiseItemIssueList missing)
```

---

## 15. Screenshots

10 PNGs in `screenshots\06_House_Keeping\` `[VERIFIED-CONFIG]`:
`05-HouseKeeping_MenuTab.png`, `B032_Menu_20260928_195552.png`, `C2_Complaint_Clearance.png`,
`C2_House_Keeping__Operations__Claim_Ent.png`, `C2_House_Keeping__Operations__Complaint.png`,
`C2_House_Keeping__Operations__House_Kee.png`, `C3_01_Complain_Master.png`,
`C3_02_House_Keeping__Operations__Compl.png`, `C3_P5S3_House_Keeping__Operations__Compl.png`,
`C3_S1_House_Keeping__Operations__Compl.png`

`screenshots\README.md` is a pointer only; images are never duplicated.

Not captured `[UNKNOWN]`: Block Master, Lost / Found Entry, Issue/Recd. Entry, Check Out
Clearance Screen, Room Block, Item Issued On Cleaning, both Reports, the Setup group.

---

## 16. Test Cases

| ID | Scenario | Steps | Expected | Evidence |
|---|---|---|---|---|
| TC-H-01 | Board opens with empty `RoomMast` | run `House Keeping Screen` with no rooms | `MsgBox "First Fill Room Master"` | L81278 `[VERIFIED-VB6]` |
| TC-H-02 | Act on an occupied room | pick an in-house room on the board | `MsgBox "Sorry Room Is Not vacant"` | L80720 |
| TC-H-03 | Date before audit date | enter yesterday | message shown **and** the stored date becomes the audit date | L80605 / L80623 |
| TC-H-04 | Return OOO room to service | confirm the two prompts | `RoomBlockOut` row deleted, `RoomMast.RoomStat` updated | L80818→L80819→L80743→L80884 |
| TC-H-05 | Reservation sees the block | block a room in HK, then check availability in `04_Reservation` | room excluded | L80755 → L97971 |
| TC-H-06 | Open stock for an unconfigured department | pick a department without HK config | `MsgBox "House Keeping Not Configured for selected Department"` | L82488 |
| TC-H-07 | Zero voucher number | save with `Vr No = 0` | `MsgBox "Vr. No Can Not Be 0"` | L82848 |
| TC-H-08 | Duplicate voucher number | re-use an existing doc id | `MsgBox "Duplicate Voucher No."` | L82893, guard L82307 |
| TC-H-09 | Voucher dated outside fiscal year | date = next FY | `MsgBox "V.Date Not Between Current Fin. Year"` | L82934 |
| TC-H-10 | Empty item line | save with no item | `MsgBox "Fill Item Name "` | L82275 |
| TC-H-11 | Duplicate item line | add the same item twice | `MsgBox "Duplicate Item Not Allowed"` | L84022 |
| TC-H-12 | Complaint lifecycle | create → clear → reopen | `Status` `UnSolved→Solved→UnSolved`; `ClearingDate` set then `NULL` | L481847, L449123, L449141 |
| TC-H-13 | Duplicate complaint category | insert same `Category` twice | blocked by the `Count(*)` guard | L481804 / L481833 |
| TC-H-14 | Lost → claim | create item then deliver it | `Status='Delivered'`, `DDate`/`ClaimedBy`/`ContactNo` set | L450964 |
| TC-H-15 | Block master uniqueness | duplicate `Name` or `ShortName` | blocked | L798596 / L798609 |
| TC-H-16 | Check-out clearance | clear a folio twice | exactly 1 row remains (delete+insert) — **if** the delete matches; table has no PK | L628528+L628538, `indexes_pks.txt` |
| TC-H-17 | Dead menu item | click `Item Issued On Cleaning` | **nothing happens** (no dispatch branch) | L476414 vs dispatcher L476999–L480832 |
| TC-H-18 | Orphan parent | look for the `Setup` group above `Block Master` | group missing from `menu_tree_raw.txt` | L259 vs no `F|3||Setup` |
| TC-H-19 | Room Status Report | House Keeping → Reports → Room Status Report | `RoomStatus.rpt` opens (86 rooms) | L478513 + folder listing |
| TC-H-20 | Complaint Detail report | House Keeping → Reports → Complaint Detail | expected failure: `ComplaintList.rpt` absent; source tables empty | L478520 + folder listing + rowcounts |
| TC-H-21 | `Opt2=2` row visibility | trace `House Keeping Op.Stock Entry` through both menu builders | excluded by the L3636 query (`Flag<>'V'`), matched by L6629 (`Flag='V'`) | L476408, L475811, L3636, L6629 |
| TC-H-22 | Permission gate | attempt any HK action as a non-`SA` user | no permission check occurs | `UserPermission` never read in HK ranges |

---

## 17. Known Issues

Full detail in `06_House_Keeping\notes\notes.md`.

| ID | Severity | Issue |
|---|---|---|
| HK-1 | **High** | `Item Issued On Cleaning` has no dispatcher branch **and** its table `DepartWiseItemIssueList` does not exist |
| HK-2 | Medium | `Block Master` parented to a `Setup` group that does not exist (L259 / L476396) |
| HK-3 | Medium | Duplicate `Transactions` group header (L258 / L260; `SetHK` vs `TransHK`) |
| HK-4 | **High** | `GRepFormName = "ComplaintList"` has no matching `.rpt` (only `ComplaintDetail.rpt`) |
| HK-5 | Medium | `.RPT` path built without `\` at L120781 (unlike L663352 / L166067) |
| HK-6 | Medium | `House Keeping Op.Stock Entry` registered with `Opt2=2` → unique `Flag='V'`, empty `PARAM_STR` |
| HK-7 | **High** | `RoomCheckOutStatus` and `ComplaintCategory` have **no PK**; code relies on delete+insert |
| HK-8 | Medium | `OR` inside a JOIN predicate at L628771 duplicates rows before `MAX()` |
| HK-9 | **Critical** | `Voucher_Prefix.Start_Srl_No` read-modify-write with no observed transaction |
| HK-10 | Medium | All module tables empty (0/0/0/0/0) except `RoomBlockOut`=1 ⇒ no regression baseline |
| HK-11 | Medium | `MAX(SUBSTRING(...))` key generation on 4 tables — collision-prone |
| HK-12 | Low | Audit-date coercion silently replaces the user's date (L80605/L80623) |
| HK-13 | Low | 7 House Keeping forms have no dispatch hit (`HKIssRec`, `rRepHouse`, `FrmGuestWakeUp`, `FrmHouGuestMsg`, `HKRoomOpStk`, `HWIHistory`, `FrmHouseStatus`) |
| HK-14 | Low | `House Keeping Screen` registered in the dispatcher twice (L478717, L479076) |
| HK-15 | Medium | No `UserPermission` check anywhere in the module ⇒ all HK actions are ungated |
| HK-16 | Medium | Dispatcher appends a trace to `C:\moduleFILE.TXT` on every menu click (L477034) |

---

## 18. Migration Notes

1. **Delete or re-wire `Item Issued On Cleaning` first.** Decide: (a) drop the menu row
   `menu_tree_raw.txt` L268 and registration L476414, or (b) create `DepartWiseItemIssueList`
   with the 10 columns inferred at `sql\queries.sql` §H **and** add the dispatcher branch.
   Today it is double-dead. `[VERIFIED-VB6]` + `[VERIFIED-SQL]`
2. **Fix `ComplaintList` → `ComplaintDetail`** (or add a `ComplaintList.rpt` alias) before
   porting the report. `[VERIFIED-CONFIG]`
3. **Add primary keys** to `ComplaintCategory` and `RoomCheckOutStatus`, then replace the
   delete+insert idiom with UPSERT. `[VERIFIED-SQL]`
4. **Declare foreign keys.** `foreign_keys.txt` is empty; e.g. `ComplaintDetail.Category` →
   `ComplaintCategory.Code`, `ComplaintDetail.Depart` → `Depart.Code`,
   `RoomBlockOut.RoomCode` → `RoomMast.Code`, `Stock.Item` → `ItemMast.Code`. `[VERIFIED-SQL]`
5. **Replace serial allocation with a sequence.** Wrap the read of
   `Voucher_Prefix.Start_Srl_No` and the following `UPDATE` in one transaction, or better,
   use `SEQUENCE`/`IDENTITY`. The current pattern (L82378→L82398, L85243→L85263) races.
   `[VERIFIED-VB6]`
6. **Parameterise everything** — all statements in `queries.sql` are concatenated.
   `[VERIFIED-VB6]`
7. **Model the `'HO'` logsite sentinel explicitly** (20+ read predicates). Reads fall back to
   `'HO'`; writes never use it. `[VERIFIED-VB6]`
8. **Rewrite the `MAX(SUBSTRING(...))` key generators** (4 tables) as sequences; they assume a
   fixed 2-character prefix and are not concurrency-safe. `[VERIFIED-VB6]`
9. **Fix the JOIN with `OR`** at L628771 — split into two LEFT JOINs with `COALESCE`, or
   pre-aggregate `PayCharge` per folio. `[VERIFIED-VB6]`
10. **Add permission checks.** No `UserPermission` column is read by this module; if HK actions
    (delete complaint, clear complaint, block room) should be gated, wire it now.
    `[VERIFIED-VB6]`
11. **Reconcile the duplicate `Transactions` group** (`SetHK` vs `TransHK`) and create the
    missing `Setup` group, or re-parent `Block Master` to `Transactions`. `[VERIFIED-VB6]`
12. **Establish a test baseline.** All 5 owned tables are empty in `MOONData2627` — seed
    sample complaints, lost/found items, blocks and clearance rows before any parity test.
    `[VERIFIED-SQL]`
13. **Retire `C:\moduleFILE.TXT`** logging (L477034). `[VERIFIED-VB6]`
14. **Port shape (PyQt6) `[INFERRED]`:** one `HousekeepingBoard` (room grid + status actions),
    one `StockVoucherForm` reused for opening/issue/receipt with a `direction` field,
    `ComplaintList/ComplaintClearance`, `LostFoundList/ClaimForm`, `CheckOutClearance`,
    `BlockMaster`, `RoomBlockForm`, plus a `ReportViewer{template, params}`.
15. **Do not record credentials.** `UserMast.PASSWD` exists in the schema; it must never appear
    in this documentation set. `[VERIFIED-SQL]`
