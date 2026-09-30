# 02 - Main Setup - Database Workflow

Live counts (2026-09-25, `Moondata2627`, read-only):

## 1. Tables (this module)

| Table | Rows | Role |
|---|---|---|
| `RoomMast` | 86 | Room master (Type/Code PK pattern) |
| `RoomCat` | 2 | Room categories |
| `PlanMast` | 9 | Tariff plans (Code/Name/Total/Package) |
| `GuestProf` | 7802 | Guest master (FO ke saath shared) |
| `Depart` | 73 | Departments (POS/KOT flags) |

(51 masters ke baki tables — `TaxMast`/`TaxStruct`/`PayTypeMast`/`MarketSeg`/`ChargeMast`/`VenueMast`/`ItemMast`/`UserMast`/City-State-Country etc. — `core_files` list modules_map:43-46 me; counts per-table scan plan ke bahar, yahan curated 5 ka deep-dive.)

## 2. Read flows (SELECT patterns)

- List/master load: `roommaster.list_all` (`SELECT ... FROM RoomMast WHERE Type=?`, roommaster.py:65), `roomcategory.list_all` (:45), `plans.list_plans/list_all` (:17/:24), `depart.list_all` (:40), `guestprof.list_all(top=500)` (guestprof.py:82), `guestprof.search(name_part)` (:89).
- Existence/dup: `exists()` per master (roommaster.py:79, plans.py:56, guestprof.py:102, depart.py:52).
- `p2_masters` config-driven forms: `*_config()` → `BaseMasterForm` SELECT/INSERT/UPDATE dispatch (p2_masters.py:262).

## 3. Write flows (transaction diagrams)

**Room Master** (`roommaster.insert` :86):
```
_validate (:48) -> INSERT INTO RoomMast (Type, Code, Name, RoomCat, Extension, ...) (:104)
update -> UPDATE RoomMast SET Name=?, RoomCat=? ... (:128) ; delete (:147)
```
**Room Category** (`roomcategory.insert` :64): `INSERT INTO RoomCat (Type, Code, Name, ShortName, MaxPerson, ...)` (:73) / `UPDATE RoomCat` (:86).
**Plan Master** (`plans.insert` :70): `INSERT INTO PlanMast (Code, Name, Total, Plan_Package, ActiveYN, ...)` (:78) / `UPDATE PlanMast` (:91); `_validate(code,name,package)` (:61).
**Guest Profile** (`guestprof.insert` :116 / `update` :130): `INSERT GuestProf` (:119) + update time cascades `UPDATE GuestFolio` (:150) + `UPDATE RoomOcc SET GuestProf` (:155).
**Department** (`depart.insert` :57): `INSERT INTO Depart (Code, Name, KotYn, POS, Phone, Site_Code, ...)` (:62) / `UPDATE Depart` (:74).

Har write single-statement `db.execute(sql, params, cn, commit)` pattern — ek hi connection, optional commit (tests transactional rollback ke liye `commit=False` use karte hain).

## 4. VNo / race safety

- In masters me DocId/VNo nahi — **code-PK pattern**: `exists()` check → insert (dup PK guard; `ValueError` duplicate path).
- `roommaster`/`roomcategory` composite key `(Type, Code)` (DEFAULT_TYPE default arg, roommaster.py:71).
- `plans.next` code allocation: `plans` code explicit user-entered (no sequence race).
- GuestProf `next_code` (guestprof.py:107) — SELECT MAX+1 pattern (VB6 legacy, race window minimal — single-operator UI).

## 5. MenuHelp permission check SQL

```sql
-- curated masters ke menuHelp rows (Flag='E', Module_Name='Mas' / 'CCenterMas')
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Room Master','Room Category','Plan Master','Department');
-- Room Master   -> SA AEDP E Mas ; htw_system AE*P E Mas
-- Room Category -> SA AEDP E Mas ; MUDIT A**P E Mas
-- Plan Master   -> SA AEDP E Mas ; htw_system AE*P E Mas
-- Department    -> STORE A**P E CCenterMas ; SA AEDP E CCenterMas

-- Guest Profile / Department Master: menuHelp row nahi (registry-only) -> permission SQL khali (gap)
```
Layer screenshots: `01_Masters/screenshots/` (root `../screenshots/` se, `ok`).
