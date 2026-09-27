# 12 - Messaging (SMS) - Module Manual

## 1. Menu path (MenuHelp)

- Sidebar root: `extras` (shared extras group; capture used `sidebar 'extras'`).
- Module_Names: `SMSSETUP`, `EXTSMSSETUP`, `SMSOPR`, `EXTSMSOPR`, `EXTRSMS`, `EXTSMS`; `master_modules` = `SMSSETUP`, `EXTSMSSETUP`.
- Counts: **masters=2, ops=1, reports=0, hidden=0, other=3** (post KI-10 fix, 2026-09-25).
- Masters (classify): `Sstup` (VB6 misspelling, Flag N, SMSSETUP, via `master_modules`), `SMS (API)` (exact curated leaf).
- Operations (classify): `SMS (Scheduled)` (exact curated leaf).
- Other (3): `SMS (Conditional)`, `SMS` (nodes, not curated), `Operations` (header row).
- **KI-10 norm-collision — FIXED 2026-09-25:** `_norm_caption` strips trailing `(...)` (menu_help.py:35-38) → `SMS (API)/(Scheduled)/(Conditional)/SMS` all normalize to `"sms"`. `collect_logic.classify` now (a) checks paren-preserving exact `caption_disp` match against curated leaves FIRST and (b) excludes paren-leaf stripped norms from legacy `master_caps`/`oper_caps` → curated layers honored; uncurated siblings fall to `other`. Test: `test_classify_norm_collision_exact_precedence` (16/16 green). Registry hits unchanged: `hits.masters=[SMS (API)]`, `hits.operations=[SMS (Scheduled)]`.
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
| masters | 2 (`Sstup`, `SMS (API)`) | SMS (API) |
| operations | 1 (`SMS (Scheduled)`) | SMS (Scheduled) |
| reports | 0 | — |
| hidden | 0 | — |
| other | 3 (`SMS (Conditional)`, `SMS`, `Operations`) | — |

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
