# 04 Front Office — Operations

## Leaves (MenuHelp)

**MenuHelp bucket (`menuhelp.operations`, 1 row) — classification rule: caption containment:**

| # | Option (caption) | Flag | Param_Str | Module_Name | Screenshot |
|---|---|---|---|---|---|
| 1 | Reverse Check Out (`caption='reverse check out'`) | E | AEDP | FDOMenu | (registry me `Check Out` leaf se; alag opener `posting_forms_ui.open_rev_checkout`) |

**Registry leaves (UI screens, `_logic.json registry_hits.operations`) — 8:**

| # | Option (caption) | Screenshot |
|---|---|---|
| 1 | Check In | `screenshots/60_operations_Check_In.png` |
| 2 | Check In Browser | `screenshots/70_operations_Check_In_Browser.png` |
| 3 | Check Out | `screenshots/80_operations_Check_Out.png` |
| 4 | Booking Operations | `screenshots/90_operations_Booking_Operations.png` |
| 5 | Room Change | `screenshots/100_operations_Room_Change.png` |
| 6 | Folio Log | `screenshots/110_operations_Folio_Log.png` |
| 7 | Room Check Out | `screenshots/120_operations_Room_Check_Out.png` (capture rescue, app gap KI-8) |
| 8 | Guest Services | `screenshots/130_operations_Guest_Services.png` |

Note: WalkIn CheckIn / Merge Room / Bill Re-Settlement / Plan Meal Tokens / GRC jaise entry leaves menuHelp me hain par `other` bucket me baithe (caption-containment rule) — kaam ke saare UI screens upar registry list me hain. Poora `other` list `../README.md` §3.

## Functioning

- **Check In** — walk-in entry: guest + room + dates → save. Core: `checkin.create_checkin` (GuestFolio+RoomOcc+FolioLog). UI: `walkin_rack_ui.open_walkin_entry` (show).
- **Check In Browser** — live check-ins ki list + select/edit. Core: `checkin.list_checkins/get`. UI: `CheckInBrowser.exec()` (modal).
- **Check Out** — settle + checkout (reverse mode `reverse=True` bhi isi se). Core: `checkout.do_checkout` / `reverse_checkout`. UI: `CheckOutBrowser.exec()`.
- **Booking Operations** — reservation CRUD (create/update/cancel + conflict check). Core: `booking.check_room_conflict/insert/update/cancel`. UI: `BookingOpsDialog.exec()`.
- **Room Change** — occupied folio ko naye room me move. Core: `fo_ops.room_change` (7 steps, DATABASE.md §3). UI: `RoomChangeWindow.show()`.
- **Folio Log** — folio browser: charges/payments/amend depart/kitne bhi folio ops. Core: `folio.folio_charges/receive_payment/amend_departure`. UI: `FolioBrowser.show()`.
- **Room Check Out** — group checkout window. Core: `checkout.*` + fd_forms. UI: `fd_forms_ui.open_room_checkout` — construct **without .show()** (app gap KI-8; capture rescue).
- **Guest Services** — comments/complaints/lost-found/wakeup/messages. Core: `guest_services.py` (31 CRUD fns). UI: `GuestServicesDialog.exec()`.

## Database Tables (this layer)

| Table | Use (workflow row) |
|---|---|
| `GuestFolio` | check-in create, amend, merge (mFolioNo) |
| `RoomOcc` | check-in/checkout/room change stamps (SNo-level history) |
| `PayCharge` | charges, payments, re-settlement split |
| `FolioLog` | har operation ka event audit (Flags I/O/R/S) |
| `Booking`, `BookingMore`, `BookingPlanDetails` | booking CRUD + co-passengers + plan |
| `RoomMast` | free-room validation + RoomStat='D' (room change) |
| `GuestMessage` | room change par RoomNo re-link |
| `PlanDetails` | room change par plan re-link + amend departure |
| `FOMBillDetails` | final bill settle (Bill_No) + reverse (CANCEL) |
| `GuestFolioAmend` | departure-change audit |

## Backend SQL pattern

- Reads: `WHERE RTRIM(col)=? AND ChkOutDate IS NULL AND Site_Code=?` (in-house + site filter) — examples `../DATABASE.md` §2.
- Writes: `BeginTrans → validate → series of INSERT/UPDATE (commit=False) → cn.commit()` ; exception → `cn.rollback()` — diagrams `../DATABASE.md` §3 (create_checkin, do_checkout, room_change, re_settlement).
- Race: `next_folio` UPDLOCK/HOLDLOCK, `db.next_vno` — `../DATABASE.md` §4.

## MenuHelp permission check

```sql
SELECT UserName, CompCode, [Option], Param_Str, Flag, Module_Name
FROM menuHelp WHERE RTRIM([Option]) = ? AND UserName = ?
```
Live sample (2026-09-25, UserName='SA'):
```
Walkin Checkin     -> [SA, Param_Str='AEDP', Flag='E', Module_Name='FDOMenu']
Reverse Check Out  -> [SA, Param_Str='AEDP', Flag='E', Module_Name='FDOMenu']
```
Enforcement: `menu_help.can_open` (menu filter, menu_help.py:571-573) + `can/rights` (A/E/D/P checks).
