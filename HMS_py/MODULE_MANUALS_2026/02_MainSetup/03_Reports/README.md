# 02 Main Setup - Reports

## Leaves (MenuHelp)

**reports bucket = 0** (`_logic.json`: `reports: []`, count 0) — Main Setup me report leaf nahi (sab `Flag='R'` rows `01_Finance`/`04_FrontOffice`/module-specific buckets me hain).

## Functioning

(Koi leaf nahi.) Reports read-paths dusre modules: `Inconsistency Check`/`Backup Data`/`Task Scheduler` utilities hain (masters captions, capture list curated ke bahar).

## Database Tables (this layer)

(None — read-only reports is module me nahi.)

## Backend SQL pattern

(None.)

## MenuHelp permission check

```sql
SELECT COUNT(*) FROM menuHelp
WHERE Opt1 = (SELECT TOP 1 Opt1 FROM menuHelp
              WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND Opt1<>0
                AND RTRIM([Option])='Main Setup')
  AND Flag = 'R';
-- expected 0 (module ka koi Flag='R' row nahi)
```
(No layer screenshots — no leaves.)
