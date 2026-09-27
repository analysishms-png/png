# 13 - Members Management - Test Plan & Results

## 1. Commands run (2026-09-25)

```bash
python -m HMS_py.tools.manual_pipeline.collect_logic --module 13_MembersMgmt
# → masters=4 ops=0 reports=0 hidden=0 other=2

python -m HMS_py.tools.manual_pipeline.run_module_tests --module 13_MembersMgmt --layers L1,L2b
# first run: FAIL L1 "1 error in 1.45s" (exit=2) — transient: concurrent workstream's
#   untracked desktop-surface TDD test mid-edit (test_main_setup_desktop_ui.py evolving
#   error→property→button asserts across runs); rerun after their test went green:
# → L1 413 passed, L2b 27 passed, fails=0 (TEST_RESULTS.md rewritten)

# capture after masters leaf add: [] → [Member Select Category] (shell:1526)
python -u -m HMS_py.tools.manual_pipeline.capture_module --module 13_MembersMgmt --username SA --password KANPUR
# → captured 2 leaves, failed=[] exit=0 (sidebar 'extras')

python -m HMS_py.tools.manual_pipeline.check_manual --module 13_MembersMgmt
```

## 2. Test layers coverage

| Layer | Suite | Result |
|---|---|---|
| L1 | `tests/unit` (413) | PASS (fails=0 after rerun) |
| L2b | `tests/test_front_office.py` (27) | PASS |

## 3. Known issues / notes

- **Cross-session interference (this run):** another workstream has uncommitted/untracked WIP in this repo (`desktop_style.py`, `test_main_setup_desktop_ui.py` untracked; `voucher_environment_ui/base_master/hr_members_ui/revenue_budget_ui/seasonmaster_ui/shell` modified; HEAD advanced to `3403012` Channel-Manager/DPAPI commits — beyond plan BASE `4f138719`). Their TDD test was RED during my first L1 run and went GREEN before rerun — documented, not a module regression. **Final rollup should rerun full L1 once more.**
- `Member Billing` = registry-only leaf (menuHelp NO ROW; aliases :1584-1587 share opener).
- `Member Master` blocked (`_coming_soon`, no DB table) — masters capture uses `Member Select Category` instead.
- Sparse data (KI-2 analog): `MemBill=0`, `FacilityMast/FacilityBill=0`, `MemCatMast=1`, `MemFacilityMast/MembershipRevMast/MemProposedMemInf=0`; `MemberFamily=37`, `RevMast=174` healthy.
- `MemBill.vno` + `FacilityBill.vno` = KI-1 family.

## 4. Gate checklist (`check_manual --module 13_MembersMgmt`)

REQUIRED: README/DATABASE/FRONTEND/BACKEND/TEST_PLAN/TEST_RESULTS/`_logic.json` + layer READMEs (01_Masters, 02_Operations, 03_Reports); manifest `failed=[]` ✓; 2 leaf PNGs + layer copies; no placeholder markers.
→ Expected `13_MembersMgmt: COMPLETE` (verify output before ledger note).
