# 05 - House Keeping - Backend (core/)

## 1. Module map (core file → responsibility → public API)

| File | Responsibility | Public API (line) |
|---|---|---|
| `roomstatus.py` | Room rack + HK status + blocks + moves (VB6 HK screen) | `_blocked_map` 44, `room_rack` 61, `housekeeping_summary` 130, `update_hk_status` 150, `list_blocks` 203, `block_out` 217, `unblock_room` 292, `move_room` 338 |
| `room_occ.py` | RoomOcc occupancy CRUD | `_map` 24, `_validate` 59, `list_all` 64, `get_by_docid` 73, `get_by_room` 80, `list_occupied` 89, `search` 99, `insert` 109, `checkout` 137, `update` 150 |

## 2. Key flows (function-level logic)

1. **Rack load** (`roomstatus.room_rack` :61): `RoomMast` + occupancy join + `_blocked_map` merge → screen grid rows.
2. **HK status set** (`update_hk_status` :150): status validation → `UPDATE RoomMast.RoomStat` (:185) + audit user (`U_Name`).
3. **Block out** (`block_out` :217): `INSERT RoomBLockOut` (:264/:273) + `UPDATE RoomMast.RoomStat='M'` (:280) — reason/from-date capture.
4. **Unblock** (`unblock_room` :292): reverse `RoomStat=''` (:325) + block-row close.
5. **Room move** (`move_room` :338): occupancy line (DocId+SNo) ka room swap + reason.
6. **Checkout** (`room_occ.checkout` :137): `UPDATE RoomOcc SET ChkOutDate/ChkOutTime` (:141).
7. **Housekeeping summary** (`housekeeping_summary` :130): RoomStat-wise counts → `House Keeping Report` backing.

## 3. Guards & invariants

| Guard | Where |
|---|---|
| RoomOcc `_validate` required fields | room_occ.py:59 |
| `room_occ.update` empty patch → `ValueError("Koi field update nahi diya")` | room_occ.py:162 |
| `update_hk_status` valid room/type required (WHERE key) | roomstatus.py:150 |
| `block_out` requires reason/dates (VB6 block form parity) | roomstatus.py:217 |
| Invariant: `RoomStat` single source of truth (HK flag), `RoomBLockOut` audit | roomstatus.py:185/264 |
| Blocked rooms `_blocked_map` rack pe overlay (double-block visual guard) | roomstatus.py:44 |

## 4. Error handling

- Validators `raise ValueError(...)` → UI dialog.
- `block_out`/`unblock_room` multi-statement → `commit` param transactional; rollback `except` pattern (core db helpers).
- `_open_fv_list` viewers raw-SQL lambda — query fail par viewer error path (shell helper, shell.py:1282).
- `ComplaintDetail`/`LostFoundDetail` live 0 rows — write flows UI-side abhi empty DB par exercise nahi hue (data-gap, DATABASE §4).
- Test status: L1 385 + L2b 27 `fails=0`; HK UI walkthroughs L3 layer me (batch rule se bahar) — TEST_PLAN §1.
