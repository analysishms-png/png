# FRONT_OFFICE_RELEASE_NOTES.md

## v1.0 — Front Office completion (2026-09-22)

### Fixed (runtime crashes)
- **31 UI→core API mismatches** repaired across 10 screens (fa_ledger, member_billing, facility_billing, guest_services, hr_payroll, pos_na, pos_packing, sys_config, reports, shell, inventory depart). Ye sab latent `AttributeError`/SQL crashes the — audit tool (`tools/api_mismatch_audit.py`) se detect, ab **0 mismatches**.
- `pos_table` (Restaurant tables) screen: CRUD wrappers core me add kiye — pehle pehla click hi crash deta tha.
- `facility_billing.insert_fbill`: 12-values-vs-16-columns SQL error 109, galat VALUES order (date-convert fail), aur `U_AE` varchar(1) truncation — teeno fixed, header+line ab ek transaction me insert hote hain (`insert_bill_with_line`).
- Reservation `cancel` ka 22-char DocId truncation fix.
- Availability: stale `ToDate NULL` RoomBLockOut rows ab "forever blocked" count nahi hoti.

### Implemented (missing pieces)
- `reports.res_status()` + plain-text `res_status_pdf()` (reportlab unavailable)
- `room_occ.room_availability` — bookings-aware (ReservStatus Confirm/Reservation date-overlap)
- `reservation.mark_no_show()`
- Member/facility billing, packing, ledger, guest-services ke missing core CRUD fns
- `hr_payroll` update fns + BUG-C06 (insert_loan) fix

### Tests
- **Phase C FO suite**: `HMS_py/tests/test_front_office.py` — 27 DB-integration tests (guest CRUD, reservation lifecycle, availability, checkin/folio/checkout consistency, facility billing roundtrip, negatives + boundaries). Live HMS DB ke against chalte hain.
- **Full regression: 185 passed**, API audit: 0 mismatches.

### Known limits (see BLOCKED.md)
- VB6 GUI/EXE build is machine par available nahi — Python side complete + tested.
- Crystal Reports printing Python-side se drive nahi hota (existing VB6 printing untouched).
