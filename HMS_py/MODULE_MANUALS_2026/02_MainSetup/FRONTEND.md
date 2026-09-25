# 02 - Main Setup - Frontend (PyQt6)

## 1. Shell integration

- Sidebar root `main setup` → `_on_sidebar_click` → `_safe_open(caption)` → `_form_registry()` (shell.py:2194/2284).
- Registry keys (file:line):
  - `Room Master` → `p2.open_roommaster` (shell.py:1082) — `p2_masters` config-driven form (p2_masters.py:541).
  - `Room Category` → `p2.open_roomcategory` (shell.py:1081, p2_masters.py:537).
  - `Plan Master` → `PlanMasterForm(w).exec()` (shell.py:1075; import `plan_master.PlanMasterForm` shell.py:661).
  - `Guest Profile` → `fo.open_guestprof` (shell.py:1059; import `frontoffice as fo` shell.py:663) → `BaseMasterForm(guestprof_config()).exec()`.
  - `Department Master` → `pfui.open_department_master` (shell.py:1233; `partial_forms_ui` shell.py:720).
  - Group-header aliases (`Main Setup`/`General Setup`/`Banquet`/`Inventory`/`Utility`) → coming-soon roots (menu `other` bucket).
- Global shortcuts touching this module: `Ctrl+F` → `Guest Profile` (shell.py:2107), `Ctrl+P` → `Plan Master` (:2111).

## 2. Screen inventory (leaf → Qt class → file:line)

| Leaf (manifest) | Qt class / opener | File:line |
|---|---|---|
| Room Master | `RoomMasterMasterForm(BaseMasterForm)` (QDialog, exec) | p2_masters.py:541 (config `roommaster_config`) |
| Room Category | `RoomCategoryMasterForm(BaseMasterForm)` (exec) | p2_masters.py:316/537 |
| Plan Master | `PlanMasterForm` (QDialog, exec) | plan_master.py (shell:1075) |
| Guest Profile | `BaseMasterForm(guestprof_config())` (exec) | frontoffice.py `open_guestprof` (shell:1059) |
| Department Master | `DepartmentMasterWindow(QMainWindow)` → `.show()` non-modal | partial_forms_ui.py:1132 (shell:1233) |

(Shell screenshot: `screenshots/00_shell_module.png` — Main Setup root expanded.)

## 3. Navigation & shortcuts

- Sidebar `main setup` → leaf buttons → `_safe_open`.
- `Ctrl+F` = Guest Profile, `Ctrl+P` = Plan Master (global, chalte hain — shell.py:2107/2111).
- `p2_masters` launcher `P2Launcher(QMainWindow)` (p2_masters.py:564) — group-wise master grid optional path; capture ne registry leaves directly khole.
- Module root shortcut `Alt+N` (sidebar_buttons `mod_target='main setup'`, Alt+idx assign).

## 4. Modal vs non-modal

| Kind | Leaves | Evidence |
|---|---|---|
| **Modal** (`QDialog.exec`) | Room Master, Room Category, Plan Master, Guest Profile | p2_masters.py:537/541, shell.py:1075, frontoffice `open_guestprof` |
| **Non-modal** (`QMainWindow.show`) | Department Master | partial_forms_ui.py:1132 |

Capture: 5/5 `ok`, `failed=[]` (modal exec watchdog + non-modal rescue dono chale).
