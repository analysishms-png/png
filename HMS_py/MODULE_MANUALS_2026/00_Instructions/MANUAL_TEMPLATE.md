# MANUAL_TEMPLATE — module manual banane ka SOP (pilot 04_FrontOffice se frozen)

Har module ke liye ye **11 files** banao (root = `MODULE_MANUALS_2026/<NN_Module>/`):
`_logic.json`, `TEST_RESULTS.md`, `screenshots/manifest.json`,
`README.md`, `DATABASE.md`, `FRONTEND.md`, `BACKEND.md`, `TEST_PLAN.md`,
`01_Masters/README.md`, `02_Operations/README.md`, `03_Reports/README.md` (+ `screenshots/`)

## Command sequence (order matters)

1. `python -m HMS_py.tools.manual_pipeline.collect_logic --module <NN_Module>` (cwd `png`)
   → `_logic.json` (menuHelp counts; 'other' bucket ka count README me likho)
2. `python -m HMS_py.tools.manual_pipeline.run_module_tests --module <NN_Module>` (cwd `png`)
   → `TEST_RESULTS.md` + `RUN_TEST_LOG` append
   (Layer table + known issues `00_Instructions/TEST_PLAN_MASTER.md` me add)
3. `python -m HMS_py.tools.manual_pipeline.capture_module --module <NN_Module>` (cwd `png`, LIVE desktop)
   → `screenshots/*.png` + `manifest.json` (failed leaves fix → `modules_map` leaves typo → rerun)
4. Manuals likho — file-by-file: kya source hai:

| File | Source |
|---|---|
| README.md | `_logic.json` counts/leaves + workflow rows core code se + manifest index + TEST_RESULTS link |
| DATABASE.md | live schema queries + core INSERT/UPDATE/SELECT grep + next_vno + menuHelp SQL |
| FRONTEND.md | `ui/shell.py` registry lines + opener module + shortcuts + manifest |
| BACKEND.md | AST public-def list per core file + guards/changelog |
| TEST_PLAN.md | `tests/` mapping + TEST_RESULTS table + 10-step manual script |
| 0x_*/README.md | `_logic.json` layer bucket + 1-2 line functioning + tables + SQL pattern |

> **Citation snapshot policy:** `shell:NNN` line refs = snapshot at doc creation
> (batch 2026-09-25 ~10:00-13:40, pre-push). Concurrent sessions `shell.py`
> refactor karte hain (e.g. 14:21 push `50627a3`, sidebar `mod_target` API hataa)
> to line numbers shift ho sakte hain — resolve **caption/opener name** se pehle
> (capture bhi caption-se hi resolve karta hai, registry intact), line number
> indicative hai. Shell stabilize hone ke baad spot-check + bulk update karo.

5. `python -m HMS_py.tools.manual_pipeline.check_manual --module <NN_Module>` (cwd `png`) — Task 11
6. Section rules: har `##` section ka source upar wali table se; data live hai —
   guess mat karo, query/padho; jo na mile wo "gap" likho (placeholder word use mat karo).

## Layer classification rules (classify())

`R`→reports, `V`→hidden, curated masters/master_modules→masters, curated ops→operations, baki→other (count likhna compulsory)
