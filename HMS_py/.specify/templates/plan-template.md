# Implementation Plan: {FEATURE NAME}

- Branch: `###-{kebab-slug}` · Created: {YYYY-MM-DD} · Status: Draft
- Input: `specs/###-{kebab-slug}/spec.md`

> Copy next to `spec.md`. Gates: **Constitution Check must PASS before Phase 0**; re-check after Phase 1.

## Summary
{What is being migrated, from which VB6 components, into which Python modules.}

## Technical Context
- Language / runtime: Python 3 + Qt (PyQt)
- Dependencies: existing only — new deps need justification
- Storage: SQL Server (preserved; config via `Analysis.ini`)
- Testing: pytest (`pytest.ini`); parity = automated comparison against VB6 behaviour
- Target platform: Windows
- Constraints: VB6 source read-only; permission model preserved; parameterized SQL only

## Constitution Check (GATE)
- [ ] VB6 evidence captured (forms/modules/lines) in spec
- [ ] No VB6 files modified; no SQL engine swap
- [ ] Statuses + parity chain respected; bug-register ID if fixing a bug
- [ ] Parameterized queries only; no secrets in code/docs
- [ ] Existing ledgers/specs checked for prior work (no duplication)

Any FAIL → stop and report to Leader.

## VB6 ↔ Python Touchpoints

| VB6 Ref (file:line) | Python target | Change type |
|---|---|---|

## Project Structure
- Specs: `specs/###-{slug}/{spec,plan,tasks}.md` + `checklists/requirements.md`
- New/changed code: {paths}
- Evidence: `migration/inventory/*.csv`, results in `migration/parity-report.md`

## Phase 0 — Research
Unknowns → `UNKNOWN — REQUIRES INVESTIGATION` + owner. Stop when every FR has evidence or a listed unknown.

## Phase 1 — Design
Data model, SQL, function signatures, UI flow. UI features → 3-phase UI pipeline (`@designer` → `@frontend` → `@designer` QA) via Leader.

## Phase 2 — Sequencing
Produce `tasks.md` from `.specify/templates/tasks-template.md`: dependency-ordered, `[P]` parallel markers.
