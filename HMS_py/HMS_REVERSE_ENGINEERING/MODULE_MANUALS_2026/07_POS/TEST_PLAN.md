# 07 - Point Of Sale - Test Plan & Results

## 1. Commands run (2026-09-25)

```bash
# collect
python -m HMS_py.tools.manual_pipeline.collect_logic --module 07_POS
# → masters=13 ops=0 reports=28 hidden=1 other=12

# tests
python -m HMS_py.tools.manual_pipeline.run_module_tests --module 07_POS --layers L1,L2b
# → L1 410 passed, L2b 27 passed, fails=0 (TEST_RESULTS.md)

# capture (SA/KANPUR) — after modules_map fixes:
#   Restaurant/Outlet Master → Restaurant Master (registry-only, shell:1447)
#   reports [] → ["Sales Register"] (shell:1068 opener)
python -u -m HMS_py.tools.manual_pipeline.capture_module --module 07_POS --username SA --password KANPUR
# → captured 5 leaves, failed=[] exit=0

python -m HMS_py.tools.manual_pipeline.check_manual --module 07_POS
```

## 2. Test layers coverage

| Layer | Suite | Result |
|---|---|---|
| L1 | `tests/unit` (410) | PASS |
| L2b | `tests/test_front_office.py` (27) | PASS |
| L2c/L3 | not in batch (default layers) | — |

## 3. Known issues / notes

- **KI-1 race family** applies to `_next_kot_vno` (per-outlet/day) and Sale1 voucher prefix — same SELECT-then-consume pattern as Finance KI-1.
- `Restaurant Master` has **no menuHelp row** (registry-only leaf, like `GIN / Purchase Receipt`) — menu path caption gap; sidebar root opens the module via registry.
- `ShiftMast` = 0 rows, `HappyHours`/`SchemeMast`/`DeliveryBoy` = 0 — empty-config modules; happy-hours/scheme/delivery flows not exercisable in live DB (manual note only).
- No `TableMast` table in DB — `Table Master` caption exists (POSMas) but storage table name is legacy/absent → CRUD table verification pending (report like KI-2 if tests added).
- L1 count grows per module added (408→410) — registry wiring tests.

## 4. Gate checklist (`check_manual --module 07_POS`)

REQUIRED: README/DATABASE/FRONTEND/BACKEND/TEST_PLAN/TEST_RESULTS/`_logic.json` + 3 layer READMEs — **all present**; manifest `failed=[]` ✓; 5 leaf PNGs + shell + layer copies; no placeholder markers.
→ Expected `07_POS: COMPLETE` (verify output before ledger note).
