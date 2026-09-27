# 03 - Reservation - Frontend (PyQt6)

## 1. Shell integration

- Sidebar root `reservation` → `_on_sidebar_click` → `_safe_open(caption)` → `_form_registry()[caption](self)` (shell.py:2194/2284).
- Registry keys (file:line):
  - `Booking Operations` → `booking_ops_ui.open_booking_ops` (shell.py:1492; import `booking_ops_ui as book_ui` shell.py:742).
  - `Reservation/Cancellation` → `ReservationBrowser(w).exec()` (shell.py:1098).
  - `Reservation With History` → `ReservationBrowser(w).exec()` (shell.py:1555).
  - `Reservation Status Report` / `Reservation Status` / `Reservation Status Arrival` → `_open_res_report('arrival')` (shell.py:1187-1189, def :1021).
  - `Reservation Status In-House` → `_open_res_report('inhouse')` (shell.py:1190).
  - `Reservation Status Screen` (registry alias, menu `other`) → `_open_res_report('arrival')` (shell.py:1556).
  - Dashboard shortcut path: `_safe_open("Reservation/Cancellation")` (shell.py:2393).
- Reports path: `_open_res_report` closure → `core.reports.res_status(mode)` → `res_status_pdf` → `QMessageBox.information` (shell.py:1021-1032) — seedha message box, koi report window nahi (capture status `skipped_messagebox`).

## 2. Screen inventory (leaf → Qt class → file:line)

| Leaf (manifest) | Qt class / opener | File:line |
|---|---|---|
| Booking Operations | `BookingOpsDialog(QDialog)` → `open_booking_ops` (exec) | booking_ops_ui.py:39/313 |
| Reservation/Cancellation | `ReservationBrowser(QDialog)` (exec) | reservation_browser.py:28 (shell:1098) |
| Reservation With History | `ReservationBrowser(QDialog)` (exec) | reservation_browser.py:28 (shell:1555) |
| Reservation Status Report | `_open_res_report('arrival')` → QMessageBox | shell.py:1187/1021 |
| Reservation Status | `_open_res_report('arrival')` → QMessageBox | shell.py:1188/1021 |
| Reservation Status Arrival | `_open_res_report('arrival')` → QMessageBox | shell.py:1189/1021 |
| Reservation Status In-House | `_open_res_report('inhouse')` → QMessageBox | shell.py:1190/1021 |

(Shell screenshot: `screenshots/00_shell_module.png` — Reservation root expanded.)

## 3. Navigation & shortcuts

- Sidebar `reservation` → leaf buttons → `_safe_open` (registry).
- Modal `ReservationBrowser` ke andar: `New Reservation (PYT test-data)` dialog (reservation_browser.py:165), `Edit Booking #N` (reservation_browser.py:217) — sub-dialogs non-modal `show` path.
- Dashboard `Ctrl+N`-style global shortcuts FA/FO ke hain (shell.py:2106-2112) — Reservation ke dedicated leaf shortcuts assign nahi; navigation sidebar se.
- `Alt+7..` module-level sidebar shortcut (sidebar_buttons.py:189) — root nav ke liye.

## 4. Modal vs non-modal

| Kind | Leaves | Evidence |
|---|---|---|
| **Modal** (`QDialog.exec`) | Booking Operations, Reservation/Cancellation, Reservation With History | booking_ops_ui.py:315, shell.py:1098/1555 |
| **Modal message** (`QMessageBox.information`) | Reservation Status Report, Reservation Status, Reservation Status Arrival, Reservation Status In-House | shell.py:1029 |

Sab leaves modal hain — capture watchdog (LEAF_WAIT_MS 900ms + `_close_toplevels`) exec loop break karke grab karta hai; status-report leaves message-box detect karke `skipped_messagebox` (capture `failed=[]`). Koi non-modal masters window is module me nahi (masters bucket = 0).
