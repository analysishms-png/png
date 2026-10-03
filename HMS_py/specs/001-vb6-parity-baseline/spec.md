# Feature Specification: HMS VB6 → Python Migration Baseline and Parity Reconciliation

**Feature Branch**: `001-vb6-parity-baseline`

**Created**: 2026-10-03

**Status**: Draft

**Input**: User description: "HMS VB6 → Python Migration Baseline and Parity Reconciliation — establish and continuously maintain an evidence-based, file-by-file and procedure-by-procedure reconciliation between the legacy VB6 HMS system and the Python port, with ledgers (forms, procedures, databases, report parameters, printing), a master bug register, and regression-verified fixes. VB6 source is the source of truth; never invent behavior, never fake completion."

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Migration lead sees true parity state on demand (Priority: P1)

A migration lead (or auditing agent) runs the parity reconciliation and gets a
current, generated report showing exactly which VB6 forms, procedures, tables,
report parameters and print paths have Python counterparts, which are partial,
and which are missing — each row backed by a citable file/evidence reference.

**Why this priority**: Without a trustworthy baseline, every other migration
decision (what to port next, what is done, what regressed) is guesswork. This
is the foundation all other stories depend on.

**Independent Test**: Run the reconciliation from a clean checkout and verify
the generated report counts (form statuses, module statuses, table buckets)
match a second, independently produced run; verify every row carries an
evidence reference (VB6 file or Python file).

**Acceptance Scenarios**:

1. **Given** the VB6 source tree and the Python source tree as they exist,
   **When** the reconciliation is generated, **Then** every VB6 form appears
   exactly once with a status of MIGRATED, PARTIAL, MISSING, or
   OBSOLETE-with-proof, and zero rows lack evidence.
2. **Given** a generated baseline snapshot exists, **When** the reconciliation
   is regenerated after code changes, **Then** a delta report lists every
   status change with direction (improved / regressed / new / removed).
3. **Given** a row's status, **When** a reviewer checks the cited evidence,
   **Then** the cited file exists and actually contains the referenced form,
   procedure, or table reference.

---

### User Story 2 - Missing/blocked work is tracked as a master bug register with fixes verified by tests (Priority: P2)

Each identified gap (dead click, wrong query, absent table, wrong default,
nav mismatch) is entered in a master bug register with severity, root cause,
fix location and verification evidence; a fix may only be marked done when an
automated test or scripted probe reproduces the original failure and passes
after the fix.

**Why this priority**: The baseline (P1) is only useful if discovered gaps
actually get closed without breaking what works. The register is the work
queue; the verification rule is what makes "done" mean done.

**Independent Test**: Pick any register entry marked fixed, re-run its
verification command, and confirm it passes; temporarily revert the fix and
confirm the verification fails again.

**Acceptance Scenarios**:

1. **Given** a discovered defect, **When** it is added to the register, **Then**
   it has an ID, severity, affected VB6 behavior, affected Python behavior,
   and the evidence (screenshot/probe output/test name) that exposed it.
2. **Given** a proposed fix, **When** it is committed, **Then** the full
   regression suite passes and the register entry records the verification
   artifact.
3. **Given** a fix marked done, **When** the fix is reverted in a scratch
   checkout, **Then** its verification fails — proving the check is real.

---

### User Story 3 - VB6-blocked leaves stay visibly documented instead of pretending to work (Priority: P3)

Screens whose underlying database tables or hardware are absent from the target
environment appear in menus as a documented "blocked/coming soon" notice that
explains why, rather than opening a simulated screen that pretends to save or
pretends to drive hardware.

**Why this priority**: Pretend-completion erodes trust in the whole parity
effort and can mislead operators. It is lower priority than finding gaps and
fixing them, but it is a constitutional hard rule (no fake completion).

**Independent Test**: Open each menu leaf known to target an absent table or
hardware device; confirm each shows the documented-blocked notice naming the
missing prerequisite, and confirm no screen in that set performs a simulated
save/write presented as real.

**Acceptance Scenarios**:

1. **Given** a menu leaf whose primary table is absent from the target
   database, **When** the user selects it, **Then** a notice explains the
   missing table/hardware prerequisite instead of opening a working-looking form.
2. **Given** a menu leaf whose table exists, **When** the user selects it,
   **Then** the real screen opens (the blocked list does not over-block).
3. **Given** a screen that cannot complete its operation, **When** it reports
   the failure, **Then** the message states the actual missing prerequisite —
   never a simulated success.

---

### Edge Cases

- What happens when the VB6 tree or Python tree is partially unavailable at
  reconciliation time? The run must abort with a clear error rather than
  produce a partial report that looks complete.
- What happens when a VB6 form maps to a shared/simplified Python screen
  (no one-to-one file)? It is recorded as a distinct "shared screen" status
  with the mapping named — not forced into MIGRATED or MISSING.
- What happens when two regenerations race (two people regenerate at once)?
  The delta compares against the committed baseline snapshot, so the last
  committed snapshot always defines the reference point.
- What happens when a "fix" changes behavior the tests don't cover? The
  register entry stays UNVERIFIED until an artifact-producing check exists.
- What happens when the target environment lacks a table VB6 relied on?
  The row gets BLOCKED-WITH-DOCUMENTED-REASON, and the reason must cite the
  probe output (e.g. table-not-found error) with a date.

## Requirements *(mandatory)*

### Functional Requirements

- **FR-001**: The system MUST generate a file-by-file parity report covering
  every VB6 form, VB6 module, and database table reference, with each row
  assigned exactly one status from the constitution's vocabulary.
- **FR-002**: Every report row MUST carry at least one citable evidence
  reference (VB6 source file, Python source file, live-database probe result,
  or test name); rows without evidence MUST be rejected by validation.
- **FR-003**: The system MUST retain a committed baseline snapshot of each
  parity report and produce a delta against it on regeneration, listing every
  status change and its direction.
- **FR-004**: The system MUST maintain ledgers for forms, procedures, database
  tables, report parameters, and printing — regenerated from the parity report,
  never hand-edited, with regeneration provenance (date + source) recorded.
- **FR-005**: The master bug register MUST assign each defect a stable ID and
  record severity, root cause, fix location, and verification evidence; entries
  marked fixed MUST include a re-runnable verification command.
- **FR-006**: Any change claiming parity or a fix MUST pass the full
  regression suite, and the run's outcome (counts, failures) MUST be recorded
  before the change is considered verified.
- **FR-007**: Menu leaves whose primary table or hardware is absent MUST appear
  as documented-blocked with the specific missing prerequisite named; such
  leaves MUST NOT expose simulated saves or simulated device operations
  presented as real.
- **FR-008**: Report-parameter documentation MUST list, per report, the
  parameters VB6 supplies (date range, site, company, user, business date,
  environment flags, configuration paths) and whether the Python side supplies
  an equivalent — mismatches marked MISMATCH, absent marked MISSING.
- **FR-009**: Printing verification MUST record, per report, whether preview
  output, page sections, totals, and reprint audit behavior were compared
  against the VB6 reference, with the artifact kind (screenshot, print-to-file,
  or spec-derived) named for each claim.
- **FR-010**: The reconciliation MUST refuse to run against an unresolvable
  source tree (missing VB6 root or missing Python root) and exit with a clear
  error instead of emitting an incomplete report.
- **FR-011**: All generated artifacts MUST be reproducible: running the
  generation twice on unchanged sources MUST produce identical output.
- **FR-012**: The constitution MUST be discoverable in-repo, versioned, and
  any change to it MUST trigger review of dependent quality checklists.

### Key Entities

- **Parity Report**: Generated snapshot mapping each VB6 artifact to its
  Python counterpart; attributes: artifact kind, VB6 identity, Python
  identity, status, evidence references, generation date.
- **Ledger Row**: One line of a migration ledger (form, procedure, table,
  report parameter, print path); attributes: source identity, status
  vocabulary value, evidence, provenance of the row's generation.
- **Bug Register Entry**: A tracked defect or gap; attributes: stable ID,
  severity, affected VB6 behavior, affected Python behavior, root cause, fix
  location, verification artifact, state (open / fixed-unverified / verified).
- **Baseline Snapshot**: A committed copy of a parity report used as the
  reference point for deltas; attributes: date, source-tree identity, counts.
- **Verification Artifact**: Evidence that a check ran (test name + result,
  probe output, screenshot, print-to-file); attributes: kind, location, date.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: 100% of VB6 forms appear in the parity report with exactly one
  status and a citable evidence reference on every row (zero unevidenced rows).
- **SC-002**: Regenerating on unchanged sources produces byte-identical output;
  regenerating after changes produces a delta where 100% of changed rows are
  accounted for as improved, regressed, new, or removed.
- **SC-003**: Every bug-register entry marked fixed has a verification that
  passes when the fix is present and fails when the fix is reverted —
  demonstrated for 100% of entries marked verified.
- **SC-004**: The full regression suite result is recorded for 100% of commits
  that touch migration-relevant code, with zero unrecorded failures.
- **SC-005**: Zero menu leaves open a screen that simulates a save or device
  operation while claiming success when the underlying table or hardware is
  absent; 100% of such leaves show a documented-blocked notice naming the
  prerequisite.
- **SC-006**: A reviewer can answer "what is the current parity state of any
  VB6 form in under one minute" by looking up a single generated report row
  that includes its evidence link.
- **SC-007**: Ledger drift is impossible by process — 0 hand-edited generated
  ledger rows in review; regeneration date on every generated ledger is the
  same as or later than its source report.

## Assumptions

- The legacy VB6 source tree remains available in-repo read-only for the
  duration of the migration; it is the source of truth for behavior questions.
- The target environment's database is the live reference for table
  existence/row-count claims; environment differences (absent tables,
  unattached hardware) are recorded as blocked-with-reason, not as defects.
- "Migration-relevant code" means the parity tooling, ledgers, register,
  UI registry, and any file named as evidence in a ledger row.
- Regression protection builds on the project's existing automated suite and
  pre-commit checks; no new test framework is introduced by this feature.
- Screenshots/print-to-file artifacts live alongside the existing UI evidence
  directories used by the project's screenshot-audit workflow.
- Parallel contributors may edit the tree concurrently; the committed baseline
  snapshot is the sole reconciliation reference point (last commit wins).
