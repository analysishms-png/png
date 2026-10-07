# 11 - EPABX - Module Manual

## 1. Menu path (MenuHelp)

- Sidebar root: **`epabx`** (own section, `sidebar_buttons.py:70` 📡; VB6 order shell:1856) — modules_map `extras`→`epabx` fixed 2026-09-25.
- Module_Names: **`()` — zero menuHelp rows** (discovery 2026-09-25: menuHelp me EPABX rows hain hi nahi — DB gap, SA template + LIKE `%elephone%/%EPABX%/%Extension%/%Tel%` all empty). Counts: **masters=0 ops=0 reports=0 hidden=0 other=0**.
- Registry (Wave 3 EPABX masters, shell:1169-1172): `Call Type` → `epabx.open_calltype`, `Call Code` → `epabx.open_callcode`, `Extension` → `epabx.open_extension`. Aliases (shell:1225-1227): `Extension Master`, `Call Type Master`, `Call Codes Master`. List views (shell:1425-1435): `Telephone Call Entry` (EPABX_Data log), `Call Control Master` (TelCallType list), `Location-Master` (VB6 dash caption). `EPABX` → `_doc_skip` (shell:1702).
- **Curated leaves (fixed 2026-09-25):** masters `Call Type` (was `HMS_py - EPABX Masters` = epabx_ui window title :86, NOT a registry key — plan copy bug), operations `Telephone Call Entry` (was empty), sidebar `extras`→`epabx`.
- Window: `HMS_py - EPABX Masters` (epabx_ui:86) hosts buttons `Call Type`/`Call Code`/`Extension` (epabx_ui:91 region).

## 2. Workflow (menu → screen → action → DB write)

| # | Leaf | Screen (opener) | Action | DB write |
|---|---|---|---|---|
| 1 | Call Type (registry-only, NO ROW) | `epabx.open_calltype` (shell:1170) → `BaseMasterForm(calltype_config)` | Call type CRUD (Code/CallType/Short/AcCode/TaxStru) | `epabx_masters._CallTypeAPI` → `TelCallType` (list :76, get :88, exists :99, CRUD :134-142) |
| 2 | Call Code / `Call Codes Master` | `epabx.open_callcode` (shell:1171) | STD/Type/Desc/Pulse CRUD (PulseInSec numeric guard :213) | `TelCallCode` (`INSERT` :253, `DELETE` :290, `_CallCodeAPI` :297) |
| 3 | Extension / `Extension Master` | `epabx.open_extension` (shell:1172) → `ext_config` | Extension CRUD (Code/Desc/No/Type/Room/Shop; "Extension number hona chahiye" :408) | `TelExt` (via `TelExtAPI`) |
| 4 | Telephone Call Entry (registry-only, NO ROW) | `_open_fv_list` EPABX_Data query (shell:1425-1429) | Call log list view | read-only `EPABX_Data` (`epabxdata_list` ops:58) |
| 5 | Call Control Master / Location-Master | `_open_fv_list` TelCallType / Location list (shell:1430-1440) | list views | read-only |

## 3. Layers snapshot

| Layer | Count | registry hits |
|---|---|---|
| masters | 0 (menuHelp empty) | Call Type |
| operations | 0 (menuHelp empty) | Telephone Call Entry |
| reports | 0 | — |
| hidden | 0 | — |
| other | 0 | — |

## 4. Screenshot index (manifest `failed=[]`)

| File | Layer | Leaf | Status |
|---|---|---|---|
| `screenshots/10_masters_Call_Type.png` | masters | Call Type | ok |
| `screenshots/20_operations_Telephone_Call_Entry.png` | operations | Telephone Call Entry | ok |

## 5. Test status

- `TEST_RESULTS.md`: L1 **434 passed** + L2b 27 passed, **fails=0** (concurrent workstream's suite grew 413→434 mid-batch, all green).
- Detail: [`TEST_RESULTS.md`](TEST_RESULTS.md); KI list: `00_Instructions/TEST_PLAN_MASTER.md`.

## 6. Related docs

- Database: [`DATABASE.md`](DATABASE.md) · Frontend: [`FRONTEND.md`](FRONTEND.md) · Backend: [`BACKEND.md`](BACKEND.md) · Tests: [`TEST_PLAN.md`](TEST_PLAN.md)
- Layers: [`01_Masters/README.md`](01_Masters/README.md) · [`02_Operations/README.md`](02_Operations/README.md) · [`03_Reports/README.md`](03_Reports/README.md)
- SOP: `00_Instructions/MANUAL_TEMPLATE.md` · capture: `00_Instructions/CAPTURE_GUIDE.md` · global map: `00_GLOBAL/MenuHelp_Module_Map.md`
