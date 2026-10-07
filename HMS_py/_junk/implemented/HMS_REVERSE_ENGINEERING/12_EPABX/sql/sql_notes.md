# 12_EPABX — SQL notes

## 1. Table inventory for this module  `[VERIFIED-SQL]`

| Table | Cols | Rows | PK (indexes_pks.txt) | In EXTRAS.text? |
|---|---:|---:|---|---|
| `EPABX_Data` | 16 | **0** | `aaaaaEPABX_Data_PK` (ID, Site_Code) | no statements found |
| `TelCallCode` | 9 | **0** | `aaaaaTelCallCode_PK` (STDCode) | yes — L219330/L219406/L219461 |
| `TelCallType` | 10 | **0** | `aaaaaTelCallType_PK` (Code) | yes — L11720/L31605 |
| `TelExt` | — | **0** | (see indexes file) | **no statements found** |
| `GuestWakeup` | 22 | **0** | `aaaaaGuestWakeup_PK` (DocId) | **0 occurrences** |

All five EPABX-related SQL Server tables are **empty** in `MOONData2627`.
`[VERIFIED-SQL]`

## 2. Dead table: `GuestWakeup`  `[VERIFIED-VB6]`

`GuestWakeup` has 22 columns (DocId, Vtype, VNo, Site_Code, Vprefix, Vdate, VTime,
RoomCat, RoomType, RoomNo, Extension, RemReqd, FoodOrd, OtherReq, WDate, WTime,
GuestProf, FolioNo, U_Name, U_EntDt, U_AE, LogSite_Code) but
**`rg -F GuestWakeup EXTRAS.text` returns 0 hits.**

The wake-up feature actually writes `EPABX_IN` in the Jet database
(`EXTRAS.text` L86740). Either `GuestWakeup` was superseded, or the decompile lost its
references. Migration implication: **do not port `GuestWakeup` as the wake-up store
without first confirming runtime behaviour.** `[VERIFIED-VB6]` `[VERIFIED-SQL]`

## 3. `EPABX_IN` is not in the 277-table SQL inventory  `[VERIFIED-VB6]` `[VERIFIED-SQL]`

- `rg -F EPABX_IN` → **81 occurrences**
- `tables_rowcounts.txt` → no `EPABX_IN` row
- Connection at `EXTRAS.text` L10694 is **Jet OLEDB 4.0 → `DMEPABX.mdb`**, and inserts
  use `#date#` literals (L86741) — Access syntax.

⇒ The PABX call/alarms log lives in a **sidecar Access file**, not SQL Server.
A modern port must either import `DMEPABX.mdb` or re-implement `EPABX_IN` in the new DB.

## 4. Referential integrity  `[VERIFIED-SQL]`

`18_Database/foreign_keys.txt` is **0 bytes** — 0 foreign keys database-wide. So:
- `TelCallCode.CallTypeCode` → `TelCallType.Code` is enforced only by the LEFT JOIN
  browse order (L219461); an orphan code displays `NULL` CallType rather than failing.
- `TelCallType.TaxStru` → Tax Structure master is enforced by a VB6 pre-save check
  (L31605) only.

## 5. Save-safety  `[VERIFIED-VB6]`

`TelCallCode` save = `DELETE` (L219330) + `INSERT`, with no `BeginTrans` in the
recovered routine. Contrast: 07_Inventory *does* wrap saves in
`BeginTrans/CommitTrans/RollbackTrans` (verified by the Wave-B agent). If the insert
fails after the delete, the row is lost. → **Test case TC-EP-03** (see
`module_manual.md` §16).

## 6. Multi-site behaviour  `[INFERRED]`

`TelCallCode`/`TelCallType` both carry `Site_Code` + `LogSite_Code` (cols 8/9 and 9/10)
and the PK of `EPABX_Data` is `(ID, Site_Code)` — per-site numbering. Standard HMS
pattern; see `module_manual.md` §9.

## 7. Not reconstructed

- INSERT statement for `TelCallCode` after the DELETE (L219330): `[UNKNOWN]`.
- Any statement on `TelExt` and `EPABX_Data`: `[UNKNOWN] — no matches in EXTRAS.text`.
- `EpabxCallRep` report SQL (inside a Crystal `.rpt`, not in source): `[UNKNOWN]`.
