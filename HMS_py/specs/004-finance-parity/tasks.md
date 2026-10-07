# Tasks: Finance Parity (menu wiring + honesty fixes)

**Input**: Design documents from `/specs/004-finance-parity/`

**Prerequisites**: plan.md ✅, spec.md ✅, research.md ✅ (data-model/contracts/quickstart N/A — no schema/API changes)

**Tests**: Registry probe + pytest gate (explicitly requested in spec SC-002..SC-004).

**Format**: `[ID] [P?] [Story] Description` — `[P]` = parallel-safe

## Phase 1: Setup (Shared Infrastructure)

- [x] T001 Feature `004-finance-parity` created; `.specify/feature.json` → `specs\004-finance-parity` ✅
- [x] T002 [P] Evidence artifacts: `finance-gap-list.md` (verified), `spec.md`, `research.md`, `plan.md` ✅

---

## Phase 2: Foundational (Blocking Prerequisites)

- [x] T003 Gap analysis: 25/25 forms mapped, 23 report leaves audited, dispatch model documented (gap list §1) ✅
- [x] T004 Constitution check: all 4 gates PASS (plan.md) ✅

**Checkpoint**: Foundation ready

---

## Phase 3: User Story 1 — Correct menu wiring for Finance (Priority: P1) 🎯 MVP

**Goal**: Every Finance WRONG_TARGET/DIVERGENT leaf opens the VB6-faithful target.
**Independent Test**: Registry probe asserts expected handlers; no Finance target → Trial Balance.

- [x] T005 [US1] `ui/shell.py` `Adjustment Entry` → `fasub_ui.open_fa_adjust(w)` (was `fvu.open_voucher_entry`) ✅ PY-FIX-001
- [x] T006 [US1] `ui/shell.py` `Delete Adjustment Entry` → `fasub_ui.open_fa_adjust(w, delete=True)` ✅ PY-FIX-001
- [x] T007 [US1] `ui/shell.py` `&Annexure` / `A&geing Analysis for Debtors` / `Ageing A&nalysis for Creditors` → `_open_report(...)` → `Annexure` / `AgingDr` / `AgingRepCr` ✅ PY-FIX-001
- [x] T008 [US1] `ui/shell.py` `Ledger` → `_open_report("&Ledger")` → report `Led` (VB6 `GRepFormName="Led"`); `LedCred` divergence dead ✅ PY-FIX-001
- [x] T009 [US1] **Tests**: registry probe 9/9 PASS; `ast.parse` OK; ruff F821/E9/F601/F811/F841 zero new; pytest **1170 passed, 1 skipped, exit 0** ✅ PY-FIX-001

**Checkpoint US1**: functional & tested ✅

---

## Phase 4: User Story 2 — Control Ledger leaf honesty (Priority: P2)

**Goal**: `Control Ledger` never silently opens Trial Balance; explicit not-ported until report ported.
**Independent Test**: Click `Control Ledger` → not-ported message (not Trial Balance).

- [x] T010 [US2] `ui/shell.py` `Control Ledger` → explicit `QMessageBox` not-ported (no `CONTROLLED` key in `core/reports.py`) ✅ PY-FIX-001
- [x] T011 [US2] **Test**: registry probe asserts `Control Ledger → not_ported:CONTROLLED` ✅ PY-FIX-001

**Checkpoint US2**: functional & tested ✅ (backlog B3 = port real report later)

---

## Phase 5: User Story 3 — PARTIAL forms upgraded (Priority: P3)

**Goal**: `FaChqClear`, `rFaRepView`, `FaTDSCertificate` entry become FULL.
**Independent Test**: Each form opens with full VB6-faithful behavior.

- [ ] T012 [US3] Investigate VB6 sources for the 3 PARTIAL forms + DB feasibility (live tables?) → scope note in gap list
- [ ] T013 [US3] Implement upgrades (delegate to `@python`) — only if tables live; else document COMING_SOON
- [ ] T014 [US3] **Tests**: registry probe + pytest gate

**Checkpoint US3**: pending (deferred — fast mode shipped US1/US2 first)

---

## Phase 6: Polish & Cross-Cutting Concerns

- [x] T015 [P] Gap list §6 statuses → `FIXED (PY-FIX-001)` + post-fix verification note + baseline correction 1038→1170 ✅
- [ ] T016 Update `VB6_VS_PYTHON_FILE_BY_FILE.txt` / `MIGRATION_COMPLETION_MATRIX.md` Finance rows (delegated, separate doc pass)
- [ ] T017 Backlog tickets: B1 FaLib/BanqModule/FaVoucher ports · B3 `CONTROLLED` report port · B4 `FaTDSCat` dup · B5 live `menuHelp` DB probe + UI smoke · B6 MainSetup feature (research.md Part B)
- [ ] T018 Full-suite known issue: deselect `tests/unit/test_merge_reverse_ui.py` (pre-existing `0xC0000409` at HEAD) or fix separately

---

## Dependencies & Execution Order

- Phase 1 → Phase 2 → US1 (P1) → US2 (P2) — **all done**
- US3 (P3) independent, blocked only by its own DB-feasibility check
- Polish tasks independent; T016 doc pass can run parallel with US3

## Notes

- Zero application-code edits by leader — all code via `@python` (PY-FIX-001)
- Commit NOT done (working tree has many unrelated pre-existing changes — commit `ui/shell.py` + `specs/004-finance-parity/` selectively if user requests)
- Baseline: **1170 passed, 1 skipped** (recorded 1038 was stale)
