# TEST_RESULTS

**Spec §24** — full-suite run record. Har major gate ke baad yeh file refresh
hoti hai; run evidence `python -m pytest` output hai, numbers invent nahi hote.

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
