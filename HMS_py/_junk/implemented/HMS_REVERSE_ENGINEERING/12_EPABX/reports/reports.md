# 12_EPABX — Reports

## 1. On-disk Crystal reports (disk scan)

| File | Size | Notes | Evidence |
|---|---|---|---|
| `EpabxCallRep.rpt` | present | the EPABX call report | `[VERIFIED-UI]` disk scan `HMS2526\Reports\` |
| `CallCodeMast.rpt` | present | master print/list of call codes | `[VERIFIED-UI]` disk scan |
| `CallTypeMast.rpt` | present | master print/list of call types | `[VERIFIED-UI]` disk scan |
| `TelExt.rpt` | present | extension master print/list | `[VERIFIED-UI]` disk scan |

Report count for this module on disk: **4** of 371 total `.rpt` files.

## 2. Menu wiring (VB6)

`menu_tree_raw.txt` module header `L470` (`type=4`, hex `15` = EPABX) has exactly **one** leaf:

| Line | type | caption | notes |
|---|---|---|---|
| `L471` | 1 (report) | `EPBAX Call Report` | **typo in source**: `EPBAX`, not `EPABX` `[VERIFIED-VB6]` |

Runtime menu comes from `menuHelp` (3 rows, `OPT1=15`) rather than the builder registrations.
The report leaf opens the generic report host with `GRepFormName = "EpabxCallRep"`
(`EXTRAS.text` **L16**). `[VERIFIED-VB6]`

## 3. Report host forms

| Form | Role | Dispatch line | Evidence |
|---|---|---|---|
| `rRepTel` | report preview host for EPABX reports | `Set global_72 = New rRepTel` **L282557**, **L282768** | `[VERIFIED-VB6]` |
| `rRepTelPreview` | alternate preview/printer host | `Set var_90 = New rRepTelPreview` **L478412**; `global_52 = New rRepTelPreview` **L15** | `[VERIFIED-VB6]` |

Menu caption says *EPBAX Call Report*, the form passed is `EpabxCallRep`, the host form is
`rRepTel` — three different names for one user-facing report.

## 4. Source tables

Per `REPORTS_TXT/EpabxCallRep.txt` (report catalog extract, report no. 63):

- **SOURCE TABLES:** `SunTran`, `PayCharge`, `GuestMast*` (front-office tables)
- **CATEGORY:** FRONT OFFICE / GUEST — non-stock report
- **OUTPUT COLUMNS:** `Vdate`, `FolioNo`/`RoomNo`, guest/charge columns
- The generic catalog SQL for the category reads:

```sql
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT P.Vdate, P.FolioNo, P.RoomNo, P.PayCode, P.AmtDr, P.AmtCr, P.Bill_No
FROM PayCharge P WHERE P.Vdate BETWEEN @F AND @T ORDER BY P.Vdate;
```

`[VERIFIED-SQL]` — catalog extract only; the actual `.rpt` SQL was not opened.

## 5. Reports section verdict for module docs

`module_manual.md` §7 lists the 2 runtime report forms (`rRepTel`, `rRepTelPreview`).
This file adds:

- 4 on-disk `.rpt` files (`EpabxCallRep`, `CallCodeMast`, `CallTypeMast`, `TelExt`)
- 1 menu report leaf (with the `EPBAX` typo)
- source tables = front-office `PayCharge`/`SunTran`, **not** the EPABX Jet tables

## 6. Gaps / unknowns

- `[UNKNOWN]` exact SQL inside `EpabxCallRep.rpt` (binary Crystal file, not parsed)
- `[UNKNOWN]` whether `TelExt.rpt` / `CallCodeMast.rpt` / `CallTypeMast.rpt` are reachable
  from the EPABX module menu at all — they may only be reachable from Setup
- `[VERIFIED-SQL]` live tables `TelCallCodeMast`, `TelCallTypeMast`, `TelExt` = **0 rows**,
  so all 4 reports would render empty on this site
