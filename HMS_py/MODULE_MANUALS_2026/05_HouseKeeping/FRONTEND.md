# 05 - House Keeping - Frontend (PyQt6)

## 1. Shell integration

- Sidebar root `house keeping` → `_on_sidebar_click` → `_safe_open(caption)` (shell.py:2194/2284).
- Registry keys (file:line):
  - `Room Status` → `rs_ui.open_roomstatus(w, user)` (shell.py:1108; `roomstatus_ui as rs_ui` shell.py:666 wave-2 import) — `Ctrl+R` global shortcut (shell.py:2110).
  - `Complaint Master` → `_open_fv_list` viewer (shell.py:1282-1285).
  - `Complaint Clearance` → `_open_fv_list` (shell.py:1286-1289).
  - `Lost / Found Entry` → `gsvc_ui.open_guest_services` (shell.py:1290).
  - `Claim Entry` → `_open_fv_list` "Claims (Lost & Found)" (shell.py:1291-1294).
  - `Room Block` → `_open_fv_list` over `roomstatus.list_blocks` (shell.py:1295-1298).
- `_open_fv_list` = generic flat-view DB list window (shell helper, caption + row-lambda).

## 2. Screen inventory (leaf → Qt class → file:line)

| Leaf | Qt class / opener | File:line |
|---|---|---|
| Room Status (curated, manifest) | `RoomStatusForm(QDialog)` → `open_roomstatus` (exec) | roomstatus_ui.py:62/333 |
| Complaint Master | `_open_fv_list` flat viewer | shell.py:1282 |
| Complaint Clearance | `_open_fv_list` | shell.py:1286 |
| Lost / Found Entry | `GuestServicesDialog(QDialog)` → `open_guest_services` (exec) | guest_services_ui.py:16/333 |
| Claim Entry | `_open_fv_list` | shell.py:1291 |

(Shell screenshot: `screenshots/00_shell_module.png` — House Keeping root expanded.)

## 3. Navigation & shortcuts

- Sidebar `house keeping` → leaf buttons → `_safe_open`.
- `Ctrl+R` → `Room Status` (global, shell.py:2110 — FO shortcut bhi isi leaf par).
- `Alt+N` module root shortcut (sidebar Alt+idx).
- Room Status form ke andar action buttons (HK set/block/move) form-internal (roomstatus_ui.py:62 class).

## 4. Modal vs non-modal

| Kind | Leaves | Evidence |
|---|---|---|
| **Modal** (`QDialog.exec`) | Room Status, Lost / Found Entry | roomstatus_ui.py:334, guest_services_ui.py:335 |
| **Modal viewer** (`_open_fv_list` window) | Complaint Master, Complaint Clearance, Claim Entry, Room Block | shell.py:1282-1298 (flat list dialog path) |

Capture: curated 1 leaf (`Room Status`) `ok`, `failed=[]`; other features registry par hain (curated scope — README §1).
