# Phase 0 Research: Finance Parity + MainSetup Web Research

**Feature**: `004-finance-parity` | **Date**: 2026-10-06

**Constitution rank reminder**: external web research = **rank 6**. VB6 behavior (rank 1) always overrides — web findings inform *how we document/verify*, never *what VB6 did*.

## Part A — Finance (internal evidence, primary)

Source of truth: `finance-gap-list.md` (verified read-only audit).

**Decisions:**

1. **Dispatch architecture**: DB menu → `shell.py::_form_registry()` leaf→handler dict; `_reg_ci` (`shell:3626`) lower+strip but does **not** normalize `&`. Two live caption shapes (menuHelp with `&`, User_Module without) = root cause of most WRONG_TARGETs.
2. **Fix strategy**: re-wire registry keys (smallest diff), not menu JSON, not reports content.
3. **Control Ledger**: `core/reports.py` has no `CONTROLLED` key → explicit not-ported message (FR-005 option B) instead of silent Trial Balance. VB6 ref: `GRepFormName="CONTROLLED"` (`HMS.bas` L477387 evidence via delegate).
4. **Ledger routing**: VB6 `HMS.bas` L477387 `"Ledger"→FaReports GRepFormName="Led"` → wire to `Led` (full ledger), killing the `LedCred` divergence.
5. **Open backlog (out of fast scope)**: `FaLib.bas`/`BanqModule.bas`/`FaVoucher.bas` port (`VB6_Python_Bug_List.md:99`); 3 PARTIAL forms; `FaTDSCat` duplicate UIs.

**Verification baseline correction**: recorded 1038 tests stale — actual baseline **1170 passed, 1 skipped**. Pre-existing hard-crash (`0xC0000409`) in `tests/unit/test_merge_reverse_ui.py` proven at HEAD too (not ours); deselect that file when running full suite.

## Part B — MainSetup web research (rank 6, informs next-feature plan)

**Queries**: USALI chart-of-accounts ordering / PMS initial setup / voucher numbering best practice.

**Sources**:
- Acumatica HIA *Ultimate Hospitality ERP & Accounting Implementation Guide* (PDF, acumatica.com)
- Priority Software *Hotel PMS Implementation Guide & Best Practices* (2025-12)
- Exceed HMS *PMS Implementation Checklist: 30-Day Rollout* 
- Smart Order *PMS Go-Live Checklist* (2026-08)
- ExploreTECH *PMS Implementation Timeline* (2025-10)

**Findings usable for MainSetup parity plan:**

1. **Setup order (industry consensus)**: properties/identity → Chart of Accounts → system preferences → **cash/bank accounts validated early** → vendors + historical GL → PMS↔POS daily-report mapping → reports/dashboards.
2. **USALI CoA ordering**: assets → liabilities → equity → revenues (by department: rooms before F&B) → COGS → payroll → overhead. Departments before company-level accounts; cross-property comparability is the point.
3. **Data audit before config** (all 4 PMS sources): duplicates/outdated records cleaned *before* setup — matches our DB-feasibility rule (verify live tables before wiring UI).
4. **Go-live ≠ configured** (Smart Order): 5 top failure areas = room inventory, rates, restrictions, payment settings, staff permissions. Verification-by-test mirrors our acceptance-scenario style.
5. **Configuration workshop scope**: room types, rate plans, tax logic, payment methods, user roles/permissions, naming conventions (charge codes) — a shared configuration tracker documents changes.
6. **Voucher numbering**: no strong external standard found beyond sequence/series control with gaps flagged (audit trail) — VB6 `VoucherSerialisation` behavior remains authority (`shell:3588` already wired).

**How this feeds the MainSetup plan (next feature):**
- Checklist overlay only: run USALI setup-order + go-live verification list against existing gap docs (`MAIN_SETUP_SIDE_BY_SIDE.md`, `MAIN_SETUP_BUG_REGISTER.md`) to catch *ordering/verification* gaps the VB6-parity docs miss.
- Deliberately does **not** change VB6-derived behavior — any web-suggested deviation goes to `PARITY_RECONCILIATION.md` per Constitution I.
- Recommended MainSetup feature flow: audit-existing-docs → web-checklist overlay → gap delta → spec/plan. No new UI invented from web sources.

**Not researched / open** (if needed later): TDS/GST statutory configuration specifics, multi-property CoA consolidation.
