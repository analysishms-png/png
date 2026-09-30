# 03 - Reservation - Backend (core/)

## 1. Module map (core file → responsibility → public API)

| File | Responsibility | Public API (line) |
|---|---|---|
| `reservation.py` | Booking draft lifecycle + DocId/BookNo + cancel (VB6 RrRoomReservation parity) | `voucher_config` 25, `make_docid` 45, `_make_docid_atomic` 57, `next_bookno` 88, `list_reservations` 111, `get` 127, `insert_draft` 149, `_log` 201, `update` 216, `cancel` 250, `delete_draft` 298 (+ `mark_no_show` test coverage) |
| `booking.py` | VB6 Booking entity CRUD + room conflict + history | `_map` 15, `_validate` 46, `check_room_conflict` 51, `insert` 86/160, `list_all` 126, `get` 136, `search` 148, `update` 200, `delete` 223, `cancel` 230, `list_more` 260 |
| `guestprof.py` | Guest master CRUD (VB6 GuestProf) | `_map` 26, `_validate` 37, `list_all` 82, `search` 89, `get` 96, `exists` 102, `next_code` 107, `insert` 116, `update` 130, `delete` 173 |
| `reports.py` (reservation part) | Status report rows + PDF | `res_status(mode)` (arrival/inhouse), `res_status_pdf(rows, mode)` — minimal text PDF, no external dep |

## 2. Key flows (function-level logic)

1. **Draft create** (`reservation.insert_draft` :149): docid banata hai (`make_docid`/atomic :45/:57, `next_bookno` :88) → `INSERT Booking` (:167) → `BookingLog` audit `_log` (:201/:210); validation: empty guest → error, `arr > dep` → error (test_front_office.py:48-50).
2. **Room conflict** (`booking.check_room_conflict` :51): same room par overlapping arr/dep → conflict (unit-tested overlap logic `test_wave_a_logic.py:5`).
3. **Cancel** (`reservation.cancel` :250): VB6 `UPDATE Booking SET Cancel='Y'...` EXACT (:274) + `BookingCancelDetails` snapshot (:282); idempotent double-cancel guard; missing bookno → 0 rows.
4. **No-show** (`reservation.mark_no_show`) — status flag update (test_front_office.py:53-61).
5. **Guest edit cascade** (`guestprof.update` :130): `GuestProf` (:140) + `GuestFolio` (:150) + `RoomOcc.GuestProf` (:155) teeno sync.
6. **Status report** (`reports.res_status`): arrival → `ArrDate >= today AND Cancel<>'Y'`; inhouse → occupancy-based; `res_status_pdf` HTML-escape + A4 text PDF.

## 3. Guards & invariants

| Guard | Where |
|---|---|
| `arr_date <= dep_date` required | reservation insert_draft validation (test_front_office.py:50) |
| Empty guest name reject | reservation insert_draft (test_front_office.py:48) |
| Room double-booking overlap check | booking.py:51 (`_overlaps` logic) |
| Double-cancel idempotent (no dup `BookingCancelDetails`) | reservation.py:250 (test:83) |
| GuestProf duplicate check (valid `_validate`) | guestprof.py:37 (`check_duplicates=True` default) |
| Booking field-level `_validate` before insert/update | booking.py:46/255 |
| Update with empty patch → `ValueError("Koi field update nahi diya")` | booking.py:213 |
| DocId atomic path (bookno race) | reservation.py:57 |

## 4. Error handling

- Validators `ValueError(...)` → UI dialog (VB6 MsgBox parity); `booking.update` empty-patch explicit error (booking.py:213).
- `cancel` non-existent bookno → `0` (SQL affected rows) — caller `assert >= 1` pattern (test_front_office.py:71).
- `res_status_pdf` failure → caller shell catches `Exception` → `"(PDF preview unavailable)"` (shell.py:1027-1028) — report rows hi dikhata hai.
- `_map`/`_validate` row-normalize pattern (booking.py:15/46, guestprof.py:26/37).
- Test status (L1, L2b): `fails=0` (`TEST_RESULTS.md`); KI impact: KI-7 `Reservation Status Report` skipped_messagebox class ka nahi — yahan app behavior hi QMessageBox hai (documented, FRONTEND §4).
