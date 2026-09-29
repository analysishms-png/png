# 14 Sale & Marketing - Reports

## Leaves (MenuHelp)

**reports bucket = 0** (`_logic.json`: `reports: []`; counts all 0 — module_names=() discovery ruling).

VB6 Sale & Marketing reports (e.g., `Business Source Occupancy Analysis` — debug_mainsetup.py:210) HMS_py me **02_MainSetup/09_NightAudit** ke report buckets me document hote hain (09_NightAudit manual dekho); yahan dedicated report leaf nahi.

## Functioning

(Koi leaf nahi.) Segment/source-wise reporting = Night Audit `Occupancy Analysis` (09_NightAudit manual ka `NABrowser`) + `nightaudit_reports_ui.py:31 MarketSegAnalysis` mapping.

## Database Tables (this layer)

(None — reads over `MarketSeg`/`BussSource`/`GuestProf` report side se hote hain.)

## Backend SQL pattern

(None — no dedicated report SQL in `marketsegment/businesssource/guestprof` core files — CRUD only.)

## MenuHelp permission check

```sql
SELECT COUNT(*) FROM menuHelp
WHERE RTRIM([Option]) LIKE '%Occupancy%' AND Flag = 'R';
-- Business Source Occupancy Analysis row (if present) Module_Name me 02/09 ke under
SELECT COUNT(*) FROM menuHelp WHERE Module_Name = '' AND Flag = 'R';
-- 14 ke liye expected 0 (koi dedicated Module_Name hi nahi)
```
(No layer screenshots — no leaves.)
