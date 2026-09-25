# Channel Manager Integration Plan — eZee Centrix / YCS Connectivity

**Date:** 2026-09-25
**Source:** `MODULE_FIX_PLANS/MODULE_FIX_PLANS/ezee_reference/*.yml`
(OpenAPI specs) + `ezee_research/` notes
**Target:** HMS_py (PyQt6 + pyodbc, SQL Server)

---

## 1. eZee API Samajh (specs se evidence)

| Cheez | Value | Evidence |
|---|---|---|
| Host | `https://live.ipms247.com` | servers.url (dono specs) |
| Operations endpoint | `POST /pmsinterface/pms_connectivity.php` (JSON) | pms-connectivity-openapi.yml |
| Inventory/rates read | `POST /pmsinterface/getdataAPI.php` (XML) | inventory-rates-openapi.yml |
| Auth | `HotelCode` + `AuthCode` (property-scoped token), vendor User-Agent | securitySchemes + description |
| Operation selector | JSON body me `RequestType` field | requestBody schema |
| Key operations | `FetchBooking`, `FetchBookings` (new/modified/cancelled), `BookingRecieve`, `UpdateRoomInventory`, `SetRoomRate`, `UpdateMinStay`, `UpdateStopSell`, `FetchRoomInformation` | endpoint description |
| Access model | **Paid, NOT self-serve** — per-property provisioning YCS Connectivity Portal se | accessModel + description |

**Important constraints (specs ke according):**
1. Ye humara PMS (HMS_py) → eZee Centrix (channel manager) connectivity hai.
   Direction dono taraf ki: hum bookings BHEJTE hain (`BookingRecieve` from
   Centrix POV) aur inventory/rates/restrictions UPDATE karte hain; aur
   OTA bookings FETCH karte hain.
2. Exact payload shapes per-property provisioned hote hain — spec khud
   kehta hai "verify exact request and response payloads against the
   portal before integrating". Isliye Phase-1 me config-only + mock mode.
3. XML endpoint (`getdataAPI.php`) sirf reads ke liye — XML build/parse
   chahiye (stdlib `xml.etree.ElementTree` kaafi hai).

---

## 2. Humari Existing Infrastructure (jo reuse hoga)

| Component | File | Reuse |
|---|---|---|
| HTTP client (timeout-retry, error logging) | `core/http_client.py` (`http_post`) | Direct — JSON POST |
| Config-only integration pattern | `core/einvoice.py` (`config_only` guard) | Bilkul same pattern |
| Integration config storage | `eInvoiceEnviro` table pattern (1 row) | Naya `ChannelEnviro` table |
| Reservation CRUD (booking source data) | `core/reservation.py` | Mapping source |
| Room/rate masters | `core/roommaster.py`, `core/plans.py`, `core/roomcategory.py` | Room-type/rate mapping |
| UI config pattern | `ui/einvoice_ui.py` (EInvoiceConfigForm) | ChannelConfigForm copy |
| Background job pattern | — (naya; simple poller loop) | NA-style scheduler |

---

## 3. DB Design (naye tables — live DB me channel tables NAHI hain, ye

naya schema hoga; invent policy sirf existing-tables pe lagi thi, ye
integration ka naya schema hai jo eZee provisioning ke baad live hoga)

```sql
-- Integration config (1 row, eInvoiceEnviro pattern)
CREATE TABLE ChannelEnviro (
    Id INT IDENTITY PRIMARY KEY,
    Provider VARCHAR(20) DEFAULT 'EZEE',      -- future: Booking.com direct etc.
    HotelCode VARCHAR(20),                    -- eZee property code
    AuthCode VARCHAR(100),                    -- API token (encrypt!)
    BaseURL VARCHAR(100) DEFAULT 'https://live.ipms247.com',
    PollIntervalMin INT DEFAULT 15,           -- booking fetch poll
    EnabledYN CHAR(1) DEFAULT 'N',            -- master switch
    MockYN CHAR(1) DEFAULT 'Y',               -- config-only mode (B029-safe)
    UserAgent VARCHAR(100),                   -- vendor-identifying UA
    -- REVIEW FIX: FetchBookings ke liye poll cursor (new/modified/cancelled
    -- 'since last' fetch ke bina re-fetch/miss dono honge)
    LastBookingPollDt DATETIME NULL,          -- last successful FetchBookings
    LastChangeId VARCHAR(40) NULL,            -- eZee change-id cursor (agar mile)
    Site_Code VARCHAR(2), U_Name VARCHAR(10), U_EntDt DATETIME,
    U_AE CHAR(1), LogSite_Code VARCHAR(2)
);
-- REVIEW FIX: eInvoiceEnviro 1-row convention ko constraint banao
CREATE UNIQUE INDEX UX_ChannelEnviro
    ON ChannelEnviro (Provider, LogSite_Code);

-- Room-type mapping: humara RoomCat.Code <-> eZee room type
-- (REVIEW FIX: live table 'RoomCat' hai, 'RoomCatMast' NAHI —
--  verified INFORMATION_SCHEMA se 2026-09-25)
CREATE TABLE ChannelRoomMap (
    Id INT IDENTITY PRIMARY KEY,
    Provider VARCHAR(20) DEFAULT 'EZEE',
    RoomCat VARCHAR(6) NOT NULL,              -- FK RoomCat.Code
    EzeeRoomType VARCHAR(50) NOT NULL,        -- eZee room type name/code
    RatePlan VARCHAR(50),                     -- eZee rate plan (per mapping)
    ActiveYN CHAR(1) DEFAULT 'Y',
    Site_Code VARCHAR(2), U_Name VARCHAR(10), U_EntDt DATETIME,
    U_AE CHAR(1), LogSite_Code VARCHAR(2)
);
-- REVIEW FIX: duplicate mapping guard (ek RoomCat ek eZee type pe sirf ek baar)
CREATE UNIQUE INDEX UX_ChannelRoomMap
    ON ChannelRoomMap (Provider, LogSite_Code, RoomCat, EzeeRoomType);

-- Sync audit log (har API call ka record — reconciliation ke liye)
CREATE TABLE ChannelSyncLog (
    Id INT IDENTITY PRIMARY KEY,
    Provider VARCHAR(20), Direction CHAR(3),  -- OUT/IN
    RequestType VARCHAR(40),                  -- FetchBookings etc.
    ReqPayload NVARCHAR(MAX), RespPayload NVARCHAR(MAX),
    Status CHAR(1),                           -- S/F
    ErrMsg NVARCHAR(500), Retries INT DEFAULT 0,
    -- REVIEW FIX: idempotent retry — same payload ka duplicate push pehchano
    PayloadHash CHAR(32) NULL,                -- md5(ReqPayload) hex
    Site_Code VARCHAR(2), U_Name VARCHAR(10), U_EntDt DATETIME,
    LogSite_Code VARCHAR(2)
);
-- REVIEW FIX: retention — NVARCHAR(MAX) payloads jama honge;
-- 90+ din purane rows purge (db_maintenance.py me hook ya manual job)
--   DELETE FROM ChannelSyncLog WHERE U_EntDt < DATEADD(DAY, -90, GETDATE());

-- Incoming OTA bookings queue (FetchBookings results process hone se pehle)
CREATE TABLE ChannelBookingIn (
    Id INT IDENTITY PRIMARY KEY,
    Provider VARCHAR(20), EzeeBookingId VARCHAR(40) UNIQUE,
    RoomType VARCHAR(50), RatePlan VARCHAR(50),
    GuestName VARCHAR(100), GuestEmail VARCHAR(100), GuestPhone VARCHAR(30),
    ArrDate DATETIME, DepDate DATETIME, Adults INT, Children INT,
    Amount DECIMAL(12,2), Commission DECIMAL(12,2),
    RawJson NVARCHAR(MAX),
    ProcessedYN CHAR(1) DEFAULT 'N',          -- N=queue, Y=Booking me daal diya
    -- REVIEW FIX: live Booking.DocId nvarchar(21) hai — type match
    BookingDocId NVARCHAR(21) NULL,           -- humari Booking ka link
    Site_Code VARCHAR(2), U_EntDt DATETIME, LogSite_Code VARCHAR(2)
);
CREATE INDEX IX_ChannelBookingIn_BookingDocId ON ChannelBookingIn (BookingDocId);
```

---

## 4. Architecture (module design)

```
core/
  channel/
    __init__.py
    config.py      # ChannelEnviro get/save (config-only guard, eInvoice pattern)
    roommap.py     # ChannelRoomMap CRUD (validation: RoomCat FK, dup guard)
    client.py      # EzeeClient: http_post wrapper + RequestType builders
                   #   + mock mode (MockYN='Y' => canned responses, no network)
    booking_in.py  # FetchBookings poll -> ChannelBookingIn queue ->
                   #   map_to_reservation() -> reservation.insert_draft
    inventory.py   # UpdateRoomInventory push (free rooms = RoomMast - RoomOcc)
    rates.py       # SetRoomRate push (RateList/PlanMast -> eZee linear rates)
    synclog.py     # ChannelSyncLog append + list (viewer ke liye)
ui/
  channel_ui.py    # ChannelConfigForm (config editor + test-connection button)
                   # ChannelBookingsForm (incoming queue: accept->booking)
                   # ChannelSyncViewerForm (sync log read-only)
shell.py registry  # "Channel Manager" leaf -> open_channel_manager(w)
```

**Data flow (do directions):**

```
INBOUND (OTA bookings):
  timer/poll -> FetchBookings(new/modified/cancelled)
    -> parse -> ChannelBookingIn queue (dedup: EzeeBookingId unique)
    -> user review UI -> map to RoomCat -> reservation.insert_draft
    -> mark ProcessedYN='Y', BookingDocId set
    (cancel webhook/poll -> humari reservation.cancel(bookno))

OUTBOUND (inventory/rates/restrictions):
  trigger: NA run ke baad ya manual "Push Inventory" button
    -> free rooms per RoomCat per date = RoomMast count - active RoomOcc
    -> UpdateRoomInventory per mapped room-type
  rates: RateList (ratelist.py resolve) / PlanMast -> SetRoomRate
  restrictions: StopSell (RoomBLockOut future) -> UpdateStopSell
```

---

## 5. Phases (implementation order)

### Phase 1 — Config + Mock foundation (sabse pehle, ~1 din)
- Tables banao (upar wale 4) — `ensure_tables()` idempotent DDL
  (script + runtime dono; live DB me pehle se ho to skip)
- `core/channel/config.py` + `roommap.py` (CRUD + validation)
- `core/channel/client.py` — EzeeClient with **MockYN='Y' default**
  (config_only pattern jaisa: bina provisioning ke koi network call nahi)
- ~~`ui/channel_ui.py` — ChannelConfigForm~~ **REVIEW MOVE: UI ko Phase-2
  me kiya** (Phase-1 exit ko CLI/module-level pe rakha; UI bina mock
  client ke adhoora hota)
- Tests: config round-trip, roommap FK guard, client mock responses
- **Exit criteria:** config save/load + roommap CRUD + client mock
  FetchBookings canned response (UI nahi — wo Phase-2 exit me)

### Phase 2 — Inbound bookings (~1-2 din)
- `booking_in.py`: FetchBookings poll + parse + dedup queue
  (cursor: LastBookingPollDt/LastChangeId se 'since' fetch)
- `ui/channel_ui.py` — ChannelConfigForm + ChannelBookingsForm:
  queue view → "Accept" → reservation draft ban jaye
- Cancellation handling (ResStatus sync)
- Tests: mock payload → queue → reservation round-trip (rollback-safe)
- **Exit criteria:** mock OTA booking accept karke humari Booking ban jaye
  (UI se bhi — ab UI yahan aayi)

### Phase 3 — Outbound inventory (~1 din)
- `inventory.py`: availability compute (RoomMast − RoomOcc, room_occ.py
  ka availability logic reuse) → UpdateRoomInventory
- Manual "Push Now" + NA ke baad auto-push flag
- Tests: availability math + mock push payload assertions
- **Exit criteria:** mock me inventory push ka payload verify ho jaye

### Phase 4 — Rates + restrictions (~1 din)
- `rates.py`: ratelist.py `resolve_rates` → SetRoomRate (linear)
- StopSell mapping (RoomBLockOut live hone par)
- **Exit criteria:** mock rate-push verified

### Phase 5 — Live provisioning (user-dependent, code nahi)
- YCS Connectivity Portal (api.ezeetechnosys.com) par account/property
  provisioning — **PAID, manual step**
- Real HotelCode/AuthCode mile → ChannelEnviro.MockYN='N'
- Spec warning ke mutabik: pehle FetchRoomInformation se real payload
  shapes verify karo, field-maps adjust karo
- Chhota batch: sirf FetchBookings inbound pehle, 1 hafta monitor
- **Exit criteria:** 1 real OTA booking end-to-end

---

## 6. Risks & Mitigations

| Risk | Mitigation |
|---|---|
| Payload shapes provisioning-specific (spec khud warn karta hai) | Phase-1 mock mode + sync-log me raw payloads — live par field-map tweak easy |
| AuthCode secret | Config UI me masked; **REVIEW FIX: DB me reversible obfuscation rakhi gayi hai** (base64+XOR static key) — sirf casual-read guard, real security nahi. Better: `win32crypt.CryptProtectData` (DPAPI, machine-scoped, pywin32 already Windows target pe) — Phase-1 me try, fallback XOR |
| Double-booking (OTA + manual same room) | reservation.py next_bookno atomic hai; room-assign draft pe rehta hai (walk-in pattern) |
| Poll overlap (lambi request) | Single-threaded poller + ChannelSyncLog me start/end timestamps |
| eZee downtime | http_client timeout-retry already hai; sync-log me F status + UI badge |
| Network + production DB | Koi bhi live call sirf MockYN='N' ke baad; tests hamesha mock |

---

## 7. Pehla Kadam (agla actionable)

1. `core/channel/__init__.py` `ensure_tables()` idempotent DDL — **Phase 1**
2. `config.py` + `roommap.py` + `client.py` (mock mode)
3. `pytest tests/unit/test_channel_config.py tests/unit/test_channel_client.py`
   — mock round-trip

## 8. Review Log (2026-09-25)

Plan ko live-DB facts se cross-check kiya, ye fixes apply hue:
1. `RoomCatMast` → **`RoomCat`** (live table ka sahi naam —
   INFORMATION_SCHEMA se confirm; plan me galat naam tha)
2. `ChannelEnviro` pe unique index (Provider+LogSite_Code) — 1-row
   convention enforce; poll cursor cols (LastBookingPollDt/LastChangeId)
   add — 'since last' fetch ke bina re-fetch/miss hota
3. `ChannelRoomMap` pe unique index — duplicate mapping guard
4. `ChannelBookingIn.BookingDocId` type → `NVARCHAR(21)` (live
   Booking.DocId nvarchar(21) se match) + index
5. `ChannelSyncLog` me PayloadHash (idempotent retry) + 90-day retention note
6. UI Phase-1 → Phase-2 move (exit criteria ab consistent)
7. DPAPI-first secret storage, XOR fallback (plain base64 weak tha)

**Phase-1 status: ✅ IMPLEMENTED (2026-09-25).**

### Phase-1 delivery notes
- `core/channel/ensure.py` — idempotent DDL (4 tables + 5 indexes;
  AuthCode `VARBINARY` blob — plaintext kabhi store nahi)
- `core/channel/config.py` — DPAPI-first (`win32crypt.CryptProtectData`),
  XOR fallback; `is_live_ready()` ladder (no_config/mock/disabled/live);
  `set_poll_cursor()`
- `core/channel/roommap.py` — CRUD + RoomCat FK guard + dup guard +
  `ezee_type_for()`/`roomcat_for()` mapping helpers (SCOPE_IDENTITY return)
- `core/channel/synclog.py` — audit + PayloadHash (dict→json stable) +
  `find_same_hash(since_dt=)` idempotency + `purge_older_than(>=30d)`
- `core/channel/client.py` — `EzeeClient` mode ladder; mock canned
  responses spec-shaped; live path `http_post` + vendor UA;
  `fetch_bookings/fetch_room_information/update_room_inventory/
  set_room_rate/update_stop_sell/update_min_stay`
- Tests: `tests/unit/test_channel_phase1.py` (23, mocked db) +
  `tests/database/test_channel_phase1_live.py` (5, live round-trip,
  cleanup restores)
- Live bug found+fixed during tests: `db.execute()` rowcount return karta
  hai, IDENTITY nahi — inserts ab `SCOPE_IDENTITY()` se Id dete hain
- Full suite: **491 passed**
