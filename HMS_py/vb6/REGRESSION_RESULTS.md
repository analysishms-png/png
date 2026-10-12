# REGRESSION_RESULTS

**Spec §25** — regression protection record: kaunsi existing behavior dobara
verify hui hai jab naya change aaya. Constitution P10 (Regression Protection):
bina yahan entry ke change "verified" nahi maana jaata.

## Run 2026-10-03 — spec-kit ledger batch + 2 suite fixes

**Baseline vs after:** pehle full run me 2 failures the (ledger batch ke dauran
pakde gaye); fixes ke baad:

| Check | Result |
|---|---|
| Full suite | **1062 passed / 0 failed / 1 skipped** (baseline 1060+2failed → green) |
| Registry integrity (`test_wrong_target_wiring`) | PASS — `_form_registry()` builds, 738+ entries |
| Coming-soon policy (`test_bugfix_batch` + `test_coming_soon_conversion`) | PASS — BLOCKED leaves documented, zero direct `_coming_soon` entries |
| Main Setup desktop UI (`test_main_setup_desktop_ui`) | PASS |
| Tax Master/Structure VB6 parity (`test_taxmaster/taxstru_vb6_parity`) | PASS (included in 1062) |
| Package/Plan browse (`test_package_plan_parity`) | PASS (included in 1062) |

## Behavior protected by this batch's edits

| Edit | Regression risk | Protection evidence |
|---|---|---|
| `ui/shell.py` BLOCKED spread (Godrej Locks, Item Issued On Cleaning) | leaves going back to documented skip could hide live UIs | both BLOCKED tests + registry tests pass; VB6 UI ports still on disk (`frm_lock_godrej_settings_ui.py`, `frm_item_issued_on_cleaning_ui.py`) for later wiring |
| `general_setup_tabs_ui.py` lookup maxLength 255 | could over-lengthen CODE entry fields | code fields unaffected — change is inside `ftype == "lookup"` branch only; 47 tab tests pass |
| `_gen_ledgers.py` rewrite | ledger drift | regenerated numbers match source report exactly: 262 tables (25+236+1), 32 modules, 396 D5a, 619 D5b |

## Previous regression entries (this session)

| Batch | Verified with |
|---|---|
| Commit `a9b0b18` Tax Master/Structure parity | 82 tests pre-commit |
| Commit `bec15d1` BUG-MS-01..06 | probe script + 101 tests |
| Commit `4bd573f` BUG-MS-07/08 | registry OK (738 entries) + 54 tests |

## Standing rules

- Har commit par pre-commit hook `sweep_ui_bugs --fast` chalta hai — wo
  regression ka pehla darwaza hai; yeh file uske + full-suite results rakhti hai.
- Parallel-agent overwrites se guard: `git checkout HEAD -- <path>` when stubs
  appear; phir yeh dobara chalana zaroori (evidence fresh honi chahiye).
