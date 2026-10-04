# 06_House_Keeping — Notes, Findings, Known Issues

Evidence tags: `[VERIFIED-VB6]`, `[VERIFIED-SQL]`, `[VERIFIED-CONFIG]`, `[INFERRED]`, `[UNKNOWN]`.
Line numbers = `HMS_REVERSE_ENGINEERING\EXTRAS.text` unless stated.

---

## HK-1 — `Item Issued On Cleaning` is a dead menu item **and** its table is missing
* Module: 06_House_Keeping · Screen: `House Keeping Screen` group
* Steps: House Keeping → Transactions → `Item Issued On Cleaning`
* Expected: `FrmItemIssuedOnCleaning` (object range L604299–L605913) opens
* Actual: **no `If (var_188 = "Item Issued On Cleaning")` branch exists anywhere in the
  dispatcher L476999–L480832** `[VERIFIED-VB6]` → the click falls through, nothing happens.
* Registered at **L476414** (`Menu_Index = 7`), visible at `menu_tree_raw.txt` **L268**.
* Second, independent defect: the form's only table **`DepartWiseItemIssueList` does not exist
  in `MOONData2627`** — absent from `columns_dictionary.txt` and `tables_rowcounts.txt`
  (277 tables catalogued) `[VERIFIED-SQL]`. Referenced at L604385, L604488, L604515, L604538,
  L604607, L604659, L605666.
* Severity: **High** (feature entirely unavailable) — but currently harmless because the two
  defects cancel: the menu click never reaches the SQL.
* Possible cause: the feature was de-scoped after the table was dropped, and the menu row and
  dispatcher branch were removed on only one side. `[INFERRED]`

---

## HK-2 — Orphan menu parent: `Block Master` hangs off a `Setup` group that does not exist
* Steps: House Keeping → (look for Setup) → Block Master
* Expected: a `Setup` group containing `Block Master`
* Actual: `menu_tree_raw.txt` **L259** = `F|0|Setup|Block Master`, but **no `F|3||Setup` row
  exists** anywhere in the file. Nearest rows are `F|4||House Keeping` (L257),
  `F|3||Transactions` (L258), `F|3||Transactions` (L260). `[VERIFIED-VB6]`
* Registration confirms the literal parent: **L476396**
  `Proc_165_0_14C1708("Block Master", &HF, 0, "Setup", vbNullString, 0, "HouseSet", 1)`.
* Severity: **Medium** — rendering depends on whether the menu builder creates a missing
  parent implicitly. `[UNKNOWN]`
* Screenshot evidence: none captured for the Setup path `[UNKNOWN]`

---

## HK-3 — Duplicate `Transactions` group header
* `menu_tree_raw.txt` **L258** and **L260** both read `F|3||Transactions`.
* Registration matches: **L476394** (`Module_Name = "SetHK"`) and **L476398**
  (`Module_Name = "TransHK"`). Two distinct rows, identical caption. `[VERIFIED-VB6]`
* Severity: Medium — a user sees the group twice, or entries under the first header are
  attributed to the wrong `Module_Name`.
* Children are all registered under parent caption `"Transactions"` (L476400–L476418), so they
  bind to whichever `Transactions` row the builder resolves first. `[INFERRED]`

---

## HK-4 — `ComplaintList` report file does not exist
* Steps: House Keeping → Reports → Complaint Detail
* Expected: `rRepHousePreview` opens `ComplaintList.rpt`
* Dispatch: **L478518–L478524**, `GRepFormName = "ComplaintList"` (L478520) `[VERIFIED-VB6]`
* Actual: **no `ComplaintList.rpt` or `.ttx` in `<HMS2526>\Reports`**; present instead are
  `ComplaintDetail.rpt` and `Complaint.rpt` `[VERIFIED-CONFIG]`
* Viewer builds `MemVar_1F810B4 & "\" & var_88 & ".ttx"` then `… & ".RPT"` (L120779–L120781)
  `[VERIFIED-VB6]`
* Severity: **High** — report fails to open unless a translation exists `[UNKNOWN]`.
* Related: `rRepHouse` (L122609–L124927) is **never constructed** by the dispatcher
  `[VERIFIED-VB6]` — likely the missing twin.

---

## HK-5 — `.RPT` path built without a separator
* **L120779** `CreateFieldDefFile(var_C4, MemVar_1F810B4 & "\" & var_88 & ".ttx", &HFF)` — has `\`
* **L120781** `0.Method_arg_1C (MemVar_1F810B4 & var_C0 & ".RPT", var_A4, var_B8)` — **no `\`**
* Compare `rFomRepView` **L663352** and `rRepReserv` **L166067**, which both use `"\" & …`.
* Severity: Medium — works only because `var_C0` presumably already starts with `\`. `[INFERRED]`

---

## HK-6 — `House Keeping Op.Stock Entry` registered with a unique `Opt2 = 2`
* **L476408** 3rd parameter = `2`; every other HK entry leaf uses `0`, reports use `1`,
  groups use `3`, the module header uses `4`. `[VERIFIED-VB6]`
* Registrar maps `Opt2` → `Flag` (L475811) and `PARAM_STR` (L475810):

  | Opt2 | Flag | PARAM_STR |
  |---|---|---|
  | 0 | `E` | `AEDP` |
  | 1 | `R` | `***P` |
  | **2** | **`V`** | **`''`** |
  | 3 | `N` | `''` |
  | 4 (Opt1 ≤ 45) | `N` | `''` |

* Consequences `[VERIFIED-VB6]`:
  * The list builder at **L3636** filters `Flag <> 'V'` → this row is **excluded from that query**.
  * It is uniquely matched by **L6629**
    (`… Opt3=0 AND Opt4=0 AND Opt2<>0 AND Flag='V' AND UserName='SA'`).
  * `PARAM_STR` is empty while sibling entry leaves carry `AEDP`.
* Severity: Medium — one menu item behaves differently from all its siblings.
* Screenshot: `C2_House_Keeping__Operations__House_Kee.png` shows the screen opens (so at least
  one code path reaches it). `[VERIFIED-UI]`

---

## HK-7 — Replace-on-edit with no primary key on `RoomCheckOutStatus`
* `RoomCheckOutStatus` has **no PK declared** (`indexes_pks.txt`) `[VERIFIED-SQL]`
* Code does `DELETE … WHERE FolioNoDocId=… AND RoomCode=…` (L628528 / L628557) followed by
  `INSERT …` (L628538 / L628566). `[VERIFIED-VB6]`
* Severity: **High** — the delete can affect 0 rows (if the key differs only by case/whitespace)
  and then the insert adds a duplicate. The dashboard at L628771 wraps the column in
  `MAX(IsNull(RC.ChkOutClearanceYN,''))` which hides duplicates rather than preventing them.
* Same pattern on `ComplaintCategory` (no PK) `[VERIFIED-SQL]`.

---

## HK-8 — `OR` inside a JOIN predicate duplicates rows
* **L628771** `LEFT JOIN PayCharge P ON P.FolionoDocID = R.DocId OR P.RelatedFolioNoDocId = R.DocId`
* A `RoomOcc` row with 2 matching `PayCharge` rows joins to 4 rows; `MAX()` is used to collapse
  them, so the symptom is masked, but any non-aggregated column would be wrong.
* Severity: Medium. `[VERIFIED-VB6]`

---

## HK-9 — Voucher serial allocation is a read-modify-write race
* Read: **L82378** / **L85243** (`SELECT … Start_Srl_No …`)
* Write: **L82398** / **L85263** (`UPDATE Voucher_Prefix SET Start_Srl_No=…`)
* No `BeginTrans`/`CommitTrans` observed around the pair. Surrounding transaction `[UNKNOWN]`.
* Defence is application-level only: `Duplicate Voucher No.` MsgBox (L82893, L84472) checks
  `SELECT Count(*) FROM STOCK WHERE DocID=…` (L82307, L83800, L84465). `[VERIFIED-VB6]`
* Severity: **Critical** under multi-user load.

---

## HK-10 — Every House Keeping table is empty
`[VERIFIED-SQL tables_rowcounts.txt]`

| Table | Rows |
|---|---|
| `ComplaintCategory` | 0 |
| `ComplaintDetail` | 0 |
| `LostFoundDetail` | 0 |
| `BlockMast` | 0 |
| `RoomCheckOutStatus` | 0 |
| `RoomBlockOut` | 1 |
| `Stock` | 61 925 (shared with Inventory) |
| `RoomMast` | 86 |
| `RoomOcc` | 11 464 |

* Severity: Medium for migration — the module has never been exercised against this dataset, so
  **there is no regression baseline**. `[INFERRED]`
* The `RoomStatus` report would print 86 rooms; `ComplaintList` would print 0 rows.

---

## HK-11 — `MAX(SUBSTRING(...))` key generation
| Table | Expression | Line |
|---|---|---|
| `ComplaintDetail` | `IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1` | L481791 |
| `ComplaintCategory` | `… SUBSTRING(Code,3,3) …` | L481812 |
| `LostFoundDetail` | `… SUBSTRING(Code,3,6) …` | L450172 |
| `BlockMast` | `… SUBSTRING(Code,3,3) …` | L798376 |

`[VERIFIED-VB6]` Assumes a fixed 2-character prefix; not concurrency-safe; no supporting index.
Severity: Medium.

---

## HK-12 — Audit-date coercion, not rejection
* **L80605 / L80623** `MsgBox "Date Can not be less then Audit date,So Audit date (<d>) will be stored here"`
* The user's date is **overwritten** by `MemVar_1F810EC`, not refused. `[VERIFIED-VB6]`
* Severity: Low — but it means the stored date differs from what was typed, with only an
  informational box.

---

## HK-13 — Six House Keeping forms have no dispatch hit
`FrmGuestWakeUp` (L86469–L87705), `FrmHouGuestMsg` (L87706–L88968), `HKRoomOpStk`
(L125147–L127292), `HWIHistory` (L164888–L165803), `FrmHouseStatus` (L724969–L726130),
`rRepHouse` (L122609–L124927). `[VERIFIED-VB6]`
* Severity: Low (dead code) — but `HKIssRec` (L84054–L86468) also has **no** dispatcher hit
  even though `Issue/Recd. Entry` maps to `FrmStockTransfer` instead (L479070–L479075).
  ⇒ **`HKIssRec` may be the intended target of `Issue/Recd. Entry`.** `[INFERRED]`

---

## HK-14 — Two registrations for the same caption
`House Keeping Screen` has **two** dispatcher branches (L478717–L478722 and L479076–L479081),
both `New HHouseKeeping`. `[VERIFIED-VB6]` Harmless but confirms copy-paste maintenance.
Severity: Low.

---

## Screenshot coverage
10 PNGs in `screenshots\06_House_Keeping\` `[VERIFIED-CONFIG]`:
`05-HouseKeeping_MenuTab.png`, `B032_Menu_*.png`, `C2_Complaint_Clearance.png`,
`C2_House_Keeping__Operations__Claim_Ent.png`, `C2_House_Keeping__Operations__Complaint.png`,
`C2_House_Keeping__Operations__House_Kee.png`, `C3_01_Complain_Master.png`,
`C3_02_House_Keeping__Operations__Compl.png`, `C3_P5S3_House_Keeping__Operations__Compl.png`,
`C3_S1_House_Keeping__Operations__Compl.png`.

Not captured `[UNKNOWN]`: Block Master, Lost / Found Entry, Issue/Recd. Entry, Check Out
Clearance Screen, Room Block, Item Issued On Cleaning, both Reports.

---

## Open questions
1. Which menu builder consumes `Flag = 'V'`? L6629 matches this row uniquely; the L3636 builder
   excludes it. `[UNKNOWN]`
2. What did `HKIssRec` / `rRepHouse` / `FrmHouseStatus` / `HWIHistory` / `HKRoomOpStk` /
   `FrmGuestWakeUp` / `FrmHouGuestMsg` wire to before? `[UNKNOWN]`
3. Is `RoomMast.MaidStation` used by this module's cleaning logic? Not referenced in L80459–L81618.
   `[UNKNOWN]`
4. Where is the fiscal-year window computed for `V.Date Not Between Current Fin. Year`
   (L82934)? `[UNKNOWN]`
5. What is `'HO'` exactly — a logsite row, a sentinel, or a site id? Not present in any
   extract read so far. `[UNKNOWN]`
