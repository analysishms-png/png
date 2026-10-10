# Spec: {FEATURE NAME}

- Feature Branch: `###-{kebab-slug}`
- Created: {YYYY-MM-DD}
- Status: Draft | Reviewed
- Input: {user description / VB6 reference / bug register ID}

> Copy this file to `specs/###-{kebab-slug}/spec.md`. Keep every section; write `None` if not applicable.
> Do not start implementation until this spec passes `checklists/requirements.md`.

## User Scenarios & Testing (mandatory)

### User Story N — {title} (P{1|2|3})
**Why this priority:** {user value + risk}
**Independent test:** {how it can be tested alone}
**Acceptance Scenarios:**
1. Given {initial state}, When {action}, Then {observable result}
2. Given {edge state}, When {action}, Then {observable result}

### Edge Cases
- {What happens when ...}
- Unknowns: `UNKNOWN — REQUIRES INVESTIGATION` + {where to look}.

## Requirements

### Functional Requirements
- **FR-001:** {must ...} — evidence: `{vb6 file:line}`
- **FR-002:** {must ...} — evidence: `UNKNOWN — REQUIRES INVESTIGATION`

### Success Criteria
- **SC-001:** {measurable outcome}

## VB6 Evidence (required before Status: Reviewed)

| Item | Value |
|---|---|
| VB6 forms/modules | `{file}` lines `{n}` |
| VB6 procedures | `{name}` |
| SQL / stored procedures | `{Proc_xxx / table}` |
| Python targets | `core/...`, `ui/...` |
| Inventory source | `migration/inventory/*.csv` |
| Parity status | {DISCOVERED \| SPECIFIED \| PLANNED \| IMPLEMENTING \| TESTING \| PARITY_FAILED \| PARITY_PASSED \| COMPLETE} |

## Assumptions
- {...}

## Out of Scope
- {...}
