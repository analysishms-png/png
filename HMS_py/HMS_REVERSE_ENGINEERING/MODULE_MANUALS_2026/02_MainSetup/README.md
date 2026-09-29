# 02 - Main Setup - Module Manual

## 1. Menu path (MenuHelp)

- Sidebar root: `main setup` (group caption `Main Setup` + sub-groups `General Setup`, `Banquet`, `Inventory`, `Utility`).
- Module_Names (`_logic.json`): `Mast`, `GEN`, `GENMas`, `Mas`, `HL`, `HallM`, `CCenter`, `CCenterMas`, `Util`, `UTL`; `master_modules` = `GENMas`, `Mas`, `HallM`, `CCenterMas`, `UTL`.
- Counts (`_logic.json`, classify): **masters=51, operations=0, reports=0, hidden=0, other=5**.
- `other=5`: `Main Setup`, `General Setup`, `Banquet`, `Inventory`, `Utility` (sidebar group headers — Opt2=0 roots, capture me nahi).
- Masters list (51 captions): Tax Master, Tax Structure, Payment Type, Parameter, Printing Parameters, Printing Setup, Market Segment, Business Source, Guest Status, Charge Master, Fixed Charge, Plan Master, Room Features, Room Category, Room Master, Company Master, Guest History, Room Display, Events, Venue Features, Venue Master, Menu Category, Item Group, Menu Item, Catalog Master, Banquet Bill Sundry Setting, Party Master, Department, Item Group (dup), Item Category, Item Entry, Purchase Sundry Setting, Opening Stock, Item List, Enviro Inventry, User Master, Permissions, Backup Data, Sundry Master, Inconsistency Check, Year End Updation, Menu Item Copy, Guest LookUp, Country Master, State Master, City Master, Company Master (dup), Department (dup), Ledger Accounts, Unit Master, Task Scheduler.
- Curated capture leaves (registry hits 5): `Room Master`, `Room Category`, `Plan Master`, `Guest Profile`, `Department Master`.

## 2. Workflow (menu → screen → action → DB write)

| # | Menu leaf | Screen (opener) | Action | DB write |
|---|---|---|---|---|
| 1 | Room Master (`Mas`, `Flag=E`) | `p2.open_roommaster` → `RoomMasterMasterForm` modal `.exec()` (shell.py:1082, p2_masters.py:541) | New/edit room | `roommaster.insert/update` → `INSERT/UPDATE RoomMast` (roommaster.py:104/128) |
| 2 | Room Category (`Mas`) | `p2.open_roomcategory` → `RoomCategoryMasterForm` exec (shell.py:1081, p2_masters.py:537) | New/edit category | `roomcategory.insert/update` → `INSERT/UPDATE RoomCat` (roomcategory.py:73/86) |
| 3 | Plan Master (`Mas`, `Ctrl+P`) | `PlanMasterForm(w).exec()` (shell.py:1075, shortcut :2111) | New/edit tariff plan | `plans.insert/update` → `INSERT/UPDATE PlanMast` (plans.py:78/91) |
| 4 | Guest Profile (registry — menuHelp row nahi) | `fo.open_guestprof` → `BaseMasterForm(guestprof_config()).exec()` (shell.py:1059, frontoffice.py) | New/edit guest | `guestprof.insert/update` → `INSERT/UPDATE GuestProf` + `GuestFolio`/`RoomOcc` cascade (guestprof.py:119/140/150/155) |
| 5 | Department Master (registry; menuHelp caption `Department`) | `pfui.open_department_master` → `DepartmentMasterWindow.show()` non-modal (shell.py:1233, partial_forms_ui.py:1132) | New/edit department | `depart.insert/update` → `INSERT/UPDATE Depart` (depart.py:62/74) |

## 3. Layers snapshot

| Layer | Count | registry hits (`_logic.json`) |
|---|---|---|
| masters | 51 | Room Master, Room Category, Plan Master, Guest Profile, Department Master |
| operations | 0 | — |
| reports | 0 | — |
| hidden (`V`) | 0 | — |
| other (unclassified) | 5 | Main Setup, General Setup, Banquet, Inventory, Utility (headers) |

## 4. Screenshot index

Live capture (SA/KANPUR, manifest `screenshots/manifest.json`, `failed=[]`):

| File | Layer | Leaf | Status |
|---|---|---|---|
| `screenshots/00_shell_module.png` | shell | Main Setup sidebar root | ok |
| `screenshots/10_masters_Room_Master.png` | masters | Room Master | ok |
| `screenshots/20_masters_Room_Category.png` | masters | Room Category | ok |
| `screenshots/30_masters_Plan_Master.png` | masters | Plan Master | ok |
| `screenshots/40_masters_Guest_Profile.png` | masters | Guest Profile | ok |
| `screenshots/50_masters_Department_Master.png` | masters | Department Master | ok |

(Copies: `01_Masters/screenshots/`.)

## 5. Test status

- `TEST_RESULTS.md` (L1, L2b): `fails=0` — L1 385 passed + L2b 27 passed (2026-09-25T12:19:00).
- First run me L1 1 flaky fail (`1 failed, 384 passed` 12:17:19) — immediate rerun green (KI-6 jaisa order/DB-dependent flake; `RUN_TEST_LOG.md` me dono entries).
- Detail: [`TEST_RESULTS.md`](TEST_RESULTS.md); KI list: `00_Instructions/TEST_PLAN_MASTER.md`.

## 6. Related docs

- Database: [`DATABASE.md`](DATABASE.md) · Frontend: [`FRONTEND.md`](FRONTEND.md) · Backend: [`BACKEND.md`](BACKEND.md) · Tests: [`TEST_PLAN.md`](TEST_PLAN.md)
- Layers: [`01_Masters/README.md`](01_Masters/README.md) · [`02_Operations/README.md`](02_Operations/README.md) · [`03_Reports/README.md`](03_Reports/README.md)
- SOP: `00_Instructions/MANUAL_TEMPLATE.md` · capture: `00_Instructions/CAPTURE_GUIDE.md` · global menu map: `00_GLOBAL/MenuHelp_Module_Map.md`
