# Test Report (PHASE 15)

## Baseline v1 — before any repair (2026-10-08, pytest 9.1.1, live DB)

| Suite | Passed | Failed | Errors | Blocked | Skipped |
|---|---|---|---|---|---|
| `tests/unit` (minus hang file) | 918 | 60 | 12 | — | 1 |
| `tests/unit/test_merge_reverse_ui.py` | 2 seen | 0 | 0 | **16 (HANG PY-03)** | — |
| `tests/database` | 96 | 2 | 0 | — | 0 |
| root `tests/test_*.py` | 89 | 10 | 34 | — | 0 |
| **Total** | **~1105** | **~72** | **46** | **16** | **1** |

Full suite could not complete (killed at 540 s — PY-03 hang). ~118 of the
failures/errors were one cascade: `core/excise_gate_pass.py` IndentationError (PY-01)
breaking `ui/shell.py:2044 _form_registry()`.

## Baseline v2 — after PY-01 fix (2026-10-08, same env, split runs)

| Suite | Passed | Failed | Errors | Blocked | Skipped | Wall |
|---|---|---|---|---|---|---|
| `tests/unit` (minus hang file) | **986** | 4 | 0 | — | 1 | 114 s |
| `tests/database` | **98** | 0 | 0 | — | 0 | 146 s |
| root `tests/test_*.py` | **131** | 2 | 0 | — | 0 | 67 s |
| `tests/unit/test_merge_reverse_ui.py` | — | — | — | **16 (PY-03)** | — | killed |
| **Total** | **1215** | **6** | **0** | **16** | **1** | ~5.4 min |

**Δ: −66 failed, −46 errors.** Collection clean; database suite fully green.

### Remaining 6 failures (all diagnosed, distinct causes)

| # | Test | Cause | Plan |
|---|---|---|---|
| 1–2 | `test_vb6_shell_frame::test_rail_captions_are_vb6_whitelist_only` / `test_rail_drops_legacy_roots_and_duplicate_caption` | WIP added EPABX/Messaging/Members Mgmt to `_RAIL_ORDER`; VB6 live rail SQL returns exactly 11 modules — **tests correct, WIP wrong** | revert 3-line WIP addition (see diagnosis) |
| 3 | `test_menuhelp_sidebar_live::test_sidebar_click_menubar_menuhelp_sa` | WIP made top menubar rebuild per module; test locks UI-MS-TOPMENU persistence — **VB6 source favors WIP rebuild** | needs user decision (spec reversal) |
| 4 | `test_seasonmaster_parity::test_get_weekend_uses_current_logsite_only` | WIP added `OR LogSite_Code='HO'` to SQL; parity test locks old SQL | verify VB6 truth, fix loser |
| 5–6 | `test_mainsetup_batch_d_enviro::test_update_settings_writes_new_columns` / `test_new_yn_columns_validate` | **Real code bug**: `core/enviro.py:389` uses `db.func.getdate()` — `AttributeError` (no such attr in raw-pyodbc layer) → `update_settings()` crashes | fix to `getdate()` in SQL only (param already unused by SQL text) |

### Flake/nondeterminism observed (PY-12)
- Baseline v1 unit run: 60 failed vs 62 failed on identical rerun.
- `test_mainsetup_batch_d_enviro` pair: passed in first suite run, failed later —
  order/state dependent (root cause: the `db.func` crash path is reached only when
  audit columns present / earlier import state differs).

### Notes
- `tests/integration` and `tests/regression` collect 0 tests (empty shells).
- pytest warns `ignoring pytest config in pyproject.toml!` (duplicate config, PY-11).
- Warnings: pytest 10 deprecation (class-scoped fixture as instance method) in some test.
