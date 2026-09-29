# 04 — Front Office — Test Plan (module logic)

Sources: `tests/` scan (2026-09-25), `TEST_RESULTS.md`, `screenshots/manifest.json`.

## 1. Coverage map (feature → test file)

| Flow | Unit test (L1) | DB test (L2/L2b) | UI test (L3) |
|---|---|---|---|
| Check-in create/validate (guest/room/dates) | `tests/unit/test_core_validation.py` (reservation/create validators), `tests/test_validation_crud.py` (create_checkin CRUD) | `tests/database/test_receive_payment.py` (folio setup path) | `tests/test_wave_ui_forms.py` |
| Checkout + reverse (RoomOcc stamps) | `tests/unit/test_core_validation.py:439` (live PayCharge link col), `:462` (checkout+reverse update RoomOcc) | — | `tests/test_wave_ui_forms.py` |
| Folio balance / settle | `tests/unit/test_core_validation.py:419-433` (balance calc/zero/negative) | — | `folio_ui` in `test_wave_ui_forms.py` |
| Room change / merge / re-settle | `tests/unit/test_missing_logic_core.py:69-269` (room_change moves/rejects, merge moves/rejects, re-settle reverses + **sum-mismatch guard :252**) — monkeypatched FakeCn | — | `fo_sub_forms_ui` in `test_wave_ui_forms.py` |
| Receive payment / contra | `tests/unit/test_missing_logic_core.py` | `tests/database/test_receive_payment.py` | `posting_forms_ui` |
| Checkout type probe (BUG-016) | `tests/unit/test_core_validation.py` (`_get_checkout_type` column candidates) | — | — |
| Reservation lifecycle | `tests/unit/test_core_validation.py:174-182` (docid/site args) | `tests/test_front_office.py::TestReservationLifecycle` (L2b) | `reservation_browser` (L3) |
| Room availability / room_occ CRUD | — | `tests/test_front_office.py::TestRoomAvailability` | `test_wave_ui_forms.py` |
| Res status reports (Guest Ledger reports) | — | `tests/test_front_office.py::TestResStatusReports` | — |
| Guest services (comments/complaints/wakeup) | `tests/unit/test_core_validation.py` (validators) | `tests/test_front_office.py::TestGuestServices` | `guest_services_ui` (L3) |
| DocId/VNo race (BUG-015) | `tests/unit/test_missing_logic_core.py` + `db.next_vno` unit tests (L1) | — | — |
| Registry/selection guards (BUG-022/024) | `tests/unit/test_bugfix_batch.py:280-352` | — | — |

Layer commands: see `TEST_RESULTS.md` §commands ya `00_Instructions/TEST_PLAN_MASTER.md`.

## 2. Layer commands + status

| Layer | Command (cwd) | Result 2026-09-25 |
|---|---|---|
| L1 unit | `python -m pytest tests/unit -q` (`HMS_py`) | **334 passed** |
| L2 db pytest | `python -m pytest tests/database -q` | **6 passed** |
| L2b FO flow | `python -m pytest tests/test_front_office.py -q` | **27 passed** |
| L2c db scripts | 9 × `python tests/database/<file>.py` | **4 pass, 5 fail** (see §4) |
| L3 UI | `python -m pytest tests/test_wave_ui_forms.py tests/test_ui_walkthroughs.py -q` | **40 passed** |
| L4 live capture | `python -m HMS_py.tools.manual_pipeline.capture_module --module 04_FrontOffice` (cwd `png`) | **failed=[]**, 18 items: 16 ok + 2 skipped_messagebox, 0 invalid images |

Evidence: [`TEST_RESULTS.md`](TEST_RESULTS.md), [`../00_GLOBAL/RUN_TEST_LOG.md`](../00_GLOBAL/RUN_TEST_LOG.md), [`screenshots/manifest.json`](screenshots/manifest.json).

## 3. Manual test script (live app, 10 steps)

| # | Action | Expected | Screenshot ref |
|---|---|---|---|
| 1 | Login ADITYA/112233 → company select → sidebar `front office` (Alt+5) | FO dashboard + module menu loads (menuHelp leaves) | `screenshots/00_shell_module.png` |
| 2 | Ctrl+F (Guest Profile) | BaseMasterForm dialog opens with guest rows from DB (GuestProf 7,802 rows) | `10_masters_Guest_Profile.png` |
| 3 | Check In (Ctrl+I) → walk-in entry, dummy guest + free room, Save | GuestFolio + RoomOcc INSERT; FolioLog Flag='I'; room ab occupied (RoomStatus me dikhe) | `60_operations_Check_In.png` |
| 4 | Check In Browser → naya folio select | CheckInBrowser dialog: rows = live check-ins (Vprefix='2026', Site filter) | `70_operations_Check_In_Browser.png` |
| 5 | Folio Log → folio select → charge + payment entry | PayCharge INSERT lines; balance update (folio_balance) | `110_operations_Folio_Log.png` |
| 6 | Room Change → occupied folio → free room, Save | RoomOcc new SNo + old checkout stamp; RoomMast.RoomStat='D'; `epabx_audited=False` (table absent) | `100_operations_Room_Change.png` |
| 7 | Check Out (Ctrl+O) → settle → checkout | FOMBillDetails + PayCharge.Bill_No update; RoomOcc.ChkOutDate stamped; FolioLog Flag='O' | `80_operations_Check_Out.png` |
| 8 | Reverse Check Out | RoomOcc.ChkOutDate NULL; PayCharge settle cleared; FOMBillDetails Status='CANCEL' | (registry leaf, capture me `Reverse Check Out` menu se) |
| 9 | Room Status (Ctrl+R) / Room Display | RoomStatusForm grid: rack view from RoomMast+RoomOcc | `140_reports_Room_Status.png`, `150_reports_Room_Display.png` |
| 10 | Reports menu → e.g. Check In Register | report engine se PDF/popup output | report leaves (README §3 list) |

Cleanup note: manual test se bane folio DB me rehte hain (test fixtures rollback nahi karte) — demo entries `Narration='PYT test voucher'` wale pattern se rakho ya baad me delete karo.

## 4. Known issues / gaps

Detail + class: [`../00_Instructions/TEST_PLAN_MASTER.md`](../00_Instructions/TEST_PLAN_MASTER.md) §Known issues (KI-1..KI-8).

- **L2c fails (5):** `test_reports_engine` 370/445 (app issue), `test_inventory_registers` 5/8 + `test_tally_export` 20/22 (data gaps), `test_fa_voucher` (orphan-row pollution, cleanup SQL pending user approval), `test_enviro` order-flaky (rerun 18/18 green).
- **Flaky unit:** `test_seasonmaster_parity` (one run 2 fails, rerun green — L1 me hai, order-dependent).
- **Screenshot gaps:** `Guest Registration` + `Reservation Status Report` = `skipped_messagebox` (coming_soon/inactive popup — form hi nahi khulta).
- **App gap (KI-8):** `fd_forms_ui` ke openers window show nahi karte → Room Check Out / Guest Ledger real app me invisible; capture tool rescue se screenshot liya gaya. App fix plan ke bahar.
