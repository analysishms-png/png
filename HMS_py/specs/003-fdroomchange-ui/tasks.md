# Tasks: Front-Office Room Change UI (fdRoomChange P1)

**Input**: Design documents from `/specs/003-fdroomchange-ui/`

**Prerequisites**: [plan.md](./plan.md) (required), [spec.md](./spec.md)
(required for user stories), [research.md](./research.md),
[data-model.md](./data-model.md), [contracts/](./contracts/),
[quickstart.md](./quickstart.md)

**Tests**: **Included** — explicitly requested by spec §5 ("New tests" 1-3).

**Organization**: Tasks grouped by user story so each story can be
implemented and tested independently.

> **Verified-state note (2026-10-04)**: The P1 implementation already exists
> and its unit tests pass (`QT_QPA_PLATFORM=offscreen python -m pytest
> tests/unit/test_room_change_ui.py tests/unit/test_missing_logic_core.py -q`
> → 32 passed, exit 0). Tasks confirmed complete by code inspection + green
> tests are pre-checked `[X]` with evidence. Unchecked tasks are the
> remaining evidence/verification work — `/speckit-implement` executes those.

## Format: `[ID] [P?] [Story] Description`

- **[P]**: Can run in parallel (different files, no dependencies)
- **[Story]**: Which user story this task belongs to (US1, US2, US3)
- Include exact file paths in descriptions

## Path Conventions

Single project (existing repo root): `ui/`, `core/`, `tests/` at repository
root; feature docs under `specs/003-fdroomchange-ui/`.

---

## Phase 1: Setup

**Purpose**: Baseline environment and feature selection

- [X] T001 Verify baseline: Python >= 3.10 + `pytest.ini` markers present, run unit gate in `pytest.ini` testpaths — evidence: 32 passed, exit 0, 2026-10-04
- [X] T002 Point current feature at this feature in `.specify/feature.json` (`specs/003-fdroomchange-ui`) and generate design docs (`specs/003-fdroomchange-ui/plan.md`, `research.md`, `data-model.md`, `contracts/room-change-ui.md`, `quickstart.md`)

**Checkpoint**: Setup complete — design artifacts and baseline green.

---

## Phase 2: Foundational (Blocking Prerequisites)

**Purpose**: The shared persistence contract and dialog shell every story
depends on. **CRITICAL**: no user story work is valid without these.

- [X] T003 Core persistence `room_change(docid, new_room, reason, change_date, change_time, user, ...)` transactional in `core/fo_ops.py:85-265` (validate → single commit, rollback on error; returns `{"new_sno","folio","old_room","new_room","affected","epabx_audited"}`) — evidence: `tests/unit/test_missing_logic_core.py` 13 tests green
- [X] T004 Dialog shell `RoomChangeWindow` + `open_room_change(parent, user)` in `ui/fo_sub_forms_ui.py:119` and `ui/fo_sub_forms_ui.py:893` (signal `room_changed`, session-user fallback `fo_ops.USER`) — evidence: green unit gate

**Checkpoint**: Foundation ready — user stories can be validated.

---

## Phase 3: User Story 1 — Locate folio & display stay block (Priority: P1) — MVP

**Goal**: Front-desk operator finds an in-house folio by room or DocId and
sees the full VB6 stay block populated from one `RoomOcc` query (FR-1,
FR-2, FR-7).

**Independent Test**: Construct `RoomChangeWindow` off-screen; assert save
stays disabled until a successful load, empty input makes no DB call, and a
successful load fills every stay label from one query.

### Tests for User Story 1

- [X] T005 [P] [US1] US1 unit tests in `tests/unit/test_room_change_ui.py`: `test_save_disabled_until_load_and_none_found`, `test_load_folio_empty_input_skips_db`, `test_load_folio_not_found_keeps_save_disabled`, `test_load_folio_partial_no_open_roomocc_clears_stale_state`, `test_load_folio_db_error_no_raise_clears_and_disables_save`

### Implementation for User Story 1

- [X] T006 [P] [US1] Locate logic FR-1/FR-7 in `ui/fo_sub_forms_ui.py::_load_folio` (DocId first → room fallback → `Koi in-house guest nahi mila`; DB failure contained as `DB error: <e>` with stale-state clear)
- [X] T007 [US1] Stay block single-query populate FR-1 + free-room combo refresh FR-2 with `none found` empty state FR-7 in `ui/fo_sub_forms_ui.py::_fill_stay` / `_fill_free_rooms`

**Checkpoint**: US1 fully functional — load and display verified by 5 tests.

---

## Phase 4: User Story 2 — Save with VB6 validations and persist (Priority: P1)

**Goal**: Every VB6 save pre-check runs in exact order with exact message
strings, then the change persists exclusively through
`fo_ops.room_change` with the displayed change date/time (FR-3..FR-6, FR-8).

**Independent Test**: Monkeypatch `fo_ops.room_change` as a recorder; for
each validation condition assert the exact message and **zero** core calls;
happy path asserts the call carries `(docid, new_room, reason,
change_date=<displayed>, change_time=<displayed>, user=<session>)`.

**Constraints quoted from data-model.md/contract**:
- Reason field `MaxLength 100` (VB6 `Txt(29)`); core truncates stored Reason to 100
- Validation order (FR-3): Reason → RoomType → New room non-empty/≠`none found` → Adult > 0 → target in `RoomMast Type='RO'` → pending KOT on old room (old ≠ new) → old ≠ new → tariff > 0 → confirm (FR-4)
- G1 decision (research D1): Python-written new row keeps `Type='I'` — no core edit

### Tests for User Story 2

- [X] T008 [P] [US2] Validation unit tests in `tests/unit/test_room_change_ui.py`: `test_save_empty_reason_vb6_msg`, `test_save_room_type_required`, `test_save_new_room_required`, `test_save_adult_zero_vb6_msg`, `test_save_room_not_ro_re_select`, `test_save_kot_pending_blocks`, `test_save_same_room_blocked`, `test_save_tariff_zero_validation_error`
- [X] T009 [P] [US2] Persist-path tests in `tests/unit/test_room_change_ui.py`: `test_happy_path_stay_block_and_change_datetime` (FR-8 args), `test_save_emits_even_if_post_save_reload_fails` (FR-5/FR-7)
- [X] T010 [US2] G1 decision test in `tests/unit/test_missing_logic_core.py`: assert the recorded `INSERT INTO RoomOcc` from `fo_ops.room_change` sets `Type='I'` (research D1) and the old-row update sets `Type='C'` + `NewRoomNo` + `Reason` — done 2026-10-04: `test_room_change_g1_type_decision` green (positional `DepDate, DepTime, Type…` ↔ `?, ?, 'I', ?, getdate(), 'A'` + Reason 100-char truncate)
- [X] T011 [US2] DB-state parity test `tests/database/test_room_change_parity.py` (style of `tests/database/test_walkin_parity.py`, skip-guarded on live DB per research D6): one in-house folio → change room → assert new `RoomOcc` row `SNo = old+1`, `ChngDate` set, `Type='I'`, old row `Type='C'` + `NewRoomNo` + `Reason`, `GuestMessage` re-pointed, `RoomMast.RoomStat='D'` for old room, `PlanDetails.RoomNo` re-pointed, `Booking.OccRoom` when linked; negatives: occupied target and same-room leave **zero** partial rows; G1 reader-visibility: a `dashboard.py:168`-style `Type='I'` count still finds the new row — done 2026-10-04: written + **passed on live DB (86 rooms)**, rollback-safe txn, `1 passed, exit 0`

### Implementation for User Story 2 (already complete — regression-protected by T008/T009)

- [X] T012 [P] [US2] VB6-order save pre-checks with exact strings in `ui/fo_sub_forms_ui.py::_save` (contract C3.1-C3.8)
- [X] T013 [US2] Persist call + FR-4 confirm + FR-5 error mapping (`ValueError` → warning, else `DB error: <e>`) + FR-8 `change_date`/`change_time` from displayed fields in `ui/fo_sub_forms_ui.py::_save`

**Checkpoint**: US2 verified when T008-T011 green (unit always; DB parity when live DB available).

---

## Phase 5: User Story 3 — Single entry point (Priority: P1)

**Goal**: Exactly one Room Change dialog reachable from menu and toolbar;
the two dead/legacy behaviors are gone (spec §4, §6.8).

**Independent Test**: Registry resolves to the real P1 dialog; toolbar opens
it without `QInputDialog`; legacy opener absent.

### Tests for User Story 3

- [X] T014 [P] [US3] Wiring tests in `tests/unit/test_room_change_ui.py`: `test_registry_room_change_is_real_p1_dialog`, `test_shell_legacy_open_room_change_removed`, `test_frontoffice_toolbar_opens_window_not_qinputdialog`

### Implementation for User Story 3

- [X] T015 [P] [US3] Menu registry `"Room Change"` → `fosub_ui.open_room_change(w, user=...)` in `ui/shell.py:2686-2692` (`_coming_soon` fallback only)
- [X] T016 [US3] Toolbar handler `FrontOffice._on_room_change` opens dialog with selected-folio prefill + grid reload on `room_changed` in `ui/frontoffice.py:1000-1014`; legacy `shell.py::_open_room_change` removed

**Checkpoint**: All three stories independently functional.

---

## Phase 6: Polish & Cross-Cutting Concerns

**Purpose**: Evidence, ledgers, regression — required before any VERIFIED
mark (constitution VI, VII, X).

- [X] T017 [P] Update `PARITY_RECONCILIATION.md`: add fdRoomChange row (status per verified state) including the **G1 INTENTIONALLY DIFFERENT** entry — Python writes `RoomOcc.Type='I'`, VB6 writes `''`, owner decision 2026-10-04 (research D1) — done: Iteration 5 appended (verdict **PARTIAL**, OG-6/OG-7 blockers cited, G1 documented)
- [X] T018 [P] Update status header in `specs/003-fdroomchange-ui/spec.md`: P1 implemented + tested; note line-anchor drift is recorded in `specs/003-fdroomchange-ui/research.md` D4; `partially_verified` until live-DB parity test runs — done: header now records P1 verified (§5 gate met 2026-10-04) + ledger PARTIAL pointer
- [X] T019 Run full regression (constitution X): `QT_QPA_PLATFORM=offscreen python -m pytest tests/unit tests/database -q` — no new failures vs baseline; triage any failure before sign-off — done 2026-10-04: **1017 passed, 1 skipped, 2 failed, exit 1**. TRIAGE: both failures are in `tests/database/test_roomchange_parity.py` (note spelling), a **concurrent-session "Phase 11 DB-001" file created 18:50 mid-run** — not in this feature's change-set (`core/fo_ops.py` mtime Oct 2, untouched). Root causes: (1) `U_AE 'E' != 'A'` — Python's unconditional plan-fields UPDATE on the new row vs VB6's "if a plan is selected" gate (spec §1.6 step 6) — core-parity delta owned by DB-001's recorded G-dispositions; (2) `datetime(2026-10-05,0,0) == date(2026-10-05)` — date-vs-datetime comparison bug in their assertion. Per repo standing rule BUG-AUD-08 (concurrent session → attribute + defer), their mid-flight files were NOT edited here. All 33 unit + 1 DB tests of THIS feature green in the same run. **RESOLVED (same day, user-directed coordination):** concurrent session fixed their date/datetime assertion + G3 `PlanDiscAppon` (fo_ops step 2) at 19:01-19:02; remaining PlanDetails `0 == 2` failure = the claimed-but-unlanded SELECT-before-DELETE core fix → landed here in `core/fo_ops.py` step 7 (snapshot before DELETE, scope `DocId + Site_Code` aligned with DELETE). Final full regression: **1019 passed, 1 skipped, 0 failed, exit 0**
- [X] T020 Execute `specs/003-fdroomchange-ui/quickstart.md` §1-2 (unit gate + DB gate); if no live DB, record `partially_verified` with the exact pytest command instead of claiming verified — done 2026-10-04: §1 `33 passed exit 0`, §2 `1 passed exit 0` (live DB available → §5 gate met)
- [X] T021 Remove temp artifacts `._tasks_setup.json`, `._tasks_setup.err`, `._tasks_template.md` from repository root — removed 2026-10-04

**Checkpoint**: Feature ready for parity-ledger sign-off (OG-7 history/report remains a separate migration unit per research.md).

---

## Dependencies & Execution Order

### Phase Dependencies

- **Setup (Phase 1)**: No dependencies — complete (pre-checked)
- **Foundational (Phase 2)**: Depends on Setup — BLOCKS all stories; complete (pre-checked)
- **US1 (Phase 3)**: Depends on Foundational — complete pending regression
- **US2 (Phase 4)**: Depends on Foundational; T010/T011 open (evidence layer)
- **US3 (Phase 5)**: Depends on Foundational + US1 dialog existence
- **Polish (Phase 6)**: Depends on T010/T011 being written (ledger cites their evidence)

### User Story Dependencies

- **US1**: independent after Phase 2
- **US2**: independent after Phase 2 (persists through the same core)
- **US3**: independent after US1 dialog exists (wiring only)

### Within Each Story

Tests before implementation; for pre-existing work tests and implementation
are both verified together against the green unit gate.

### Parallel Opportunities

- T005 ∥ T006 (different files) — done
- T008 ∥ T009 — done
- **T010 ∥ T011 ∥ T017 ∥ T018** — four different files, no dependencies (the open parallel set)
- T014 ∥ T015 — done
- T019 runs after T010-T011 land; T021 last

---

## Parallel Example: open tasks

```bash
# Launch together (different files, no deps):
Task: "T010 G1 decision test → tests/unit/test_missing_logic_core.py"
Task: "T011 DB parity test → tests/database/test_room_change_parity.py"
Task: "T017 ledger entry → PARITY_RECONCILIATION.md"
Task: "T018 status header → specs/003-fdroomchange-ui/spec.md"
```

---

## Implementation Strategy

### MVP (User Story 1 only)

Already delivered: locate + stay block (US1), save path (US2), wiring (US3)
all exist and pass 32 unit tests.

### Remaining delivery order (what `/speckit-implement` executes)

1. T010 + T011 (parallel) — close spec §5 test-plan gaps 2-3
2. T017 + T018 (parallel) — ledger + status evidence
3. T019 regression run (constitution X)
4. T020 quickstart gate — `verified` only if live DB ran, else `partially_verified`
5. T021 cleanup

### Notes

- [P] tasks = different files, no dependencies
- Each user story independently testable; US1+US2+US3 already green together
- Do not weaken existing assertions to make T019 pass — triage failures instead
- Open gaps (OG-1..OG-10, research.md) are explicitly out of scope here
