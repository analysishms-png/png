# Database Analysis (PHASE 6)

Generated: 2026-10-08 — **read-only analysis; zero DB changes made or proposed without approval**

## Detected technology

| Item | Value |
|---|---|
| DBMS | Microsoft SQL Server on `Localhost` (Analysis.ini key 1) |
| Database | `Moondata2627` (FY 2026-27, Analysis.ini key 6) |
| Driver | pyodbc 5.1.0, driver chain: SQL Server Native Client 10.0 → ODBC 17 → ODBC 18 (TrustServerCertificate) → SQL Server |
| Auth | `Trusted_Connection=yes` (Windows integrated) — **no password in code/ini** ✓ |
| Connection layer | `core/db.py` — `connect()`, `query()`, `execute()`, `require_absent()`, `contextmanager` tx helper |
| ORM | none — raw parameterized SQL (project rule: parameterized only, ZERO schema change) |
| Tables | 290 (`INFORMATION_SCHEMA.TABLES`) |
| Connectivity test | `SELECT 1` OK, table count OK |

## Configuration source

`Analysis.ini` search order (`core/db.py:_candidate_ini_paths`): `$HMS_ANALYSIS_INI` → project-root ini →
cwd ini → `C:\Drive\HMS2526\Analysis.ini` → package-local ini. Live file found: project root `Analysis.ini`.

## Observations (no changes made)

1. **Failover swallowing**: `connect()` iterates drivers and on total failure raises
   `RuntimeError("Koi SQL Server ODBC driver nahi mila")` without the last `pyodbc.Error` detail —
   root cause hidden on failure (violates "never hide errors") → PY-11.
2. `SET LOCK_TIMEOUT 5000` + `cn.timeout=30` in place (B017 orphan-transaction fix) ✓.
3. Identifier validation exists (`_validate_identifier`, `[A-Za-z0-9_]+`) and is used by `require_absent`/
   f-string table interpolation sites checked (`core/depart.py:473` interpolates only a hardcoded tuple) ✓.
4. `core/vb6_logic.py:85 build_connection_string(...UID/PWD)` — credential-shaped helper with **no callers**
   (dead code; potential future secret-leak pattern) → PY-17.
5. Backup paths: `core/db_backup.py` uses f-strings for `BACKUP LOG`/`DBCC` with `db_name` — verify
   identifier validation before any use (PY-18).
6. No stored-proc migration tooling detected; `migrations/` + `DATABASE_MAPPING_LEDGER.md` track parity manually.
