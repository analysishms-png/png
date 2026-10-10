# Tasks: {FEATURE NAME}

- Input: `spec.md` + `plan.md` in this directory (read them first).
- Format: `- [ ] [FT-nnn] [P?] [USn] Description — VB6: {file:line}`
  - `[P]` = parallel-safe (no shared files with other tasks)
  - `FT-nnn` unique per feature; bug fixes also get an ID in `MIGRATION_MASTER_BUG_REGISTER.md`
- Group tasks by user story. Replace the placeholder block below with generated tasks.
- Every task that changes code adds/extends a pytest test (TDD where behaviour is observable).
- **Done** = checked + tests green + parity row recorded in `migration/parity-report.md`.
- Statuses (feature level): `DISCOVERED → SPECIFIED → PLANNED → IMPLEMENTING → TESTING → PARITY_FAILED/PARITY_PASSED → COMPLETE`.

## User Story 1 — {title}

- [ ] [FT-001] [P] [US1] {task} — VB6: {file:line}
- [ ] [FT-002] [US1] {task} — depends on FT-001

## User Story N — {title}

- [ ] [FT-0nn] [USn] {task}

## Parallel Wave Summary
- **Wave 1 [P]:** FT-001, FT-003
- **Wave 2:** FT-002 (depends on FT-001), FT-004 (depends on FT-003)
