# 03 - Reservation - Module Manual

## 1. Menu path (MenuHelp)

- Sidebar root: `reservation` (menuHelp group caption `Reservation`, `Module_Name` bucket `Reserv`).
- Module_Names (`_logic.json`): `Reserv`, `ReservationEnt`, `ResOpEnt`, `ResStatusRpt`, `AdvRecdRpt`, `ReservationMIS`.
- Counts (`_logic.json`, classify): **masters=0, operations=2, reports=5, hidden=0, other=16**.
- `other=16` (compulsory): group headers/misc — `Reservation`, `Operations`, `Reservation Status Report`, `Advance Recd. Report`, `M.I.S.`, `Look Up Room types`, `Look Up Rooms`, `Advance Deposit`, `Confirmation Letters`, `Cancellation Letters`, `Registration Card`, `Reservation Status Screen`, `7-730 Days Forecast`, `23 Day Room Availability Forecast`, `23 Day Room Type Availability Forecast`, `Package Forecast` (letters/lookups/forecast headers — registry ke saath capture me shamil nahi; `Reservation Status Report` ka registry leaf alag caption se hit hota hai, see §3).
- Curated leaves (`registry_hits`): operations 3 (Booking Operations, Reservation/Cancellation, Reservation With History), reports 4 (Reservation Status Report, Reservation Status, Reservation Status Arrival, Reservation Status In-House).

## 2. Workflow (menu → screen → action → DB write)

| # | Menu leaf | Screen (opener) | Action | DB write |
|---|---|---|---|---|
| 1 | Booking Operations (registry, menuHelp row nahi) | `BookingOpsDialog(QDialog)` → `booking_ops_ui.open_booking_ops` (shell.py:1492, booking_ops_ui.py:313, modal `.exec()`) | New booking / room conflict check | `reservation.insert_draft` → `INSERT Booking` (reservation.py:167) + `INSERT BookingLog` (:210); ya `booking.insert` → `INSERT Booking` (booking.py:109/183) after `check_room_conflict` (booking.py:51) |
| 2 | Reservation/Cancellation (`ResOpEnt`, `Flag=E`) | `ReservationBrowser(QDialog)` → `.exec()` (shell.py:1098, reservation_browser.py:28, modal) | Edit booking / cancel | `reservation.update` → `UPDATE Booking SET GuestName, ArrDate, DepDate...` (reservation.py:232); `reservation.cancel` → `UPDATE Booking SET Cancel='Y', CancelDate, CancelUName` (:274) + `INSERT BookingCancelDetails` (:282) |
| 3 | Reservation With History (`ResOpEnt`) | `ReservationBrowser(QDialog)` → `.exec()` (shell.py:1555) | Browser + `BookingLog` history | same as #2 (history read: `INSERT BookingLog` on drafts — `reservation._log` :201) |
| 4 | Reservation Status Report / Reservation Status / Reservation Status Arrival (`ResStatusRpt`, `Flag=R`) | `_open_res_report('arrival')` (shell.py:1021, 1187-1189) → `reports.res_status('arrival')` + `QMessageBox.information` (rows + PDF path) | Arrival status summary | read-only: `SELECT TOP 500 ... FROM Booking WHERE Cancel<>'Y' AND ArrDate >= today` (core/reports.py `res_status`) + PDF `res_status_pdf` |
| 5 | Reservation Status In-House (`ResStatusRpt`) | `_open_res_report('inhouse')` (shell.py:1190) | In-house status summary | read-only same path, `mode='inhouse'` |

## 3. Layers snapshot

| Layer | Count | registry hits (`_logic.json`) |
|---|---|---|
| masters | 0 | — |
| operations | 2 (+ Booking Operations registry leaf) | Booking Operations, Reservation/Cancellation, Reservation With History |
| reports | 5 | Reservation Status Report, Reservation Status, Reservation Status Arrival, Reservation Status In-House |
| hidden (`V`) | 0 | — |
| other (unclassified) | 16 | see §1 |

Note: `Reservation Status Report` menuHelp caption classify `other` me (group/header row) par registry leaf exist karta hai — capture me liya gaya.

## 4. Screenshot index

Live capture (SA/KANPUR, manifest `screenshots/manifest.json`, `failed=[]`):

| File | Layer | Leaf | Status |
|---|---|---|---|
| `screenshots/00_shell_module.png` | shell | Reservation sidebar root | ok |
| `screenshots/10_operations_Booking_Operations.png` | operations | Booking Operations | ok |
| `screenshots/20_operations_Reservation-Cancellation.png` | operations | Reservation/Cancellation | ok |
| `screenshots/30_operations_Reservation_With_History.png` | operations | Reservation With History | ok |
| `screenshots/40_reports_Reservation_Status_Report.png` | reports | Reservation Status Report | skipped_messagebox |
| `screenshots/50_reports_Reservation_Status.png` | reports | Reservation Status | ok |
| `screenshots/60_reports_Reservation_Status_Arrival.png` | reports | Reservation Status Arrival | skipped_messagebox |
| `screenshots/70_reports_Reservation_Status_In-House.png` | reports | Reservation Status In-House | skipped_messagebox |

`skipped_messagebox` = opener seedha `QMessageBox.information` dikhata hai (report count + PDF path) — screenshot ke bajaye message log (capture `skipped_messagebox` status, manifest `failed` me nahi).

## 5. Test status

- `TEST_RESULTS.md` (L1, L2b only): `layers=2 fails=0` — L1 unit + L2b `test_front_office.py` green (reservation CRUD/cancel/no-show/res_status coverage).
- Coverage: `tests/test_front_office.py` (`insert_draft/get/cancel/mark_no_show/res_status/res_status_pdf`), `tests/test_validation_crud.py` (GuestProf `_validate`, `insert_draft` guards), `tests/unit/test_wave_a_logic.py` (booking overlap logic).
- Detail: [`TEST_RESULTS.md`](TEST_RESULTS.md); KI list: `00_Instructions/TEST_PLAN_MASTER.md`.

## 6. Related docs

- Database: [`DATABASE.md`](DATABASE.md) · Frontend: [`FRONTEND.md`](FRONTEND.md) · Backend: [`BACKEND.md`](BACKEND.md) · Tests: [`TEST_PLAN.md`](TEST_PLAN.md)
- Layers: [`01_Masters/README.md`](01_Masters/README.md) · [`02_Operations/README.md`](02_Operations/README.md) · [`03_Reports/README.md`](03_Reports/README.md)
- SOP: `00_Instructions/MANUAL_TEMPLATE.md` · capture: `00_Instructions/CAPTURE_GUIDE.md` · global menu map: `00_GLOBAL/MenuHelp_Module_Map.md`
