# 04 — Front Office — Module Manual

Generated: 2026-09-25 | Sources: `_logic.json` (collect_logic.py), live `menuHelp` (Moondata2627), `core/*.py` source, `screenshots/manifest.json`.

## 1. Menu path (MenuHelp)

- **sidebar:** `front office` (Analysis.ini key 9, Opt1='14')
- **Module_Name groups (11):** `FrontDesk, FDO, FDOMenu, FDOForms, FDORep, FDOReports, TFDOForms, FDOMIS, FDOMISRep, FDOTax, FDOTaxr`
- **leaf counts (menuhelp rows classified, total 63):**

| masters | operations | reports | hidden | other (unclassified) |
|---:|---:|---:|---:|---:|
| 0 | 1 | 33 | 0 | 29 |

Notes:
- masters=0: FO ke menuHelp rows me curated master captions/Module_Name nahi — Guest Profile/Room Master jaise masters `Mast/GEN` groups (02_MainSetup) me baithe hain; UI registry me FO ke andar 5 master leaves hain (§3).
- operations=1 (menuhelp): sirf `Reverse Check Out` (FDOMenu) curated caption se match hua; WalkIn CheckIn/Merge Room/Bill Re-Settlement jaise leaves `other` bucket me baithe hain (caption-containment rule, `collect_logic.classify`) — UI registry me 8 operation leaves hain (§3).
- other=29: 7 sidebar/group nodes (Flag='N') + 22 entry leaves (Flag='E') — Turism forms, tax forms, GRC, bill reprint aadi. Classification detail: `00_GLOBAL/MenuHelp_Module_Map.md` §rules.

## 2. Workflow (menu → screen → action → DB write)

| # | Menu leaf (Flag) | Screen | User action | Core function | Tables written |
|---|---|---|---|---|---|
| 1 | WalkIn CheckIn (E) | Check In form | walk-in guest + room entry, Save | `checkin.create_checkin` | INSERT `GuestFolio`, `RoomOcc`, `FolioLog` |
| 2 | Booking Operations (E) | Booking browser | new booking / edit / cancel | `booking.create_booking` / `update_booking` / `cancel_booking` | INSERT/UPDATE `Booking`, `BookingMore`, `BookingPlanDetails` |
| 3 | — (reservation → folio) | Check In from booking | convert booking to stay | `folio.from_booking` | INSERT `GuestFolio`, `RoomOcc` (from Booking rows) |
| 4 | Check Out (E) | Check Out screen | settle + checkout folio | `checkout.do_checkout` | UPDATE `RoomOcc` (ChkOutDate/ChkOutTime), INSERT `FolioLog` |
| 5 | Reverse Check Out (E) | Check Out screen | undo checkout | `checkout.reverse_checkout` | UPDATE `RoomOcc` (NULL out), UPDATE `PayCharge` (SettleDate/ModeSet), UPDATE `FOMBillDetails` (Status='CANCEL'), INSERT `FolioLog` |
| 6 | Room Change (E) | Room Change form | move guest to new room | `fo_ops.room_change` | INSERT `RoomOcc` (new SNo), UPDATE `RoomOcc` (old = checkout, plan re-link), UPDATE `GuestMessage`, UPDATE `Booking.OccRoom`, UPDATE `RoomMast.RoomStat='D'`, INSERT `PlanDetails`, INSERT `EPABX_IN` |
| 7 | Merge Room (E) | Merge form | merge charges of 2 rooms | `fo_ops.merge_charge` | UPDATE `GuestFolio` (mFolioNo), UPDATE `PayCharge` (FolioNo/RelatedFolioNo) |
| 8 | Bill Re-Settlement (E) | Settlement form | change settlement split | `fo_ops.re_settlement` | INSERT `PayCharge` (new split lines) |
| 9 | (folio charge entry) | Folio screen | post room charge | `folio.post_room_charge` | INSERT `PayCharge` |
| 10 | (folio payment) | Folio screen | receive payment | `folio.receive_payment` (+ `_create_contra` company credit) | INSERT `PayCharge` (payment + contra line) |
| 11 | (folio settle) | Folio screen | final bill settle | `folio.settle_folio` | INSERT `FOMBillDetails`, UPDATE `PayCharge.Bill_No/SettleDate`, INSERT `FolioLog` |
| 12 | (amend departure) | Check In edit | change dep date | `folio.amend_departure` | INSERT `GuestFolioAmend`, UPDATE `GuestFolio`, UPDATE `RoomOcc`, UPDATE `PlanDetails` |

Step 9–12 ke menu leaves `other` bucket me hain (folio context menu, menuHelp row nahi) — flows `core/folio.py` source se hain (INSERT/UPDATE grep).

## 3. Layers snapshot

**Registry leaves (UI screens, `_logic.json registry_hits`):**

| Layer | Leaves (n) | List |
|---|---|---|
| Masters | 5 | Guest Profile, Guest Registration, Room Master, Room Category, Plan Master |
| Operations | 8 | Check In, Check In Browser, Check Out, Booking Operations, Room Change, Folio Log, Room Check Out, Guest Services |
| Reports | 5 | Room Status, Room Display, Reservation Status Report, Guest History, Guest Ledger |
| Hidden (Flag='V') | 0 | — |

**Reports (menuHelp Flag='R', 33):** Business Source Occupancy, Room Type Occupancy Analysis, Instant House Count, Room Inventory, Charge Payment Detail, Payments By Cashier, Cashier Report, Settlement Report, Cancel Bill Details, Room Change History, FOM Sales Register, Room Wise Plan Detail, Occupancy Report, Bill Change Report, Check Out Register, Check In Register, Expected Check Out, Guest Extra Charges, Checked In Guest Detail, Room Rent Audit Report, Sales Report, Guest Payments, Plan Report, Occupancy Display, Guest wise Analysis, Company wise Analysis, Guestwise Charges Detail, Room Occupancy, Room Type Occupancy, Room Wise Room Revenue, Occupancy Analysis, Company wise Nights, Revenue During the stay.

**Other (unclassified) = 29:** 7 group nodes (Front Office, Operations, Reports, Tourism Forms, M.I.S., Tax Reports) + 22 entry leaves (WalkIn CheckIn, Room Status, Expense Entry, Display Rack, Bill Reprint, Merge Room, Bill Re-Settlement, Reverse Room Merge, Plan Meal Tokens, GRC Printing, Blank GRC, Form C, Tourism Form 1/2/4/5/6, Luxury Tax Report, Monthly Return, L.T. Form II/IV, FOM Tax Detail, Tax Wise Charge Detail). Count kabhi drop nahi hota (`menuhelp.counts.other`).

## 4. Screenshot index

| File | Leaf | Status |
|---|---|---|
| `screenshots/00_shell_module.png` | shell (FO sidebar view) | ok |
| `screenshots/10_masters_Guest_Profile.png` | Guest Profile | ok |
| `screenshots/20_masters_Guest_Registration.png` | Guest Registration | skipped_messagebox (coming_soon — gap, KI-7) |
| `screenshots/30_masters_Room_Master.png` | Room Master | ok |
| `screenshots/40_masters_Room_Category.png` | Room Category | ok |
| `screenshots/50_masters_Plan_Master.png` | Plan Master | ok |
| `screenshots/60_operations_Check_In.png` | Check In | ok |
| `screenshots/70_operations_Check_In_Browser.png` | Check In Browser | ok |
| `screenshots/80_operations_Check_Out.png` | Check Out | ok |
| `screenshots/90_operations_Booking_Operations.png` | Booking Operations | ok |
| `screenshots/100_operations_Room_Change.png` | Room Change | ok |
| `screenshots/110_operations_Folio_Log.png` | Folio Log | ok |
| `screenshots/120_operations_Room_Check_Out.png` | Room Check Out | ok (capture rescue se — app gap KI-8) |
| `screenshots/130_operations_Guest_Services.png` | Guest Services | ok |
| `screenshots/140_reports_Room_Status.png` | Room Status | ok |
| `screenshots/150_reports_Room_Display.png` | Room Display | ok |
| `screenshots/160_reports_Reservation_Status_Report.png` | Reservation Status Report | skipped_messagebox (inactive menu — gap, KI-7) |
| `screenshots/170_reports_Guest_History.png` | Guest History | ok |
| `screenshots/180_reports_Guest_Ledger.png` | Guest Ledger | ok (capture rescue se — app gap KI-8) |

Manifest: `screenshots/manifest.json` (generated 2026-09-25, failed=[]).

## 5. Test status

- Results: [`TEST_RESULTS.md`](TEST_RESULTS.md) — L1 334 / L2 6 / L2b 27 / L3 40 **PASS**; L2c 5 of 9 scripts FAIL (known issues KI-1..KI-5).
- Run log: [`../00_GLOBAL/RUN_TEST_LOG.md`](../00_GLOBAL/RUN_TEST_LOG.md) — `2026-09-25 | 04_FrontOffice | L1..L3 | L1 334 passed, L2 6 passed, L2b 27 passed, L3 40 passed`.
- Master matrix: [`../00_Instructions/TEST_PLAN_MASTER.md`](../00_Instructions/TEST_PLAN_MASTER.md).

## 6. Related docs

- [`DATABASE.md`](DATABASE.md) — tables, read/write flows, transactions, VNo race safety, permission SQL
- [`FRONTEND.md`](FRONTEND.md) — PyQt6 forms + shell registry mapping
- [`BACKEND.md`](BACKEND.md) — core functions + logic
- [`TEST_PLAN.md`](TEST_PLAN.md) — module test plan
- [`01_Masters/`](01_Masters/), [`02_Operations/`](02_Operations/), [`03_Reports/`](03_Reports/) — per-layer READMEs + screenshots
