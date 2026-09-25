# 14 Sale & Marketing - Operations

## Leaves (MenuHelp)

**operations bucket = 0** (rows `Module_Name='Mas'` = 02 bucket; module_names=()). Curated capture leaf: **`Business Source`** (shell:1125 → `fm.open_businesssource`; menuHelp `SA AEDP E Mas` + htw_system + admin).

Registry sibling: `Guest Profile` (shell:1069 — 02 captured).

## Functioning

- `Business Source` → `BaseMasterForm(businesssource_config)` (finance_masters_ui:101) — Code/Name/Active CRUD; `api=businesssource`, `pk_key="code"`, `LIMITS` code 5/name 20.
- Launcher button `Business Source Master` (finance_masters_ui:240) → same opener.
- Business source rows drive FO booking/report segmentation (`BussSource` referenced in Banquet `bussrc` field banquet_masters_ui:72, night-audit `Business Source Occupancy Analysis`).

## Database Tables (this layer)

| Table | Rows | Role |
|---|---|---|
| `BussSource` | 6 | Business source master (VB6 name `BussSource` — misspelling parity) |

## Backend SQL pattern

```sql
SELECT {SELECT_COLS} FROM BussSource ORDER BY Code               -- businesssource:50
SELECT 1 FROM BussSource WHERE Code = ?                          -- exists :63
INSERT INTO BussSource (Code, Name, Active, ...)                 -- :71
UPDATE BussSource ... / DELETE FROM BussSource WHERE Code = ?    -- :79/:88
-- _validate required Code/Name (:37); PK exists-guard (no KI-1 VNo)
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) = 'Business Source';
-- SA AEDP E Mas | htw_system AE*P E Mas | admin A**P E Mas
-- Module_Name='Mas' → 02 bucket (cross-module documented)
```
Screenshot: `screenshots/20_operations_Business_Source.png` (copy: `02_Operations/screenshots/`).
