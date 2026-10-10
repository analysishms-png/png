# HMS Migration Constitution

Ratified: 2026-10-08 · Status: ACTIVE
Scope: every VB6 → Python parity task in this repo. The VB6 source tree (`HMS_py/HMS_py/HMS/`) is read-only evidence.
Adapted from GitHub Spec Kit — this file is the single authority for migration rules.

## Core Principles

### I. VB6 Source Is Truth (NON-NEGOTIABLE)
Priority order when sources disagree:
1. VB6 source (`.frm` / `.bas` / `.cls`) → 2. SQL Server schema → 3. SQL / stored procedures →
4. Report definitions → 5. Observed app behaviour → 6. Existing migration docs → 7. User requirements.
Never guess. Missing evidence → mark `UNKNOWN — REQUIRES INVESTIGATION` (and where to look).

### II. Parity Before Features
No new features while the parity chain is incomplete. Every migrated feature follows:
**VB6 Ref → Spec → Python Design → Implementation → Test → VB6/Python Comparison → Parity Result.**

### III. Evidence-Based Status
Allowed statuses: `DISCOVERED`, `SPECIFIED`, `PLANNED`, `IMPLEMENTING`, `TESTING`, `PARITY_FAILED`, `PARITY_PASSED`, `COMPLETE`.
A status without file+line evidence is invalid. Bugs register in `MIGRATION_MASTER_BUG_REGISTER.md`; a fix is done only when a test reproduces the failure before the fix and passes after.

### IV. Platform Preserved
SQL Server stays SQL Server (no engine swap). Parameterized queries only. Never modify or delete VB6 sources, `.frx` files, or existing ledgers — extend, never rewrite.

### V. Reuse Artifacts, Don't Duplicate
Existing docs win: `specs/`, `MIGRATION_PLAN.md`, `MIGRATION_MASTER_BUG_REGISTER.md`, `DATABASE_MAPPING_LEDGER.md`, `FORM_MIGRATION_LEDGER.md`, `PARITY_RECONCILIATION.md`. New work extends them or lives under `.specify/`, `specs/###-*`, `migration/`.

## Workflow & Quality Gates

1. **Specify** — spec from `.specify/templates/spec-template.md` → `specs/###-slug/spec.md`.
2. **Plan** — `.specify/templates/plan-template.md` → `plan.md`; Constitution Check is a hard gate.
3. **Tasks** — `.specify/templates/tasks-template.md` → `tasks.md`, dependency-ordered.
4. **Checklist** — requirements review → `checklists/requirements.md` before any implementation.
5. **Delivery gate** — pytest suite green, no new ruff violations, no debug leftovers, permission model (MenuHelp / OPT*) honoured, parity result recorded in `migration/parity-report.md`.
6. Every stage reports: **WHAT WAS FOUND / CREATED / CHANGED / REMAINS / UNKNOWN / NEXT.**

## Security & Constraints
- No hardcoded secrets; config via `Analysis.ini` / env vars; DB credentials never in code or docs.
- Validate all input at trust boundaries; permission ops (`a/e/d/p/u`) enforced on UI and backend paths.
- Auth / payments / PII / file upload / external integrations trigger `@security-reviewer`.

## Governance
Amend only with explicit user approval. Any change here invalidates specs/plans citing superseded rules — re-run `checklists/requirements.md` on affected specs.
