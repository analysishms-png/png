# 10 - HR & Payroll - Test Plan & Results

## 1. Commands run (2026-09-25)

```bash
python -m HMS_py.tools.manual_pipeline.collect_logic --module 10_HRPayroll
# → masters=4 ops=0 reports=9 hidden=0 other=9

python -m HMS_py.tools.manual_pipeline.run_module_tests --module 10_HRPayroll --layers L1,L2b
# → fails=0 (TEST_RESULTS.md)

# capture after leaf fixes: HR Payroll Operations → HR Payroll (shell:1494, old key nahi tha),
#   reports [] → [Pay Slip] (menu_caption_map spread shell:1512; reports.py:1370)
python -u -m HMS_py.tools.manual_pipeline.capture_module --module 10_HRPayroll --username SA --password KANPUR
# → captured 3 leaves, failed=[] exit=0

python -m HMS_py.tools.manual_pipeline.check_manual --module 10_HRPayroll
```

## 2. Test layers coverage

| Layer | Suite | Result |
|---|---|---|
| L1 | `tests/unit` | PASS (fails=0) |
| L2b | `tests/test_front_office.py` | PASS (fails=0) |

## 3. Known issues / notes

- modules_map fix: `HR Payroll Operations` was a **non-existent key** → `HR Payroll` (shell:1494, registry-only; menuHelp NO ROW).
- `Pay Slip` report leaf resolves via `menu_caption_map` dict-spread (shell:1512) — not a literal shell line (captured `ok`).
- Empty tables (data-gap, KI-2 analog): `Holiday=0`, `Attendence=0`, `Loan=0`, `SalaryLog=0` — holiday/loan/monthly-attendance flows not exercisable live.
- `Leave` caption has a **cross-module row** (`NightAuditLR` alongside `PayOpr`) — menuHelp caption sharing across modules (like `Sales Register` POS/BanqRep).
- `Attendence` misspelling + `Category  Master` double-space are VB6 parity strings — do not "fix".
- `Salary` upsert = delete+insert race (no lock) — noted in BACKEND §4.

## 4. Gate checklist (`check_manual --module 10_HRPayroll`)

REQUIRED: README/DATABASE/FRONTEND/BACKEND/TEST_PLAN/TEST_RESULTS/`_logic.json` + 3 layer READMEs; manifest `failed=[]` ✓; 3 leaf PNGs + layer copies; no placeholder markers.
→ Expected `10_HRPayroll: COMPLETE` (verify output before ledger note).
