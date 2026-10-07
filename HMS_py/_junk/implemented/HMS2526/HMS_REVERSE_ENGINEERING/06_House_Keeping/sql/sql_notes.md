# 06_House_Keeping — SQL Notes

Sources: `18_Database\columns_dictionary.txt`, `tables_rowcounts.txt`,
`indexes_pks.txt`, `foreign_keys.txt`, `view_proc_definitions.txt`.
`foreign_keys.txt` is **0 bytes** → **0 declared foreign keys** in `MOONData2627`
`[VERIFIED-SQL]`. All cascades live in VB6 client code.

---

## 1. Tables owned / written by this module

| Table | Rows | PK | Written by (EXTRAS.text) |
|---|---|---|---|
| `BlockMast` | **0** | `Code` (`PK_BlockMast`) | `FrmBlockMast` L798396 / L798415 / L798140 |
| `ComplaintCategory` | **0** | — (no PK listed) | `FrmComplaintMast` L481839 |
| `ComplaintDetail` | **0** | `Code` (`aaaaaComplaintDetail_PK`) | L481847 / L481871 / L449123 / L449141 / L448856 / L481515 |
| `LostFoundDetail` | **0** | `Code` (`aaaaaLostFoundDetail_PK`) | `FrmLostFound` L450191 / L450226 / L449914; `FrmClaimEntry` L450964 |
| `RoomBlockOut` | **1** | `RoomCode,FromDate,VTime` | `HHouseKeeping` L80755 / L80890 / L80743 / L80860; `HKRoomBlock` |
| `RoomCheckOutStatus` | **0** | — (no PK listed) | `HRoomCheckOutClearance` L628538 / L628566 / L628528 / L628557 |
| `RoomMast.RoomStat` (column) | 86 rooms | `Type,Code,RestCode,LogSite_Code` | **updated** by `HHouseKeeping` L80884 |
| `Stock` | **61 925** | `DocId,Sno` (`aaaaaStock_PK`) | `HKHouseOpStk` L82366 / L82327; `HKIssRec` L85187 / L85229 |
| `Voucher_Prefix.Start_Srl_No` | 171 | — | L82398 / L85263 |
| `LastVou` | 22 | — | L82405 / L82414 / L82420 (per-user cache) |

`[VERIFIED-SQL]` for rows/PKs; `[VERIFIED-VB6]` for the writers.

**Every House Keeping transactional table except `Stock` is empty.**
`ComplaintCategory` 0, `ComplaintDetail` 0, `LostFoundDetail` 0, `BlockMast` 0,
`RoomCheckOutStatus` 0, `RoomBlockOut` 1. `[VERIFIED-SQL]`

---

## 2. Tables read (foreign to this module)

| Table | Rows | Purpose here |
|---|---|---|
| `RoomOcc` | 11 464 | in-house / occupancy counts (L81239, L81256, L628754, L628771) |
| `PayCharge` | 28 550 | bill number on the clearance dashboard (L628771) |
| `Depart` | 73 | department short name → voucher prefix (L82473, L85622, L85628); `RestType='House Keeping'` (L85652) |
| `GodownMast` | 70 | HK store locations (L85652, L604646…) |
| `ItemMast` | 3 355 | store-item picker (L82492, L85644) |
| `ItemGrp` | 140 | item group join in the picker (L82492) |
| `ItemRate` | 718 | rate lookup (L605571) |
| `Voucher_Type` | 171 | `Number_Method`, `NCat`, description (L82038, L82378, L82481, L85636) |
| `menuHelp` / `UserModule` / `UserPermission` | 9 212 / 450 / 76 | menu + permissions |

`[VERIFIED-SQL]`

---

## 3. Table that does not exist

**`DepartWiseItemIssueList`** is referenced in 7 statements
(L604385, L604488, L604515, L604538, L604607, L604659, L605666) but is **absent from both
`columns_dictionary.txt` and `tables_rowcounts.txt`** (277 tables catalogued).
`[VERIFIED-SQL]`

Its columns, inferred from the INSERT at L604538 `[INFERRED]`:
`Sno, Site_Code, Item, FrDepart, ToDepart, IssQty, U_Name, U_EntDt, U_AE, LogSite_Code`
plus `LogSite_Code` used in the WHERE clauses.

Owner form `FrmItemIssuedOnCleaning` is itself unreachable (no dispatcher branch).
Both defects cancel out at run time: the menu item does nothing, so the missing table
is never queried. `[VERIFIED-VB6]` + `[VERIFIED-SQL]`

---

## 4. Column inventories

### `BlockMast` — 9 columns `[VERIFIED-SQL]`
`Code, Name, ShortName, Status, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code`
PK `Code`. Index `PK_BlockMast`.

### `ComplaintCategory` — 6 columns `[VERIFIED-SQL]`
`Code, Category, Site_Code, U_EntDt, U_AE, LogSite_Code`
**No PK declared.**

### `ComplaintDetail` — 15 columns `[VERIFIED-SQL]`
`Code, CDate, CTime, Category, Description, Depart, UName, Status,
 ClearingDate, ClearingPerson, UName2, Site_Code, U_EntDt, U_AE, LogSite_Code`
PK `Code`.
`Status` values observed in VB6: `'Solved'`, `'UnSolved'` (L449123 / L449141).
`ClearingDate` is set to `NULL` on re-open. `[VERIFIED-VB6]`

### `LostFoundDetail` — 21 columns `[VERIFIED-SQL]`
`Code, FDate, FTime, FArea, FindBy, Description, UName1, ClaimedBy, ContactNo,
 OtherDetail, DeliveredBy, DDate, Status, Site_Code, U_EntDt, U_AE, LogSite_Code,
 AppValue, FFDate, FFTime, FPlace`
PK `Code`.
`Status` value observed: `'Delivered'` (L450964); initial value comes from the INSERT (L450191).
`[VERIFIED-VB6]`

### `RoomBlockOut` — 12 columns `[VERIFIED-SQL]`
`RoomCode, Reasons, FromDate, ToDate, Type, GuestProf, Site_Code,
 U_Name, U_EntDt, U_AE, VTime, LogSite_Code`
PK `RoomCode,FromDate,VTime`.
`Type` values observed: `'O'` (out of order), `'M'` (L81181 `Type IN ('O','M')`).
`[VERIFIED-VB6]`

### `RoomCheckOutStatus` — 8 columns `[VERIFIED-SQL]`
`FolioNoDocId, RoomCode, ChkOutClearanceYN, U_AE, U_Name, U_EntDt,
 Site_Code, LogSite_Code`
**No PK declared.**
`ChkOutClearanceYN` read with `IsNull(…,'')` at L628771. `[VERIFIED-VB6]`

### `Stock` — 65 columns `[VERIFIED-SQL]`
`DocId, Sno, Vtype, VNo, Site_Code, Vprefix, Vdate, PartyCode, RestCode, RoomCat,
 RoomType, RoomNo, ContraDocId, ContraSno, Item, QtyIss, QtyRec, Unit, Rate, Amount,
 TaxPer, TaxAmt, DiscPer, DiscAmt, VoidYN, Remarks, KOTDocId, KOTSno, VTime,
 U_Name, U_EntDt, U_AE, Total, DiscApp, RoundOff, DepartCode, GodownCode, ChalQty,
 RecdQty, AccQty, RejQty, RecdUnit, Specification, ItemRate, DelFlag, LandVal,
 ConvRatio, IndentDocId, IndentSNo, IssQty, IssueUnit, LogSite_Code, FreeSno,
 SchemeCode, SeqNo, Company, ExpDate, MfdDate, ItemRestCode, ShiftCode, MRP,
 SChrgApp, SChrgPer, SChrgAmt, RefDocId`
PK `DocId,Sno`.
**Direction is encoded by which quantity column is populated**, not by a flag:
`QtyIss` (L85187) vs `Qtyrec` (L82366, L85229) vs `IssQty` (L604538 in a different table).
`[VERIFIED-VB6]`

### `RoomMast` — 24 columns (the ones this module touches)
`Type, Code, Name, RoomCat, Extension, MultPer, RevCode, MaidStation, InclCount,
 ConRoom1..4, RestCode, TaxStru, RoomStat, Site_Code, U_Name, U_EntDt, U_AE,
 HallRent, PicPath, LogSite_Code, DoorLockID`
`RoomStat` is written at L80884. `Type='RO'` + `InclCount='Y'` selects countable rooms
(L81253, L628768). `MaidStation` exists but is not referenced in this module
`[UNKNOWN]` whether it is used elsewhere.
`[VERIFIED-SQL]` + `[VERIFIED-VB6]`

### `Depart` — 74 columns; relevant subset
`Code, Name, ShortName, RestType, LogSite_Code, …`
`RestType = 'House Keeping'` identifies HK departments (L85652).
`ShortName` is prefixed `'O'` (opening, L82473) or `'I'`/`'R'` (issue/receipt, L85622/L85628)
to build the voucher type code. `[VERIFIED-VB6]`

---

## 5. Code-generation pattern (a migration hazard)

All new keys are generated by `Max(substring)` scans:

| Table | Expression | Line | Tail width |
|---|---|---|---|
| `ComplaintDetail` | `IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1` | L481791 | 4 |
| `ComplaintCategory` | `… SUBSTRING(Code,3,3) …` | L481812 | 3 |
| `LostFoundDetail` | `… SUBSTRING(Code,3,6) …` | L450172 | 6 |
| `BlockMast` | `… SUBSTRING(Code,3,3) …` | L798376 | 3 |

`[VERIFIED-VB6]` · `SUBSTRING(Code, 3, n)` assumes a **fixed 2-character prefix**.
These are `MAX()`-based, not sequences → concurrent inserts can collide.
No unique constraint beyond the PK is present. `[VERIFIED-SQL]`

---

## 6. The `HO` logsite idiom

Dozens of reads use `(LOGSITE_CODE = '<current>' OR LOGSITE_CODE = 'HO')`:
L81181, L81197, L81253, L81258, L628609, L628617, L628642, L628651, L628677,
L628686, L628774, L798031, L798035, L798220, L798276, L798596, L798609, L798623,
L831640, L481371, L481375. `[VERIFIED-VB6]`

`'HO'` is a **shared/global site marker** — reads fall back to it, but **writes never do**
(all inserts use the current `Site_Code`/`LogSite_Code`). `[INFERRED]` `'HO'` holds
house/global master data common to every site.

---

## 7. Replace-on-edit (delete + insert) patterns

| Table | Delete | Insert | Suggested migration |
|---|---|---|---|
| `RoomCheckOutStatus` | L628528, L628557 | L628538, L628566 | UPSERT on `(FolioNoDocId, RoomCode)` |
| `RoomBlockOut` (type `O`) | L80743 | L80755 | UPSERT on `(RoomCode, Type, FromDate, VTime)` |
| `Stock` | L82088 | L82366 | `DELETE+INSERT` inside one transaction, or `MERGE` |
| `LASTVOU` | — | L82420 (after count at L82405) | replace with `SEQUENCE` / `IDENTITY` |

`[VERIFIED-VB6]`

---

## 8. Voucher serial allocation — race condition

Read-modify-write with **no observed transaction**:
`SELECT … Start_Srl_No …` (L82378 / L85243) → `UPDATE Voucher_Prefix SET Start_Srl_No=…`
(L82398 / L85263). `[VERIFIED-VB6]` / surrounding transaction `[UNKNOWN]`

Under concurrency two users can read the same `Start_Srl_No` and produce duplicate
voucher numbers. The `Duplicate Voucher No.` MsgBox (L82893, L84472) is the only defence —
it is an application-level check, not a DB constraint.
`Duplicate Voucher No.` is checked against `STOCK` (`SELECT Count(*) FROM STOCK WHERE DocID=…`,
L82307/L83800/L84465). `[VERIFIED-VB6]`

`LastVou` (22 rows) caches the last doc id per `UNAME`+`ENAME` — a UX convenience only.
`[VERIFIED-SQL]`

---

## 9. Date / fiscal-year guards

* `V.Date Not Between Current Fin. Year` — L82934, L84513 `[VERIFIED-VB6]`
* `Date Can not be less then Audit date…` — L80605, L80623: the typed date is
  **replaced** by `MemVar_1F810EC`, not rejected. `[VERIFIED-VB6]`
* `Vr. No Can Not Be 0` — L82848, L84427, L83687, L84465 `[VERIFIED-VB6]`

The fiscal-year window itself is computed in VB6 (not visible in these statements)
`[UNKNOWN]` — candidates are `Enviro` (222 columns) or `MemVar_1F810EC`.

---

## 10. Views consumed

| View | Definition | Used at |
|---|---|---|
| `RoomOccDet` | `18_Database\view_proc_definitions.txt` L25 — `RoomOcc` + `GuestFolio` | not referenced directly by HK code found so far `[UNKNOWN]` |
| `ViewBooking` | same file L28 | read by `04_Reservation` |
| `ViewSubgroup` | same file L54 | read by Inventory |

House Keeping queries base tables directly. `[VERIFIED-VB6]`

---

## 11. Findings (SQL-specific)

| ID | Finding | Evidence |
|---|---|---|
| S-1 | `DepartWiseItemIssueList` missing from the DB but referenced 7× | dictionary + L604385…L605666 |
| S-2 | `ComplaintCategory` has **no primary key** | `indexes_pks.txt` `[VERIFIED-SQL]` |
| S-3 | `RoomCheckOutStatus` has **no primary key** — the delete+insert idiom can duplicate rows | `indexes_pks.txt` + L628528/628538 |
| S-4 | Zero declared FKs → nothing stops an `Orphan RoomBlockOut` / `Orphan ComplaintDetail` | `foreign_keys.txt` = 0 bytes |
| S-5 | All module tables empty except `Stock` (61 925) and `RoomBlockOut` (1) | `tables_rowcounts.txt` |
| S-6 | `MAX(substring)` key generation → collision risk under concurrency | L481791, L481812, L450172, L798376 |
| S-7 | `OR` inside a JOIN predicate at L628771 duplicates `RoomOcc` rows before `MAX()` aggregation | L628771 |
| S-8 | No parameterised statement anywhere in the module | all of `queries.sql` |
