# 06_House_Keeping — Reports

Engine and file-resolution mechanism are identical to `04_Reservation\reports\reports.md`
§"Report engine" and are not repeated here. Summary:

```
MenuHelp.Option  ->  dispatcher  ->  viewer form + GRepFormName
                  ->  CreateFieldDefFile  ReportPath & "\" & <name> & ".ttx"
                  ->  Method_arg_1C       ReportPath & "\" & <name> & ".RPT"
ReportPath = Analysis.ini key 2 = <HMS2526>\Reports   [VERIFIED-CONFIG]
```

`rRepHousePreview` does it at **EXTRAS.text L120779–L120781**; `rFomRepView` at
**L663351–L663352**. `[VERIFIED-VB6]`

---

## A. Reports reachable from menu hex `0xF` (House Keeping)

| Menu line | Caption | Viewer | `GRepFormName` | Dispatch | `.rpt` present? | `.ttx` present? |
|---|---|---|---|---|---|---|
| L272 | Room Status Report | `New rRepHousePreview` | `RoomStatus` | L478511–L478517 | ✅ `RoomStatus.rpt` | ❌ |
| L273 | Complaint Detail | `New rRepHousePreview` | `ComplaintList` | L478518–L478524 | ❌ **MISSING** (closest: `ComplaintDetail.rpt`, `Complaint.rpt`) | ❌ |

`[VERIFIED-VB6]` for dispatch; `[VERIFIED-CONFIG]` for folder listing.

### Report group metadata
* Group `Reports` registered with `Module_Name = "ReportsHK"` — L476420
* Children `Room Status Report` / `Complaint Detail` registered with
  `Module_Name = "HouseREP"`, `Menu_Index` 3 and 4 — L476422, L476424
* Both children are registered with 3rd parameter (`Opt2`) `= 1`, which the registrar maps to
  **`Flag = 'R'`** via `IIf((arg_14 = 1), "R", …)` (L475805 / L475811) and to
  `PARAM_STR = '***P'` (L475810). That is exactly what the menu builder uses to pick the
  `Rep` icon: `IIf(Flag = "E", "Frm", IIf(Flag = "R", "Rep", …))` (L3651).
  `[VERIFIED-VB6]`

### Registrar mapping from `Opt2` → `Flag` (L475805 / L475811) `[VERIFIED-VB6]`

| 3rd param (`Opt2`) | `Flag` | `PARAM_STR` (L475810) | Used by |
|---|---|---|---|
| `0` | `'E'` | `'AEDP'` | entry forms (most HK leaves, `Block Master`) |
| `1` | `'R'` | `'***P'` | reports (`Room Status Report`, `Complaint Detail`) |
| `2` | `'V'` | `''` | **`House Keeping Op.Stock Entry` only (L476408)** |
| `3` | `'N'` | `''` | group rows (`Transactions` L476394/L476398, `Reports` L476420) |
| `4` and `Opt1 <= 45` | `'N'` | `''` | module header (L476392, `Opt1 = &HF = 15`) |
| otherwise | `'V'` | `''` | — |

Consequences of the `Opt2 = 2` row `[VERIFIED-VB6]`:
* The list builder at **L3636** filters `Flag <> 'V'` → this row is **excluded from that query**.
* It *is* selected by **L6629**
  (`SELECT Opt1, Opt2 FROM menuHelp WHERE Opt3=0 AND Opt4=0 AND Opt2<>0 AND Flag='V' AND UserName='SA'`),
  which no other House Keeping leaf satisfies (all HK leaves have `Opt2` 0/1, all groups have
  `Opt3 <> 0`).
* Its `PARAM_STR` is `''` while every other HK entry leaf carries `'AEDP'`.

---

## B. House-Keeping report files present in `<HMS2526>\Reports`

`[VERIFIED-CONFIG]` — by direct file listing:

| File | `.ttx`? | Reachable from this menu? |
|---|---|---|
| `RoomStatus.rpt` | ❌ | ✅ yes (`RoomStatus`, L478513) |
| `ComplaintDetail.rpt` | ❌ | ❌ **not by that name** — dispatcher asks for `ComplaintList` |
| `Complaint.rpt` | ❌ | ❌ not referenced by any `GRepFormName` found |
| `HouseKeeping.rpt` | ❌ | ⚠ only via `"House Keeping Report"` → `rFomRepView`/`HouseKeeping` (L478762–L478768), which is **not on the hex-`0xF` menu** — the menu's own `Reports` group has only 2 leaves |
| `LostFound.rpt` | ❌ | ❌ no dispatch branch references `LostFound` |
| `RoomMast.rpt` / `RoomMast.ttx` | ✅ | ❌ from `Room Master` menus elsewhere |
| `RoomCategory.rpt` | ❌ | ❌ elsewhere |
| `RoomChangeHistory.rpt` | ❌ | ❌ `[UNKNOWN]` which menu |
| `RoomNights.rpt` | ❌ | ❌ elsewhere |
| `RoomRentAuditReport.rpt/.ttx` | ✅ | ❌ elsewhere |

**House Keeping report coverage gap:** of the module's 2 menu reports, **1 of 2 keys has no
matching `.rpt`** (`ComplaintList`). In addition `LostFound.rpt` and `Complaint.rpt` exist on
disk but nothing dispatches to them. `[VERIFIED-CONFIG]` + `[VERIFIED-VB6]`

---

## C. Report data source (as coded)

`rRepHousePreview` (object L120613–L122609) builds its recordset from EXTRAS.text:

**L121505 / L121509** `[VERIFIED-VB6]`
```sql
SELECT C.Code AS Scode, C.CDate AS CDate, C.CTime AS CTime,
       CC.Category AS Category, C.Description AS Description,
       Depart.Name AS Depart, C.UName AS UName, C.Status AS Status
  FROM (ComplaintDetail AS C
        INNER JOIN Depart ON C.Depart = Depart.Code)
  INNER JOIN ComplaintCategory CC ON C.Category = CC.Code
 <runtime filter>
```

**L124733** (category list inside the report form)
```sql
SELECT '' AS O, Category AS Category, Code AS Code
  FROM ComplaintCategory ORDER BY Category;
```

Then **L120779 / L120781**:
```
CreateFieldDefFile(var_C4, MemVar_1F810B4 & "\" & var_88 & ".ttx", &HFF)
0.Method_arg_1C (MemVar_1F810B4 & var_C0 & ".RPT", var_A4, var_B8)
```
Note the **inconsistent separator**: the `.ttx` path uses `"\"` but the `.RPT` path at
**L120781** concatenates `MemVar_1F810B4 & var_C0` **with no backslash** — it relies on
`var_C0` already beginning with `\`. `[VERIFIED-VB6]` If it does not, the report path is
malformed. (Compare L663352 and L166067, which do include `"\"`.)

Both source tables `ComplaintDetail` and `ComplaintCategory` currently hold **0 rows**
`[VERIFIED-SQL]` ⇒ both House Keeping reports would print an empty result set today.

---

## D. Report forms present but never constructed

| Form | Range | Note |
|---|---|---|
| `rRepHouse` | L122609–L124927 | sibling of `rRepHousePreview`; **no `New rRepHouse` anywhere in the dispatcher** `[VERIFIED-VB6]` |

`[UNKNOWN]` what `rRepHouse` was for — likely the non-preview (print-direct) variant of the
same two reports.

---

## E. Findings

| ID | Severity | Finding | Evidence |
|---|---|---|---|
| HR-1 | **High** | `GRepFormName = "ComplaintList"` has no `ComplaintList.rpt` (only `ComplaintDetail.rpt` / `Complaint.rpt`) | folder listing + L478520 |
| HR-2 | Medium | `RoomStatus.rpt` has no `.ttx`; `CreateFieldDefFile` must write one at run time into `<HMS2526>\Reports` | folder listing + L120779 |
| HR-3 | Medium | `.RPT` path built without a `\` at L120781 (inconsistent with L120781's `.ttx` sibling and with L663352) | L120779–L120781 |
| HR-4 | Low | `House Keeping Op.Stock Entry` is registered with `arg_14 = 2`, producing an **empty `Flag`** in `menuHelp` — every other leaf gets `E` or `R` | L476408 vs L475811 |
| HR-5 | Low | `LostFound.rpt` and `Complaint.rpt` exist but no dispatcher references them | folder listing + full scan of L476999–L480832 |
| HR-6 | Low | `rRepHouse` form is dead code | no `New rRepHouse` in the dispatcher |
| HR-7 | Info | Both report source tables are empty (0 rows) ⇒ reports print nothing today | `tables_rowcounts.txt` |
