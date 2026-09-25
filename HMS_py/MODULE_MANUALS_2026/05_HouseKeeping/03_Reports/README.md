# 05 House Keeping - Reports

## Leaves (MenuHelp)

classify reports = **1**: `House Keeping Report` (`HouseREP`, `Flag='R'`) — curated capture list me nahi (gap).
(`Reports` unclassified header row bhi hai — README §1 other=8.)

| # | Option (caption) | Flag | Param_Str (sample) | Module_Name | Screenshot |
|---|---|---|---|---|---|
| 1 | House Keeping Report | R | ***P | HouseREP | (curated-out — no screenshot, gap) |

## Functioning

- `House Keeping Report` → reports engine `menu_caption_map` path (shell spread) → RoomStat-wise summary (`roomstatus.housekeeping_summary` backing).
- Room Status viewer viewers (`_open_fv_list` complaint/claim lists) read-only lists hain — report classify nahi (operations README §2).

## Database Tables (this layer)

Read-only: `RoomMast` (RoomStat counts), `RoomBLockOut`, `ComplaintDetail`, `LostFoundDetail` (report rows).

## Backend SQL pattern

```
housekeeping_summary -> SELECT RoomStat, COUNT(*) ... FROM RoomMast ... GROUP BY   roomstatus:130
report engine        -> _open_report(cap): menu_caption_map -> report_key -> open_reports
```

## MenuHelp permission check

```sql
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option])='House Keeping Report';
-- Gopi ***P R HouseREP ; SA ***P R HouseREP
```
(No layer screenshot — leaf curated-out.)
