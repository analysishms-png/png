# 11 - EPABX - Database Workflow

Live counts (2026-09-25, `Moondata2627`, read-only): **ALL EPABX tables empty (0 rows)** — module data-absent (extreme KI-2).

## 1. Tables (this module)

| Table | Rows | Role |
|---|---|---|
| `TelCallType` | 0 | Call type master (Code, CallType, ShortName, Accode, Taxstru) |
| `TelCallCode` | 0 | STD call codes (STDCode, CallTypeCode, Description, PulseInSec) |
| `TelExt` | 0 | Extension master (Code, Desc, Extension, Type, Room, Shop) |
| `EPABX_Data` | 0 | Call log (ID, V_TYPE, PNT_NO, Extension, RoomNo, CALL_START_DATE, CALL_DURATION, DIALED_NO, Site_Code, LogSite_Code) |
| `Location` | — | **Table missing** (ProgrammingError; `Location-Master` list view shell:1434 will error if opened) |

Schema source: `epabx_ops.py:10` "verified from live KailashData2526 DB".

## 2. Read flows (SELECT patterns)

- Call types: `epabx_masters` → `SELECT {CALLTYPE_COLS} FROM TelCallType ...` (:76 list, :88 get, `SELECT 1 ...` exists :99).
- Call codes: `SELECT {CALLCODE_COLS} FROM TelCallCode ...` (:219/:231, exists :242).
- Call log: `epabx_ops.epabxdata_list` → `FROM EPABX_Data ORDER BY ID DESC` (:58-64, limit 500); `epabxdata_get` WHERE ID (:68-73); `epabxdata_search(extension, roomno, ...)` dynamic WHERE (:77-84).
- Shell list views: `Telephone Call Entry` TOP 200 EPABX_Data (shell:1427-1429); `Call Control Master` `SELECT Code, Name FROM TelCallType ORDER BY Code` (shell:1433-1435).

## 3. Write flows (transaction diagrams)

**Call code** (`epabx_masters` insert path, :253):
```
exists guard (:242) + PulseInSec numeric validation (:213)
  -> INSERT INTO TelCallCode (STDCode, CallTypeCode, Description, ...)  (:253)
COMMIT ; delete -> DELETE FROM TelCallCode WHERE STDCode = ?            (:290)
```
**Call type**: `_CallTypeAPI.insert/update/delete` (:134-142) → `TelCallType` single-table (BaseMasterForm pattern).
**Extension**: `TelExtAPI` via `ext_config` (epabx_ui) — "Extension number hona chahiye" validation (epabx_masters:408) → `TelExt`.
**Call log**: `epabxdata_insert` → `INSERT INTO EPABX_Data (V_TYPE, PNT_NO, Extension, RoomNo, ...)` (:100-102); `epabxdata_delete` WHERE ID (:119-121).

## 4. VNo / race safety

- `EPABX_Data.ID` — IDENTITY/auto? `epabxdata_insert` returns int (likely @@IDENTITY — verify if used in tests); `MAX(Id)`-style not observed here.
- `TelCallType/TelCallCode/TelExt` — PK code exists-guards (no VNo).
- **All tables 0 rows** — no live data to race (KI-2 extreme; KI-1 not exercisable in DB).

## 5. MenuHelp permission check SQL

```sql
SELECT COUNT(*) FROM menuHelp
WHERE RTRIM([Option]) IN ('Call Type','Call Code','Extension','Extension Master',
                          'Call Type Master','Call Codes Master','Telephone Call Entry',
                          'Call Control Master','Location-Master','EPABX');
-- 0 — zero EPABX rows in SA template (module_names=() gap, noted in modules_map comment)
SELECT COUNT(*) FROM menuHelp
WHERE [Option] LIKE '%elephone%' OR [Option] LIKE '%EPABX%'
   OR [Option] LIKE '%Extension%' OR Module_Name LIKE '%EPABX%' OR Module_Name LIKE '%Tel%';
-- 0 — confirms gap across whole menuHelp
```
Layer screenshots: `01_Masters/screenshots/10_masters_Call_Type.png`, `02_Operations/screenshots/20_operations_Telephone_Call_Entry.png` (copies).
