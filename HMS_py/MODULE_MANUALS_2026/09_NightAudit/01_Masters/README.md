# 09 Night Audit - Masters

## Leaves (MenuHelp)

**masters bucket = 0** (`_logic.json`: `masters: []`) — Night Audit module me master leaf nahi (`master_modules=()`); folio/log/state dusre modules (`04_FrontOffice` folio, `02_MainSetup` Enviro config) se aati hai.

## Functioning

(Koi leaf nahi.) `Enviro` (NCur date) `02_MainSetup`/enviro UI se manage hota hai; `year_end` balances `SubGroupCurrBal`/`ACGroupCURRBal` Finance side.

## Database Tables (this layer)

(None — see `02_Operations/README.md` for NightAuditLog/Enviro/PayCharge/Folio tables.)

## Backend SQL pattern

(None.)

## MenuHelp permission check

```sql
SELECT COUNT(*) FROM menuHelp
WHERE Module_Name IN ('NightAudit','NightAudito','NightAuditMenu')
  AND Flag IN ('E') AND RTRIM([Option]) IN ('Master','Item Master');
-- expected 0 (NA bucket me master rows nahi)
```
(No layer screenshots — no leaves.)
