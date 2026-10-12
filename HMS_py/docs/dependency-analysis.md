# Dependency Analysis (PHASE 5)

Generated: 2026-10-08

## Stack (detected, not assumed)

PyQt6 desktop app + pyodbc → SQL Server (Windows, ODBC). No web framework.

## Declared vs installed

| Package | requirements.txt | pyproject.toml | Installed (.venv) |
|---|---|---|---|
| requests | 2.31.0 | — | 2.31.0 ✓ |
| PyQt6 | 6.7.1 | 6.7.1 | 6.7.1 ✓ (PyQt6-Qt6 6.7.3, sip 13.12.0) |
| pyodbc | 5.1.0 | 5.1.0 | 5.1.0 ✓ |
| Pillow | 10.4.0 | 10.4.0 | 10.4.0 ✓ |
| pyserial | 3.5 | — | 3.5 ✓ |
| pytest | dev extra ≥7.4 | dev extra | 9.1.1 ✓ |

**No missing packages. No broken third-party imports found. No version conflicts.**

## Issues

1. **Duplicated pytest config**: `pyproject.toml [tool.pytest.ini_options]` is ignored — pytest.ini wins
   (pytest emits `WARNING: ignoring pytest config in pyproject.toml!`). Different `addopts` in each
   (`-v --tb=short` vs `--tb=short`); different `testpaths`. → consolidate (PY-13).
2. `pytest.ini testpaths = HMS_py/tests tests` references a path only valid from the parent dir; from the
   project root only `tests` resolves.
3. **Packaging**: `pyproject.toml [tool.setuptools.packages.find] include = ["*"]` makes `HMS_py.egg-info/top_level.txt`
   list loose top-level names (`core`, `ui`, `tests`, `EGST`, …). Editable install would shadow names. Not runtime-critical → PY-16.
4. `pytest-cov` declared but not installed (only used if `--cov` requested).
5. Python target ≥3.10; venv is 3.11.15 — compatible. System 3.14.4 is irrelevant (venv used).
