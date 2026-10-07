# Feature Specification: Finance Module Parity (VB6 → Python)

**Feature Branch**: `004-finance-parity`

**Created**: 2026-10-06

**Status**: Draft

**Input**: User description: "Finance module fast mode me complete karna — VB6 vs Python parity close karna"

**Evidence**: `specs/004-finance-parity/finance-gap-list.md` (verified read-only audit, 2026-10-06)

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Correct menu wiring for Finance (Priority: P1)

A cashier/accountant clicking any Finance menu leaf gets the screen VB6 would have opened — not Trial Balance, not Voucher Entry. Today 7 leaves open the wrong screen: `Adjustment Entry`, `Delete Adjustment Entry`, `&Annexure`, `A&geing Analysis for Debtors`, `Ageing A&nalysis for Creditors`, `Control Ledger` (all → wrong handler), plus `Ledger` vs `&Ledger` divergent routing.

**Why this priority**: WRONG_TARGET = silent data-integrity/UX bug; user believes they opened Adjustment form but get Voucher Entry. Highest user-visible harm, smallest fix (registry re-wires).

**Independent Test**: Launch app → Finance menu → click each of the 7 leaves → assert correct dialog/report opens.

**Acceptance Scenarios**:

1. **Given** Finance → Transactions, **When** user clicks `Adjustment Entry`, **Then** `fasub_ui.open_fa_adjust` opens (not `fvu.open_voucher_entry`).
2. **Given** Finance → Transactions, **When** user clicks `Delete Adjustment Entry`, **Then** adjustment-delete form opens (`pfui.open_adjustment_delete` or `fasub_ui.open_fa_adjust(delete=True)`).
3. **Given** Finance → Reports, **When** user clicks `&Annexure`, **Then** report `Annexure` opens (not Trial Balance).
4. **Given** Finance → Reports, **When** user clicks `A&geing Analysis for Debtors`, **Then** report `AgingDr` opens.
5. **Given** Finance → Reports, **When** user clicks `Ageing A&nalysis for Creditors`, **Then** report `AgingRepCr` opens.
6. **Given** either caption shape (`menuHelp` with `&`, `User_Module` without), **When** user clicks `Ledger`, **Then** routing is deterministic and matches the live `menuHelp.caption_disp` shape (root cause: `shell.py:3626` `_reg_ci` does not normalize `&`).

---

### User Story 2 - Control Ledger leaf honesty (Priority: P2)

`Control Ledger` menu leaf currently and silently opens Trial Balance — wrong screen with no warning.

**Why this priority**: Either port the VB6 report or show an explicit "not yet ported" state; silent wrong-target is the bug class US1 eliminates everywhere else.

**Independent Test**: Click `Control Ledger` → either Control Ledger report renders, or an explicit coming-soon/not-ported message appears (never Trial Balance).

**Acceptance Scenarios**:

1. **Given** VB6 `Control Ledger` report logic exists and is port-feasible, **When** user clicks the leaf, **Then** the ported report opens.
2. **Given** port not feasible in this feature, **When** user clicks the leaf, **Then** an explicit not-ported indicator shows (never a silently wrong screen).

---

### User Story 3 - PARTIAL forms upgraded (Priority: P3)

3 forms are PARTIAL: `FaChqClear` (no menu leaf — VB6 opened it from voucher flow), `rFaRepView` (template-only, reuses `FaRepView`), `FaTDSCertificate` (list-only, no entry form).

**Why this priority**: Completeness after correctness; TDS Certificate entry is the only user-visible one.

**Independent Test**: TDS Certificate menu → entry form reachable and can create a certificate; cheque clearing reachable from voucher flow as in VB6.

**Acceptance Scenarios**:

1. **Given** Finance → Transactions → `T.D.S. Certificate Entry`, **When** clicked, **Then** an entry form opens (not just read-only list), or the list-only limitation is documented as accepted in the bug register.
2. **Given** VB6 opened cheque clearing from voucher flow, **When** user follows the same path in Python, **Then** clearing form opens.

---

### Edge Cases

- Duplicate caption keys (`FaTDSCat` wired twice: `shell:2616` and `:3422` → two divergent UIs) — later key wins; must resolve to one UI.
- `&Trial Ledger` maps to `open_trial_balance` (closest-thing mapping) — confirm against VB6 behavior.
- Dead aliases (`:2955 "Ledger Adjustment"`, `:3407 "Adjustment Delete"`) — keep after re-wire (harmless) or dedupe.

## Requirements *(mandatory)*

### Functional Requirements

- **FR-001**: Every Finance menu leaf in `core/mdi_menu.json` (37 leaves) MUST resolve to a handler matching VB6 behavior — verified by line-anchored audit.
- **FR-002**: Registry key normalization MUST treat `&` accelerator variants as the same leaf (fix `_reg_ci` at `ui/shell.py:3626` or remove shadowing `&`-keys at `shell:2561/2564/2565`).
- **FR-003**: `Adjustment Entry` / `Delete Adjustment Entry` MUST open the adjustment forms (re-wires at `shell:2619/2620`).
- **FR-004**: A menu leaf MUST NEVER open a screen unrelated to its caption (no silent Trial-Balance fallback for Finance leaves).
- **FR-005**: `Control Ledger` MUST open the ported report or an explicit not-ported state.
- **FR-006**: Unported VB6 Finance modules (`FaLib.bas`, `BanqModule.bas`, `FaVoucher.bas` — `VB6_Python_Bug_List.md:99`) MUST be tracked; porting scope decided in plan (fast mode: register, not necessarily port).
- **FR-007**: Differences that cannot be reconciled in this feature MUST be recorded in `PARITY_RECONCILIATION.md` (Constitution I).

### Key Entities

- **Menu leaf**: caption (with/without `&`), mdi line, registry key, handler.
- **Report key**: `core/reports.py` `REPORTS[].menu` caption → report id.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: WRONG_TARGET Finance leaves: 6 → 0 (gap list §3/§4).
- **SC-002**: DIVERGENT leaves: 1 (`Ledger`) → 0 deterministic routing.
- **SC-003**: `python -m pytest -q` passes (1038 tests baseline, no regressions).
- **SC-004**: `python -m ruff check ...` F821/E9 clean on changed files.
- **SC-005**: Gap list statuses updated: FULL 21+3 PARTIAL→FULL (or documented), WRONG_TARGET 2 → 0.

## Assumptions

- Fast mode: menu re-wires + honesty fixes in scope; full `FaLib.bas` port = separate backlog feature.
- DB-feasibility rule applies: live tables → implement; absent → COMING_SOON; DLL/HW → BLOCKED.
- Read-only MS-013 Tier-2 GL columns stay read-only (deliberate, not a gap).
- Verification is static + registry probe + pytest; live `menuHelp` DB query / UI launch not required for this feature's gate.
