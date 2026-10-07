# 12 Messaging - Masters

## Leaves (MenuHelp)

**masters bucket = 2**: `Sstup` (VB6 misspelling, Flag N, SMSSETUP, via `master_modules`), `SMS (API)` (exact curated leaf).
Curated capture leaf: **`SMS (API)`** (shell:1547 → `sms_ui_mod.open_sms_send`; menuHelp `SA AEDP E EXTSMSSETUP`).

> Classify note (KI-10 fixed 2026-09-25): `_norm_caption` strips trailing `(...)` se pehle poora SMS family masters me collapse ho jaata tha; ab `classify` exact `caption_disp` match pehle karta hai + paren-leaf stripped norms exclude karta hai → `SMS (Scheduled)` operations me, uncurated siblings (`SMS (Conditional)`, `SMS`) other me — see module README §1.

## Functioning

- `SMS (API)` → `sms_ui_mod.open_sms_send` — API compose/send window; sends via `sms_http.send_sms/send_template_sms` → queued in `DBSendSMS`.
- `Sstup` → SMSSETUP root (VB6 'Setup' misspelling) → enviro settings family.
- `SMS Environment Settings` (registry-only, NO ROW) → `sms_ui_mod.SMSEnviroSettings` (shell:1549/:1596) → `sms_enviro.smsenviro_get/update`.

## Database Tables (this layer)

| Table | Rows | Role |
|---|---|---|
| `SMSEnviro` | 1 | Gateway config singleton (LogSite_Code keyed) |
| `DBSendSMS` | (queue) | Outbound SMS queue |
| `EmailSMSForward` | (rules) | Email/SMS forward rules (MAX(Id) PK) |

## Backend SQL pattern

```sql
SELECT ... FROM SMSEnviro WHERE LogSite_Code = ?              -- sms_enviro:51
UPDATE SMSEnviro SET {sets} WHERE LogSite_Code = ?            -- sms_enviro:74
INSERT INTO DBSendSMS (DocId, Vtype, Vdate, VNo, ...)         -- sms_comm:61
-- DocId/VNo = KI-1 family counters
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Sstup','SMS (API)','SMS Environment Settings');
-- Sstup: SA NULL N SMSSETUP | SMS (API): SA AEDP E EXTSMSSETUP
-- SMS Environment Settings: NO ROW (registry-only)
```
Screenshot: `screenshots/10_masters_SMS_(API).png` (copy: `01_Masters/screenshots/`).
