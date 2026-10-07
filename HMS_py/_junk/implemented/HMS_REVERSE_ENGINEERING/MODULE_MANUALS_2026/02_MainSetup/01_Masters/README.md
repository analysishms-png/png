# 02 Main Setup - Masters

## Leaves (MenuHelp)

classify masters = **51** captions (list README §1). Curated capture + registry hits = 5: `Room Master`, `Room Category`, `Plan Master`, `Guest Profile`, `Department Master`.

| # | Option (caption) | Flag | Param_Str (sample) | Module_Name | Screenshot |
|---|---|---|---|---|---|
| 1 | Room Master | E | AEDP / AE*P | Mas | `screenshots/10_masters_Room_Master.png` |
| 2 | Room Category | E | AEDP / A**P | Mas | `screenshots/20_masters_Room_Category.png` |
| 3 | Plan Master | E | AEDP / AE*P | Mas | `screenshots/30_masters_Plan_Master.png` |
| 4 | Guest Profile | - (no menuHelp row) | - (registry leaf) | - | `screenshots/40_masters_Guest_Profile.png` |
| 5 | Department Master | - (menu caption `Department`, CCenterMas) | A**P / AEDP | CCenterMas | `screenshots/50_masters_Department_Master.png` |

(Baki 46 captions — Tax/Venue/Item/User/Backup/Permissions etc. — registry par hain par curated capture list me nahi: README §3 gap.)

## Functioning

- Room/Category/Guest/Plan → modal `BaseMasterForm`/`PlanMasterForm` (`p2_masters` config-driven CRUD).
- Department → non-modal `DepartmentMasterWindow` (partial_forms_ui).
- Sab masters: code/name required + `LIMITS` max-len + dup-PK guards → single-statement INSERT/UPDATE.

## Database Tables (this layer)

`RoomMast` (86), `RoomCat` (2), `PlanMast` (9), `GuestProf` (7802), `Depart` (73) — curated; baki: `TaxMast`, `PayTypeMast`, `MarketSeg`, `ItemMast`, `UnitMast`, `UserMast`, City/State/Country etc. (modules_map core_files:43-46).

## Backend SQL pattern

```
roommaster.insert  -> INSERT INTO RoomMast (Type, Code, Name, RoomCat, Extension, ...)   roommaster:104
roomcategory.insert-> INSERT INTO RoomCat (Type, Code, Name, ShortName, MaxPerson, ...)  roomcategory:73
plans.insert       -> INSERT INTO PlanMast (Code, Name, Total, Plan_Package, ActiveYN,..) plans:78
guestprof.insert   -> INSERT INTO GuestProf (...) + cascade GuestFolio/RoomOcc            guestprof:119/150/155
depart.insert      -> INSERT INTO Depart (Code, Name, KotYn, POS, Phone, Site_Code, ...) depart:62
```

## MenuHelp permission check

```sql
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Room Master','Room Category','Plan Master','Department');
-- Room Master/Plan -> SA AEDP E Mas, htw_system AE*P E Mas ; Room Category -> MUDIT A**P E Mas
-- Department -> STORE A**P E CCenterMas, SA AEDP E CCenterMas
-- Guest Profile / Department Master caption: row nahi (registry-only, gap)
```
Layer screenshots: `01_Masters/screenshots/` (root `../screenshots/` se, `ok`).
