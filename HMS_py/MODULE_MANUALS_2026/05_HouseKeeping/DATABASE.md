# 05 - House Keeping - Database Workflow

Live counts (2026-09-25, `Moondata2627`, read-only):

## 1. Tables (this module)

| Table | Rows | Role |
|---|---|---|
| `RoomOcc` | 11463 | Occupancy (HK checkout/status path) |
| `RoomMast` | 86 | Room master — `RoomStat` HK status column (shared with MainSetup) |
| `RoomBLockOut` | 1 | Block-out entries (`block_out`/`unblock_room`) |
| `ComplaintDetail` | 0 | Complaints + clearance (VB6 HK) — abhi khali |
| `LostFoundDetail` | 0 | Lost/Found + Claims (`ClaimedBy<>''`) — abhi khali |

## 2. Read flows (SELECT patterns)

- Rack view: `roomstatus.room_rack` (roomstatus.py:61) — `RoomMast` + occupancy join, blocked map `_blocked_map` (:44).
- HK summary: `roomstatus.housekeeping_summary` (:130) — RoomStat counts (House Keeping Report backing).
- Blocks: `roomstatus.list_blocks` (:203, top=200) → `RoomBLockOut`.
- Complaint viewer: raw SQL in shell `_open_fv_list` — `SELECT ... FROM ComplaintDetail ORDER BY Code/ClearingDate` (shell.py:1285/1289).
- Claims viewer: `SELECT ... FROM LostFoundDetail WHERE ClaimedBy <> '' ORDER BY Code` (shell.py:1294).
- Occupancy: `room_occ.list_occupied` (room_occ.py:89), `get_by_room` (:80), `search` (:99).

## 3. Write flows (transaction diagrams)

**HK status set** (`roomstatus.update_hk_status`, :150):
```
UPDATE RoomMast SET RoomStat = ?, U_Name = ?, U_EntDt = getdate()
WHERE ... RoomCode/Type ...                                       (:185)
```
**Block out** (`roomstatus.block_out`, :217):
```
INSERT INTO RoomBLockOut (RoomCode, Reasons, FromDate, ...)        (:264)
INSERT INTO RoomBLockOut (RoomCode, Type, Site_Code, ...)          (:273)
UPDATE RoomMast SET RoomStat = 'M', U_Name = ...                   (:280)
COMMIT (do statements — block entry + room flag)
```
**Unblock** (`roomstatus.unblock_room`, :292): `UPDATE RoomMast SET RoomStat = '', ...` (:325) + block-row close.
**Move room** (`roomstatus.move_room`, :338): occupancy line room swap (DocId+SNo key).
**Checkout** (`room_occ.checkout`, :137): `UPDATE RoomOcc SET ChkOutDate, ChkOutTime ...` (:141); `room_occ.insert` → `INSERT RoomOcc (DocId, SNo, FolioNo, ...)` (:117).

## 4. VNo / race safety

- HK me DocId/VNo nahi — room-state mutations `RoomMast.RoomStat` single-column update (room+type PK WHERE).
- `block_out` do-statement write (INSERT + UPDATE) — `commit` param se atomic; partial-fail par block-row orphan ho sakti hai (VB6 legacy pattern; row count abhi 1 = live clean).
- Complaint/LostFound rows abhi 0 — write path viewers ke through verify nahi kiya (data-gap).

## 5. MenuHelp permission check SQL

```sql
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Room Status','House Keeping Report','Complaint Master',
                          'Complaint Clearance','Lost / Found Entry','Claim Entry');
-- Room Status           -> Dinesh AEDP E FDOMenu ; Sumit AE*P E FDOMenu (FO bucket shared)
-- House Keeping Report  -> Gopi ***P R HouseREP ; SA ***P R HouseREP
-- Complaint Master/Complaint Clearance/Lost-Found/Claim -> Gopi ***P, SA AEDP E HouseEnt
```
`Param_Str` rights mask — rules `00_GLOBAL/MenuHelp_Module_Map.md`.
