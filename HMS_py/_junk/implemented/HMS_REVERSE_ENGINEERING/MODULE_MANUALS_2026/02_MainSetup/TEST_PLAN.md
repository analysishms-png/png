# 02_MainSetup - Test Plan (module logic)

## 1. Coverage map (feature → test file)

| Feature | Test file | Scope |
|---|---|---|
| RoomMaster/Depart/Plans/TaxMaster validators | `tests/test_validation_crud.py` | standalone script (RoomMaster :119, Depart :131, Plans :160, GuestProf :103) — **batch layers me include nahi** (gap, §4) |
| Room PK fixes (Type/Code composite) | `tests/database/test_room_pk_fixes.py` | L2c engine (9 checks) — batch rule L1,L2b me nahi (gap, §4) |
| GuestProf/booking shared flows | `tests/test_front_office.py` | L2b (27 checks — `guestprof` usage via FO) |
| Validation rules (limits/dup guards) | `tests/unit/test_core_validation.py` | L1 |
| Shell registry wiring (Room/Plan/Guest leaves) | `tests/unit/test_bugfix_batch.py` | L1 |
| Unit logic parity | `tests/unit/test_wave_a_logic.py` | L1 |

## 2. Layer commands + status

Official run: `run_module_tests --module 02_MainSetup --layers L1,L2b` (`TEST_RESULTS.md` 2026-09-25T12:19:00):

| Layer | Command | Result |
|---|---|---|
| L1 | `pytest tests/unit -q --tb=line` | PASS 385 |
| L2b | `pytest tests/test_front_office.py -q --tb=line` | PASS 27 |

**fails=0**.

## 3. Manual test script (live app, 10 steps)

1. SA login → sidebar `main setup` → `Room Master` (modal) → empty code → `Code zaroori hai` → valid save → `RoomMast` row; dup code → `Room Code 'X' Already Exists`.
2. `Room Category` (modal) → save → `RoomCat` row; `ShortName`/`MaxPerson` limits check.
3. `Plan Master` (`Ctrl+P`, modal) → total/package save → `PlanMast` row; inactive toggle `ActiveYN`.
4. `Guest Profile` (`Ctrl+F`, modal) → dup mobile → `Mobile ... already exists` guard → save → `GuestProf` row.
5. `Department Master` (non-modal window) → `KotYn='X'` → `sirf Y/N` error → valid save → `Depart` row.
6. Edit Room name → `UPDATE RoomMast` verify.
7. Delete test row (roommaster delete path) → row gone; in-use guard check (agar FK).
8. Guest edit with changed city → `GuestFolio` cascade update verify.
9. Permission: restricted user (e.g. `MUDIT A**P` Room Category) → delete right `*` deny → delete button disabled/denied.
10. `Permissions` leaf (menu masters list) → `sys_config.userperm_*` rows read/write — **manual** (curated capture me nahi; other bucket ke saath gap).

## 4. Known issues / gaps

- **Flaky L1** (2026-09-25T12:17:19): `1 failed, 384 passed` ek run me — immediate rerun `385 passed` green (KI-6 jaisa order/DB-dependent; dono lines `RUN_TEST_LOG.md` me). Naam persist nahi hua (`--tb=line` summary only).
- `test_validation_crud.py` batch layers me nahi aata (standalone script) — masters validators ka direct runner nahi; `test_room_pk_fixes.py` L2c hai (batch rule L1,L2b) — dono **gap**.
- Curated capture 5/51 masters — baki 46 leaves (Tax/Venue/Item/User/Backup...) registry par hain par `modules_map.leaves` me nahi (curated scope) — future expansion.
- `Guest Profile`/`Department Master` menuHelp row nahi (registry-only) — permission SQL khali (gap).
- `other=5` = sidebar group headers (Main Setup/General Setup/Banquet/Inventory/Utility) — capture me nahi.
