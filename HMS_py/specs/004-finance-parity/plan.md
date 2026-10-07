# Implementation Plan: Finance Parity (menu wiring + honesty fixes)

**Branch**: `004-finance-parity` | **Date**: 2026-10-06 | **Spec**: [spec.md](./spec.md)

**Input**: Feature specification from `/specs/004-finance-parity/spec.md`

## Summary

Close all 6 Finance WRONG_TARGET/DIVERGENT menu leaves in `ui/shell.py` so every Finance menu caption opens the VB6-faithful target (or an explicit not-ported message — never a silently wrong report). Root cause fixed once: `&` normalization at registry resolution. No new forms, no FaLib port — those are backlog.

**Status**: PRIMARY FIXES **DONE** (PY-FIX-001, verified — see Tasks). Remaining: doc updates + optional backlog items below.

## Technical Context

**Language/Version**: Python 3.11+ (PyQt6 desktop HMS)
**Primary Dependencies**: PyQt6, existing `core/*` report modules (no new deps)
**Storage**: menu comes from DB `menuHelp` table; handlers are static registry entries — no schema change
**Testing**: `python -m pytest -q --timeout=30` (baseline **1170 passed, 1 skipped**; deselect pre-existing crash file `tests/unit/test_merge_reverse_ui.py`)
**Target Platform**: Windows desktop
**Constraints**: Constitution — VB6 behavioral fidelity; zero application code edits by leader (delegate only); DB-feasibility (absent report keys → explicit not-ported, never invented)
**Scale/Scope**: 1 file changed (`ui/shell.py`, +29/−8); ~9 registry keys

## Constitution Check

| Gate | Status |
|---|---|
| I. VB6 Behavioral Fidelity (deviations → PARITY_RECONCILIATION.md) | PASS — all re-wires backed by VB6 evidence (`HMS.bas` L477387 etc.); Control Ledger = documented not-ported (FR-005 B) |
| II. Existing Python Project First (repair in place) | PASS — fixes in existing `_form_registry()`; no new framework/files |
| III. Database Fidelity (no invented schemas) | PASS — no DB change; missing report key handled honestly |
| IV. UI Fidelity | PASS — re-wire only; UIs unchanged |
| External research = rank 6 | PASS — web findings (research.md Part B) used only for MainSetup plan overlay |

Re-check after Phase 1: **PASS** (no violations → Complexity Tracking empty).

## Project Structure

### Documentation (this feature)

```text
specs/004-finance-parity/
├── spec.md                 # ✅ written
├── research.md             # ✅ written (Phase 0: Finance evidence + MainSetup web research)
├── plan.md                 # ✅ this file
├── finance-gap-list.md     # ✅ verified line-anchored audit (primary evidence)
├── tasks.md                # Phase 2 (/speckit.tasks)
└── data-model.md / quickstart.md / contracts/  # N/A — no schema/API/UI changes
```

### Source Code (repository root)

```text
HMS_py/
├── core/          # fa_*.py, ledger.py, reports.py — read-only evidence this round
├── ui/
│   ├── shell.py   # ← ONLY changed file: _form_registry() re-wires (PY-FIX-001 done)
│   └── fa_sub_forms_ui.py, partial_forms_ui.py — read-only (open_fa_adjust signatures)
└── tests/         # registry probe + pytest gate
```

**Structure Decision**: single-project repair in place; no new dirs/modules.

## Tasks

### Done — PY-FIX-001 (@python, `verified`, registry probe 9/9 PASS, pytest 1170/1 exit 0)

- [x] T1 `Adjustment Entry` (`shell:2622`) → `fasub_ui.open_fa_adjust(w)`; `Delete Adjustment Entry` (`:2625`) → `delete=True` (guarded → `_coming_soon`)
- [x] T2 `&Annexure` / `A&geing…Debtors` / `Ageing A&nalysis…Creditors` (`:2564-2566`) → `_open_report("Annexure" / "Ageing Analysis for Debtors" / "Ageing Analysis for Creditors")` — no target still hits Trial Balance
- [x] T3 `Ledger` (`:2661`) → `_open_report("&Ledger")` → report `Led` (VB6 `GRepFormName="Led"`) — kills `LedCred` divergence
- [x] T4 `Control Ledger` (`:2678`) → explicit not-ported `QMessageBox` (no `CONTROLLED` key in `core/reports.py`) — never Trial Balance
- [x] T5 Verification gate: `ast.parse` OK; ruff F821/E9/F601/F811 zero new (byte-identical to HEAD); pytest parity; registry probe 9/9

### Remaining (fast-mode closeout)

- [ ] T6 **Docs sync (leader, no app code)**: update `finance-gap-list.md` §3/§6 statuses to `FIXED` (post-fix audit note); note baseline correction 1038→1170 + `test_merge_reverse_ui.py` pre-existing crash in gap list verification section.
- [ ] T7 **`setup-tasks.ps1`** → generate `tasks.md`; mark T1-T5 done there.
- [ ] T8 **Completion report** to user: branch, artifacts, verification status, MainSetup next-feature recommendation.

### Backlog (explicitly out of this feature — separate tickets)

- B1 Port `FaLib.bas` / `BanqModule.bas` / `FaVoucher.bas` (`VB6_Python_Bug_List.md:99`)
- B2 3 PARTIAL forms: `FaChqClear`, `rFaRepView`, `FaTDSCertificate` entry
- B3 Port `CONTROLLED` report → then re-wire `Control Ledger` to it (replaces T4 message)
- B4 `FaTDSCat` duplicate UIs (`shell:2616` vs `:3422`) — LOW
- B5 Live `menuHelp` DB probe + UI smoke (currently static + registry-probe only)
- B6 **MainSetup next feature**: run web-checklist overlay (research.md Part B) against `MAIN_SETUP_SIDE_BY_SIDE.md` / `MAIN_SETUP_BUG_REGISTER.md` → gap delta → spec/plan (Constitution I: deviations → PARITY_RECONCILIATION.md)

## Complexity Tracking

No constitution violations — table intentionally empty.
