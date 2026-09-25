# 04 Front Office — Reports

## Leaves (MenuHelp)

**MenuHelp bucket (`menuhelp.reports`, 33 rows — all Flag='R', Param_Str='***P' print-only):**

| # | Option (caption) | Flag | Param_Str | Module_Name | Screenshot |
|---|---|---|---|---|---|
| 1 | Business Source Occupancy Report | R | ***P | FDORep | |
| 2 | Room Type Occupancy Analysis | R | ***P | FDORep | |
| 3 | Instant House Count | R | ***P | FDORep | |
| 4 | Room Inventory | R | ***P | FDORep | |
| 5 | Charge Payment Detail | R | ***P | FDORep | |
| 6 | Payments By Cashier | R | ***P | FDORep | |
| 7 | Cashier Report | R | ***P | FDORep | |
| 8 | Settlement Report | R | ***P | FDORep | |
| 9 | Cancel Bill Details | R | ***P | FDORep | |
| 10 | Room Change History | R | ***P | FDORep | |
| 11 | FOM Sales Register | R | ***P | FDORep | |
| 12 | Room Wise Plan Detail | R | ***P | FDORep | |
| 13 | Occupancy Report | R | ***P | FDORep | |
| 14 | Bill Change Report | R | ***P | FDORep | |
| 15 | Check Out Register | R | ***P | FDORep | |
| 16 | Check In Register | R | ***P | FDORep | |
| 17 | Expected Check Out | R | ***P | FDORep | |
| 18 | Guest Extra Charges | R | ***P | FDORep | |
| 19 | Checked In Guest Detail | R | ***P | FDORep | |
| 20 | Room Rent Audit Report | R | ***P | FDORep | |
| 21 | Sales Report | R | ***P | FDORep | |
| 22 | Guest Payments | R | ***P | FDORep | |
| 23 | Plan Report | R | ***P | FDORep | |
| 24 | Occupancy Display | R | ***P | FDOMISRep | |
| 25 | Guest wise Analysis | R | ***P | FDOMISRep | |
| 26 | Company wise Analysis | R | ***P | FDOMISRep | |
| 27 | Guestwise Charges Detail | R | ***P | FDOMISRep | |
| 28 | Room Occupancy | R | ***P | FDOMISRep | |
| 29 | Room Type Occupancy | R | ***P | FDOMISRep | |
| 30 | Room Wise Room Revenue | R | ***P | FDOMISRep | |
| 31 | Occupancy Analysis | R | ***P | FDOMISRep | |
| 32 | Company wise Nights | R | ***P | FDOMISRep | |
| 33 | Revenue During the stay | R | ***P | FDOMISRep | |

**Registry leaves (UI screens, `_logic.json registry_hits.reports`) — 5:**

| # | Option (caption) | Screenshot |
|---|---|---|
| 1 | Room Status | `screenshots/140_reports_Room_Status.png` |
| 2 | Room Display | `screenshots/150_reports_Room_Display.png` |
| 3 | Reservation Status Report | `screenshots/160_reports_Reservation_Status_Report.png` (skipped_messagebox, KI-7) |
| 4 | Guest History | `screenshots/170_reports_Guest_History.png` |
| 5 | Guest Ledger | `screenshots/180_reports_Guest_Ledger.png` (capture rescue, KI-8) |

## Functioning

- **Room Status / Room Display** — rack/occupancy grid (RoomMast × RoomOcc live). Core: `roomstatus.room_rack/room_availability`. UI: `RoomStatusForm.exec()` (dono leaves same opener).
- **Reservation Status Report** — arrival/status list + PDF popup. Core: `reports.res_status(mode)` + `res_status_pdf` (shell `_open_res_report`, shell.py:1187) → `QMessageBox` — form nahi, isliye capture me `skipped_messagebox`.
- **Guest History** — guest ki purani stays/folios history. Core: `guest_folio.list_prof_details` / `guestprof`. UI: `GuestHistoryViewer.exec()`.
- **Guest Ledger** — guest/folio ledger statement (charges + payments). Core: `folio.charges_detail/folio_balance`. UI: `fd_forms_ui.open_guest_ledger` — construct without show (KI-8).
- **33 menuHelp reports** — `shell._open_report(cap)` → `reports` engine (`menu_caption_map` exact-match, alias fallback) → PDF/popup; `Flag='R' + Param='***P'` = print-only viewer (`menu_help.can_open` allows open).

## Database Tables (this layer)

Read-only (koi write nahi):

| Table | Reports |
|---|---|
| `RoomOcc`, `RoomMast`, `RoomCat` | occupancy/house count/inventory/rack reports |
| `GuestFolio`, `GuestProf` | checked-in detail, guest history/ledger, expected checkout |
| `PayCharge`, `FOMBillDetails` | charge payment detail, cashier/settlement, sales register, guest payments |
| `Booking` | business source occupancy, reservation status |
| `PlanDetails`, `RevMast` | plan detail/report, room wise revenue |
| `Enviro` | report config (site, dates) |

## Backend SQL pattern

```sql
-- site filter (LOGSITE_CODE pattern)
SELECT … FROM RoomOcc ro … WHERE ro.Site_Code = ? AND ro.ChkOutDate IS NULL …
-- report engine: core/reports.py → parameters → SELECT series → rows/PDF
```
Koi transaction nahi (read-only); BeginTrans pattern sirf write flows me (`../DATABASE.md` §3).

## MenuHelp permission check

```sql
SELECT UserName, CompCode, [Option], Param_Str, Flag, Module_Name
FROM menuHelp WHERE RTRIM([Option]) = ? AND UserName = ?
```
Live sample (2026-09-25, UserName='SA'):
```
Check In Register -> [SA, Param_Str='***P', Flag='R', Module_Name='FDORep']
```
`'***P'` = print-only: `menu_help.can_open` report rows ko open karne deta hai (print viewer), edit nahi (menu_help.py:302-305).
