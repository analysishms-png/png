# 05_Front_Office — Notes

## Spec-14-coverage (§14: "Front Office must be analyzed deeply")

| Spec row | Status | Where |
|---|---|---|
| Login | covered (01) | `01_Login_Security/` |
| Business Date | `[VERIFIED-VB6]` Enviro.ncur | lifecycle §lifecycle |
| Reservation | `[VERIFIED-VB6]` Booking insert | lifecycle §1 |
| Arrival | `[VERIFIED-VB6]` walk-in path | lifecycle §lifecycle |
| Check In | `[VERIFIED-VB6]` 2-step + `[VERIFIED-UI]` | lifecycle §2, CHECKIN_FIELD_MAP |
| Room Allocation | `[VERIFIED-VB6]` RoomOcc.RoomNo | lifecycle §2 |
| Guest Stay | `[VERIFIED-VB6]` | lifecycle §3 |
| Room Change | `[VERIFIED-VB6]` fdRoomChange | lifecycle §3 |
| Rate Change | `[VERIFIED-VB6]` plan update SQL | lifecycle §3 |
| Posting | `[VERIFIED-VB6]` PayCharge cols | lifecycle §4 |
| Payment | `[VERIFIED-VB6]` PayCode/AmtCr vs AmtDr | lifecycle §5 |
| Advance | `[VERIFIED-VB6]` Advance Deposit dialog from check-in; menu arm dead | dispatch L477776 |
| Discount | `[VERIFIED-VB6]` RoDisc/RSDisc | lifecycle §3 |
| Transfer | `[INFERRED]` — folio merge (mFolioNoDocId) is the transfer-like op; explicit "transfer" screen not found | merge L437902 |
| Check-Out | `[VERIFIED-VB6]` CHKOUTDATE update | lifecycle §6 |
| Invoice | `[VERIFIED-VB6]` BillPrint.rpt etc. | lifecycle §7 |
| Settlement | `[VERIFIED-VB6]` FdReSetlement, PayChargeH | lifecycle §5 |
| Night Audit | cross-ref 10_Night_Audit | `NIGHT_AUDIT_FLOW.md` |
| Walk-in | covered | above |
| Cancellation | `[VERIFIED-VB6]` BookingCancelDetails | lifecycle §1 |
| No Show | `[UNKNOWN]` — no explicit "NoShow" caption/SQL found; likely modelled as cancel or un-arrived booking (Booking.ArrDate vs check-in) | needs UI verification |
| Refund | `[INFERRED]` — refund ≈ PaymentType negative / FdReSetlement path; no `Refund` caption in FO dispatch | verify via finance |
| Reprint | `[VERIFIED-UI]` B040 + `frmFomB` | dispatch L478391 |

## Dead arms / drift quick list

- Dead: `Advance Deposit` (L477776), `Check In Group With Reservation` (L478248), `Change Guest Information` (L478284).
- Duplicate dispatch: `WalkIn CheckIn` (L477785 + L478236); `Reverse Check Out`/`Reverse check-out` (L477791 + L480396).
- Root caption drift: builder `Front Desk` vs runtime `Front Office`.
- Builder-only rows: Forex Receive Entry, House Keeping Screen, Travel Agency Posting (not in SA runtime menu).
- Runtime-only group: `Tax Reports` (not in builder hex E).
- Dormant tables: BookingMore 0, GuestMessage 0, GuestStat 0.

## QA checklist (READ-ONLY — navigation only)

- [ ] Strip tab `Front Office` visible (Analysis.ini key 9, name 5) — captured `04-FrontOffice_MenuTab.png`
- [ ] Operations dropdown shows 12 runtime leaves — `B033`
- [ ] Open **WalkIn CheckIn**, count 89 TextBoxes/15 DataGrids (CHECKIN_FIELD_MAP §2), close — `C4`
- [ ] Open Room Status → InHouseGuestFolio pre-filtered (L480384) — `B036`
- [ ] Open Expense Entry / Display Rack / Bill Reprint / Reverse Check Out / Merge Room /
      Bill Re-Settlement / Reverse Room Merge / Blank GRC — observe only — B038–B048
- [ ] Reports row expands (21 leaves) — `B054`
- [ ] **DO NOT click**: Save (check-in), Post, Settle, Delete, Print, Yes, reverse-confirm buttons
- [ ] Dead-arm verification: confirm menu captions `Advance Deposit` etc. are NOT in runtime
      tree (they're dispatch-only captions) — cross-ref screens.md
- [ ] Report leaf → `rFomRepView` opens Crystal viewer (no data mutation) — NOT yet captured

## Capture backlog (highest value first)

1. `RrRoomReservation` (reservation entry) — spec §14 core
2. `fdCheckIn` from reservation
3. `fdDisplayFolio` / In-house folio view
4. Tourism Forms ×10 (statutory)
5. M.I.S. report output sample ×2 (prove viewer pattern)
6. Tax Reports ×2

## Migration pointers

- Preserve two-step check-in atomicity; add FK `RoomOcc.DocId → GuestFolio.DocId` (DB has 0 today).
- Unify the two dispatch chains into one caption→handler registry; map dead arms explicitly.
- `GuestStat`/`GuestMessage`/`BookingMore`: decide keep-vs-drop (0 rows ⇒ safe to drop initially).
- DocId serial: single-writer sequence table (VOUCHER_PREFIX) — keep, but add NoLock-free
  transactional guarantee in the modern port.
