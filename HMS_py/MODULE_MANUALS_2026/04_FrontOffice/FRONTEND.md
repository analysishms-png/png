# 04 — Front Office — Frontend (PyQt6)

Sources: `ui/shell.py` registry lines, opener modules, `screenshots/manifest.json` (2026-09-25).

## 1. Shell integration

- Sidebar root: `mod_target="front office"` (shell.py `_side_buttons`) → `_on_sidebar_click` (shell.py:2284) → FO dashboard + `_load_module_menu("Front Office")` — caption path case-insensitive match.
- Sidebar view: `fo_dashboard` (`FrontOfficeDashboard`, shell.py:1907) + `Ctrl+N/I/O/R/P` shortcuts (§3).
- Registry: `_form_registry()` (shell.py:659) caption→opener lambdas; FO leaves mostly P4-a block (shell.py:1058-1064), plus scattered entries (1103-1109, 1187-1204, 1351-1359, 1439-1440, 1492-1496, 1615-1619, 1626).
- Dispatch: sidebar click → `_safe_open(leaf)` (shell.py:2194, `fn(self)` — no try/except, no `.show()`; opener hi show/exec karta hai) → `_reg_ci` (shell.py:1763, lowercase key).
- Registry import aliases (lazy try-imports): `fo`=frontoffice(663), `p2`=p2_masters(660), `fo2`=checkout_ui(666), `rs_ui`=roomstatus_ui(667), `ghu`=guest_history_ui(679), `folui`=folio_ui(694), `fdui`=fd_forms_ui(725), `postui`=posting_forms_ui(731), `wrui`=walkin_rack_ui(737), `book_ui`=booking_ops_ui(742), `gsvc_ui`=guest_services_ui(758), `fosub_ui`=fo_sub_forms_ui(850), `reg_ui`=registration_entry_ui(866), `PlanMasterForm`=plan_master(661).

## 2. Screen inventory (leaf → Qt class → file:line)

| Layer | Leaf | Opener (registry line) | Qt class / call | File | Screenshot |
|---|---|---|---|---|---|
| Masters | Guest Profile | shell:1059 `fo.open_guestprof` | `BaseMasterForm(config).exec()` | frontoffice.py:65 | 10_masters_Guest_Profile.png |
| Masters | Guest Registration | shell:1440 `reg_ui.open_registration_entry` | `RegistrationEntryWindow.show()` | registration_entry_ui.py:184-186 | 20_masters_Guest_Registration.png (skipped_messagebox) |
| Masters | Room Master | shell:1082 `p2.open_roommaster` | `_open_dialog → BaseMasterForm.exec()` | p2_masters.py:541, :5 | 30_masters_Room_Master.png |
| Masters | Room Category | shell:1081 `p2.open_roomcategory` | `RoomCategoryMasterForm.exec()` | p2_masters.py:537-538 | 40_masters_Room_Category.png |
| Masters | Plan Master | shell:1075 | `PlanMasterForm(w).exec()` | plan_master.py | 50_masters_Plan_Master.png |
| Operations | Check In | shell:1060 `wrui.open_walkin_entry` | `WalkInEntryWindow.show()` | walkin_rack_ui.py:721-723 | 60_operations_Check_In.png |
| Operations | Check In Browser | shell:1063 `fo.open_checkin` | `CheckInBrowser.exec()` | frontoffice.py:223-224 | 70_operations_Check_In_Browser.png |
| Operations | Check Out | shell:1103 `fo2.open_checkout` | `CheckOutBrowser.exec()` | checkout_ui.py:413-418 | 80_operations_Check_Out.png |
| Operations | Booking Operations | shell:1492 `book_ui.open_booking_ops` | `BookingOpsDialog.exec()` | booking_ops_ui.py:313-315 | 90_operations_Booking_Operations.png |
| Operations | Room Change | shell:1359 `fosub_ui.open_room_change` | `RoomChangeWindow.show()` | fo_sub_forms_ui.py:416-417 | 100_operations_Room_Change.png |
| Operations | Folio Log | shell:1192 `folui.open_folio` | `FolioBrowser.show()` (Window flag) | folio_ui.py:379-386 | 110_operations_Folio_Log.png |
| Operations | Room Check Out | shell:1615 `fdui.open_room_checkout` | `RoomCheckOutWindow(parent)` — **construct, no show** | fd_forms_ui.py:724-725 | 120_operations_Room_Check_Out.png (capture rescue, KI-8) |
| Operations | Guest Services | shell:1496 `gsvc_ui.open_guest_services` | `GuestServicesDialog.exec()` | guest_services_ui.py:333-335 | 130_operations_Guest_Services.png |
| Reports | Room Status | shell:1108 `rs_ui.open_roomstatus` | `RoomStatusForm.exec()` | roomstatus_ui.py:333-334 | 140_reports_Room_Status.png |
| Reports | Room Display | shell:1204 (same rs_ui) | `RoomStatusForm.exec()` | roomstatus_ui.py:333-334 | 150_reports_Room_Display.png |
| Reports | Reservation Status Report | shell:1187 `_open_res_report("arrival")` | `QMessageBox.information` (rows+PDF popup, koi form nahi) | shell.py:1187+ | 160_reports_Reservation_Status_Report.png (skipped_messagebox, KI-7) |
| Reports | Guest History | shell:1203 `ghu.open_guest_history` | `GuestHistoryViewer.exec()` | guest_history_ui.py:105-106 | 170_reports_Guest_History.png |
| Reports | Guest Ledger | shell:1616 `fdui.open_guest_ledger` | `GuestLedgerWindow(parent)` — **construct, no show** | fd_forms_ui.py:728-729 | 180_reports_Guest_Ledger.png (capture rescue, KI-8) |

Non-registry reports (33 menuHelp Flag='R' rows) → `_open_report(cap)` (shell.py) → `core/reports` engine (PDF/popup).

## 3. Navigation & shortcuts

| Key | Action | shell.py |
|---|---|---|
| `Alt+1..9` | sidebar buttons click (first 9 roots; Alt+5 = front office) | 2103-2104 |
| `Ctrl+N` | Reservation (dashboard action) | 2106 |
| `Ctrl+F` | `_safe_open("Guest Profile")` | 2107 |
| `Ctrl+I` | `_safe_open("Check In")` | 2108 |
| `Ctrl+O` | `_safe_open("Check Out")` | 2109 |
| `Ctrl+R` | `_safe_open("Room Status")` | 2110 |
| `Ctrl+P` | `_safe_open("Plan Master")` | 2111 |
| `F5` | `fo_dashboard.refresh()` | 2112 |

Sidebar navigation (Alt keys) known-broken for Finance (Alt+F) — QA history; FO path via sidebar click reliable.

## 4. Modal vs non-modal

**Modal (QDialog.exec — capture watchdog blocks here, leaf sabr karta hai):**
Guest Profile, Plan Master, Room Master, Room Category, Check In Browser, Check Out, Booking Operations, Guest Services, Room Status, Room Display, Guest History.

**Non-modal (widget .show() — leaf event loop me visible):**
Guest Registration, Check In (WalkIn), Room Change, Folio Log.

**Hidden-return (construct without .show — app-side gap, KI-8):**
Room Check Out, Guest Ledger — `fd_forms_ui.py` ke saare openers (716-753) window return karte hain bina show kiye (`__main__` smoke block me hi show hota hai, line 764). Real app me bhi yeh leaves invisible khulti hain. Capture tool `capture_leaf` rescue: fn return value me hidden QWidget milta toh `show()+grab()` (`capture_module.py`), warna leaf `failed` hota.

**MessageBox leaves (form hi nahi, KI-7):**
Reservation Status Report (`QMessageBox.information` — report result popup), Guest Registration (coming_soon/permission popup during capture).
