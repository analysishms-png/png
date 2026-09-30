# 12_EPABX — Notes (open questions, dead code, site-specific facts)

## Module size — by far the smallest functional module

| Metric | Value | Evidence |
|---|---|---|
| `menu_tree_raw.txt` rows | **2** (1 header + 1 report leaf) | `[VERIFIED-VB6]` L470-L471 |
| `menuHelp` rows (`OPT1=15`) | 3 | `[VERIFIED-SQL]` |
| Builder registrations | 2 (`Proc_165_0_14C1708(..., &HF, ...)`) | `[VERIFIED-VB6]` |
| Dispatcher forms | `TelCallEntry`, `FrmGuestWakeUp`, `rRepTel`, `rRepTelPreview`, 4 masters | `[VERIFIED-VB6]` |
| Live tables with rows | **none** (all 5 targeted tables = 0 rows) | `[VERIFIED-SQL]` |

Compare: Finance has 28 registrations, Main Setup 124, EPABX 2.

## Dead / dormant state on this site

1. **`EPABX_IN` is a Jet table, not a SQL table.** Call entry writes into
   `DMEPABX.mdb` (Access/Jet) — `EXTRAS.text` L10694 — while the rest of HMS lives in
   SQL Server `MOONData2627`. The 277-table census does **not** contain `EPABX_IN`
   (81 source hits, 0 rows in SQL). `[VERIFIED-VB6]` `[VERIFIED-SQL]`

2. **`GuestWakeup` = 0 source hits.** The wake-up call feature has no backing SQL table
   reachable from the decompiled source; `FrmGuestWakeUp` most likely writes to
   `EPABX_IN` too (flag-based) or is vestigial. `[VERIFIED-VB6]` `[INFERRED]`

3. **All 5 EPABX tables are empty** on this site:
   `EPABX_Data`, `TelCallCode`, `TelCallType`, `GuestWakeup`, `TelExt` = 0 rows.
   `TelExt` being empty means the extension master was never populated — the module was
   never switched on here. `[VERIFIED-SQL]`

**Conclusion:** EPABX is *shipped and wired* but *not in use* at this site. Any report run
from it returns nothing. `[INFERRED]` from the 0-row evidence.

## Typos and naming drift carried from source

| Place | Written as | Should be | Evidence |
|---|---|---|---|
| menu caption | `EPBAX Call Report` | EPABX | `[VERIFIED-VB6]` `menu_tree_raw.txt` L471 |
| group name | `FrmGuestWakeUp` | wake-up | `[VERIFIED-VB6]` dispatch L478331 |
| Jet file | `DMEPABX.mdb` (missing `E`) | EPABX | `[VERIFIED-VB6]` L10694 |

## Setup placement surprise

The EPABX **Setup** menu is registered under module hex `C` = **Main Setup**
(`EXTRAS.text` L130), not under EPABX itself. So EPABX has 2 menu rows of its own but its
master-data screens live in Main Setup. Menu-tree readers that only walk hex `15` will
miss the EPABX masters. `[VERIFIED-VB6]`

## No stored procedures / no integration

- Application uses inline ADODB SQL everywhere; the DB has only 3 procs and none belong
  to EPABX. `[VERIFIED-SQL]`
- Integration with Front Office is limited: the module's only report reads front-office
  tables (`PayCharge`, `SunTran`) — the call *entry* side does not touch FO tables.
  `[VERIFIED-VB6]` `[INFERRED]`

## Open questions (spec §27 field)

1. `[UNKNOWN]` Does `TelCallEntry` write both to Jet `EPABX_IN` and SQL? The Jet hit at
   L10694 needs a runtime trace to confirm.
2. `[UNKNOWN]` Are `CallCodeMast.rpt` / `CallTypeMast.rpt` / `TelExt.rpt` reachable from
   any menu? Not found in `menu_tree_raw.txt`; possibly only from setup screen print
   buttons.
3. `[UNKNOWN]` Was `EPABX_Data` ever a live charging table (telephone charge posting to
   folio)? 0 rows + no FO write path found = `[INFERRED]` dormant.
