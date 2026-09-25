# 12 - Messaging (SMS) - Frontend Workflow

## 1. Shell wiring (shell.py)

- Sidebar root `extras` (shared group with MembersMgmt/EPABX/SaleMarketing); `_on_sidebar_click` → `_safe_open` (:2194).
- UI imports: `sms_ui_mod`, `sms_http_ui` (guarded `if ... else None`).
- Registry keys:
  - `SMS (API)` → `sms_ui_mod.open_sms_send` (:1547) — curated masters leaf
  - `SMS (Scheduled)` → `sms_ui_mod.open_sms_history` (:1548) — curated operations leaf
  - `SMS Environment Settings` → `sms_ui_mod.SMSEnviroSettings` (:1549)
  - `SMS Send` → `sms_http_ui.open_sms_compose` (shell:1560, `_coming_soon("SMS Send")` fallback)
  - `SMS Center Settings` → `sms_ui_mod.SMSEnviroSettings` (shell:1596, same fallback)
- SMS log dialog: `SMS InBox (Sent)` / `SMS OutBox (Pending)` titles (shell:951); unavailable-DB error box (shell:948).
- Topbar button: `self.btn_sms_top = QPushButton("SMS")` (shell:1797); generic fallback QMessageBox (shell:2283).

## 2. Forms

| Leaf | Opener | Notes |
|---|---|---|
| SMS (API) | `sms_ui_mod.open_sms_send` (shell:1547) | API compose/send window (capture: `10_masters_SMS_(API).png`) |
| SMS (Scheduled) | `sms_ui_mod.open_sms_history` (shell:1548) | Schedule/history window (capture: `20_operations_SMS_(Scheduled).png`) |
| SMS Environment Settings | `sms_ui_mod.SMSEnviroSettings` (shell:1549/:1596) | Gateway config (registry-only, no menuHelp row) |
| SMS Send | `sms_http_ui.open_sms_compose` (shell:1560) | HTTP compose; `_coming_soon` fallback if module missing |
| SMS (Conditional) / SMS | classify rows (norm-collapsed to `"sms"`) | same SMS family; no dedicated opener key |

## 3. Capture screenshot mapping (manifest `failed=[]`)

```
10_masters_SMS_(API).png        sms_ui_mod.open_sms_send window
20_operations_SMS_(Scheduled).png  sms_ui_mod.open_sms_history window
```
Layer dirs `01_Masters/`, `02_Operations/` = copies; reports layer empty (03_Reports README notes none).
