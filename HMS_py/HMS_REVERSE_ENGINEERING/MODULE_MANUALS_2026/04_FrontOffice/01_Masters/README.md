# 04 Front Office — Masters

## Leaves (MenuHelp)

**MenuHelp bucket (FO `menuhelp.masters`): 0 rows** — FO module_names (`FrontDesk, FDO, FDOMenu…`) me koi bhi curated master caption/Module_Name nahi. Live proof: `SELECT … FROM menuHelp WHERE [Option]='Guest Profile' AND UserName='SA'` → empty; `Room Master` ka row `Module_Name='Mas'` hai (02_MainSetup group).

**Registry leaves (UI screens, `_logic.json registry_hits.masters`) — 5:**

| # | Option (caption) | Flag | Param_Str | Module_Name | Screenshot |
|---|---|---|---|---|---|
| 1 | Guest Profile | — (FO me row nahi) | AEDP (default) | — (registry leaf) | `screenshots/10_masters_Guest_Profile.png` |
| 2 | Guest Registration | — (FO me row nahi) | AEDP (default) | — (registry leaf) | `screenshots/20_masters_Guest_Registration.png` (skipped_messagebox) |
| 3 | Room Master | E | AEDP | Mas | `screenshots/30_masters_Room_Master.png` |
| 4 | Room Category | E | AEDP (MUDIT user me `A**P`) | Mas | `screenshots/40_masters_Room_Category.png` |
| 5 | Plan Master | E | AEDP (htw_system me `AE*P`) | Mas | `screenshots/50_masters_Plan_Master.png` |

(Note: screenshots actually FO sidebar se capture hue — root `../screenshots/`, yahan copy.)

## Functioning

- **Guest Profile** — guest master CRUD (add/edit guest: name, address, company, vehicles). Core: `guestprof.py` (`list_all/search/get/insert/update/delete`, `next_code`). UI: `BaseMasterForm(guestprof_config).exec()` (frontoffice.py:65).
- **Guest Registration** — registration entry window (walk-in guest ka detailed registration). UI: `registration_entry_ui.py:184` show(); capture me messagebox aaya (coming_soon/permission) — gap KI-7.
- **Room Master** — room master CRUD (code, type 'RO', category, status). Core: room master config → `p2_masters.py:541` `_open_dialog → BaseMasterForm.exec()`.
- **Room Category** — room category master (tariff categories). UI: `RoomCategoryMasterForm.exec()` (p2_masters.py:537-538).
- **Plan Master** — meal plan master (EP, CP, MAP…). UI: `PlanMasterForm(w).exec()` (shell.py:1075).

## Database Tables (this layer)

| Table | Use |
|---|---|
| `GuestProf` (7,802 rows) | Guest Profile ke rows |
| `RoomMast` (86) | Room Master ke rows (Type='RO', RoomStat) |
| `RoomCat` | Room Category rows |
| `PlanMast` / `Plan1` / `PlanDetails` | Plan Master rows + per-folio plan allocation |
| `Company`, `City`, `Area`, `State`, `Country` | guest profile picklists |

## Backend SQL pattern

Reads: `SELECT … FROM <master> WHERE … ORDER BY …` (site filter `LogSite_Code=? OR 'HO'` jab row-level site hota hai). Writes (CRUD): `BeginTrans → validate (code/name required, max lengths — `core` validators) → INSERT/UPDATE → Commit/Rollback` — pattern detail `../DATABASE.md` §3.

## MenuHelp permission check

```sql
SELECT UserName, CompCode, [Option], Param_Str, Flag, Module_Name
FROM menuHelp WHERE RTRIM([Option]) = ? AND UserName = ?
```
Live sample (2026-09-25, UserName='SA'):
```
Room Master -> [SA, CompCode='2', Param_Str='AEDP', Flag='E', Module_Name='Mas']
Guest Profile -> []   (FO menuHelp me row nahi — default AEDP via menu_help.rights)
```
Enforcement: `menu_help.can_open/rights` (menu_help.py:283-305) — missing row → 'AEDP'.
