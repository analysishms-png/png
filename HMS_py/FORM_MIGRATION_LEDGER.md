# HMS Form Migration Ledger

| VB6 Form | VB6 Path | Python UI Path | Controls | Events | Menus | Validations | Permissions | SQL | Reports | Printing | Navigation | Status | Evidence |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| frmLogin | implemented/HMS/frmLogin.frm | ui/login_ui.py | VERIFIED | VERIFIED | N/A | VERIFIED | VERIFIED | VERIFIED | N/A | N/A | VERIFIED | VERIFIED | Login works |
| FrmMain | implemented/HMS/FrmMain.frm | ui/shell.py | VERIFIED | VERIFIED | VERIFIED | N/A | VERIFIED | N/A | N/A | N/A | VERIFIED | VERIFIED | Shell opens |
| fdWalkInEntry | implemented/HMS_REVERSE_ENGINEERING/HMS/fdWalkInEntry.frm | ui/walkin_rack_ui.py (WalkInEntryWindow) | PARTIAL | PARTIAL | VERIFIED | VERIFIED | N/A | PARTIAL | N/A | N/A | VERIFIED | TESTING | Phase 11 loop it.1: `tests/database/test_walkin_parity.py` (2 DB-state: GuestFolio 26-col + RoomOcc 33-col field-map write, RoomCat derive, FolioLog 'A', ProfDetail link, staging cleanup, occupancy reject, auto-pick, DepTime default, validation guards) + `test_wave_ui_forms.py` walkin suite (incl. field-map wiring); suite 1077 green. OPEN: G3 PlanDetails@checkin, G4 inline new GuestProf, G5 rail (Verify Member/ID-proof/Advance), G6 DGNationality validation → status TESTING not VERIFIED |
| fdCheckIn | implemented/HMS_REVERSE_ENGINEERING/HMS/fdCheckIn.frm | ui/fd_forms_ui.py (LookupReservationWindow) | PARTIAL | PARTIAL | N/A | VERIFIED | N/A | VERIFIED | N/A | N/A | PARTIAL | TESTING | Phase 11 loop it.3: arrivals lookup = VB6 Form_Load anti-join ported (`core/booking.py::list_arrivals`, date-filter deviation documented: ArrDate<=business = same-day+overdue superset); W1/W2 booking insert now writes NoofRooms GrpBookingDetails rows (BUG-AUD-09 fixed, live 19/19); W3 GuestFolio.BookingSno auto MAX+1; Check In button → early-arrival warn (&H24) → walk-in prefill (txt_guestprof/txt_booking). Evidence: `tests/database/test_reservation_arrivals.py` (3 DB-state incl. per-SNO exit) + `test_wave_ui_forms.py::test_lookup_reservation_arrivals_and_checkin_prefill`; suite 1081 green. OPEN: DGHelp extras, no_Rooms multi-room copy, per-keystroke incremental filter → TESTING not VERIFIED |
| fdPostChrg | implemented/HMS_REVERSE_ENGINEERING/HMS/fdPostChrg.frm | ui/posting_forms_ui.py (PostChrgWindow) + core/nightaudit.py (batch engine) | VERIFIED | VERIFIED | VERIFIED | VERIFIED | N/A | VERIFIED | N/A | N/A | VERIFIED | VERIFIED | Phase 11 loop it.4 (spec 002): batch Date-For posting window (VB6 caption 'Post Charges /Payments', no manual entry — that is fdPaymentCharge); billed guard exact message + Enviro gate + nothing-to-post + per-room progress label + completion summary; engine exactly-once + VB6 row shape + 2.5% GST (BUG-AUD-10/11 fixed, live TaxPer=2.5 evidence 400+ rows). Evidence: `tests/database/test_fdpostchg_posting.py` (6 DB-state: exactly-once, row-shape/tax stamps, own-cn rollback→zero rows, guard +/−, Comp skip) + `test_wave_ui_forms.py::TestPostingFormsUi` +5 wiring; suite 1097 green. Dormant branches documented (plan-package/extra-bed/checkout-variation — zero live triggering evidence); parity regen deferred (concurrent session, BUG-AUD-08) |
| fdRoomChange | implemented/HMS_REVERSE_ENGINEERING/HMS/fdRoomChange.frm | ui/fo_sub_forms_ui.py (RoomChangeWindow) + core/fo_ops.py (room_change) | VERIFIED | VERIFIED | N/A | VERIFIED | N/A (G8 deferred) | VERIFIED | N/A | N/A | VERIFIED | VERIFIED | Phase 11 loop it.5 (DB-001): VB6 12-step save txn 12/12 DB-state-proven + commit/rollback atomicity + KOT guard pre-txn + Reason 100-truncate; core fixes PlanDiscAppon (frm 3664, G3) + PlanDetails snapshot-before-DELETE (frm 3788); G1 decision Python-wins 'I' (§2.1.1); UI 18 tests; Evidence: tests/database/test_roomchange_parity.py (4) + sibling test_room_change_parity.py (1) + tests/unit/test_room_change_ui.py (18); suite 1123 green; review APPROVE (specs/review-report.md) |
| ... | ... | ... | ... | ... | ... | ... | ... | ... | ... | ... | ... | ... | ... |

**Status Legend:**
- DISCOVERED
- ANALYZING
- MAPPED
- IMPLEMENTED
- TESTING
- VERIFIED
- BLOCKED
- OBSOLETE_WITH_EVIDENCE
