# 06 - Inventory - Test Plan & Results

## 1. Commands run (2026-09-25)

```bash
# collect (after modules_map leaf rename Indent Master→Indent, Purchase Receipt / GIN→GIN / Purchase Receipt)
python -m HMS_py.tools.manual_pipeline.collect_logic --module 06_Inventory
# → masters=5 ops=1 reports=0 hidden=0 other=17

# tests (cwd = png\HMS_py)
python -m pytest HMS_py/tests/unit/test_manual_pipeline.py -q          # 15 passed
# run_module_tests --module 06_Inventory --layers L1,L2b → fails=0 (TEST_RESULTS.md)

# capture (after party-name fix + modules_map fix; SA/KANPUR)
python -u -m HMS_py.tools.manual_pipeline.capture_module --module 06_Inventory --username SA --password KANPUR
# → captured 6 leaves, failed=[] exit=0

# gate
python -m HMS_py.tools.manual_pipeline.check_manual --module 06_Inventory   # see §4
```

## 2. Test layers coverage

| Layer | Suite | Result |
|---|---|---|
| L1 | unit (validation, registry wiring, item/unit/sundry) | pass (fails=0) |
| L2b | shell wiring (sidebar/shortcuts/report spreads) | pass (fails=0) |
| L2c | `tests/database/test_inventory_registers.py` | **NOT run in batch** — 5/8 fail = KI-2 data-gap (`vprefix='2025'` has 0 rows; 2026 data only) |
| L2 | API/CLI | default `run_module_tests` layers — not re-run here (L1+L2b only per pilot pattern for remaining modules) |
| L3 | finance/tally not applicable | — |

## 3. Known issues touching this module

- **KI-2** (`00_Instructions/TEST_PLAN_MASTER.md`): inventory register tests depend on `vprefix='2025'` fixture rows — absent in live `Moondata2627` → `5 failed, 3 passed` style results; not a code regression. Seed fix or prefix-agnostic assertion needed.
- **Port bug fixed (this session):** `GINForm.reload` `party_name` KeyError → `party` (ui:484). Regression-guard gap: no unit test asserts `purchase_list()` return keys — add later if TDD for core inventory.
- Registry/report-caption mismatch: `Stock Summary`/`Stock Register`/`Purchase Register` registry hits exist (shell:1169-1171) but classify `reports=0` (menuHelp rows Flag/Module `MatRep` vs classify buckets) — cosmetic in `_logic.json`, does not block capture.

## 4. Gate checklist (`check_manual --module 06_Inventory`)

REQUIRED files: README.md, DATABASE.md, FRONTEND.md, BACKEND.md, TEST_PLAN.md, TEST_RESULTS.md, `_logic.json`, layer READMEs (01_Masters, 02_Operations, 03_Reports) — **all present**; manifest `failed=[]` ✓; PNGs valid (6 shell/leaf + 3 layer copies); no placeholder markers in .md.
→ Expected `06_Inventory: COMPLETE` (verify output before ledger note).
