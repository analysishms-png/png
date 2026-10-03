<!--
Sync Impact Report
- Version change: (none) → 1.0.0 (initial adoption)
- Modified principles: n/a (initial document)
- Added sections: Core Principles (10), Source Priority & Evidence Rules,
  Migration Workflow & Quality Gates, Governance
- Removed sections: none
- Follow-up TODOs: none — all template placeholders resolved
-->

# HMS (Hotel Management System) Constitution

## Core Principles

### I. VB6 Behavioral Fidelity

When migrating existing HMS functionality, the original VB6 source is the
primary behavioral reference. Business rules MUST NOT be changed merely
because a different implementation appears cleaner. If the Python
implementation differs from VB6, the difference MUST be investigated and
documented (PARITY_RECONCILIATION.md or the bug register) before any
behavior is declared equivalent.

### II. Existing Python Project First

The existing Python HMS project MUST be repaired and completed in place.
New parallel HMS applications MUST NOT be created, and the existing
architecture MUST NOT be replaced unnecessarily. Any replacement of a
working module requires documented evidence of defect.

### III. Database Fidelity

The existing SQL Server schema MUST be used unless there is documented
evidence that a schema change is required. Tables or columns MUST NOT be
invented; database objects MUST NOT be renamed without evidence; SQL
semantics MUST NOT be changed silently. All queries MUST be parameterized
and credentials MUST NOT be hard-coded.

### IV. UI Fidelity

Every migrated screen MUST preserve the functional behavior of the
corresponding VB6 form: controls, fields, buttons, menus, keyboard events,
validation, navigation, permissions, calculations, search, save, edit,
delete, reports and printing. Screens that merely render are NOT complete.

### V. Transaction Safety

Critical HMS operations MUST follow: validate → recheck → begin
transaction → write → post-condition verification → commit, with rollback
on failure. Business date, company/site and user context MUST be honored
inside the transaction boundary.

### VI. No Fake Completion

A feature is NOT complete because a Python file exists, a screen opens, an
API returns 200, a button is visible, or a preview renders. Completion
requires behavioral and functional verification against the criteria in
"Migration Workflow & Quality Gates". Test doubles, stub screens and
fake/static data MUST NOT be presented as implemented functionality.

### VII. Evidence-Based Migration

Every migrated form, procedure, table mapping and important business rule
MUST carry evidence (VB6 source path + line, live DB query result, test
name, or screenshot). Assumptions MUST be labeled as assumptions until
evidenced.

### VIII. SQL Server Compatibility

The codebase MUST remain compatible with the project's required SQL Server
environment (including SQL Server 2008 R2 where required). Unsupported SQL
syntax MUST NOT be introduced without verification against the live
database.

### IX. Reports and Printing Are Functional Requirements

Reports, report parameters, preview, printing and reprinting are part of
every feature that has them in VB6 — they are not optional polish. Reprint
MUST NOT create a new business transaction.

### X. Regression Protection

Every completed migration unit MUST be regression-tested against
previously completed modules before the next unit starts. A fix MUST NOT
be accepted if it breaks a passing test or a verified workflow.

## Source Priority & Evidence Rules

When sources disagree, investigate in this order:

1. Actual VB6 source behavior
2. Existing live database schema/data
3. Existing Python implementation
4. Existing project documentation
5. Tests
6. External documentation / web research
7. AI-generated assumptions

External research MUST NEVER override verified HMS-specific VB6 behavior.

## Migration Workflow & Quality Gates

Every migration unit (one VB6 form, module, named procedure or DB
workflow) MUST follow: READ VB6 → FIND PYTHON EQUIVALENT → COMPARE →
SPECIFY → PLAN → TASKS → IMPLEMENT → DEBUG → TEST → VERIFY (DB + UI +
report + print) → REGRESSION → PARITY UPDATE → NEXT UNIT.

A unit may be marked VERIFIED only when: VB6 behavior understood, Python
mapping exists, business logic + UI implemented, database verified,
validation and permissions verified, report/print/reprint verified where
applicable, error handling and transaction behavior verified, regression
tests pass, and the ledgers/parity status are updated. Parity status
values: MIGRATED, VERIFIED EQUIVALENT, INTENTIONALLY DIFFERENT
(documented), OBSOLETE (evidence), BLOCKED (reason + owner), NOT MIGRATED.

Testing MUST verify actual outcomes (e.g., save → row exists with correct
company/site/user/business date → reopen matches → edit → DB recheck),
not merely imports, compilation or HTTP 200.

## Governance

- This constitution supersedes ad-hoc practices for the HMS migration;
  every spec/plan/task flow MUST be checked against it.
- Amendments are made only via `/speckit-constitution`, increment the
  version per semver (MAJOR = principle removal/redefinition, MINOR =
  new/expanded principle, PATCH = clarification), and record dates in
  ISO format.
- Every PR/batch MUST verify compliance: no invented rules, no fake
  completion, evidence recorded, regression run, ledgers updated.
- Runtime development guidance lives in MIGRATION_MASTER_PLAN.md and
  MIGRATION_MASTER_BUG_REGISTER.md; conflicts are resolved in favor of
  this constitution.

**Version**: 1.0.0 | **Ratified**: 2026-10-03 | **Last Amended**: 2026-10-03
