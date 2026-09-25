# Phase-2 Breakdown — Inbound OTA Bookings (eZee → HMS_py)

**Date:** 2026-09-25
**Parent doc:** `docs/CHANNEL_MANAGER_INTEGRATION_PLAN.md`
**Phase-1 status:** ✅ done (commit `d22ad65`) — config/roommap/synclog/client mock
**Goal:** eZee `FetchBookings` se OTA bookings laao → queue → user review →
humari `Booking` (draft) banao; OTA cancel → humari booking cancel.
**Estimate:** ~1.5–2 din (6 tasks)

---

## Task 1 — `core/channel/booking_in.py`: payload parser + normalizer (S)

eZee booking JSON (provisioning-specific!) → humara normalized dict.

- [ ] `parse_ezee_booking(raw: dict) -> dict` — defensive `.get()` chain
      (spec warning: field names per-property verify hote hain). Normalize:
      `{ezee_booking_id, room_type, rate_plan, guest_name, guest_email,
      guest_phone, arr_date, dep_date, adults, children, amount, commission,
      status}`. Status: confirmed/cancelled/modified.
- [ ] `_parse_dt()` — eZee date formats tolerant parse (`YYYY-MM-DD`,
      `YYYY-MM-DD HH:MM`, ISO) → datetime; fail → None (queue me rawjson
      me toh rahega hi).
- [ ] Unit tests: happy path, missing fields, date formats, cancelled status.

## Task 2 — `booking_in.py`: poll + dedup queue (M)

- [ ] `poll_bookings(cn=None, user=USER, since=None) -> dict`:
  1. `cfg = config.get()`; client mode `mock/live` hi allowed (else no-op)
  2. `since = cfg.last_booking_poll_dt` (ya param override)
  3. `client.fetch_bookings(since)` → `Bookings[]`
  4. Har booking: `parse_ezee_booking` → INSERT `ChannelBookingIn`
     (`EzeeBookingId` unique — duplicate → skip, counter me gino)
  5. Success par `config.set_poll_cursor(now, change_id)` — **sirf tab**
     jab queue-inserts commit ho jayein (transaction-safe: queue inserts
     + cursor update same `cn` pe)
  6. Return `{fetched, queued, skipped, errors[]}`
- [ ] `synclog.log("IN", "FetchBookings", ...)` — audit (already in client,
      yahan sirf poll-summary log `RequestType='FetchBookingsPoll'`)
- [ ] Unit tests: mock client patched — dedup, cursor update, commit-atomicity
- [ ] Live test: mock-mode me end-to-end queue fill + cleanup

## Task 3 — `booking_in.py`: accept → reservation mapping (M)

- [ ] `accept_booking(queue_id, roomcat=None, user=USER, cn=None) -> int`:
  1. Queue row lo (`ProcessedYN='N'` hi)
  2. `roomcat` param na ho to `roommap.roomcat_for(ezee_room_type)` —
     na mile → ValueError ("mapping missing — ChannelRoomMap me add karo")
  3. OTA cancel status → `reservation.cancel()` path (Task 4) pe route
  4. `reservation.insert_draft(guest_name, arr, dep, adults, rooms=1,
     rate=amount/nights, remarks=f"OTA:{provider}:{ezee_booking_id}")`
     — **room assign NAHI** (walk-in pattern; draft unassigned rehta hai)
  5. Queue update: `ProcessedYN='Y', BookingDocId=<docid>` (same cn/txn)
  6. Return bookno
- [ ] Idempotency: `ProcessedYN='Y'` wale dobara accept → ValueError
- [ ] Guest name empty OTA booking → queue me hi reject (`ErrMsg` col me
      note; ChannelBookingIn me ek `Remark` add karna ho to DDL alter)
- [ ] Unit + live round-trip tests (rollback-safe: accept → Booking count
      delta → cleanup delete)

## Task 4 — OTA cancellation sync (S)

- [ ] `sync_cancellations(cn=None, user=USER) -> dict`: poll me aaye
      cancelled/modified bookings jinke `BookingDocId` set hai →
      `reservation.cancel(bookno, user='OTA-CANCEL')`
      (already-cancelled → skip, reservation.cancel khud guard karta hai)
- [ ] Poll loop me modified bookings: simple policy v1 — **ignore** (log
      note); v2 me amend flow (rates/dates change) — doc me OPEN rakha
- [ ] Tests: cancelled OTA → humari booking Cancel='Y', ResStatus sync

## Task 5 — `ui/channel_ui.py`: Config + Bookings forms (M)

- [ ] `ChannelConfigForm` (QDialog): HotelCode/AuthCode(masked)/BaseURL/
      PollInterval/Enabled/Mock checkboxes + Save + "Test Connection"
      (mock-mode me mock ping, live me `FetchRoomInformation`)
      — `einvoice_ui.EInvoiceConfigForm` layout clone
- [ ] `ChannelBookingsForm`: queue table (`Unprocessed`) + per-row
      "Accept" (roomcat combo — `roommap.list_all(only_active=True)` se
      pre-select) + "Refresh" + processed log view
- [ ] `open_channel_manager(parent)` — tab wrapper (Config | Bookings |
      SyncLog) — `hr_payroll_ui` tabs pattern
- [ ] Offscreen smoke: forms build + queue list renders + screenshot
      `_qa/channel_*.png`

## Task 6 — Registry wire + full verification (S)

- [ ] `shell.py` `_form_registry()`: `"Channel Manager"` leaf →
      `open_channel_manager(w)` (try/except import pattern — Wave-2 style)
- [ ] `pytest tests -q` full green (target: 491 + ~12 naye = ~503)
- [ ] Offscreen smoke + screenshots
- [ ] Plan doc §5 Phase-2 ko DONE mark + delivery notes (Phase-1 style)
- [ ] Commit

---

## Open Questions (implementation ke waqt decide honge)

| Q | Default (v1) |
|---|---|
| Modified OTA booking kaise handle ho? | Ignore + log (v2 amend flow) |
| Rate kya push karein — OTA amount ya humara RateList? | Draft me OTA amount (RoomRate), baad me manual adjust |
| Multi-room OTA booking? | v1: ek booking = 1 room (rooms>1 → pehli row + remark me count) |
| Poller kab chale? | Sirf manual "Refresh" button (v1); auto-timer v3 me |
| OTA guest → GuestProf banao? | Nahi — Booking.GuestName direct (draft pattern) |

## Dependency Notes

- Phase-1 ke `client.fetch_bookings` mock me `Bookings: []` khali hai —
  Task 2 se pehle mock me 2-3 realistic sample bookings daalne honge
  (confirmed + cancelled + missing-field edge) — `client.py` `_MOCK_BOOKINGS`
- `reservation.insert_draft` returns `bookno`; DocId ke liye
  `reservation.get(bookno)` ya `make_docid` reuse
- `ChannelBookingIn` me agar `Remark` chahiye → `ensure.py` DDL me abhi add
  kar do (tables already live hain — ALTER script bhi dena)
