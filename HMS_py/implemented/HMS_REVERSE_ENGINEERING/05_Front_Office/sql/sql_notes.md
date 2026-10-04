# 05_Front_Office — SQL Notes

Interpretation layer for `queries.sql`. Evidence tags per PROMT.txt §25.

## 1. Where the SQL comes from

VB6 builds SQL as inline string literals (ADO `Execute`), so every statement in
`queries.sql` is recovered **verbatim** from `EXTRAS.text` `[VERIFIED-VB6]`.
3 utility SPs exist DB-wide (`GetFieldNameAs`, `GetFieldNameAsStr`, `Proc_WebService`) but are never invoked by the app (0 refs in HMS.bas) — the business layer IS the VB6 strings; 0 FKs, 0 triggers.

## 2. Write-path summary (with live row counts `[VERIFIED-SQL]`)

| Table | Rows | Written by | Read by |
|---|---|---|---|
| Booking | 25 | reservation save | check-in-from-reservation, availability |
| BookingMore | 0 | reservation extra guests | (dormant) |
| BookingCancelDetails | 149 | cancellation | cancel reports |
| GrpBookingDetails | 56 | group booking | group check-out |
| GuestFolio | 11043 | check-in step 1, amend, merge | folio/room-status/NA due-out |
| RoomOcc | 11464 | check-in step 2, plan/room changes, check-out | availability, NA room roll |
| GuestFolioProfDetail | 747 | check-in guest-prof link; staging rows purged on close | guest history |
| GuestFolioAmend | 167 | amend stay | audit trail |
| PayCharge | 28550 | charge posting (fdPostChrg/fdPaymentCharge) | settlement, reports |
| PayChargeH | 11567 | history move on settlement/delete | history reports |
| PayChargeLog | 253 | audit rows | Charges Remove Log (NA module) |
| GuestMessage | 0 | room-change re-point (dormant) | message screens |
| GuestStat | 0 | — | GUESTSTAT lookup (dormant) |

## 3. Structural observations

1. **Two-step check-in is not FK-protected** — `GuestFolio` then `RoomOcc` share `DocId`
   only by convention (0 FKs DB-wide). If step 2 fails mid-way without rollback you'd get
   an orphan header; VB6 relies on ADO transaction scope `[INFERRED]`.
2. **Merge direction**: `mFolioNoDocId/mFolioNo` on `GuestFolio` points to the surviving
   folio — a pointer-based merge, rows are never deleted (matches zero-delete behaviour
   seen elsewhere; bill deletion goes to `FrmFomBillDeletion` staging).
3. **Amend is append+update**, never update-in-place: old DepDate copied to
   `GuestFolioAmend` first → full temporal trail.
4. **`DocId` serialisation**: `Voucher_Prefix`/`LASTVOU`, varchar(21) = site+type+serial.
   Two competing `Max(VNo)+1` formulas exist elsewhere (SMS @626947 NoLock vs @629716 no NoLock)
   — FO region shows no NoLock on serial reads `[INFERRED]` (single-writer desktop app).
5. **`RoomOcc.type` semantics**: Night Audit excludes `('C','O')` from the dirty-roll —
   those are checked-out/clean states; everything else still in-house becomes Dirty.

## 4. Data observations

- `Booking` only 25 rows vs `GuestFolio` 11043 → production flow is overwhelmingly
  **walk-in**, reservations are marginal (or old rows archived elsewhere) `[INFERRED]`.
- `BookingCancelDetails` 149 > `Booking` 25 → cancellations outnumber surviving bookings
  (bookings deleted/archived after stay, cancels retained) `[INFERRED]`.
- `PayChargeH` 11567 ≈ 40% of `PayCharge` → heavy settlement/history migration activity.
- `GuestProf` 7804 profiles for 11043 folios → profile reuse across stays (Check In with
  Guest History path) `[INFERRED]`.

## 5. Spec §11 "SQL NOT YET IDENTIFIED" entries

| Screen/Action | Status | How to verify |
|---|---|---|
| Display Rack open | SQL NOT YET IDENTIFIED | run with SQL tracking (`20_SQL_Tracking/`), expect RoomMast+RoomOcc SELECT |
| Tourism Forms output | SQL NOT YET IDENTIFIED | each form is a `.rpt` wrapper — inspect `17_Reports/` |
| Travel Agency Posting save | SQL NOT YET IDENTIFIED | form path not exercised (builder-only row, absent SA menu) |
| Plan Meal Tokens run | SQL NOT YET IDENTIFIED | caption flagged `E` but dispatches to report viewer |

## 6. Safety

No statement in this folder was executed against the DB. All counts came from
read-only inventory queries captured in `18_Database/tables_rowcounts.txt`.
Night Audit SQL is documented only (module 10, never run).
