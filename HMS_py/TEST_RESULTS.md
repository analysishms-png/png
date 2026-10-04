# TEST_RESULTS

**Spec §24** — full-suite run record. Har major gate ke baad yeh file refresh
hoti hai; run evidence `python -m pytest` output hai, numbers invent nahi hote.

## Run 2026-10-03 (Phase 11 loop — fdPostChrg batch posting parity)

- **Command:** `QT_QPA_PLATFORM=offscreen python -m pytest tests -q`
- **Result:** **1097 passed, 1 skipped, 0 failed** (585.57s ≈ 9m46s)
- **Delta vs 1081:** +16 = **+11 this iteration** —
  `tests/database/test_fdpostchg_posting.py` (6 rollback-safe DB-state:
  exactly-once across 2 runs w/ progress cb contract, VB6 row-shape +
  2.5% tax stamps (BUG-AUD-10/11), own-connection induced-failure
  rollback → zero rows via fresh conn, exception propagation, billed
  guard positive/negative, `Comp='Y'` skip) +
  `test_wave_ui_forms.py::TestPostingFormsUi` +5 (caption/Date-For
  widgets + manual-entry absence, Enviro gate blocks engine, billed
  guard exact message, nothing-to-post, success progress label +
  summary) — **+5 concurrent Main Setup session** (`test_plan_definition.py`
  etc. touched 19:51:08 mid-run; attribution not separable without re-run).
- **Also updated (GST evidence):** `tests/unit/test_core_validation.py::
  TestFolioRoomCharge` (3000 → 75+75 per leg) + 2 checkout-balance
  guards (550 → 525), `tests/database/test_receive_payment.py` T8
  (1.10 → 1.05).
- **Targeted:** fdpostchg + TestFolioRoomCharge + receive_payment +
  TestPostingFormsUi → **16 passed**; neighborhood (tests/database +
  core_validation + nightaudit fixtures/parity + wave_ui) → 225 passed,
  2 failed → fixed (`folio._pc` INSERT marker count) → green.
- **BUG-AUD-08:** shell.py hash changed mid-iteration
  (`A7F192D456C8481E` → `7D535A25919C6B2D` @19:51:08, concurrent
  session) → **parity regen deferred** this iteration; loop log +
  BUG-AUD-10/11 in `PARITY_RECONCILIATION.md`.

## Run 2026-10-03 (Phase 11 loop — fdCheckIn arrivals lookup)

- **Command:** `python -m pytest tests -q`
- **Result:** **1081 passed, 1 skipped, 0 failed** (462.37s ≈ 7m42s)
- **Delta vs 1077:** +4 = `tests/database/test_reservation_arrivals.py`
  (3 rollback-safe DB-state: per-room GrpBookingDetails write w/ live
  19/19 evidence, arrivals lifecycle per-SNO exit + BookingSno [1,2],
  overdue/cancel/name filters) + `test_wave_ui_forms.py::
  test_lookup_reservation_arrivals_and_checkin_prefill` (arrivals grid →
  early-arrival warn → walk-in prefill wiring).
- **Targeted:** `tests\database\test_reservation_arrivals.py tests\
  test_wave_ui_forms.py::TestFdFormsUi` → 9 passed.

## Run 2026-10-03 (Phase 11 loop — fdWalkInEntry field-map extension)

- **Command:** `python -m pytest tests -q`
- **Result:** **1077 passed, 1 skipped, 0 failed** (338.33s ≈ 5m38s)
- **Delta vs audit run (1074):** +3 = `tests/database/test_walkin_parity.py`
  (2 rollback-safe DB-state tests) + `test_wave_ui_forms.py::
  test_walkin_checkin_passes_field_map_fields` (UI→core wiring).
- **Targeted:** `tests/database/test_walkin_parity.py tests/test_wave_ui_forms.py`
  → 25 passed; `tests/unit/test_core_validation.py tests/test_validation_crud.py`
  → 104 passed, 1 skipped (checkin regression clean).
- **Note:** green ≠ VERIFIED (P6) — fdWalkInEntry verdict = PARTIAL
  (G3 PlanDetails/G4 new GuestProf/G5 rail/G6 nationality open) — see
  `PARITY_RECONCILIATION.md` Phase 11 loop log.

## Run 2026-10-03 (independent parity audit pass)

- **Command:** `PYTHONPATH="C:\...\PROJECT_REPAIR - Copy\HMS_py" QT_QPA_PLATFORM=offscreen python -m pytest -q`
- **Result:** **1074 passed, 1 skipped, 0 failed** (270.33s ≈ 4m30s)
- **Log:** `_audit_pytest_run.txt` (0 FAILED/ERROR lines, 7 warnings — same
  hygiene warnings as prior run: 5x return-not-None, 1x utcnow, 1 summary)
- **Note (audit):** green suite ≠ parity proof (constitution P6); forms
  VERIFIED count is still 0 — see `PARITY_RECONCILIATION.md`.

## Run 2026-10-03 (spec-kit ledger batch)

- **Command:** `PYTHONPATH=".." QT_QPA_PLATFORM=offscreen python -m pytest -q`
- **Result:** **1062 passed, 1 skipped, 0 failed** (358.55s ≈ 5m58s)
- **Python:** 3.14.4 | **PyQt6:** 6.7.1 | platform: offscreen
- **Skip:** 1 (pre-existing conditional skip, unchanged from baseline)
- **Warnings:** 7 — 5x `PytestReturnNotNoneWarning` in
  `tests/database/test_main_setup_isolation.py` (tests `return bool` instead of
  `assert` — hygiene, not failure), 1x `datetime.utcnow()` DeprecationWarning in
  `ui/general_setup_tabs_ui.py:230`, 1 summary dup.

### Failures found & fixed in this session (before the green run)

| Test | Root cause | Fix |
|---|---|---|
| `test_coming_soon_conversion::test_blocked_leaves_stay_documented` | `Godrej Locks` + `Item Issued On Cleaning` wired to real openers although `DoorLockEnviro`/`GodrejLockOperations`/`DepartWiseItemIssueList` all verified ABSENT in live DB (42S02) and Godrej UI read/write is a `# Simulate` stub (constitution P6 violation) | `ui/shell.py`: moved both leaves into the documented `**{cap: _coming_soon(cap)}` BLOCKED spread with dated evidence comments |
| `test_bugfix_batch::test_no_direct_coming_soon_entries_left` | same edit initially made them *direct* `_coming_soon` entries (forbidden) | re-homed into the spread dict — both tests now pass together |
| `test_general_setup_tabs::test_parameter_lookup_displays_name_and_retains_code` | lookup widget got `FIELD_MAXLEN["RoomChrgDueAc"]=8` (CODE column width) but displays picked NAME → "Room Charge Account" clipped to "Room Cha" | `ui/general_setup_tabs_ui.py`: lookup display fields use `setMaxLength(255)`, not the code-column maxlen |

### Verification commands used

```
python _gen_ledgers.py                  # DATABASE 262 rows, PROCEDURE 32/396/619
pytest tests/unit/test_coming_soon_conversion.py tests/unit/test_general_setup_tabs.py  # 47 passed
pytest test_bugfix_batch + coming_soon + general_setup + wrong_target + main_setup      # 119 passed
pytest -q                                # 1062 passed, 1 skipped
```

## Standing rules

- Yeh file sirf actual run output se update hoti hai; hand-written numbers nahi.
- Pre-commit hook (`_qa/sweep_ui_bugs.py --fast --subprocess`) har commit par
  chalta hai; rc=124 timeout warning benign hai (hook me 540s budget).
