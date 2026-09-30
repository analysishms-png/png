# 09 Night Audit - Operations

## Leaves (MenuHelp)

**operations bucket = 1**: `Night Audit Log` (`NightAuditLR`, Flag=E). Curated capture leaf (registry shell:1071 → `_na`).

Related process leaves in `other` bucket (registry-backed, not captured): `Night Audit Process`/`Control Panel`/`Charges Posting`/`Account Posting` (shell:1251-1349 → `nightaudit_reports_ui.open_nightaudit_reports`), `Reverse Night Audit` (shell:1255 → inline confirm flow), `Upload Process`.

## Functioning

- `Night Audit Log` (`Ctrl+Shift+N`, shell:2123) → `pna.open_na` → `NABrowser` (pos_na:149) — browse `NightAuditLog` rows (`na_log(top=100)`, nightaudit:613).
- NA run (`Night Audit Process`): `nightaudit.run_night_audit` — pre-checks → no-show cancel → room charges → POS revenue → log (single txn).
- `Reverse Night Audit`: confirm dialog → `reverse_night_audit` → `Enviro.NCur - 1` (VB6 frmReNightAudit).

## Database Tables (this layer)

| Table | Rows | Role |
|---|---|---|
| `NightAuditLog` | 134 | Run log |
| `Enviro` | 1 | NCur date singleton |
| `PayCharge` | — | Room/POS charge postings |
| `Booking` | — | No-show cancel target (`Cancel='Y'`) |
| `FolioLog`/`GuestFolio` | — | Folio audit/headers |

## Backend SQL pattern

```sql
INSERT INTO NightAuditLog (DateChngFrom, DateChngTo, StartNightAudit, ...) -- nightaudit:153
INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, ...)                        -- :299/:311/:323/:432
UPDATE Booking SET Cancel='Y', CancelDate=? ...                            -- :215
UPDATE Enviro SET [NCur]=?, U_Name=? ...                                   -- :602 (reverse)
-- _get_voucher_prefix SELECT-then-consume (KI-1 family, :380)
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Night Audit Log','Night Audit Process','Reverse Night Audit');
-- Night Audit Log: SA AEDP E NightAuditLR (+Gaurav, htw_system)
-- Night Audit Process / Reverse Night Audit: SA AEDP E NightAuditoR
```
Screenshot: `screenshots/10_operations_Night_Audit_Log.png` (copy: `02_Operations/screenshots/`).
