# 11 - EPABX - Frontend Workflow

## 1. Shell wiring (shell.py)

- Sidebar root **`epabx`** (own section; icon 📡 sidebar_buttons.py:70; VB6 order shell:1856 `"hr/payroll", "extras", "epabx", "messaging"`). `_on_sidebar_click` → `_safe_open`.
- UI import: `from HMS_py.ui import epabx_ui as epabx` (shell:690, None-guarded :692).
- Registry keys:
  - `Call Type` → `epabx.open_calltype` (shell:1170) — curated masters leaf
  - `Call Code` → `epabx.open_callcode` (shell:1171)
  - `Extension` → `epabx.open_extension` (shell:1172)
  - `Extension Master` / `Call Type Master` / `Call Codes Master` → same openers (shell:1225-1227, VB6 alias captions)
  - `Telephone Call Entry` → `_open_fv_list` EPABX_Data TOP 200 (shell:1425-1429) — curated operations leaf
  - `Call Control Master` → `_open_fv_list` TelCallType list (shell:1430-1435)
  - `Location-Master` → `_open_fv_list` Location list (shell:1434-1440) — **DB table missing** (DATABASE.md §1)
  - `EPABX` → `_doc_skip("EPABX")` (shell:1702)

## 2. Forms

| Leaf | Opener | Notes |
|---|---|---|
| Call Type | `epabx.open_calltype` (epabx_ui:73) | `BaseMasterForm(calltype_config)` — title "Call Type Master (EPABX) - HMS_py"; fields Code/CallType/Short/AcCode/TaxStru; delete_guard "PYT" |
| Call Code | `epabx.open_callcode` (epabx_ui:78) | `callcode_config` — STD/Type/Desc/Pulse; PulseInSec numeric |
| Extension | `epabx.open_extension` (epabx_ui:79) | `ext_config` — Code/Desc/Extension/Type/Room/Shop |
| Telephone Call Entry | shell `_open_fv_list` (:1425) | EPABX_Data log list (read-only, 0 rows → empty list) |
| — | window "HMS_py - EPABX Masters" (epabx_ui:86) | launcher window hosting the 3 master buttons (epabx_ui:91) |

`epabx_ui` imports `apply_desktop_surface, mark_desktop_action` (desktop_style — concurrent workstream's desktop-surface WIP also landed here; capture unaffected).

## 3. Capture screenshot mapping (manifest `failed=[]`)

```
10_masters_Call_Type.png              epabx.open_calltype window (BaseMasterForm)
20_operations_Telephone_Call_Entry.png shell _open_fv_list EPABX_Data (empty list ok)
```
Layer dirs `01_Masters/`, `02_Operations/` = copies; reports layer empty (03_Reports README notes none).
