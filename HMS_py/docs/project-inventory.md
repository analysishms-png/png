# HMS_py — Project Inventory (PHASE 3)

Generated: 2026-10-08 (analysis only, no code modified)

## Identity

| Item | Value |
|---|---|
| Project root | `C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py` |
| Type | Desktop GUI app — Python port of VB6 HMS (same SQL Server DB) |
| Git | yes — branch `pr/demo-entry-vb6-parity`, **66 uncommitted changed files** (33 tracked: +4259/−2312 lines) |
| Python | 3.11.15 (project `.venv`), system python 3.14.4 (unused) |
| Package name | `HMS_py` (run from **parent** dir: `python -m HMS_py.main`) |

## Layout

| Path | Contents |
|---|---|
| `main.py` | entry point (Login → Company select → shell) |
| `core/` | 176 modules — business logic + DB access (thin `core/db.py` layer) |
| `ui/` | 145 modules — PyQt6 forms/dialogs + `shell.py` menu/registry |
| `tests/` | 1238 tests: `unit/` 1007, `database/` 98, root UI tests 133, `integration/` 0, `regression/` 0 |
| `docs/` | channel/DPAPI design docs (this repair set added here) |
| `specs/` | Spec Kit artifacts (`.specify/`, `specs/004-finance-parity/` …) |
| `Reports/`, `Temp/`, `Image/` | runtime folders (created from Analysis.ini keys 2/3/10) |
| `_junk/` | parked non-runtime artifacts (previous cleanup commit) |
| root `*.md` | migration ledgers, VB6 parity matrices, bug registers (~30 files) |

## Configuration

- `Analysis.ini` `[HMS]` keys: 1=server, 2=reports, 3=temp, 4=printer, 5=backup, 6=database, 7=company, 8=site, 9=sidebar module list, 10=image. Same file VB6 HMS reads.
- `pytest.ini` (414 B) **overrides** `pyproject.toml [tool.pytest.ini_options]` (pytest warns) — duplicated config.
- `.venv/` is the project venv; deps pinned in `requirements.txt` + `pyproject.toml`.

## Not present

- No web framework (no FastAPI/Flask/Django), no Node/React, no SQLAlchemy, no migrations framework (`migrations/` dir exists but no alembic config found), no CI config beyond `.github/`.
