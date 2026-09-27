# Channel Config UI — Design Final + Phase-3 Breakdown (Outbound Inventory)

**Date:** 2026-09-25
**Related:** `CHANNEL_MANAGER_INTEGRATION_PLAN.md` (parent),
`CHANNEL_PHASE2_BREAKDOWN.md` (Task 5 design yahan finalize hua)

---

# PART A — Config UI Design (FINAL, Phase-2 Task 5)

## A1. Layout (QDialog, 560×420, `_theme.palette()` pattern)

```
┌─ Channel Manager Configuration ────────────────────────────┐
│ ┌─ Connection ───────────────────────────────────────────┐ │
│ │ Hotel Code *        [________________________] (≤20)   │ │
│ │ Auth Code *         [•••••••••••••••••••••••] [👁]     │ │
│ │   (Password echo; 👁 toggle → Normal/Password)          │ │
│ │   placeholder: "DPAPI-encrypted storage"               │ │
│ │ Base URL            [https://live.ipms247.com]         │ │
│ │ Vendor User-Agent   [HMSpy-PMS/1.0]                    │ │
│ └────────────────────────────────────────────────────────┘ │
│ ┌─ Behaviour ────────────────────────────────────────────┐ │
│ │ Poll Interval (min) [15__]  (1..1440)                  │ │
│ │ [x] Enabled (master switch)                            │ │
│ │ [x] Mock Mode (no network — provisioning se pehle ON)  │ │
│ └────────────────────────────────────────────────────────┘ │
│  Status: mock · HotelCode=HC-XX · last poll: 2026-09-25    │
│                                                            │
│  [Test Connection]   [Save (Ctrl+S)]   [Cancel (Esc)]      │
└────────────────────────────────────────────────────────────┘
```

## A2. Field rules (final)

| Field | Widget | Rule |
|---|---|---|
| Hotel Code | QLineEdit, max 20 | required for live; `config._validate` enforce |
| Auth Code | QLineEdit **Password echo** + 👁 toggle btn | khali = existing preserved (`config.save` contract); type karne par naya set hota hai; **kabhi load-back nahi hota** (masked placeholder dikhta hai) |
| Base URL | QLineEdit max 100 | default `https://live.ipms247.com`; must start http(s) |
| User-Agent | QLineEdit max 100 | vendor-identifying (spec requirement) |
| Poll Interval | QSpinBox 1..1440, default 15 | minutes |
| Enabled | QCheckBox | master switch; OFF par client `blocked` deta hai |
| Mock | QCheckBox | **default ON**; OFF + Enabled + creds = live (DPAPI spike ✅) |

## A3. Test Connection button (behavior ladder)

```
mode = client.mode (no_config/mock/disabled/live)
no_config/mock → mock ping: client.fetch_room_information()
                 → lbl "MOCK OK — RoomInformation: N types" (green)
disabled      → red "Disabled: EnabledYN=N ya creds missing"
live          → client.fetch_room_information() (real HTTP, 10s timeout)
                → 200 + JSON → green "LIVE OK — N room types"
                → EzeeClientError → red message (err short)
Har attempt synclog me audit (client already karta hai)
Button double-click guard: test ke dauran setEnabled(False), cursor wait
```

## A4. Save flow

1. Collect fields → `cfg` dict (AuthCode sirf tab bhejo jab user ne type kiya)
2. `config.save(cfg)` (validation DPAPI blob write)
3. Status label refresh; dialog `accept()`
4. Shortcuts: Ctrl+S save, Esc cancel (project pattern)
5. **Reveal-rope nahi**: existing AuthCode UI me kabhi plaintext load nahi —
   sirf "set/unset" placeholder (`•••••••• (stored)`)

## A5. Bookings tab (Phase-2 Task 5 same dialog, QTabWidget)

```
Tab1 Config | Tab2 Bookings | Tab3 Sync Log
Tab2: filter [All|Unprocessed] + [Refresh] 
      QTable: EzeeBookingId | RoomType | Guest | Arr | Dep | Amt | Status
      row-select → [Accept →] (roomcat combo se target chuno)
        → accept_booking() → refresh + success msg (bookno dikha)
      Status col: queued / mapped-missing (red) / accepted (green)
Tab3: read-only synclog.list_recent(200) table + [Purge >90d] (confirm)
```

## A6. Accept kiya gaya design (decisions)

1. **AuthCode read-back kabhi nahi** — one-way write (mask + stored placeholder)
2. **Test Connection = `fetch_room_information`** — read-only, sabse safe probe
3. Mock Mode checkbox ko enabled-checkbox se alag rakha (dono independent)
4. Accept flow me roomcat **user choose karta hai** (auto-map pre-selected) —
   wrong OTA mapping se room-inventory corrupt na ho
5. Status label hamesha mode + last-poll dikhaata hai (dark console feel)

---

# PART B — Phase-3 Breakdown: Outbound Inventory Push (~1 din, 4 tasks)

**Goal:** humare free rooms per RoomCat per date → eZee `UpdateRoomInventory`
(taki OTA wahi rooms beche jo sach me khali hain).

## Task B1 — `core/channel/inventory.py`: availability compute (M)

- [ ] `free_rooms_by_cat(date_from, date_to=None, cn=None) -> dict[str, int]`:
  - Per RoomCat: `RoomMast` total (Type='RO' active) − occupied
    (`RoomOcc` in-house us date-range me — `room_occ.py` ke availability
    rules reuse: ChkOutDate IS NULL + date overlap, RoomBLockOut minus)
  - Negative clamp 0; mapping na ho to skip + return `unmapped: [...]`
- [ ] Date-range loop: har din ka count (eZee per-date inventory leta hai)
- [ ] Tests: mock db — 3 cats (2 mapped/1 unmapped), overlap math, clamp

## Task B2 — `inventory.py`: push_inventory (M)

- [ ] `push_inventory(date_from, date_to=None, user=USER, cn=None) -> dict`:
  1. `is_live_ready()` nahi → `{'skipped': 'not-live'}` (mock mode me
     mock responses se dry-run bhi chalega — payload verify ke liye)
  2. `free_rooms_by_cat` → `roommap.list_all(only_active=True)` join
  3. Per (room_type, date): `client.update_room_inventory(...)`
  4. Har push `synclog` me (client already); summary return
     `{pushed, failed, skipped, by_date}`
  5. **Rate limit guard:** max ~200 calls/run (log if exceeded)
- [ ] Idempotency: same-day re-push allowed (eZee upsert semantics) —
      `synclog.find_same_hash` sirf logging-dedupe ke liye
- [ ] Tests: mock client capture — payload assertions (RoomType/Date/Inventory),
      unmapped skip, not-live skip

## Task B3 — Trigger wiring (S)

- [ ] NA run ke baad auto-push: `nightaudit.run_night_audit` success par
      **optional flag** (`ChannelEnviro.AutoPushYN CHAR(1) DEFAULT 'N'`
      — DDL alter + config field) → `push_inventory(next 30 days)`
- [ ] Manual: UI button "Push Inventory Now" (30-day window, confirm dlg)
- [ ] Tests: flag OFF = no push; ON = push called (mock)

## Task B4 — UI + verification (S)

- [ ] Channel Manager dialog me 4th tab "Inventory": date-range pickers +
      preview table (cat | date | free) + [Push Now]
- [ ] shell registry wire (Task 6 Phase-2 ke saath hi)
- [ ] Offscreen smoke + screenshot
- [ ] Plan §5 Phase-3 DONE mark + commit

## Open Questions (v1 defaults)

| Q | v1 Default |
|---|---|
| Window kitne din? | 30 days (eZee typical) |
| Frequency? | NA ke baad + manual (v1); hourly timer v3 |
| MinStay/StopSell? | Phase-4 (is breakdown se bahar) |
| Overbook ho jaye (free 0 par OTA sale)? | Push hi galat data nahi bhejega; eZee side close — audit via synclog |

## Dependencies

- Phase-1 `client.update_room_inventory` ✅ (mock ready)
- `room_occ.py` availability logic (reuse — Phase-1 me read-only verify hua)
- `ChannelEnviro.AutoPushYN` DDL alter (Task B3) — `ensure.py` me add
