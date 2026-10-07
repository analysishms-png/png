# 11 EPABX - Reports

## Leaves (MenuHelp)

**reports bucket = 0** (`_logic.json`: `reports: []`; counts all 0 — menuHelp me EPABX rows hi nahi, `module_names=()` gap).

List views `Telephone Call Entry` (shell:1425) aur `Call Control Master` (shell:1430) report-jaise hain par curated operations/masters buckets me document kiye gaye hain — yahan repeat nahi.

## Functioning

(Koi report leaf nahi.) VB6 EPABX report captions (`EPABX Call Log` etc.) SA template me exist nahi karte — registry me bhi koi `Flag='R'`-style report opener nahi mila.

## Database Tables (this layer)

(None — `EPABX_Data` log = operations layer `02_Operations/README.md`.)

## Backend SQL pattern

(None — no report SQL ported for EPABX.)

## MenuHelp permission check

```sql
SELECT COUNT(*) FROM menuHelp
WHERE Module_Name IN ('') OR RTRIM([Option]) LIKE '%EPABX%';
-- 0 (Module_Name IN () invalid — use LIKE check; see DATABASE.md §5 full LIKE query)
SELECT COUNT(*) FROM menuHelp WHERE Flag = 'R' AND [Option] LIKE '%all%';
-- no EPABX report rows expected
```
(No layer screenshots — no leaves.)
