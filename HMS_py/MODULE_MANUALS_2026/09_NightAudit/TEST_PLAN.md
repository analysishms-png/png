# 09 - Night Audit - Test Plan & Results

## 1. Commands run (2026-09-25)

```bash
python -m HMS_py.tools.manual_pipeline.collect_logic --module 09_NightAudit
# → masters=0 ops=1 reports=8 hidden=0 other=21

python -m HMS_py.tools.manual_pipeline.run_module_tests --module 09_NightAudit --layers L1,L2b
# → fails=0 (TEST_RESULTS.md)

# capture after leaf fix: Night Audit Reports → Occupancy Analysis (shell:1073 `_na`;
#   Night Audit Log kept — shell:1071)
python -u -m HMS_py.tools.manual_pipeline.capture_module --module 09_NightAudit --username SA --password KANPUR
# → captured 2 leaves, failed=[] exit=0

python -m HMS_py.tools.manual_pipeline.check_manual --module 09_NightAudit
```

## 2. Test layers coverage

| Layer | Suite | Result |
|---|---|---|
| L1 | `tests/unit` | PASS (fails=0) |
| L2b | `tests/test_front_office.py` | PASS (fails=0) |

## 3. Known issues / notes

- modules_map fix: `Night Audit Reports` was a **non-existent key** → `Occupancy Analysis` (shell:1073; reports bucket row + registry `_na`).
- Both curated leaves open the same `NABrowser` (`_na` = `pna.open_na`) — Night Audit Log and Occupancy Analysis are window-family identical (documented in FRONTEND).
- `Night Audit Process`/`Control Panel`/`Charges Posting`/`Account Posting` → `nightaudit_reports_ui` (not captured — curated leaves cover representative op+report).
- **KI-1 race family:** `_get_voucher_prefix` (nightaudit:380), `_next_vno` (:129), `folio.next_billno` (:27).
- Reverse NA = critical `Enviro.NCur - 1` flow (VB6 frmReNightAudit) — interactive confirm only, not captured (would need dialog handling).
- Empty/rare tables: `NightAuditLog=134` (healthy), `Enviro=1` (singleton), folio line tables sparse — year-end flows not exercisable live (date-lock guard `check_datelock`).

## 4. Gate checklist (`check_manual --module 09_NightAudit`)

REQUIRED: README/DATABASE/FRONTEND/BACKEND/TEST_PLAN/TEST_RESULTS/`_logic.json` + 3 layer READMEs; manifest `failed=[]` ✓; leaf PNGs + layer copies; no placeholder markers.
→ Expected `09_NightAudit: COMPLETE` (verify output before ledger note).
