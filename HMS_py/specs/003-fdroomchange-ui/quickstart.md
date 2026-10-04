# Quickstart: 003-fdroomchange-ui validation guide

**Phase 1 output** | **Date**: 2026-10-04 | **Spec**: [spec.md](./spec.md)

Validation/run guide only — implementation details live in
[tasks.md](./tasks.md) and the contract
[contracts/room-change-ui.md](./contracts/room-change-ui.md).

## Prerequisites

- Python ≥ 3.10 with `requirements.txt` installed (`PyQt6`, `pyodbc`)
- Repo root = directory containing `pytest.ini`
- Live SQL Server (HMS schema) for DB-layer checks; unit layer needs none

## 1. Unit gate (no DB) — must be green

```bash
QT_QPA_PLATFORM=offscreen python -m pytest \
  tests/unit/test_room_change_ui.py tests/unit/test_missing_logic_core.py -q
```

Expected: **`33 passed`**, exit code 0 (32 baseline + G1 decision test,
verified 2026-10-04 — see tasks.md T010).

## 2. DB-state parity (live DB)

```bash
python -m pytest tests/database/test_room_change_parity.py -q
```

Expected: all assertions pass — one new `RoomOcc` row (`SNo = old+1`,
`ChngDate` set, `Type='I'`), old row `Type='C'` + `NewRoomNo` + `Reason`,
`GuestMessage` re-pointed, `RoomMast.RoomStat='D'` for the old room,
`PlanDetails.RoomNo` re-pointed, `Booking.OccRoom` updated when linked;
occupied-target and same-room leave zero partial rows.
If no live DB: test skips → feature stays `partially_verified` with this
command recorded (spec §5 Quality Gate).

## 3. Regression (constitution X — before any VERIFIED mark)

```bash
QT_QPA_PLATFORM=offscreen python -m pytest tests/unit tests/database -q
```

Expected: no failures; any pre-existing failure triaged before this
feature is signed off.

## 4. Manual UI walkthrough (off-screen build, real DB)

```bash
python -m HMS_py.main
```

1. Front Office → toolbar **Room Change** with a folio selected → dialog
   opens with DocId prefilled and stay block populated (no `QInputDialog`).
2. Menu **Room Change** → same dialog (guest locate group focused).
3. Save with empty Reason → `Reason is a required field.`, focus returns
   to Reason, no write.
4. Pick an occupied room (type one manually) → `Re Select Room No`.
5. Save back to the current room → `New room aur current room same hai`.
6. Valid free room + Reason → confirm prompt → success message; grid
   reloads; old room shows dirty in room lists; dashboard in-house count
   unchanged (still counts the guest exactly once).

## 5. Parity ledger update

Confirm `PARITY_RECONCILIATION.md` carries the fdRoomChange row with
status and the G1 **INTENTIONALLY DIFFERENT** note (research D1) before
marking the unit VERIFIED.
