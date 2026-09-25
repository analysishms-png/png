# 11 - EPABX - Backend Workflow

## 1. Core modules (HMS_py/core/)

| File | Role | Key APIs |
|---|---|---|
| `epabx_masters.py` | Tel master CRUD (VB6-parity API classes) | **CallType:** list/get/exists (:76/:88/:99 `TelCallType`), `_CallTypeAPI` (:118) `list_all/get/insert/update/delete` (:122-142). **CallCode:** (:219/:231/:242), `INSERT TelCallCode` (:253), `DELETE` (:290), `_CallCodeAPI` (:297, CRUD :301-321), `PulseInSec` numeric ValueError (:213). **Ext:** "Extension number hona chahiye" (:408) → `TelExt` via `TelExtAPI` |
| `epabx_ops.py` | Call log ops (schema verified live KailashData2526 :10) | `_map_epabxdata` (:24), `epabxdata_list` (:58 `ORDER BY ID DESC` limit 500), `epabxdata_get` (:68), `epabxdata_search(extension, roomno, ...)` (:77 dynamic WHERE), `epabxdata_insert` (:100 `INSERT EPABX_Data` :102, returns id), `epabxdata_delete` (:119) |

Both API classes follow the `BaseMasterForm`/`MasterConfig` contract (epabx_ui configs: `calltype_config` :15, `callcode_config` :34, `ext_config` :54 — Field defs, `pk_key`, `delete_guard=make_delete_guard("PYT")`).

## 2. Write flows (see DATABASE.md §3)

- `_CallTypeAPI.insert/update/delete` — single-table `TelCallType` (exists-guarded).
- CallCode: exists-guard (:242) + PulseInSec validation (:213) → `INSERT TelCallCode` (:253) / `DELETE` (:290).
- Ext: required-number validation (:408) → `TelExt`.
- `epabxdata_insert` → `INSERT EPABX_Data (V_TYPE, PNT_NO, Extension, RoomNo, ...)` (:102) returns `@@IDENTITY`-style int; `epabxdata_delete` WHERE ID (:121).

## 3. Validation & error handling

- Field-level: PulseInSec numeric (:213), Extension number required (:408) — ValueError before DB.
- exists-guards (`SELECT 1 FROM ...` :99/:242) prevent duplicate PK codes.
- `delete_guard=make_delete_guard("PYT")` blocks delete when referenced (BaseMasterForm pattern).
- Registry lambdas None-guarded on `epabx` import (shell:1170-1172, :692).
- `Location-Master` list view will raise (Location table missing) — unguarded shell lambda (shell:1434); capture avoided it.

## 4. Race-safety (KI-1 family)

- No VNo/select-then-consume counters in EPABX (PK = business code with exists-guard).
- `EPABX_Data.ID` insert returns id — if consumed downstream without re-read, potential KI-1 analog (no consumer observed).
- All tables 0 rows — races non-reproducible in this DB (KI-2 extreme for EPABX).
