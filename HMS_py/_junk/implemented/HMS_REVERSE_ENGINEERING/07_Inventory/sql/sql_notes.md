# 07_Inventory — SQL Notes

Sources: `18_Database\columns_dictionary.txt`, `tables_rowcounts.txt`,
`indexes_pks.txt`, `foreign_keys.txt`, `view_proc_definitions.txt`.
Line citations: `HMS_REVERSE_ENGINEERING\EXTRAS.text`.

`foreign_keys.txt` is **0 bytes** → **0 declared foreign keys in `MOONData2627`**
`[VERIFIED-SQL]`. Every cascade in this module lives in VB6 client code
(`07_Inventory\sql\queries.sql` sections A–L).

---

## 1. Tables written by this module (stock / purchase chain)

| Table | Rows | Columns | PK | Written by (EXTRAS.text) |
|---|---|---|---|---|
| `Stock` | **61 925** | 65 | `DocId,SNo` (`aaaaaStock_PK`) | `pPBill` L73827/L73888/L73910/L72497/L73506; `pMREntry` L216615/L216082/L216503; `pGIss` L109730/L109789/L109262/L109666/L109669; `FrmOPStock` L425700/L425367/L425652; `FrmStockTransfer` L452641/L452680/L452441/L452455/L452603/L452604; `RsStoreRecEntry` L588328/L587985/L588274; `RsKitchenStk` L591196/L591249/L590728/L590731/L591140/L591141; `RsKitchenMaterial` L607086/L607132/L606542/L606545/L607035/L607036; `kClStk` L110868 |
| `Purch1` | **880** | 36 | `DocId` | `pPBill` L73560 (INSERT), L72489/L73491/L110867 (DELETE) |
| `Purch2` | **3 826** | 53 | `DocId,SNo` | `pPBill` L73641/L73728 (INSERT), L72488/L73496 (DELETE) |
| `GIN` | **890** | 29 | `Docid` | `pMREntry` L216548 (INSERT), L216090/L216507 (DELETE) |
| `Indent` | **2 115** | 17 | `DocId` | `PIndent` L208436/L208040/L208415; `pReqSlip` L834236/L833870/L834199; `pGIss` L109742 (`ClearYN='Y'`), L109259 (`ClearYN=''`) |
| `Indent1` | **13 022** | 24 | `DocId,SNo` | `PIndent` L208486/L208031/L208414; `pReqSlip` L834277/L833871/L834204 |
| `POrder` | **13** | 29 | `Docid` | `pPOrder` L212494 (INSERT), L212027/L212446 (DELETE) |
| `POrder1` | **47** | 27 | `Docid,Sno` | `pPOrder` L212636 (INSERT), L212015/L212442 (DELETE) |
| `Sale2` | **66 055** | 19 | `DocId,Sno,SNo1` | `pPBill` L73948 (INSERT), L72490/L73487 (DELETE) |
| `SunTran` | **98 025** | 24 | `DocId,Sno` | `pPBill` L73997 (INSERT), L72493/L73501 (DELETE) |
| `KClStk` | **0** | 16 | `DocId,Sno` | `kClStk` L111182 (INSERT), L110869/L111146 (DELETE) |
| `Ledger` | **40 818** | 29 | `DocId,V_SNo` | `pPBill` L72501/L79422; `kClStk` L110866; `FrmParty` L22652/L22877/L22793/L22953 |
| `TranTaxDetail` | **0** | 19 | `DocId,Sno,SNo1` | `RsKitchenMaterial` L607181 (INSERT), L606547/L607037 (DELETE) |
| `TranSunDetail` | **0** | 13 | `Docid,Sno` | `RsKitchenMaterial` L607206 (INSERT), L606552/L607038 (DELETE) |
| `Voucher_Prefix.Start_Srl_No` | 171 rows | 10 | `V_Type,Date_From,Site_Code,LogSite_Code` | bumped at L74026, L109819, L111212, L208518, L212680, L216661, L425719, L452711, L452731, L588363, L591282, L591303, L607231, L607252, L834309, L22605, L22835 |
| `LastVou` | 22 | 7 | `UNAME,ENAME,DOCID,Site_Code` | `pPBill` L74043/L74050/L74051/L74052 (per-user voucher cache) |

`[VERIFIED-SQL]` for rows/columns/PKs; `[VERIFIED-VB6]` for the writers.

**Notable:** `TranTaxDetail` and `TranSunDetail` are empty even though
`RsKitchenMaterial` (Excise Invoice Cum Gate Pass) writes them — either the feature was never
used or the rows were purged. `[VERIFIED-SQL]`

---

## 2. Tables written by Material Mgmt Setup (hex `&HC`)

| Table | Rows | Columns | PK | Written by |
|---|---|---|---|---|
| `ItemMast` | **3 355** | 50 | `Code,RestCode` | `FrmItemMastRaw` L128888/L128457; `RsGravyItemEntry` L429598/L429318/L427590 |
| `ItemGrp` | **140** | 14 | `Code` | `FrmItemGroupMast` L51434/L51167/L51453 |
| `ItemCatMast` | **50** | 19 | `Code` | `FrmItemCatMast` L130245/L129943 |
| `Item` | **3 187** | 9 | `Code` | `FrmItemMast` L613510/L613261 |
| `ItemRate` | **718** | 11 | `ItemCode,RestCode,AppDate` | `RsGravyItemEntry` L429326 (DELETE) |
| `GodownMast` | **70** | 10 | `Code` | `Godown` L207115/L206928; also seeded by `DepartMast` L180153 |
| `Depart` | **73** | 74 | `Code` | `DepartMast` L180129/L179844 |
| `RevMast` | — | 34 | `Code` | `DepartMast` L180170; `FrmItemCatMast` L130272/L130332; delete L179845/L129953 |
| `UnitMast` | **32** | 8 | `Name,Site_Code,LogSite_Code` | `FrmItemMastRaw` L128987/L129004; `RsGravyItemEntry` L429642 |
| `SubGroup` | **3 238** | 79 | `SubCode`-family | `FrmParty` L22391 (INSERT, table name is a parameter), L22959 (DELETE) |
| `BOM` | **2 048** | 17 | `FinItem,RawSno,AppDate` | `FrmConsumMast` L57212/L56876/L57158; `RsGravyItemEntry` L427577/L427280/L427525 |
| `Voucher_Type` | **171** | 37 | `V_Type,Site_Code,LogSite_Code` | `DepartMast` L180234/L180258/L180282/L180306 (seeds `HKISS`,`HKIR`,`HKROP`,`HKOP`) |
| `RawConsumption` | **88 094** | 19 | `DocId,Sno` | `[UNKNOWN]` producer — not written by any hex `10` / `&HC` branch found |

`[VERIFIED-SQL]` + `[VERIFIED-VB6]`

---

## 3. Tables read (foreign to this module)

| Table | Rows | Purpose here | Evidence |
|---|---|---|---|
| `AcGroup` | 73 | ledger group join for Party Master | L20428, L21375, L22375 `[VERIFIED-VB6]` |
| `Ledger` | 40 818 | party outstanding / audit | L22131, L22140, L22258 `[VERIFIED-VB6]` |
| `SubGroupCurrBal` | 6 166 | party current balance | L22157 `[VERIFIED-VB6]` |
| `City` / `State` / `Country` | — | address pickers | L20434, L20435 `[VERIFIED-VB6]` |
| `TaxStru` | 56 | tax structure required on every purchase line (validated at L76880, L77517) | `[VERIFIED-SQL]` + `[VERIFIED-VB6]` |
| `Enviro` | 1 row / **222 columns** | dispatcher loads `Select * from Enviro` + `TouchScreen` at L477023/L477031; `Enviro Inventry` edits it | `[VERIFIED-SQL]` + `[VERIFIED-VB6]` |
| `Site` | **0 rows** | joined in the ledger register (L22258) and used as `Site_Code` filter throughout — **the table is empty**, so every `LEFT JOIN Site` yields NULL `Site_Desc` | `[VERIFIED-SQL]` |
| `DataLock` | **0 rows** (`DATELOCK`) | date-lock validation (`MsgBox "Date Locked!"` L112576, L213326) reads it | `[VERIFIED-SQL]` + `[VERIFIED-VB6]` |
| `menuHelp` / `UserModule` / `UserPermission` | 9 212 / 450 / 76 | menu registry + action permissions | `[VERIFIED-SQL]` |
| `RoomOcc`, `GuestFolio`, `PayCharge` | 11 464 / 11 043 / 28 550 | not touched by hex `10` | `[VERIFIED-SQL]` |

---

## 4. Views consumed

| View | Definition in `view_proc_definitions.txt` | Consumed by |
|---|---|---|
| `ViewSubgroup` | L54 | party pickers `[VERIFIED-SQL]` |
| `ViewBooking` | L28 | cross-module; not a hex-10 dependency `[VERIFIED-SQL]` |
| `RoomOccDet` | L25 | not a hex-10 dependency `[VERIFIED-SQL]` |

---

## 5. Shape of every statement

* built by string concatenation, **no `?` placeholders, no `Command` parameters**
  `[VERIFIED-VB6]` — all 1 224 extracted lines behave the same way
* always qualified with `Site_Code` / `LogSite_Code` (and often with the
  `LOGSITE_CODE='<site>' OR LOGSITE_CODE='HO'` two-site idiom, e.g. L20444, L50927)
* `DELETE` cascades performed by the client because there are **0 declared FKs**
  `[VERIFIED-SQL]`
* inventory save/delete routines **do** use ADO transactions — `BeginTrans` /
  `CommitTrans` / `RollbackTrans` (515 `RollbackTrans` hits codebase-wide). Per-form evidence:

  | Form | `BeginTrans` | `CommitTrans` | `RollbackTrans` |
  |---|---|---|---|
  | `pPBill` (L70625–L80458) | L72487, L73485, L74062, L74068 | L72551, L74061, L74064, L74070 | L72565, L74103 |
  | `pGIss` (L108102–L110808) | L109248, L109664 | L109265, L109827 | L109279, L109846 |
  | `kClStk` (L110809–L112651) | L110864, L111144 | L110872, L111217 | L110886, L111238 |
  | `PIndent` (L207648–L210585) | L208029, L208412 | L208052, L208522 | L208066, L208541 |
  | `pPOrder` (L210586–L214602) | L211997, L212440 | L212042, L212685 | L212058, L212705 |
  | `pMREntry` (L214603–L219214) | *(pair not located)* | L216099, L216666 | L216121, L216694 |
  | `FrmOPStock` (L424548–L426551) | L425363, L425645 | L425380, L425726 | L425398, L425745 |
  | `RsGravyItemEntry` (L428231–L430168) | *(pair not located)* | L429344, L429651 | L429362, L429670 |
  | `FrmStockTransfer` (L452276–L454520) | L452437, L452602 | L452464, L452735 | L452478, L452754 |
  | `pReqSlip` (L833098–L835728) | L833868, L834197 | *(pair not located)* | *(pair not located)* |
  | `RsStoreRecEntry` (L587256–L589534) | *(pair not located)* | L587989 | L588003 |
  | `RsKitchenStk` (L589535–L592562) | L590725, L591124 | L590733, L591307 | L590747, L591261, L591327 |

  `[VERIFIED-VB6]` — so the multi-table cascades are atomic **within** one form. In `pPBill`
  the whole unit is `BeginTrans` **L73485** → delete `Sale2`/`Purch1`/`Purch2` (L73487–L73499)
  → insert `Purch1` L73560 → `Stock` L73827 → `Sale2` L73948 → `SunTran` L73997 →
  `Voucher_Prefix` bump L74026 → `LastVou` L74043–L74058 → `CommitTrans` **L74061**
  (error path `RollbackTrans` L74103). So the serial bump **is** inside the committed unit —
  which is correct, but it also means a single row-level `CHECK` failure on `Stock` (65 cols)
  rolls back the whole bill. `[VERIFIED-VB6]`
* invoice/bill numbers come from `Voucher_Prefix.Start_Srl_No`. Two incompatible styles coexist
  `[VERIFIED-VB6]`:
  * **A — absolute assignment** `Start_Srl_No=<computed>`: L74026, L111212, L208518, L212680,
    L216661, L425719, L452711, L452731, L588363, L591282, L591303, L607231, L607252, L834309
    — a read-then-write race.
  * **B — single statement** `Start_Srl_No=Start_Srl_No+1`: L109819 (`pGIss`), plus L22605,
    L22835, L40954, L41210 elsewhere in the app.
* `On Error Resume Next` at the top of the dispatcher (L477022) means a failed statement
  inside a menu handler is never surfaced to the user `[VERIFIED-VB6]`

### Key-allocation anti-pattern (L51415)

```sql
SELECT IsNull(MAX(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode FROM ItemGrp
 WHERE ISNUMERIC(SUBSTRING(Code,3,4)) = 1 AND SITE_CODE = '<site>'
```

`MAX(SUBSTRING(...))`-based code allocation is used for `ItemGrp` (L51415) and mirrored for
other masters. Non-numeric codes are silently excluded by `ISNUMERIC(...) = 1`, so two
concurrent inserts can allocate the same code. `[VERIFIED-VB6]`

### Delete cascade — Purchase Bill (L72487–L72565)

```
L72487 BeginTrans
L72488 DELETE Purch2   L72489 DELETE Purch1   L72490 DELETE Sale2
L72493 DELETE SunTran  L72497 DELETE Stock    L72501 DELETE Ledger
L72551 CommitTrans     L72565 RollbackTrans   (error path)
```

Six statements inside one ADO transaction — but note the transaction is opened on
`unk_597CBD`, a connection object, while other statements on the form run on
`Me.Connection…`. `[VERIFIED-VB6]`

---

## 6. Empty / dormant tables relevant to this module

| Table | Rows | Note |
|---|---|---|
| `KClStk` | 0 | Kitchen Closing Stock never wrote a row `[VERIFIED-SQL]` |
| `TranTaxDetail` | 0 | Excise/gate-pass tax lines `[VERIFIED-SQL]` |
| `TranSunDetail` | 0 | Excise/gate-pass sundry lines `[VERIFIED-SQL]` |
| `DenominationDetail` | 0 | write sites L602932, L602973 (outside hex 10) `[VERIFIED-VB6]` |
| `DenominationFormat` | 0 | `[VERIFIED-SQL]` |
| `DATELOCK` | 0 | date-lock validation is inert `[VERIFIED-SQL]` |
| `Site` | 0 | every `LEFT JOIN Site` returns NULL `[VERIFIED-SQL]` |
| `ShiftMast` | 0 | `ShiftCode` column on `Stock` has no master rows `[VERIFIED-SQL]` |

By contrast the live chain is `Stock` 61 925 → `Purch2` 3 826 → `Purch1` 880 → `GIN` 890 →
`Indent1` 13 022 → `Indent` 2 115 → `POrder1` 47 → `POrder` 13. `[VERIFIED-SQL]`

---

## 7. Cross-references

* statements: `07_Inventory\sql\queries.sql`
* screen / menu / dispatch: `07_Inventory\screens\screens.md`
* report keys: `07_Inventory\reports\reports.md`
* findings: `07_Inventory\notes\notes.md`
