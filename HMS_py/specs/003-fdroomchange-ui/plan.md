# Implementation Plan: Front-Office Room Change UI (fdRoomChange)

**Branch**: `003-fdroomchange-ui` | **Date**: 2026-10-04 | **Spec**: [spec.md](./spec.md)

**Input**: Feature specification from `/specs/003-fdroomchange-ui/spec.md`

## Summary

Port of VB6 form `fdRoomChange` (Room Change) to the existing PyQt6 HMS
desktop app as a single P1-parity dialog: locate an in-house folio, display
the VB6 stay block from one `RoomOcc` query, pick a new free room + reason,
enforce VB6 save pre-checks in exact order with exact message strings, and
persist exclusively through `core/fo_ops.room_change` (no SQL in the UI).
The three legacy entry points collapse into one dialog
(`ui/fo_sub_forms_ui.py::RoomChangeWindow`), wired from the menu registry and
the front-office toolbar.

**Verified state at plan time (2026-10-04)**: the P1 implementation, entry
point rewiring, and 19 UI unit tests already exist and pass
(`QT_QPA_PLATFORM=offscreen python -m pytest tests/unit/test_room_change_ui.py
tests/unit/test_missing_logic_core.py -q` → **32 passed, exit 0**), including
the RV-001 review fixes. What remains is the evidence layer the spec's test
plan (§5) and the constitution require: the live-DB parity test, the G1
decision test, the parity-ledger update, and a full regression run.

## Technical Context

**Language/Version**: Python >= 3.10 (`pyproject.toml`; runtime env runs
3.14.4, test artifacts also from 3.11)

**Primary Dependencies**: PyQt6 6.7.1 (GUI), pyodbc 5.1.0 (SQL Server ODBC),
Pillow, requests, pyserial — all pinned in `requirements.txt`

**Storage**: Existing SQL Server schema via pyodbc; tables touched:
`RoomOcc`, `RoomMast`, `GuestFolio`, `GuestMessage`, `Booking`, `PlanDetails`,
`KOT`, `EPABX_IN` (feature-detected). No schema changes (Constitution III).

**Testing**: pytest >= 7.4 (`pytest.ini`: markers `unit`, `database`,
`regression`; `testpaths = HMS_py/tests tests`). Qt tests run off-screen
(`QT_QPA_PLATFORM=offscreen`).

**Target Platform**: Windows desktop (PyQt6 app, `python -m HMS_py.main`)

**Project Type**: Desktop app — existing project repaired in place
(Constitution II)

**Performance Goals**: Dialog must populate the entire stay block from a
single `RoomOcc` query (FR-1); no per-field queries. No other perf targets
(single-operator CRUD).

**Constraints**: SQL Server 2008 R2-compatible syntax only (Constitution
VIII); every query parameter-bound, no user-supplied SQL (FR-6); validation
messages must be byte-exact VB6 strings (FR-3).

**Scale/Scope**: One dialog + two rewired entry points; P1 scope only.
P2 items (plan/package re-selection `FrPackage`/`FGrid3`, rate/season
recalculation, `Frmrate` Remarks/Authorization, Yes/No `Inc. in Room Rate`,
EPABX Dial Facility prompt, `UserPermission` UI gating, room-change
history/report rows) are explicitly deferred and tracked as open gaps in
spec §6 and research.md — not silently dropped (Constitution IX note in
research.md).

## Constitution Check

*GATE: Must pass before Phase 0 research. Re-check after Phase 1 design.*

| # | Principle | Verdict | Evidence |
|---|---|---|---|
| I | VB6 Behavioral Fidelity | PASS (documented delta) | Save pre-checks implemented in VB6 order with exact strings (spec §1.4 ↔ `fo_sub_forms_ui.py::_save`). G1 (`Type=''` vs `'I'`) resolved by owner decision 2026-10-04: keep `'I'`, documented as **INTENTIONALLY DIFFERENT** — recorded in research.md and pending PARITY_RECONCILIATION.md entry. |
| II | Existing Python Project First | PASS | All changes in place: `ui/fo_sub_forms_ui.py`, `ui/frontoffice.py`, `ui/shell.py`, `core/fo_ops.py` untouched for P1. |
| III | Database Fidelity | PASS | No schema changes; all queries parameter-bound (`db.query(..., (…,))`, pyodbc `?`). |
| IV | UI Fidelity | PASS (scope-limited, gaps tracked) | P1 parity core per spec §3; every P2 deferral listed in spec §3.4/§6 and research.md §Open Gaps. |
| V | Transaction Safety | PASS | Single commit/rollback inside `fo_ops.room_change` (validate → write → commit; error → rollback, `fo_ops.py:258-259` + VB6 3807-3814 equivalent). |
| VI | No Fake Completion | PASS | Gate = 32 real unit tests green (asserted behavior, monkeypatched DB) + DB-state parity test when live DB available; otherwise status stays `partially_verified` per spec §5. |
| VII | Evidence-Based Migration | PASS | Every behavior in spec §1 carries VB6 path + frm line; plan cites verified current line numbers (see research.md). |
| VIII | SQL Server Compatibility | PASS | `ISNULL(...)` used for null-safe guards (codebase convention), no post-2008-R2 syntax. |
| IX | Reports/Printing | PASS (deferred with evidence) | fdRoomChange's embedded history/report rows (frm 6727-7094) are not part of P1; recorded as an open gap in research.md, not dropped. |
| X | Regression Protection | PASS (task gate) | Full-suite regression run is a required task before marking VERIFIED (see tasks.md). |

**Gate result**: PASS — no unjustified violations; no Complexity Tracking
entries required.

## Project Structure

### Documentation (this feature)

```text
specs/003-fdroomchange-ui/
├── plan.md              # This file (/speckit.plan output)
├── spec.md              # Feature specification (pre-existing)
├── research.md          # Phase 0 output (/speckit.plan)
├── data-model.md        # Phase 1 output (/speckit.plan)
├── quickstart.md        # Phase 1 output (/speckit.plan)
├── contracts/           # Phase 1 output (/speckit.plan)
│   └── room-change-ui.md
└── tasks.md             # Phase 2 output (/speckit.tasks — NOT created here)
```

### Source Code (repository root)

```text
ui/
├── fo_sub_forms_ui.py   # RoomChangeWindow (P1 dialog) + open_room_change()
├── frontoffice.py       # toolbar btn_room → _on_room_change (opens dialog)
└── shell.py             # menu registry "Room Change" → fosub_ui.open_room_change

core/
└── fo_ops.py            # room_change(), free_rooms(), open_folio_by_* (unchanged in P1)

tests/
├── unit/
│   ├── test_room_change_ui.py       # 19 UI tests (exist, green)
│   └── test_missing_logic_core.py   # core writer tests (exist, green)
└── database/
    └── test_room_change_parity.py   # NEW — DB-state parity evidence test
```

**Structure Decision**: Single-project layout (existing repo root; no new
packages). The feature adds exactly one new test file
`tests/database/test_room_change_parity.py`; all production changes are
in-place edits to existing modules. The G1 decision test
(Type `'I'` written + readers still find the row) is added to the existing
`tests/unit/test_room_change_ui.py` rather than a new file.

## Complexity Tracking

No constitution violations to justify — gate table above passed outright.
