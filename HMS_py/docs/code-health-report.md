# Code Health Report (PHASE 7)

Generated: 2026-10-08 — scan of `core/` + `ui/` (498 project .py files, `_junk/` excluded)

## Critical

| ID | Finding |
|---|---|
| PY-01 | **`core/excise_gate_pass.py` has `IndentationError` at line 56** (uncommitted edit lost indentation on two `rows = db.query(...)` statements; file will not compile). `python -m compileall core ui` shows this is the **only** syntax error in the codebase. Cascades: `ui/shell.py:2044` → `ui/excise_gate_pass_ui.py:35` → `core/excise_gate_pass.py`, which breaks the whole `_form_registry()` import chain → ~118 test failures/errors across unit/database/UI suites + contributes to the full-suite hang. **Not fixed yet (analysis-first rule).** |

## Error handling

- Bare `except:` — 2 occurrences in `core/` + `ui/`.
- `except ...: pass` — ~203 narrow occurrences (most are typed/justified e.g. `except pyodbc.Error: pass`
  around optional PRs, but the count deserves review; sample reviewed ones are documented reasons).
- `core/db.py connect()` raises generic `RuntimeError` losing the last driver error (see database-analysis PY-11).

## SQL / injection

- All parameterized (`?`) in reviewed paths; identifier f-string interpolation sites checked
  (`core/depart.py:473` hardcoded table tuple; `core/category.py`, `core/city.py` etc. interpolate constant
  column lists). `_validate_identifier` exists in `core/db.py`.
- No `execute("%s" % ...)` or `.format()` SQL found in `core/`.

## Secrets

- No hardcoded passwords found in `core/`/`ui/` quick scan. DB uses Trusted_Connection.
- `core/vb6_logic.py:85 build_connection_string(UID/PWD)` — unused credential-shaped helper (PY-17).
- SMS creds live in DB table `SMSEnviro` (DPAPI spike doc exists) — verify at security pass (PY-17).

## Duplication / dead code

- Duplicate pytest config (pytest.ini vs pyproject.toml) — PY-13.
- `HMS_py/` nested dir contains only `tools/` — near-empty duplicate package dir (PY-15).
- `build_connection_string` dead code (PY-17).

## Environment / hygiene

- 66 uncommitted files (4259+/2312−) including the broken PY-01 file — needs checkpoint commit (PY-02).
- LF/CRLF conversion warnings on ~17 modified files — normalize at commit time (PY-14).
- `ErrorLog.txt` 519 KB at project root, updated same day — runtime error sink not documented (PY-19).

## Circular imports

- None found: full import of `HMS_py.main` succeeds once PY-01 file compiles (registry import is the only break).
