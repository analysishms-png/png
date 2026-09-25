# 12 - Messaging (SMS) - Module Manual

## 1. Menu path (MenuHelp)

- Sidebar root: `extras` (shared extras group; capture used `sidebar 'extras'`).
- Module_Names: `SMSSETUP`, `EXTSMSSETUP`, `SMSOPR`, `EXTSMSOPR`, `EXTRSMS`, `EXTSMS`; `master_modules` = `SMSSETUP`, `EXTSMSSETUP`.
- Counts: **masters=5, ops=0, reports=0, hidden=0, other=1**.
- Masters (classify): `Sstup` (VB6 misspelling, Flag N, SMSSETUP), `SMS (API)`, `SMS (Scheduled)`, `SMS (Conditional)`, `SMS`.
- Other (1): `Operations` (header row).
- **Classify quirk:** `_norm_caption` strips trailing `(...)` (menu_help.py:35-38) → `SMS (API)/(Scheduled)/(Conditional)/SMS` all normalize to `"sms"`; curated masters leaf `"SMS (API)"` makes `master_caps={"sms"}` and masters is checked before operations (collect_logic.py:39-41) → all four SMS captions classify as **masters** even though `(Scheduled)` is curated as operations. Registry hits preserve the true mapping: `hits.masters=[SMS (API)]`, `hits.operations=[SMS (Scheduled)]`.
- Registry family (sms_ui_mod, shell:1547-1549): `SMS (API)` → `open_sms_send`, `SMS (Scheduled)` → `open_sms_history`, `SMS Environment Settings` → `SMSEnviroSettings`. Plus `SMS Send` → `sms_http_ui.open_sms_compose` (shell:1560, `_coming_soon` fallback), `SMS Center Settings` → `SMSEnviroSettings` (shell:1596, same fallback). SMS log dialog `SMS InBox (Sent)`/`SMS OutBox (Pending)` (shell:948-951).
- **Curated leaves (fixed 2026-09-25):** masters `SMS (API)` (shell:1547 — earlier masters=[]), operations `SMS (Scheduled)` (shell:1548 — earlier `SMS Center`, key does not exist). Both confirmed in `_logic.json` `registry_hits`.

## 2. Workflow (menu → screen → action → DB write)

| # | Leaf | Screen (opener) | Action | DB write |
|---|---|---|---|---|
| 1 | SMS (API) (`EXTSMSSETUP`) | `sms_ui_mod.open_sms_send` (shell:1547) | API compose/send | `sms_http.send_sms/send_template_sms` → `DBSendSMS` via `sms_comm.insert_dbsms` (:59-61) |
| 2 | SMS (Scheduled) (`EXTSMSOPR`) | `sms_ui_mod.open_sms_history` (shell:1548) | Schedule/history view | read `DBSendSMS`; `sms_http._pending_queue` (:349) |
| 3 | SMS Environment Settings (registry-only, NO ROW) | `sms_ui_mod.SMSEnviroSettings` (shell:1549/:1596) | Gateway config | `sms_enviro.smsenviro_update` → `UPDATE SMSEnviro SET ... WHERE LogSite_Code = ?` (:74) |
| 4 | SMS Send (registry, fallback coming_soon) | `sms_http_ui.open_sms_compose` (shell:1560) | HTTP compose | `DBSendSMS` + email forward `sms_comm.insert_email_forward` (:25-29) |
| 5 | (aliases) SMS (Conditional), SMS | classify rows → SMS family | Conditional send / generic | `DBSendSMS`, `EmailSMSForward` |

## 3. Layers snapshot

| Layer | Count | registry hits |
|---|---|---|
| masters | 5 (incl. norm-collision siblings) | SMS (API) |
| operations | 0 classify (curated leaf exists) | SMS (Scheduled) |
| reports | 0 | — |
| hidden | 0 | — |
| other | 1 | `Operations` header |

## 4. Screenshot index (manifest `failed=[]`)

| File | Layer | Leaf | Status |
|---|---|---|---|
| `screenshots/10_masters_SMS_(API).png` | masters | SMS (API) | ok |
| `screenshots/20_operations_SMS_(Scheduled).png` | operations | SMS (Scheduled) | ok |

## 5. Test status

- `TEST_RESULTS.md`: L1 `413 passed` + L2b `27 passed`, **fails=0** (first run fails=1 — transient cross-session desktop-surface TDD red, same interference as 13_MembersMgmt; rerun green).
- Detail: [`TEST_RESULTS.md`](TEST_RESULTS.md); KI list: `00_Instructions/TEST_PLAN_MASTER.md`.

## 6. Related docs

- Database: [`DATABASE.md`](DATABASE.md) · Frontend: [`FRONTEND.md`](FRONTEND.md) · Backend: [`BACKEND.md`](BACKEND.md) · Tests: [`TEST_PLAN.md`](TEST_PLAN.md)
- Layers: [`01_Masters/README.md`](01_Masters/README.md) · [`02_Operations/README.md`](02_Operations/README.md) · [`03_Reports/README.md`](03_Reports/README.md)
- SOP: `00_Instructions/MANUAL_TEMPLATE.md` · capture: `00_Instructions/CAPTURE_GUIDE.md` · global map: `00_GLOBAL/MenuHelp_Module_Map.md`
