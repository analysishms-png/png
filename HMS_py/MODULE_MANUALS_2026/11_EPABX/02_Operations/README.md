# 11 EPABX - Operations

## Leaves (MenuHelp)

**operations bucket = 0** (menuHelp gap — module_names=()). Curated capture leaf: **`Telephone Call Entry`** (shell:1425 → `_open_fv_list` EPABX_Data; registry-only, NO ROW).

Registry siblings: `Location-Master` list (shell:1434 — **DB `Location` table missing**, would crash if opened; not captured), `EPABX` → `_doc_skip` (shell:1702).

## Functioning

- `Telephone Call Entry` → shell `_open_fv_list` runs `SELECT TOP 200 ID, V_TYPE, PNT_NO, Extension, RoomNo, CALL_START_DATE, CALL_DURATION, DIALED_NO FROM EPABX_Data ORDER BY ID DESC` (shell:1427-1429) — read-only call log list.
- Core ops API (`epabx_ops.py`, schema verified live KailashData2526 :10): `epabxdata_list` (:58), `epabxdata_get` (:68), `epabxdata_search(extension, roomno)` (:77 dynamic WHERE), `epabxdata_insert` (:100 → INSERT :102 returns id), `epabxdata_delete` (:119).
- Write path (call log capture from EPABX hardware): `INSERT EPABX_Data (V_TYPE, PNT_NO, Extension, RoomNo, ...)` — no menuHelp-driven entry form in this DB.

## Database Tables (this layer)

| Table | Rows | Role |
|---|---|---|
| `EPABX_Data` | 0 | Call log: ID, V_TYPE, PNT_NO, Extension, RoomNo, CALL_START_DATE, CALL_DURATION, DIALED_NO, Site_Code, LogSite_Code |

## Backend SQL pattern

```sql
SELECT TOP 500 ... FROM EPABX_Data ORDER BY ID DESC           -- epabx_ops:64
SELECT ... FROM EPABX_Data WHERE 1=1 [AND Extension=? ...]    -- search :84
INSERT INTO EPABX_Data (V_TYPE, PNT_NO, Extension, RoomNo, ...) -- :102
DELETE FROM EPABX_Data WHERE ID = ?                           -- :121
-- ID identity: insert returns id (KI-1 analog if consumed without re-read)
```

## MenuHelp permission check

```sql
SELECT COUNT(*) FROM menuHelp WHERE RTRIM([Option]) IN ('Telephone Call Entry','EPABX');
-- 0 — registry-only (no menuHelp rows for EPABX at all)
```
Screenshot: `screenshots/20_operations_Telephone_Call_Entry.png` (copy: `02_Operations/screenshots/`).
