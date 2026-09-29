# 11 EPABX - Masters

## Leaves (MenuHelp)

**masters bucket = 0** (menuHelp me EPABX rows hain hi nahi — `module_names=()` gap). Curated capture leaf: **`Call Type`** (shell:1170 → `epabx.open_calltype`; registry-only, NO ROW).

Registry siblings (NO ROW all): `Call Code` (:1171), `Extension` (:1172), aliases `Extension Master`/`Call Type Master`/`Call Codes Master` (:1225-1227), `Call Control Master` list view (:1430).

## Functioning

- `Call Type` → `BaseMasterForm(calltype_config)` (epabx_ui:15) — CRUD Code/CallType/Short/AcCode/TaxStru over `TelCallType`; `pk_key="code"`, `delete_guard=make_delete_guard("PYT")`.
- `Call Code` → `callcode_config` (:34) — STD/Type/Desc/Pulse over `TelCallCode`; PulseInSec numeric validation (epabx_masters:213).
- `Extension` → `ext_config` (:54) — Code/Desc/Extension/Type/Room/Shop over `TelExt`; required-number validation (:408).
- All three open as separate `BaseMasterForm` windows (launcher window "HMS_py - EPABX Masters" :86 hosts the buttons).

## Database Tables (this layer)

| Table | Rows | Role |
|---|---|---|
| `TelCallType` | 0 | Call type master |
| `TelCallCode` | 0 | STD codes + pulse |
| `TelExt` | 0 | Extensions (+Room/Shop) |

## Backend SQL pattern

```sql
SELECT {CALLTYPE_COLS} FROM TelCallType WHERE Code = ?        -- epabx_masters:88
SELECT 1 FROM TelCallType WHERE ...                           -- exists guard :99
INSERT INTO TelCallCode (STDCode, CallTypeCode, Description, ...) -- :253
DELETE FROM TelCallCode WHERE STDCode = ?                     -- :290
-- PK = business code (exists-guard), no VNo counters
```

## MenuHelp permission check

```sql
SELECT COUNT(*) FROM menuHelp
WHERE RTRIM([Option]) IN ('Call Type','Call Code','Extension','Extension Master',
                          'Call Type Master','Call Codes Master');
-- 0 — registry-only (module_names=() gap; SA template me EPABX rows hi nahi)
```
Screenshot: `screenshots/10_masters_Call_Type.png` (copy: `01_Masters/screenshots/`).
