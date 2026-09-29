# 11 - EPABX - Test Plan & Results

## 1. Commands run (2026-09-25)

```bash
python -m HMS_py.tools.manual_pipeline.collect_logic --module 11_EPABX
# → masters=0 ops=0 reports=0 hidden=0 other=0 (module_names=() — zero menuHelp rows,
#   gap documented in modules_map comment + DATABASE.md §5)
# registry_hits: masters=[Call Type] operations=[Telephone Call Entry] reports=[]

python -m HMS_py.tools.manual_pipeline.run_module_tests --module 11_EPABX --layers L1,L2b
# → L1 434 passed, L2b 27 passed, fails=0 (suite grew 413→434 mid-batch — concurrent
#   workstream's desktop-surface tests now complete and green)

# capture after leaves fix (HMS_py - EPABX Masters = window title, not key → Call Type;
#   sidebar extras → epabx):
python -u -m HMS_py.tools.manual_pipeline.capture_module --module 11_EPABX --username SA --password KANPUR
# → login preflight ok / main window up / sidebar 'epabx' ok
# → [capture] masters/Call Type: ok ; [capture] operations/Telephone Call Entry: ok
# → captured 2 leaves, failed=[] exit=0

python -m HMS_py.tools.manual_pipeline.check_manual --module 11_EPABX
```

## 2. Test layers coverage

| Layer | Suite | Result |
|---|---|---|
| L1 | `tests/unit` (434) | PASS fails=0 |
| L2b | `tests/test_front_office.py` (27) | PASS |

## 3. Known issues / notes

- **module_names=() gap:** zero EPABX rows anywhere in menuHelp (SA template + broad LIKE both 0) — registry-only module; classify buckets all 0 by design. Noted in modules_map comment (discovery ruling 2026-09-25).
- **Plan copy bug fixed:** curated leaf was `HMS_py - EPABX Masters` = epabx_ui window title (epabx_ui:86), not a `_form_registry` key → replaced with `Call Type` (shell:1170); added ops leaf `Telephone Call Entry` (shell:1425); sidebar `extras`→`epabx` (own section, sidebar_buttons.py:70).
- **Data-absent module:** TelCallType/TelCallCode/TelExt/EPABX_Data all **0 rows**; `Location` table missing → `Location-Master` list view (shell:1434) would crash if opened (unguarded) — not captured.
- L1 count drifting 413→434 within batch = concurrent workstream adding tests; final rollup reruns L1 for final numbers.
- KI-1 not exercisable (no data/no VNo counters); KI-2 extreme here.

## 4. Gate checklist (`check_manual --module 11_EPABX`)

REQUIRED: README/DATABASE/FRONTEND/BACKEND/TEST_PLAN/TEST_RESULTS/`_logic.json` + layer READMEs (01_Masters, 02_Operations, 03_Reports); manifest `failed=[]` ✓; 2 leaf PNGs + layer copies; no placeholder markers.
→ Expected `11_EPABX: COMPLETE` (verify output before ledger note).
