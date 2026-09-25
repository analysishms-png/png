# 12 Messaging - Operations

## Leaves (MenuHelp)

**operations bucket = 0 classify** (norm-collision: `SMS (Scheduled)` caption normalizes to `"sms"` = master_caps → counted in masters; see module README §1). Curated capture leaf: **`SMS (Scheduled)`** (shell:1548 → `sms_ui_mod.open_sms_history`; menuHelp `SA AEDP E EXTSMSOPR`; registry `hits.operations=[SMS (Scheduled)]`).

Registry-only siblings: `SMS Send` → `sms_http_ui.open_sms_compose` (shell:1560, `_coming_soon` fallback); SMS log dialog `SMS InBox (Sent)`/`SMS OutBox (Pending)` (shell:951).

## Functioning

- `SMS (Scheduled)` → `sms_ui_mod.open_sms_history` — schedule/history view over `DBSendSMS` (`list_dbsms` :53, `_pending_queue` sms_http:349 limit 50).
- `SMS Send` → `sms_http_ui.open_sms_compose` — HTTP compose; `format_phone` (:86) / `validate_phone` (:99) guard, `build_sms_url` (:322) GET, `SMSResponse` result (:67).
- FO triggers: `send_checkin_sms/checkout/booking/bill_sms` (sms_http:295-307).
- `send_bulk_sms` (:312) — per-phone loop, partial-failure semantics (KI-3 family).

## Database Tables (this layer)

| Table | Rows | Role |
|---|---|---|
| `DBSendSMS` | (queue) | DocId, Vtype, Vdate, VNo, SubCode, Mobile1, TxtMsg, SMSDt, SMSTm, SenderName, PartyName |
| `GuestReward` | (reward msgs) | Guest reward SMS rows (sms_comm:83) |

## Backend SQL pattern

```sql
INSERT INTO DBSendSMS (DocId, Vtype, Vdate, VNo, SubCode, Mobile1,   -- sms_comm:61
                       TxtMsg, SMSDt, SMSTm, SenderName, PartyName, ...)
SELECT TOP n * FROM DBSendSMS WHERE Site_Code = ? ORDER BY DocId DESC -- sms_comm:54
SELECT ... FROM DBSendSMS ...                                          -- sms_http:354
-- DocId/VNo select-then-consume = KI-1
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('SMS (Scheduled)','SMS Send','SMS (Conditional)','SMS');
-- SMS (Scheduled): SA AEDP E EXTSMSOPR | SMS Send: NO ROW (registry-only)
-- SMS (Conditional), SMS: norm-collapsed to "sms" (classify masters bucket)
```
Screenshot: `screenshots/20_operations_SMS_(Scheduled).png` (copy: `02_Operations/screenshots/`).
