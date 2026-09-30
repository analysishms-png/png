# 04_Reservation — Notes, Findings, Known Issues

Evidence tags: `[VERIFIED-VB6]`, `[VERIFIED-SQL]`, `[VERIFIED-CONFIG]`, `[INFERRED]`, `[UNKNOWN]`.
Line numbers = `HMS_REVERSE_ENGINEERING\EXTRAS.text` unless stated.

---

## NK-1 — Reservation Operations group skips index 1
* Module: 04_Reservation · Screen: menu tree
* Registered leaf indices are `0,2,3,4,5,6,7,8,9` — **1 is never registered**
  (L476211 → L476213 → L476215 …). `[VERIFIED-VB6]`
* `menu_tree_raw.txt` L171–L179 confirms 9 leaves, no gap visible to the user. `[VERIFIED-VB6]`
* Severity: cosmetic / layout only
* Expected: contiguous ordering
* Actual: index 1 hole
* Possible cause: a leaf was removed from source but the `Menu_Index` values were never renumbered.
  `[INFERRED]`

---

## NK-2 — Duplicate menu captions make two reports unreachable
* Module: 04_Reservation · Screen: `Reservation Status Report`, `Advance Recd. Report`
* Steps: open Reservation → Reservation Status Report
* Expected: three items — Status / Arrival / In-House
* Actual: **two items, both reading "Reservation Status Arrival"**
  (`menu_tree_raw.txt` L182 and L183) `[VERIFIED-VB6]`
* Cause chain:
  1. `var_124 = "Reservation Status In-House"` is assigned at **L476235**, then
     `Proc_165_0_14C1708("Reservation Status Arrival", …)` is called at **L476236** with the *literal*.
  2. `Proc_165_0_14C1708` writes `arg_C` into `MenuHelp.[OPTION]` (L475808–L475812) and never reads
     `var_124` anywhere in L475664–L475816. `[VERIFIED-VB6]`
  3. Dispatch handlers `var_188 = "Reservation Status In-House"` (**L478947**) and
     `"Advance Recd. In-House"` (**L479009**) therefore never fire. `[VERIFIED-VB6]`
* Identical defect for `Advance Recd.` — `var_124 = "Advance Recd. In-House"` at **L476246**,
  duplicate call at **L476247** (`menu_tree_raw.txt` L187/L188).
* Severity: **High** — two report variants (`ReservStatusInHouse`, `ResvAdvRecdInHouse`) are dead code
* SQL evidence: none (menu rows only); `MenuHelp` = 9212 rows `[VERIFIED-SQL]`
* Screenshot: none captured for these menus `[UNKNOWN]`

---

## NK-3 — `M.I.S.` menu caption does not match its dispatch key
* Steps: Reservation → M.I.S. → first item
* Registered caption: `"M.I.S."` (L476252), which also duplicates the **group header** caption
  registered at L476249 (`menu_tree_raw.txt` L189 group, L190 leaf — both read `M.I.S.`)
* Dispatcher expects `"7-730 Days Forecast"` (L479016) → `DaysForecastRep`
* `var_124 = "7-730 Days Forecast"` is set at L476251 but never consumed by the registrar.
  `[VERIFIED-VB6]`
* Severity: **High** — clicking the first M.I.S. item likely does nothing (falls through the chain)
* Note: `DaysForecastRep.rpt` **does** exist in `Reports\` `[VERIFIED-CONFIG]`, so only the caption is wrong.

---

## NK-4 — Report key ↔ report file name mismatches
| `GRepFormName` (dispatch) | `.rpt` present? | Nearest actual file |
|---|---|---|
| `RegistrationCard` (L478928) | no | `RegistrCard.rpt` |
| `ReservationStatus` (L478935) | no | `ReservStatus.rpt` |
| `ReservStatusArrival` (L478942) | no | `ReservStatus.rpt` |
| `ResvAdvRecd` (L478997) | no | `AdvanceRecd.rpt` |
| `ResvAdvRecdArr` (L479004) | no | `AdvanceRecd.rpt` |

Viewer builds `MemVar_1F810B4 & "\" & <name> & ".RPT"` (L663351–L663352, L120779–L120781,
L166066–L166067). `[VERIFIED-VB6]` Folder listing `[VERIFIED-CONFIG]`.
Severity: **High** if no name translation exists — `[UNKNOWN]` whether a translation layer is applied.
See `reports\reports.md` §E.

---

## NK-5 — Two different emptiness predicates for `Booking.Verified`
* L90592: `WHERE Verified='N'`
* L91603: `WHERE Isnull(Booking.Verified,'')=''`
* `Booking.Verified varchar(1)` has DEFAULT `''` `[VERIFIED-SQL columns_dictionary.txt]`
* Effect: rows with `Verified = 'Y'` are excluded by both; rows with `Verified = NULL` are excluded only by
  the second query. `[VERIFIED-VB6]`
* Severity: Medium — the "pending bookings" list can differ depending on which entry point is used.
* Possible cause: two separately-maintained screens (New vs Browse) `[INFERRED]`

---

## NK-6 — 72-hour cancellation policy is written to a file, not shown to the user
* L100210: `Print 1, Proc_6_44_EA72C4("Cancellations must be made at least 72 hours in advance.", &H38)`
* It is a `Print #` statement, not a `MsgBox`. `[VERIFIED-VB6]`
* Severity: Medium — the business rule text is captured in a log/file but never blocks the cancellation.
* Policy itself: **not enforced anywhere in this object range** `[VERIFIED-VB6]` — no comparison against
  `ArrDate - Now()` was found. `[INFERRED]` the message is informational only.

---

## NK-7 — No SQL parameterisation anywhere in the object
* Every statement in `sql\queries.sql` is built with `"..." & var & "..."`. `[VERIFIED-VB6]`
* Severity: **Critical** for migration — must be re-implemented with bound parameters.
* Also: no `Begin Trans` / `CommitTrans` was observed spanning the 4-table save
  (`Booking` → `BookingMore` → `GrpBookingDetails` → `BookingPlanDetails`). `[UNKNOWN]`
  If no transaction wraps them, a mid-save failure leaves an orphaned `Booking` header.
  Because there are **zero foreign keys** (`foreign_keys.txt` = 0 bytes, `[VERIFIED-SQL]`),
  the database will not reject the orphan.

---

## NK-8 — `RoomBlockOut` is effectively unused
* Row count = **1** for the whole database. `[VERIFIED-SQL tables_rowcounts.txt]`
* Reservation reads it (L97971); House Keeping writes it. `[VERIFIED-VB6]`
* Severity: Low — but the availability check silently passes for almost all rooms.

---

## NK-9 — `BookingPlanDetails` and `BookingMore` are empty
* Row counts 0 and 0 while `Booking` = 25. `[VERIFIED-SQL]`
* The save routine always writes up to 6 `BookingMore` rows (L92013…L92097). `[VERIFIED-VB6]`
* Possible cause: the production data predates those features, or the values written are always
  subsequently cleaned. `[UNKNOWN]`

---

## NK-10 — Cancellation rows outnumber bookings 6:1
* `BookingCancelDetails` = 149 vs `Booking` = 25. `[VERIFIED-SQL]`
* The hard-delete cascade *does* delete `BookingCancelDetails` (L91434). `[VERIFIED-VB6]`
* So the 124 extra rows came from bookings removed by an older build, a different module, or manual SQL.
  `[UNKNOWN]`

---

## NK-11 — Duplicate dispatch branches with trailing-space variants
Guarded by `If Not (x = "Y") Then If (x = "Y ") Then` patterns — seen for
`"Stock Register"` / `"Stock Register "` (L478525–L478526), `"Stock Summary"` / `"Stock Summary "`,
`"Issue Checklist"` / `"Issue CheckList"` (L478557–L478558), `"Item List"` / `"Item  List"`
(L477692–L477693), `"Item Entry"` / `"Item Entry "` (L477948–L477949),
`"Instant House Count"` / `"Instant House Count "` (L478418–L478419),
`"Package Forecast"` / `"Package Forecast "` (L479035–L479036). `[VERIFIED-VB6]`
Reservation-specific: `"Package Forecast"` guard at L479035.
Severity: Low — but proves the stored `MenuHelp.[OPTION]` values have drifted across builds.

---

## NK-12 — Debug file written on every menu click
* L477034: the dispatcher opens `C:\moduleFILE.TXT` `For Append` and writes a trace line. `[VERIFIED-VB6]`
* Severity: Medium — unbounded growth of a file in the drive root, per click, for every user.
* Also a privacy consideration: it logs which menu each user opens.

---

## Screenshot coverage gaps
Captured (12 PNGs in `screenshots\04_Reservation\`):
Menu tab, Reservation/Cancellation, Reservation with History, Look Up Rooms, Reservation Status Screen
(+ C2/C3 pass variants). `[VERIFIED-CONFIG]`

Not captured `[UNKNOWN]`: Look Up Room types, Advance Deposit, Confirmation/Cancellation Letters,
Registration Card, Reservation Status Screen report, Arrival List, every Advance Recd. report,
every M.I.S. forecast.

---

## Open questions
1. Is there a report-name translation table between `GRepFormName` and the `.rpt` filename?
   `[UNKNOWN]` — `PrintFormats` (39 code refs) is the leading candidate. `[INFERRED]`
2. What populates `BookingLog` (403 rows)? `[UNKNOWN]`
3. Full SQL inside `FrmReservationStatus` (L586572–L587255) not extracted. `[UNKNOWN]`
4. Does a transaction wrapper exist around the 4-table save? `[UNKNOWN]`
