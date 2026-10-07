# 05 House Keeping - Operations

## Leaves (MenuHelp)

Classify `operations=0` (HK entries `other` bucket me) — **curated registry leaf = 1**: `Room Status` (`FDOMenu` shared caption, `Flag=E`).

| # | Option (caption) | Flag | Param_Str (sample) | Module_Name | Screenshot |
|---|---|---|---|---|---|
| 1 | Room Status | E | AEDP / AE*P | FDOMenu | `screenshots/10_operations_Room_Status.png` |

(`other` bucket ke features jo operation-jaise hain: `Complaint Master`, `Complaint Clearance`, `Lost / Found Entry`, `Claim Entry` — capture curated scope me nahi, README §2 workflow table me documented.)

## Functioning

- `Room Status` → `RoomStatusForm` (modal, `Ctrl+R`): rack grid + HK status set + block/unblock + room move.
- Complaint/Lost-Found/Claim → `_open_fv_list`/`GuestServicesDialog` viewers (shell §2).

## Database Tables (this layer)

`RoomMast` (RoomStat col, 86), `RoomOcc` (11463), `RoomBLockOut` (1), `ComplaintDetail` (0), `LostFoundDetail` (0).

## Backend SQL pattern

```
update_hk_status -> UPDATE RoomMast SET RoomStat=?, U_Name=?, U_EntDt=getdate()   roomstatus:185
block_out        -> INSERT RoomBLockOut (...) + UPDATE RoomMast RoomStat='M'       roomstatus:264/273/280
unblock_room     -> UPDATE RoomMast SET RoomStat=''                               roomstatus:325
move_room/checkout -> RoomOcc room swap / UPDATE RoomOcc SET ChkOutDate...         room_occ:141
```

## MenuHelp permission check

```sql
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Room Status','Complaint Master','Complaint Clearance',
                          'Lost / Found Entry','Claim Entry');
-- Room Status -> Dinesh AEDP E FDOMenu, Sumit AE*P E FDOMenu
-- Complaint/Lost-Found/Claim -> SA AEDP E HouseEnt, Gopi ***P E HouseEnt
```
Layer screenshots: `02_Operations/screenshots/` (root `../screenshots/` se, `ok`).
