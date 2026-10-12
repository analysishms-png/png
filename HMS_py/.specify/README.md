# Spec Kit Integration (adapted for HMS)

Authority: `.specify/memory/constitution.md`. Templates here are **copied per feature, never edited in place**.
The original Spec Kit CLI scripts/hooks are **not** installed — the IT Leader executes these steps by delegation.

## Flow (per feature)

1. **Specify** — copy `templates/spec-template.md` → `specs/###-slug/spec.md`, fill with VB6 evidence.
2. **Plan** — copy `templates/plan-template.md` → `specs/###-slug/plan.md`; Constitution Check = hard gate.
3. **Tasks** — copy `templates/tasks-template.md` → `specs/###-slug/tasks.md`, dependency-ordered.
4. **Checklist** — copy `templates/checklist-template.md` → `specs/###-slug/checklists/requirements.md` (requirements review **before** implementation).
5. **Parity** — record every comparison result in `migration/parity-report.md`; reuse `DATABASE_MAPPING_LEDGER.md`, `FORM_MIGRATION_LEDGER.md`, `MIGRATION_MASTER_BUG_REGISTER.md`.

No implementation before Steps 1–4 pass. UI features additionally run the 3-phase UI pipeline (`@designer` → `@frontend` → `@designer` QA) via the Leader.

## Inventory inputs

`migration/inventory/*.csv` — regenerable:
- VB6/Python static inventory: `py tools/vb6_inventory.py`
- DB inventory + usage: see `migration/inventory/db-usage.md`

## Mapping ledger columns

`VB6 Component | VB6 Procedure | Business Function | SQL | Python Module | Python Function | API | Test | Status`
