# 12 - Messaging (SMS) - Backend Workflow

## 1. Core modules (HMS_py/core/)

| File | Role | Key APIs |
|---|---|---|
| `sms_comm.py` | SMS data access (queue/forward/reward) | **Queue:** `list_dbsms/insert_dbsms` (:53/:59, `INSERT DBSendSMS` :61, `_map_dbsms` :42). **Forward:** `list_email_forward/insert_email_forward/delete_email_forward` (:19/:25/:37, `MAX(Id)` :26, `INSERT EmailSMSForward` :29, `DELETE` :38, `_map_email` :10). **Reward:** `list_reward` (:83, `GuestReward`, `_map_reward` :72) |
| `sms_enviro.py` | Config + forward rules | **Enviro:** `smsenviro_get` (:47, `SELECT SMSEnviro WHERE LogSite_Code`), `smsenviro_update` (:63, `UPDATE SMSEnviro SET {sets} WHERE LogSite_Code` :74, `_map_smsenviro` :37). **Forward:** `emailforward_list/get/insert/update` (:123/:132/:140/:153, `_map_emailforward` :99). Docstring: schema verified from live KailashData2526 DB (:10) |
| `sms_http.py` | HTTP send engine + queue worker | `format_phone` (:86), `validate_phone` (:99), `send_sms` (:217), `send_template_sms` (:224), `send_checkin_sms/checkout/booking/bill_sms` (:295-307, FO triggers), `send_bulk_sms` (:312), `build_sms_url(env, phone, msg)` (:322), `_pending_queue(limit=50)` (:349, `FROM DBSendSMS`), `SMSResponse` dataclass (:67), `log_error` (core.error_handling :15) |

## 2. Write flows (see DATABASE.md §3)

- `insert_dbsms` single-table queue insert (DocId/VNo = KI-1 family).
- `smsenviro_update` single-row `UPDATE SMSEnviro ... WHERE LogSite_Code = ?` — dynamic SET from changes dict (:63-74).
- `insert_email_forward` — `MAX(Id)+1` explicit race (KI-1); `sms_enviro.emailforward_insert` (:140) alternate path.
- `send_sms` → HTTP GET via `build_sms_url` (:322) using env from `smsenviro_get`; queue drained by `_pending_queue`.

## 3. Validation & error handling

- `validate_phone` (:99) + `format_phone` (:86) before send (KI-5 family — phone normalization).
- `SMSResponse` carries status/error per send (:67); `log_error` wraps failures (core.error_handling).
- `sms_ui_mod`/`sms_http_ui` None-guards in registry lambdas (shell:1547-1560) → `_coming_soon` fallback (shell:1596/:1560).
- InBox/OutBox dialog errors surfaced via `QMessageBox.information` (shell:948).

## 4. Race-safety (KI-1 family)

- `DBSendSMS.DocId/VNo` select-then-consume (insert_dbsms).
- `EmailSMSForward.Id = MAX(Id)+1` (sms_comm:26) — classic KI-1.
- `SMSEnviro` singleton — last-writer-wins concurrent config edit (no lock).
- `send_bulk_sms` (:312) loops per-phone — partial-failure list semantics (KI-3 family: all-or-nothing not guaranteed).
