# FRONT OFFICE IMPLEMENTATION PLAN (2026-09-22)

Command: complete/fix/test the FO module. Ye plan live discovery pe based hai
(code padha, DB se connect hokar verify kiya — SITE=KK, VPREFIX=2026, DB reachable).

## 1. DISCOVERY MAP (kya exist karta hai)

### Core layer (`HMS_py/core/`)
| Area | Module | State |
|---|---|---|
| Reservation | `reservation.py` | ✅ insert_draft/update/cancel(BookingCancelDetails)/delete_draft(PYT-safe); BookingLog audit |
| Check-In | `checkin.py` | ✅ create_checkin (GuestFolio+RoomOcc+FolioLog transactional), next_folio, delete |
| Check-Out | `checkout.py` | ✅ do_checkout (enviro-gated zero-balance, RoomOcc→'O'), reverse_checkout, checkout_list. Docs ka "dead code" claim STALE |
| Folio | `folio.py` | ✅ charges/balance/settle/receive_payment/post_room_charge/amend_departure/from_booking/delete_payment/delete_settle |
| Room Occ | `room_occ.py` | ✅ CRUD + checkout + get_by_room |
| Room Status | `roomstatus.py` | ✅ room_rack, hk_summary, update_hk_status, move_room, room_availability |
| Availability | `roomstatus.room_availability` | ⚠️ sirf in-house aware — **future bookings (Booking) count NAHI karta** |
| Night Audit | `nightaudit.py` | ✅ full posting engine (room+POS revenue, KOT checks) |
| Guest CRUD | `guestprof.py` | ✅ list/search/get/insert/update/delete + duplicate check + next_code |
| Guest Folio | `guest_folio.py` | ✅ CRUD + prof details |
| Guest Services | `guest_services.py` | ✅ comments/complaints/lostfound/wakeup/message CRUD |
| Masters | `roommaster/roomcategory/gueststatus` | ✅ |
| Reports | `reports.py` | ✅ engine (run/export_csv) + ReservStatusArrival/InHouse. ❌ `res_status`/`res_status_pdf` missing → shell crash |

### UI layer (`HMS_py/ui/`)
frontoffice.py, reservation_browser.py, roomstatus_ui.py, checkout_ui.py,
folio_ui.py, guest_lookup_ui.py, guest_history_ui.py, guest_services_ui.py,
registration_entry_ui.py, booking_ops_ui.py, nightaudit_reports_ui.py — sab theme-driven glass UI me already migrated.

### VB6 (`FODER/`)
RrRoomReservation.frm, fdCheckIn.frm, fdDisplayFolio.frm, FrmReservationStatus.frm,
frmReNightAudit.frm, mdlNightAudit.bas, InHouseGuestFolio.frm, GuestProfile.frm —
Python ports inke documented patterns pe bane hain (docstrings me line refs hain).
**VB6 compile/fix yahan possible nahi (VB6 IDE absent) → BLOCKED.md**

## 2. GAPS + BUGS (fix list)

| # | Bug/Gap | Sev | Fix |
|---|---|---|---|
| G1 | `guest_services_ui`: insert_comment/delete_comment/list_complaints — core me `*_comments/complaint` naam hai → AttributeError | P0 | UI calls rename |
| G2 | `member_billing_ui`: list_all/get → list_membill/get_membill (+ lowercase keys) | P0 | UI fix |
| G3 | `facility_billing_ui`: get/list_all/insert → get_fbill/list_fbill/insert_fbill + lowercase rec keys | P0 | UI fix |
| G4 | `shell._open_res_report`: reports.res_status/res_status_pdf exist nahi karte → crash | P0 | Core me dono implement |
| G5 | `sys_config_ui`: get_config/update_config → site_get/site_update + lowercase keys | P0 | UI fix |
| G6 | `hr_payroll_ui`: update_salary/attendence/loan/overtime — core me update functions hi nahi (BUG-C06 family) | P0 | Core me update_* add (X_get pattern), UI keys lowercase |
| G7 | `inventory.py:167` depart.depart_list → depart_list_all | P1 | UI fix |
| G8 | `fa_ledger_ui`: list/get/insert/update_ledger → ledger module (code/name/group keys) + balance | P1 | UI fix |
| G9 | `pos_na`: kot_list/kot_lines/sales_summary/itemwise_sale core/pos.py me nahi | P1 | Core me report wrappers (KOT table, safe) |
| G10 | `pos_packing_ui`: list_all/get/insert/update → packing_* + lowercase keys | P1 | UI fix |
| G11 | Availability future bookings ignore karta hai (spec #6 violation) | P1 | `room_availability` extend: Booking (non-cancelled) overlap bhi busy |
| G12 | No-Show workflow (spec #5) | P2 | `reservation.mark_no_show()` (cancel_mode='No Show' reuse, VB6 rule) |
| G13 | BUG-C06 (hr_payroll insert_loan 14-vs-11 params) — P0 doc-listed | P0 | G6 ke saath fix/verify |
| G14 | Docs stale (FO 80%, checkout "dead code") | P2 | FRONT_OFFICE_* docs + PROGRESS update |

Non-FO mismatches bhi fix honge (audit clean chahiye): G7–G10, fa_ledger, member/facility.

## 3. EXECUTION PHASES

- **A. API-mismatch fixes (G1–G10, G13)** — UI crash-khatam + core additions.
  Verify: `tools/api_mismatch_audit.py` → 0 mismatches; forms instantiate.
- **B. Core upgrades (G11, G12, G4)** — availability bookings-aware, no-show,
  res_status + res_status_pdf (fpdf-free: simple PDF writer ya text-report path
  jo existing reports/export conventions follow kare).
- **C. FO test suite** — `HMS_py/tests/database/test_front_office.py`:
  full lifecycle (guest→reservation→availability→checkin→folio charge→
  payment→checkout→reverse) + cancel/no-show + negative cases (double-cancel,
  zero-balance rule, invalid dates, missing folio). PYT* data, self-cleanup,
  DB-unreachable pe skip (CI-safe).
- **D. Regression** — 157 offline tests + new DB tests + audit tool = 0.
- **E. Docs** — FRONT_OFFICE_{README,ARCHITECTURE,DATABASE,TEST_CASES,BUGS,
  PRINTING,MIGRATION,RELEASE_NOTES}.md + BLOCKED.md (VB6 build, EXE build,
  GUI automation — environment limits, working code ke saath).

## 4. DEFINITION OF COMPLETE (is environment me achievable)

- [x→] G1–G13 fixed + audit 0
- [ ] FO lifecycle DB-integration test green (real SQL Server)
- [ ] Full offline suite green (regression)
- [ ] Docs complete + BLOCKED.md me honest limits
- VB6 compile-fix, EXE build, live GUI click-testing → environment-blocked, documented
