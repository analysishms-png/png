# Feature Specification: Front-Office Room Charge Posting Parity (fdPostChrg)

**Feature Branch**: `002-fdpostchg-room-posting-parity`

**Created**: 2026-10-03

**Status**: Implemented — 2026-10-03 (checklist 16/16, speckit audit 25/25;
tests green 1097/1 skipped; DB-state evidence + BUG-AUD-10/11 fixes in
`PARITY_RECONCILIATION.md` iteration 4)

**Input**: User description: "Phase 11 next — fdPostChrg 'Post Charges / Payments' room-charge posting parity: front-desk staff post room charges for a chosen business date to guest folios exactly as the legacy HMS does (per-room posting with visible progress, plan/checkout-variation rules, idempotent re-post with no double charges, all-or-nothing completion), verified by DB-state evidence."

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Night auditor posts room charges for a business date (Priority: P1)

A front-desk clerk or night auditor picks a business date ("Date For") and runs
Post Charges. Every eligible in-house room for that date receives exactly one
room-charge entry on the correct guest folio, with the correct amount, in one
smooth run. The clerk can tell from the screen which room is being posted and
when the run has completed.

**Why this priority**: This is the nightly revenue-recognition step — without
it, folios carry no room revenue, folio balances are wrong, and checkout and
night audit cannot be trusted. Everything downstream (settlement, night audit,
reports) depends on charges being posted correctly.

**Independent Test**: With in-house rooms present for a date that has not been
posted, run Post Charges for that date; afterwards verify (by querying saved
records) that each eligible room has exactly one charge row on the folio
linked to that room's stay, with the amount matching the room's applicable
tariff/plan rules, and that the screen reported completion.

**Acceptance Scenarios**:

1. **Given** three in-house rooms for date D have not been posted, **When** the
   clerk runs Post Charges for D, **Then** each of the three rooms has exactly
   one room-charge entry on its guest folio with the correct amount, and the
   screen shows completion.
2. **Given** no rooms are in-house for date D, **When** the clerk runs Post
   Charges for D, **Then** the system reports that there was nothing to post
   and no charge records are created.
3. **Given** a room's applicable rate comes from a package/plan rather than
   the base tariff, **When** Post Charges runs for that room, **Then** the
   charged amount follows the plan rules exactly as the legacy system does.

---

### User Story 2 - Re-running posting never creates double charges (Priority: P2)

If the clerk runs Post Charges again for a date that was already posted (or
re-runs after a partial interruption), rooms that already have their charge
for that date are skipped automatically — the guest is never charged twice
for the same room-night.

**Why this priority**: A duplicate room charge directly over-bills guests and
is the highest-financial-risk failure mode of this screen; safe re-runs are
what allow the clerk to retry confidently after any hiccup.

**Independent Test**: Run Post Charges twice for the same date; verify the
per-room charge count for that date is unchanged after the second run.

**Acceptance Scenarios**:

1. **Given** date D was fully posted, **When** the clerk runs Post Charges for
   D again, **Then** no new charge records are created and existing charges
   are untouched.
2. **Given** date D was interrupted after some rooms posted, **When** the clerk
   re-runs Post Charges for D, **Then** only the not-yet-posted rooms receive
   charges and already-posted rooms remain single-charged.

---

### User Story 3 - A failed posting run leaves no half-posted date (Priority: P2)

If posting fails partway (bad data, unavailable resource, validation error),
the date is left exactly as it was — no rooms half-charged — and the clerk
sees a clear error message instead of a silent partial result.

**Why this priority**: A half-posted date is worse than a failed run: folio
balances become silently wrong and are hard to detect. Atomic completion is
what makes the posted totals trustworthy for settlement and night audit.

**Independent Test**: Simulate a failure during a posting run and verify that
zero charge records from that run persist and an error is surfaced; fix the
cause and re-run successfully.

**Acceptance Scenarios**:

1. **Given** a posting run fails after charging some rooms, **When** the run
   aborts, **Then** no charge records from that run exist and the previous
   state is intact.
2. **Given** a run fails, **When** the clerk views the screen, **Then** an
   error message explains the failure rather than showing completion.

---

### Edge Cases

- What happens when the clerk leaves the date empty or picks a future date?
- What happens when a room is in-house but has no linked guest folio?
- What happens for rooms that checked out on the posting date (checkout-day
  variation) or whose rate changed mid-stay?
- What happens when every eligible room for the date is already posted?
- What happens when two clerks run posting for the same date at the same time?
- What happens for plan-based rooms where the plan produces a zero or
  discounted amount?

## Requirements *(mandatory)*

### Functional Requirements

- **FR-001**: The system MUST allow the clerk to post room charges for a
  selected business date in a single action, covering all eligible in-house
  rooms for that date.
- **FR-002**: The system MUST charge each room at most once per business date;
  re-running posting for an already-posted date MUST NOT create duplicate
  charges.
- **FR-003**: Each posted charge MUST be recorded against the guest folio
  linked to that room's stay, so folio balances reflect the charge.
- **FR-004**: Charged amounts MUST follow the same tariff, package/plan,
  discount, and checkout-variation rules the legacy system applies for that
  room and date.
- **FR-005**: The system MUST show per-room progress during the run
  (which room is posting) and a clear completion status at the end.
- **FR-006**: When there is nothing to post, the system MUST report that
  clearly and create no records.
- **FR-007**: A posting run MUST be all-or-nothing: if any room fails, no
  charges from that run persist.
- **FR-008**: Posted charges MUST record who posted them, when, and for which
  site/company context, so the posted set is auditable.
- **FR-009**: The system MUST let the clerk confirm after the run which rooms
  were charged for the date (a verifiable posted-vs-eligible outcome).

### Key Entities

- **Room Charge**: One charge line for one room-night on a business date —
  amount, charge category, target folio, posting date, posting user.
- **Room Stay (occupancy)**: The in-house record linking a room to a guest
  folio for a stay period, including applicable rate/plan and checkout info.
- **Business Date**: The date the clerk selects for posting; charges belong
  to that date regardless of the wall-clock posting time.
- **Folio**: The guest's running account; room charges increase what the
  guest owes.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: For a full house (100 in-house rooms), a posting run completes
  within 30 seconds and the clerk sees completion without intervention.
- **SC-002**: After three consecutive runs for the same date, the number of
  charge records per room for that date remains exactly 1 (zero duplicates).
- **SC-003**: After every successful run, posted-room count equals
  eligible-room count for that date (100% coverage, no silent skips).
- **SC-004**: In every induced-failure run, zero charge records from that run
  remain (0% partial posting).
- **SC-005**: For a 10-room sample, every posted amount matches the legacy
  system's amount for the same room and date to the currency unit (100%
  agreement).
- **SC-006**: A clerk unfamiliar with the failure modes completes a posting
  run for a date without assistance on the first attempt.

## Assumptions

- Scope is room-charge posting as performed by the legacy fdPostChrg screen
  ("Post Charges / Payments" → room charges); payment/receipt entry is a
  separate screen and out of scope for this feature.
- The legacy system's behavior for room-charge posting is the authoritative
  reference; differences must be investigated and documented before being
  called equivalent (project constitution, principle I).
- The feature works inside the existing HMS system as it stands today — no
  new parallel tooling and no structural data changes are needed.
- The site operates a single company/site context as today; multi-site
  posting differences are out of scope.
- The clerk has permission to post charges (posting permission checks are
  inherited from the existing application access control).
- Any report/printing the legacy screen provides for posted charges is
  verified during planning; this spec requires the posted outcome to be
  confirmable on screen (FR-009) and does not itself mandate a new report.
