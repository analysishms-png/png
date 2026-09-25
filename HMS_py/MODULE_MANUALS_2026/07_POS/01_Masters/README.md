# 07 POS - Masters

## Leaves (MenuHelp)

**masters bucket = 13** (`_logic.json`): `Setup Outlet`, `Outlet Bill Sundry Setting`, `Server Master`, `Table Master`, `Item List`, `Menu Group`, `Menu Category`, `Menu Item`, `Menu Item Rate`, `Session Master`, `Open Item Consumption`, `NC Type`, `Customer History`. Plus curated registry leaf **`Restaurant Master`** (no menuHelp row; shell:1447).

## Functioning

- `Restaurant Master` → `RestaurantMasterWindow` (misc_sub_forms_ui:406, show()) — restaurant/outlet master CRUD (VB6 misc sub-form).
- `Setup Outlet` → `pm.open_session` (shell:1580) session setup; `Session Master` → `pos_masters.session_*` CRUD with `_require_permission` RBAC (:38).
- `Menu Group/Category/Item/Item Rate` → `ItemCatMast`/`ItemMast` (shared item tree); `Table Master` → `pos_table` CRUD; `Server Master` → waiter/server list (`get_waiters` pos.py:204).

## Database Tables (this layer)

| Table | Rows | Role |
|---|---|---|
| `SessionMast` | 2 | Session master |
| `ItemCatMast` | 50 | Menu category |
| `ItemMast` | 3355 | Menu item (shared) |
| `NCTypeMast` | 16 | NC types |
| `ShiftMast` | 0 | Shift master (empty) |

## Backend SQL pattern

```sql
INSERT INTO SessionMast (...)   -- pos_masters.session_insert :79, after _require_permission
INSERT INTO ... (table CRUD via pos_table.insert/update/delete :112-164)
SELECT ... FROM ItemCatMast / ItemMast   -- menu tree lookups
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Setup Outlet','Table Master','Menu Item','Session Master','Restaurant Master');
-- SA AEDP E POSMas (+SUNIL/htw_system) for Setup Outlet/Table Master/Menu Item/Session Master
-- Restaurant Master: NO ROW (registry-only)
```
Screenshot: `screenshots/10_masters_Restaurant_Master.png` (copy: `01_Masters/screenshots/`).
