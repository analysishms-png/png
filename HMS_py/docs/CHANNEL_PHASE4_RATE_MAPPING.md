# Rate-List → SetRoomRate Mapping Design (Phase-4)

**Date:** 2026-09-25
**Inputs:** `core/ratelist.py` (live RateList), `core/channel/roommap.py`,
`core/channel/client.py` (`set_room_rate`), eZee spec (linear rates)

---

## 1. Source data — kya hai (live verified)

**RateList (62 rows):** `(RoomCat, RoomNo, Code, OccType, Rate1..Rate5, RateW, RateM)`
- Category-default rows: `RoomNo='*****'` — KK002 me OccType
  Single/Multiple dono `Rate2=1500.0`, `RateW=0.0`
- Per-room rows: `RoomNo='206'` etc. (overrides)
- `RateW`/`RateM` sab 0.0 live me — weekday/monthly differentiation abhi
  use nahi ho raha

**ChannelRoomMap (0 rows abhi):** mapping UI se banti hai —
`(RoomCat, EzeeRoomType, RatePlan, ActiveYN)`

**eZee SetRoomRate (spec):** linear rate = per-date flat amount for a
`(RoomType, RatePlan)` — occupancy-differentiated rates eZee me
"RatePlan per occupancy" bante hain, hamare OccType se map hote hain.

---

## 2. Mapping design (decision)

### 2.1 Rate source: category-default rows only (`RoomNo='*****'`)
- Per-room overrides OTA ko push NAHI karte — wo walk-in/walk-up pricing
  hai; eZee ko sirf category-level rate chahiye. (Live me bhi per-room
  rates = default hi hain.)

### 2.2 OccType → RatePlan resolution order:
1. **Explicit**: `ChannelRoomMap.RatePlan` set hai → wahi single rate
   plan me `Rate1` (ya selected occ) jata hai
2. **Auto-suffix**: RatePlan khali → `"{RatePlanBase}-{OccType}"` per
   OccType row (e.g. `EP-Single`, `EP-Multiple`) — sirf wahi OccTypes
   jinke default rows hain
3. **Rate pick**: `Rate1` → `Rate5` me pehla non-zero; sab 0 → skip +
   `unrated` report (0-rate push OTA pe free sale = disaster)

### 2.3 Date expansion:
- `date_from..date_to` har din same rate (RateList me season logic nahi
  hai; SeasonMast Phase-5+ me add hoga — OPEN item)
- RateW>0 ho to weekday/weekend split (Sat/Sun ko RateW) — future-proof
  abhi se code me, live data 0 hai to effectively flat

## 3. Payload shape (spec-shaped)

```python
client.set_room_rate(
    room_type="Superior DLX",      # ChannelRoomMap.EzeeRoomType
    rate_plan="EP-Single",         # resolution §2.2
    date_iso="2026-10-01",         # per-date
    rate=1500.0,                   # pehla non-zero Rate1..5
)
```

## 4. Stop-sell (restrictions) — `UpdateStopSell`

- **Source:** `RoomBLockOut` valid dated blocks (FromDate<=day<=ToDate),
  `RoomCode → RoomMast.RoomCat` join (Phase-3 wala), mapped cats only
- **Semantics:** block me ho rahe dates ke liye `StopSell=True`;
  block khatam hone par **push nahi karte** (eZee side manual unblock
  ya purane push ka inverse — v1 me sirf sell-close push hota hai,
  OPEN: auto-unblock v2)
- **Safety:** StopSell push hamesha inventory-push ke BAAD (order matter:
  pehle availability, phir close)

## 5. Implementation shape (`core/channel/rates.py`)

```
rate_rows(date_from, date_to, cn) -> list[dict]
    # [{roomcat, ezee_room_type, rate_plan, date, rate}] — resolution §2
push_rates(date_from, date_to, user, cn, client=None) -> dict
    # live-gate, rate-limit (shared MAX), per-row set_room_rate,
    # unrated skip report
stop_sell_rows(date_from, date_to, cn) -> list[dict]
    # RoomBLockOut → [{roomcat, ezee_room_type, date}]
push_stop_sell(...) -> dict
    # UpdateStopSell(True) per row; live-gate; AFTER push_inventory
```

## 6. Tests (planned)

- rate_rows: default-row pick, first-non-zero, all-zero → unrated,
  RatePlan explicit vs auto-suffix, date expansion count
- push_rates: not-live skip, payload capture, rate-limit
- stop_sell_rows: join correctness, unmapped skip
- UI: Rates/StopSell preview rows in Inventory tab

## 7. Screenshot review (Channel Manager dialog, offscreen)

`_qa/channel_manager_tabs.png` — 940×640, 4 tabs render OK; Config form
fields + Bookings grid + Inventory preview (62 rows) verified in smoke.
Offscreen font warnings cosmetic hain (Qt fonts bundle nahi hota — runtime
me system fonts use hote hain).

---

## 8. Status

- Design: FINAL (is doc)
- Implementation: Phase-4 todo (rates.py + UI + tests)
