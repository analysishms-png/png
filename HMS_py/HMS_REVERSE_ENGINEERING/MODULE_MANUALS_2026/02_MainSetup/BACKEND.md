# 02 - Main Setup - Backend (core/)

## 1. Module map (core file → responsibility → public API)

| File | Responsibility | Public API |
|---|---|---|
| `roommaster.py` | RoomMast CRUD | `_map` 32, `_validate` 48, `list_all` 65, `get` 71, `exists` 79, `insert` 86, `update` 124, `delete` 147 |
| `roomcategory.py` | RoomCat CRUD | `_map` 22, `_validate` 29, `list_all` 45, `get` 51, `exists` 58, `insert` 64, `update` 82, `delete` 95 |
| `plans.py` | PlanMast CRUD | `list_plans` 17, `list_all` 24, `get` 48, `exists` 56, `_validate` 61, `insert` 70, `update` 86, `delete` 97 |
| `company.py` | Company list/year | `list_companies`, `current_year` |
| `guestprof.py` | Guest master CRUD + cascades | `_map` 26, `_validate` 37, `list_all` 82, `search` 89, `get` 96, `exists` 102, `next_code` 107, `insert` 116, `update` 130, `delete` 173 |
| `depart.py` | Depart CRUD | `_map` 17, `_validate` 23, `list_all` 40, `get` 46, `exists` 52, `insert` 57, `update` 71, `delete` 81 |
| `unit.py` | Unit master CRUD | `_map, _validate, list_all, get, exists, insert, update, delete` |
| `item.py` | Item + ItemGroup CRUD | `list_all/search/get/exists/insert/update/delete` + `itemgrp_*` (list/get/exists/insert/update/delete) |
| `taxmaster.py` | Tax master CRUD | `list_all/get/exists/insert/update/delete` (+ `_validate`) |
| `paymenttype.py` | Payment type CRUD | `list_all/get/exists/insert/update/delete` |
| `marketsegment.py` | Market segment CRUD | `list_all/get/exists/insert/update/delete` |
| `general_setup.py` | Room features/godown/voucher cat/prefix/enviro/print settings | `roomfeat_*`, `godown_*`, `vouchcat_*`, `voucher_type_list`, `voucher_prefix_list`, `voucher_include_list`, `voucher_exclude_list`, `enviro_get/update`, `printing_settings_snapshot` |
| `sys_config.py` | Roundoff/datelock/site/menuHelp/user-perm/sundry-fix config | `roundoff_*`, `datelock_*`, `site_*`, `menuhelp_*`, `menuhelp1_*`, `userperm_*`, `sundryfix_*`, `get_config`, `update_config` |
| `sundry.py` | Sundry master CRUD | `list_all/get/exists/insert/update/delete` |
| `sundry_type.py` | Sundry type entries | `vtype_for, list_entries, next_sno, add_entry` |

## 2. Key flows (function-level logic)

1. **Config-driven master form** (`p2_masters` + `BaseMasterForm`, p2_masters.py:262): har master ka `*_config()` (table/cols/limits) → generic load/save dispatch → core `insert/update` calls.
2. **Room create**: `roommaster._validate` (code/name/limits, roommaster.py:48-62) → dup check `Room Code 'X' Already Exists` (:94) → `INSERT RoomMast` (:104).
3. **Plan save**: `plans._validate(code,name,package)` (:61) → `INSERT PlanMast` incl `ActiveYN` (:78).
4. **Guest edit cascade**: `guestprof.update` → `GuestProf` + `GuestFolio` + `RoomOcc.GuestProf` (guestprof.py:140/150/155).
5. **Department save**: Y/N flags validation (`KotYn/POS sirf Y/N`, depart.py:35) → `INSERT Depart` (:62).
6. **Permissions masters** (`sys_config.userperm_*`) — `Permissions` leaf backing (menuhelp/user rights rows write path).
7. **Voucher prefix setup** (`general_setup.voucher_prefix_list/include/exclude`) — Finance `Voucher_Prefix` config UI.

## 3. Guards & invariants

| Guard | Where |
|---|---|
| Code/Name required + `LIMITS[k]` max-len on every master | roommaster.py:50-62, roomcategory.py:31-42, guestprof.py:39-51, depart.py:25-37, plans.py:63-67 |
| Duplicate PK `Already Exists` | roommaster.py:94, roomcategory.py:70, guestprof `exists` path |
| Guest unique Mobile/Phone/Email (`already exists for guest ...`) | guestprof.py:65/72/79 |
| `KotYn/POS` sirf `Y/N` | depart.py:35 |
| Composite key `(Type, Code)` default `DEFAULT_TYPE` | roommaster.py:71, roomcategory.py:51 |
| `_validate` field-normalize before every insert/update | all CRUD modules (`_map/_validate` pattern) |

## 4. Error handling

- Sab validators `raise ValueError(...)` (VB6 MsgBox parity) → UI dialog.
- `db.execute(sql, params, cn, commit)` single-statement; tests `commit=False` rollback ke liye use karte hain.
- `general_setup`/`sys_config` read helpers `_v_*` wrappers — query failure par empty list (config snapshot pattern, general_setup `_v_query_read`).
- Config get/update fallback: `sys_config.get_config(key, default)` / `update_config` (unknown key → no-crash path).
- Test status: L1 `385 passed` + L2b `27 passed`, `fails=0` (ek prior flaky L1 fail — TEST_PLAN §4).
