# 14 - Sale & Marketing - Test Plan & Results

## 1. Commands run (2026-09-25)

```bash
python -m HMS_py.tools.manual_pipeline.collect_logic --module 14_SaleMarketing
# → masters=0 ops=0 reports=0 hidden=0 other=0
#   (module_names=() — Market Segment/Business Source rows Module_Name='Mas' = 02 bucket,
#    discovery 2026-09-25 documented in modules_map comment; registry-based leaves)
# registry_hits: masters=[Market Segment] operations=[Business Source] reports=[]

python -m HMS_py.tools.manual_pipeline.run_module_tests --module 14_SaleMarketing --layers L1,L2b
# → L1 434 passed, L2b 27 passed, fails=0

# capture after leaves fill (was [] → [Market Segment] + [Business Source]):
python -u -m HMS_py.tools.manual_pipeline.capture_module --module 14_SaleMarketing --username SA --password KANPUR
# → login preflight ok / main window up / sidebar 'extras' ok
# → [capture] masters/Market Segment: ok ; [capture] operations/Business Source: ok
# → captured 2 leaves, failed=[] exit=0

python -m HMS_py.tools.manual_pipeline.check_manual --module 14_SaleMarketing
```

## 2. Test layers coverage

| Layer | Suite | Result |
|---|---|---|
| L1 | `tests/unit` (434) | PASS fails=0 |
| L2b | `tests/test_front_office.py` (27) | PASS |

## 3. Known issues / notes

- **module_names=() discovery ruling:** `Market Segment`/`Business Source` rows `Module_Name='Mas'` (02_MainSetup classify bucket) — 14 is a VB6-parity documentation module with registry-based leaves (plan line 1604: discovery-defined, placeholder nahi). Both leaves were NOT among 02's curated 5 captures → no screenshot duplication.
- `Guest Profile` = registry-only (NO ROW) but captured under 02_MainSetup — 14 docs it (frontoffice core) without re-capture.
- No dedicated sidebar section (`sale`/`marketing` key absent in sidebar_buttons/_vb6_order) → capture uses `sidebar='extras'` (plan line 1580).
- KI-1: `guestprof.next_code()` select-then-consume; `MarketSeg`/`BussSource` PK=Code exists-guards (no VNo).
- Data healthy: MarketSeg=10, BussSource=6, GuestProf=7802 (no KI-2 here).
- L1 434 = concurrent workstream's final test count (stable across last 3 module runs).

## 4. Gate checklist (`check_manual --module 14_SaleMarketing`)

REQUIRED: README/DATABASE/FRONTEND/BACKEND/TEST_PLAN/TEST_RESULTS/`_logic.json` + layer READMEs (01_Masters, 02_Operations, 03_Reports); manifest `failed=[]` ✓; 2 leaf PNGs + layer copies; no placeholder markers.
→ Expected `14_SaleMarketing: COMPLETE` (verify output before ledger note → then Step 3 batch gate + Step 4 rollup).
