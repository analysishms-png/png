# Startup Analysis (PHASE 4)

Generated: 2026-10-08

## Correct command

```bash
cd "C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py"   # PARENT dir
HMS_py/.venv/Scripts/python -m HMS_py.main
```

**Must be run from the parent directory.** The package `HMS_py` is the inner folder; running
`python -m HMS_py.main` from inside the project root fails with:

```
ModuleNotFoundError: No module named 'HMS_py.main'
```

(`requirements.txt` line "Run: python -m HMS_py.main" does not say this → doc bug PY-04.)

## Result

| Check | Result |
|---|---|
| `import HMS_py.main` (from parent dir) | OK |
| App process start | OK — starts, no stdout/stderr output, stays alive ≥12 s |
| Exit code / traceback | none |
| DB connection at startup | OK (Localhost / Moondata2627, 290 tables) |

**No P0 startup crash.** Application is currently runnable.

## Notes

- Default on Windows is Qt **offscreen** unless `HMS_GUI=1` is set (`main.py:configure_qt_headless`).
  A plain double-click style run shows no window unless `HMS_GUI=1`. Intentional for QA? → verify (PY-05).
- App emits no startup log lines; failures would be silent. `ErrorLog.txt` (519 KB, updated 2026-10-08)
  is written by some runtime path — worth wiring into a documented log (PY-19).
- UI-time smoke test (open login window, click through) NOT performed here — needs GUI session (`HMS_GUI=1`).
