# 03_Reservation - Test Plan (module logic)

## 1. Coverage map (feature → test file)

| Feature | Test file | Scope |
|---|---|---|
| Draft lifecycle (insert/get/cancel/no-show/delete) | `tests/test_front_office.py` | L2b (27 checks, FO+reservation shared) |
| Status report rows + PDF | `tests/test_front_office.py:123-134` | `res_status` arrival/inhouse/invalid-mode + `res_status_pdf` |
| GuestProf / booking validators | `tests/test_validation_crud.py` | L1-family (GuestProf `_validate` :103; `insert_draft` guards :185/:192) |
| Booking overlap logic + SQL shape | `tests/unit/test_wave_a_logic.py` | L1 unit (booking `_overlaps`) |
| Shell registry wiring (Reservation leaves) | `tests/unit/test_bugfix_batch.py` | L1 unit |
| Validation rules (docid/guards) | `tests/unit/test_core_validation.py` | L1 unit |

## 2. Layer commands + status

Official run: `run_module_tests --module 03_Reservation --layers L1,L2b` (`TEST_RESULTS.md` 2026-09-25T12:05:27):

| Layer | Command | Result |
|---|---|---|
| L1 | `pytest tests/unit -q --tb=line` | PASS 380 |
| L2b | `pytest tests/test_front_office.py -q --tb=line` | PASS 27 |

**fails=0** (batch rule: non-Finance modules sirf L1,L2b).

## 3. Manual test script (live app, 10 steps)

1. SA login → sidebar `reservation` → `Booking Operations` → dialog (modal) khula → guest + arr/dep + room → conflict room pick → overlap error.
2. `arr > dep` → validation error; empty guest → error.
3. Valid booking save → `Booking` row + `BookingLog` audit row (`Flag` insert).
4. `Reservation/Cancellation` → browser list → booking select → edit guest name → `UPDATE Booking` row.
5. Cancel → `Cancel='Y'`, `CancelUName` set, `BookingCancelDetails` snapshot row.
6. Dobara cancel → no second snapshot row (idempotent guard).
7. `Reservation With History` → same booking → `BookingLog` entries visible.
8. `Reservation Status` → `QMessageBox` me `N rows | PDF: path` (arrival list aaj+ date se).
9. `Reservation Status In-House` → in-house mode rows.
10. Restricted user (e.g. Dinesh `AEDP`) se ops leaves → `E` right OK; `R` reports user jaise Sumit → only report rows (`***P`) — menuHelp permission SQL DATABASE.md §5.

## 4. Known issues / gaps

- `other=16` bucket: group headers + letters (`Confirmation Letters`, `Cancellation Letters`, `Registration Card`) + lookups + forecasts — curated capture me nahi (registry roots `Letters`/`Forecast` openers alag modules me; gap-note).
- `Booking Operations` ka menuHelp row nahi (registry-only) — permission SQL khali (gap).
- 3 status-report leaves `skipped_messagebox` (app seedha `QMessageBox` dikhata hai — FRONTEND §4, KI-7 jaisa documented gap; `failed` me nahi).
- `ReservationStatus` table DB me nahi (reports live `Booking` se padhte hain — res_status SELECT).
- `test_reports_engine`/`test_tally_export` yahan run nahi (batch rule L1,L2b) — Finance batch me already documented (KI-1/KI-3).
