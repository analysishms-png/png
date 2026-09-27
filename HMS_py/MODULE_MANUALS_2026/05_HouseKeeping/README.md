# 05 - House Keeping - Module Manual

## 1. Menu path (MenuHelp)

- Sidebar root: `house keeping` (group caption `House Keeping`).
- Module_Names (`_logic.json`): `HouseKeeping`, `TransHK`, `HouseEnt`, `ReportsHK`, `HouseREP`.
- Counts (`_logic.json`, classify): **masters=0, operations=0, reports=1, hidden=0, other=8**.
- `other=8` (compulsory): `House Keeping`, `Operations`, `Reports` (headers), `Complaint Master`, `Complaint Clearance`, `Lost / Found Entry`, `Claim Entry` (HK entry features — classify `other` me kyunki layer rule inhe master/ops bucket me nahi daalta), `House Keeping Screen`.
- Curated capture leaf (registry hit): `Room Status` (operations layer, menuHelp caption bhi `Room Status` — `FDOMenu` rows; classify me `operations=0` kyun ki un rows ka bucket FO ka hai).
- reports=1: `House Keeping Report` (`HouseREP`, `Flag=R`) — capture list me nahi (curated scope gap).

## 2. Workflow (menu → screen → action → DB write)

| # | Menu leaf | Screen (opener) | Action | DB write |
|---|---|---|---|---|
| 1 | Room Status (FO bucket caption + registry leaf, `Ctrl+R`) | `RoomStatusForm(QDialog)` → `rs_ui.open_roomstatus` exec (shell.py:1108, roomstatus_ui.py:333, shortcut shell.py:2110) | HK status set / block / move | `roomstatus.update_hk_status` → `UPDATE RoomMast SET RoomStat, U_Name` (roomstatus.py:185); `block_out` → `INSERT RoomBLockOut` + `UPDATE RoomMast.RoomStat='M'` (:264/:273/:280); `unblock_room` → `UPDATE RoomMast.RoomStat=''` (:325) |
| 2 | Complaint Master (other bucket) | `_open_fv_list` DB viewer over `ComplaintDetail` (shell.py:1282-1285) | Complaint rows list | read-only `SELECT Code, CDate, Category, Description, Depart, Status, ClearingDate FROM ComplaintDetail ORDER BY Code DESC` (table abhi 0 rows) |
| 3 | Complaint Clearance (other) | `_open_fv_list` over `ComplaintDetail` ORDER BY ClearingDate (shell.py:1286-1289) | Clearing list | read-only SELECT (0 rows live) |
| 4 | Lost / Found Entry (other) | `GuestServicesDialog(QDialog)` → `gsvc_ui.open_guest_services` exec (shell.py:1290, guest_services_ui.py:333) | Lost & Found entries | `LostFoundDetail` write path (guest_services_ui; table live 0 rows) |
| 5 | Claim Entry (other) | `_open_fv_list` over `LostFoundDetail WHERE ClaimedBy <> ''` (shell.py:1291-1294) | Claims list | read-only SELECT (0 rows live) |
| 6 | House Keeping Report (`HouseREP`, `Flag=R`) | reports engine path (registry `menu_caption_map` spread) | HK report | read-only (housekeeping_summary roomstatus.py:130 backing) |

## 3. Layers snapshot

| Layer | Count | registry hits (`_logic.json`) |
|---|---|---|
| masters | 0 | — |
| operations (curated) | 0 classify / 1 curated | Room Status |
| reports | 1 | (House Keeping Report — curated list me nahi) |
| hidden (`V`) | 0 | — |
| other (unclassified) | 8 | see §1 |

## 4. Screenshot index

Live capture (SA/KANPUR, manifest `screenshots/manifest.json`, `failed=[]`):

| File | Layer | Leaf | Status |
|---|---|---|---|
| `screenshots/00_shell_module.png` | shell | House Keeping sidebar root | ok |
| `screenshots/10_operations_Room_Status.png` | operations | Room Status | ok |

(Copy: `02_Operations/screenshots/`.)

## 5. Test status

- `TEST_RESULTS.md` (L1, L2b): `fails=0` — L1 385 + L2b 27 (roomstatus/room_occ via `tests/test_wave_ui_forms.py` L3 + `test_ui_walkthroughs.py` L3; batch rule L1,L2b me).
- Coverage files touching HK core: `tests/test_front_office.py` (RoomOcc/roomstatus paths), `tests/unit/test_core_validation.py`, `tests/test_wave_ui_forms.py`/`test_ui_walkthroughs.py` (L3, batch me nahi).
- Detail: [`TEST_RESULTS.md`](TEST_RESULTS.md); KI: `00_Instructions/TEST_PLAN_MASTER.md`.

## 6. Related docs

- Database: [`DATABASE.md`](DATABASE.md) · Frontend: [`FRONTEND.md`](FRONTEND.md) · Backend: [`BACKEND.md`](BACKEND.md) · Tests: [`TEST_PLAN.md`](TEST_PLAN.md)
- Layers: [`01_Masters/README.md`](01_Masters/README.md) · [`02_Operations/README.md`](02_Operations/README.md) · [`03_Reports/README.md`](03_Reports/README.md)
- SOP: `00_Instructions/MANUAL_TEMPLATE.md` · capture: `00_Instructions/CAPTURE_GUIDE.md` · global menu map: `00_GLOBAL/MenuHelp_Module_Map.md`
