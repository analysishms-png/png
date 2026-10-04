# 04 — Front Office — Backend (core/)

Sources: AST public-def scan of 12 core files (2026-09-25), source grep, `README.md` changelog.

## 1. Module map (core file → responsibility → public API)

| core file | Responsibility | Public API (name → key args) |
|---|---|---|
| `checkin.py` | walk-in/group check-in, room move, split | `list_checkins(cn, vprefix, top)`, `get(folio, cn, vprefix)`, `next_folio(cn, vprefix)`, `make_docid(site, vprefix, folio)`, `create_checkin(guestprof, name, arr_date, dep_date, city, bookingdocid, roomno, user, cn, commit, site, vprefix, adult, children, ratecode, chkintime)`, `move_room(folio, new_room, user, …)`, `split_folio(folio, new_room, …)`, `group_checkin(guests, …)`, `group_checkout(folios, …)`, `delete_checkin(folio, …)` |
| `checkout.py` | checkout + reverse + clearance | `folio_balance(folio, cn, vprefix)`, `list_active_folios(…)`, `list_checked_out(…)`, `do_checkout(folio, user, cn, commit, vprefix, site)`, `reverse_checkout(folio, …)`, `get_clearance_flag(cn)`, `check_clearance(folio, cn)`, `clearance_list(cn, top)` |
| `folio.py` | charges, payments, settle, amend | `next_billno(cn)`, `folio_charges(folio, …)`, `folio_balance(folio, …)`, `settle_folio(folio, user, …, sett_mode)`, `post_room_charge(folio, amount, roomno, paycode, …, with_gst)`, `make_pc_docid(site, vprefix, vno)`, `charges_detail(folio, …)`, `from_booking(booking_docid, user, …)`, `log_list(cn, top)`, `amend_departure(folio, new_dep, …)`, `receive_payment(folio, amount, paycode, comments, …, cardno, chqno, txnno, batchno, billamount, tipamt)`, `log_before_delete(docid, …)`, `list_payments(…)`, `delete_payment(vno, …)`, `delete_settle(folio, …)`, `post_advance_deposit(folio, amount, paycode, …)`, `update_ncur(folio, dep_date, …)`, `reset_tokens(folio, …)`, `apply_diplomat_exemption(folio, …)`, `amount_to_words(amount)` |
| `fo_ops.py` | room change, merge, re-settle | `open_folio_by_room(room, site, cn)`, `open_folio_by_docid(docid, …)`, `free_rooms(site, cn)`, `room_change(docid, new_room, reason, change_date, change_time, user, …)`, `merge_charge(from_room, to_room, user, …)`, `list_settlements(docid, …)`, `re_settlement(docid, lines, user, …)`, `folio_charge_total(docid, …)` |
| `guestprof.py` | guest master CRUD | `list_all`, `search(name_part, …)`, `get`, `exists`, `next_code(cn)`, `insert`, `update`, `delete` |
| `guest_folio.py` | folio generic CRUD | `list_all`, `get(folio, site, …)`, `search`, `insert`, `update`, `delete`, `list_prof_details(docid, …)`, `insert_prof_detail`, `delete_prof_detail` |
| `guest_services.py` | comments/complaints/lost-found/wakeup/messages/stat | 31 functions — `list_*/get_*/search_*/insert_*/update_*/delete_*` for comments, complaint(+category), lostfound, wakeup, message, stat |
| `roomstatus.py` | rack, HK status, block-out, availability | `room_rack(cn, site, vprefix)`, `housekeeping_summary(…)`, `update_hk_status(roomno, new_status, …)`, `list_blocks(…)`, `block_out(roomno, block_type, reason, from_date, to_date, …)`, `unblock_room(…)`, `move_room(docid, sno, new_room, reason, …)`, `room_availability(arr, dep, …)` |
| `room_occ.py` | RoomOcc generic CRUD | `list_all`, `get_by_docid`, `get_by_room(roomno, site, …)`, `list_occupied`, `search`, `insert`, `checkout(docid, user, …)`, `update(docid, sno, rec, …)`, `delete`, `room_availability(date_from, date_to, …)` |
| `account_merge.py` | ledger account merge (finance overlap) | `preview_merge(old_code, new_code, cn)`, `merge_accounts(old_code, new_code, cn, commit)` |
| `booking.py` | reservations | `check_room_conflict(roomno, arr_date, dep_date, exclude_bookno, site, cn)`, `insert`, `list_all`, `get(bookno, site, cn)`, `search`, `update(bookno, rec, …)`, `delete(bookno, …)`, `cancel(bookno, user, …)`, `list_more/insert_more/delete_more`, `list_plan_details/insert_plan_detail/delete_plan_detail` |
| `reservation.py` | draft reservation voucher | `voucher_config(cn, site, vtype)`, `make_docid(site, vprefix, bookno, vtype)`, `next_bookno(cn, site, vprefix)`, `list_reservations`, `get`, `insert_draft(guest_name, arr_date, dep_date, adults, rooms, rate, remarks, …)`, `update_draft`-style `update(bookno, …)`, `cancel(bookno, …, cancel_mode)`, `delete_draft`, `mark_no_show(bookno, user, …)` |

## 2. Key flows (function-level logic)

**checkin save — `create_checkin(...)` (checkin.py:115)**
validate (RoomMast exists + Type='RO' + free via RoomOcc open rows) → `next_folio()` (UPDLOCK) → `make_docid()` 21-char → BeginTrans → INSERT `GuestFolio` → INSERT `RoomOcc` (SNo=1) → INSERT `FolioLog` (Flag='I') → Commit. Returns folio/docid.

**checkout type — `_get_checkout_type(cn)` (checkout.py:24)**
`Enviro` table se checkout-time rule label: candidate columns `("Checkout","CheckOutType","CheckoutType","CheckOut")` ek-ek karke parameterized query; **BUG-016**: sirf SQL-207 (Invalid column name) pe next candidate, baaki errors propagate; pehla non-empty value return, warna `"Standard"`.

**checkout — `do_checkout(folio, user, …)` (checkout.py:126)**
validate (`folio_balance`, clearance flag) → BeginTrans → UPDATE `RoomOcc` (ChkOutDate=getdate, ChkOutTime) → INSERT `FolioLog` (Flag='O') → Commit.

**room charge — `post_room_charge(folio, amount, roomno, paycode, …, with_gst)` (folio.py:177)**
VNo = `db.next_vno(PayCharge, …)` → INSERT `PayCharge` (DocId=`make_pc_docid`) — room rent + optional GST split.

**room_change — `room_change(docid, new_room, …)` (fo_ops.py:85)**
7 core steps: validate free room → INSERT `RoomOcc` (new SNo) → UPDATE old RoomOcc (plan re-link + checkout stamp) → UPDATE `GuestMessage` → UPDATE `Booking.OccRoom` → UPDATE `RoomMast.RoomStat='D'` → INSERT `PlanDetails`; step-8 EPABX_IN audit feature-detected (table absent → skip, `epabx_audited=False`). Returns `{new_sno, affected: 7(+2), …}`.

**merge_charge — `merge_charge(from_room, to_room, …)` (fo_ops.py:271)**
validate: dono rooms in-house + alag folios → BeginTrans → (1) UPDATE `GuestFolio` source→target mFolio link, (2) UPDATE `PayCharge` clean rows (ContraDocID NULL) → RelatedFolio=target, (3) UPDATE `PayCharge` saari rows FolioNo=target + RelatedFolioNo=source → Commit. Returns `{rows_moved, folio_from, folio_to}`.

**re_settlement — `re_settlement(docid, lines, …)` (fo_ops.py:342)**
pichhla REC receipt reverse + nayi lines re-post: `Sum(lines.amount)` purane receipt ke `AmtCr` ke barabar **hona zaroori** (VB6 'sum match' guard); nayi lines `Vtype='REC'`, `ModeSet='S'`. Returns `{old_receipt, new_vnos, total}`.

## 3. Guards & invariants

| Guard | Where | Behavior |
|---|---|---|
| MenuHelp rights | `menu_help.can_open/can/rights` (menu_help.py:283-305); menu build me `_open` filter (menu_help.py:571-573) | leaf menu hi disabled/hidden; missing row → `AEDP` (full); `Flag='V'` → kabhi nahi; core functions me direct `_check_menu_help` nahi — enforcement UI/menu layer par |
| Free-room validation | `checkin.create_checkin` (checkin.py:130,157-170), `fo_ops.free_rooms` | Type='RO' + kisi open RoomOcc (`ChkOutDate IS NULL`) me nahi + RoomMast me exists |
| Settlement sum match | `fo_ops.re_settlement` (fo_ops.py:349-350) | `Sum(new lines) == purana AmtCr` warna ValueError (VB6 guard) |
| Race-safe counters | `db.next_vno` (README v0.1.1, BUG-015), `checkin.next_folio` UPDLOCK/HOLDLOCK | do concurrent check-ins ko same FolioNo/VNo nahi milta |
| Site filter | saare SQL: `Site_Code=?` + `LogSite_Code='HO'` | HO site sab dekhti hai (LOGSITE_CODE pattern) |
| In-house check | `fo_ops.merge_charge` (fo_ops.py:287-294) | source/target dono ka open folio chahiye; same-folio merge = error |
| Company credit limit | `folio._check_company_credit` (folio.py:487) | receive_payment se pehle credit check; contra line `_create_contra` |

## 4. Error handling

- **Rollback pattern:** har write flow `try: … commit() except: cn.rollback() raise finally: own connection close` (db.execute wrapper `commit=False` + manual commit).
- **Changelog (README v0.1.1, BUG-016…025 batch — FO-relevant):**
  - **BUG-016** `core/checkout.py` — `_get_checkout_type` ab sirf SQL-207 par next column candidate try karta hai; baaki DB errors propagate (pehle generic except sab chhupata tha).
  - **BUG-015** (key flows) — `MAX(VNo)+1` race → central `db.next_vno` (UPDLOCK/HOLDLOCK).
  - **BUG-014** (partial) — 83 core modules ka hardcoded `SITE_CODE="KK"` → `db.get_site_code()` (Analysis.ini key 7 / `HMS_SITE_CODE`).
  - **BUG-022** `ui/reservation_browser.py` — non-numeric/empty BookNo crash-guard.
  - **BUG-024** `ui/checkout_ui.py` — folio selection None-item/empty/non-numeric safe + PYT guard.
- **Feature-detect (208):** `room_change` step-8 EPABX_IN — table missing ho toh skip, core 7 steps commit (fo_ops.py:231-257); non-208 errors re-raise.
- **Stale Analysis.ini:** `db.ensure_paths()` best-effort (non-fatal) — reports/temp dirs local equivalents.
