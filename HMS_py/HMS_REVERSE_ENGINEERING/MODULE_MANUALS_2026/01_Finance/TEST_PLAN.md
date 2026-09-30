# 01_Finance - Test Plan (module logic)

## 1. Coverage map (feature → test file)

| Feature | Test file | Scope |
|---|---|---|
| Voucher post/VNo/TB/cheque | `tests/database/test_fa_voucher.py` | L2c engine script (9 checks) |
| FA reports (TB group/BS/P&L engine) | `tests/database/test_reports_engine.py` | L2c (447 checks, report-engine wide) |
| Tally XML export | `tests/database/test_tally_export.py` | L2c (22 checks) |
| FA environment settings | `tests/database/test_enviro.py` | L2c (18 checks) |
| TDS scheme/challan/certificate | `tests/database/test_scheme_tds.py` | L2c (9 checks) |
| Receive-payment (PayCharge/PayChargeLog VNo) | `tests/database/test_receive_payment.py` | L2c (12 checks) — KI-9 fixture note |
| Inventory registers (FA-adjacent date/prefix checks) | `tests/database/test_inventory_registers.py` | L2c (8 checks) |
| FA logic units (parity/validation) | `tests/unit/test_wave_a_logic.py` | L1 |
| Full-app L2b | `tests/test_front_office.py` | L2b (FO + shared shell) |

## 2. Layer commands + status

Official run: `run_module_tests --module 01_Finance` (full layers, `TEST_RESULTS.md` 2026-09-25T11:37:01):

| Layer | Command | Result |
|---|---|---|
| L1 | `pytest tests/unit -q --tb=line` | PASS 380 |
| L2 | `pytest tests/database -q --tb=line` | PASS 9 |
| L2b | `pytest tests/test_front_office.py -q --tb=line` | PASS 27 |
| L2c | 9 engine scripts | 5 PASS + **4 FAIL** → fails=4 |
| L3 | `pytest tests/test_wave_ui_forms.py tests/test_ui_walkthroughs.py` | PASS 40 |

L2c FAIL detail (post-cleanup re-runs for exact check names):

| Script | Result | Failing check(s) | Root |
|---|---|---|---|
| `test_fa_voucher` | 8/9 | `V7 TB balanced` | pre-existing assertion (orphan `DKKJV 2026 904` DELETE ke baad bhi fail — app/TB parity issue, out of plan scope) |
| `test_inventory_registers` | 5/8 | T3 date-window 0 rows, T5b vprefix='2025' 0 rows, T6 GIN/POrder empty | KI-2 data-gap |
| `test_reports_engine` | 374/447 | (281s full-run — count-only yahan; 73 report assertions) | KI-1 pre-existing app issue |
| `test_tally_export` | 20/22 | `T6c vouchers>0`, `T10 vouchers balanced 0/0` | KI-3 data-gap |

PASS: `test_enviro` 18/18, `test_receive_payment` 12/12 (KI-9 orphan `DKKREC 2026 743` DELETE ke baad), `test_main_setup_plan` 16/16, `test_room_pk_fixes` 9/9, `test_scheme_tds` 9/9.

## 3. Manual test script (live app, 10 steps)

1. SA se login → sidebar `finance` root → `Ledger Accounts Entry` → naya ledger (`Name` required guard check) → save → `SubGroup` me row.
2. `Group Accounts Entry` → `GroupNature` invalid value (`X`) reject → valid save → `AcGroup` row.
3. `Global Narration` → dup name → `Name Already Exists` guard → unique save → `NarrMast` row.
4. `T.D.S.Category Entry` → limit/% save → `TDSCat` row; delete wapas.
5. `Voucher Entry` → 1-line voucher → `>=2 lines` error; Dr≠Cr → imbalance error → balanced 2-line post → `LedgerM`+`Ledger`+`Voucher_Prefix.Start_Srl_No` incremented.
6. Dobara same type → VNo ek aage (race window note DATABASE.md §4).
7. `Bank Reconciliation` → cheque pending list → mark cleared → `Ledger.Clg_Date` set.
8. `Ledger Adjustment` → pending pair → amount 0 → guard; valid adj → `LEDGERADJ` row; `adj_pending` kam.
9. `Trial Balance` date-range → totals Dr=Cr (fail `V7 TB balanced` ka manual correlate).
10. `Ledger`/`Cash Book` reports engine → rows + print preview; permission: kisi restricted user (menuHelp `Param_Str` `***P` jaisa) se leaf click → rights dialog.

## 4. Known issues / gaps

- **fails=4** (L2c): KI-1 `test_reports_engine` 374/447, KI-2 `test_inventory_registers` 5/8, KI-3 `test_tally_export` 20/22, `test_fa_voucher` 8/9 (`V7 TB balanced`) — KI list `00_Instructions/TEST_PLAN_MASTER.md`.
- **KI-9** (recurrence): `test_receive_payment._preflight_cleanup` `PayCharge` delete karta hai, `PayChargeLog` nahi → VNo reuse + PK duplicate. Fixture suggestion (final summary me user ko relay): `DELETE FROM PayChargeLog WHERE DocId LIKE 'DKKREC%' AND U_Name='PYADMIN'`. Orphan `DKKREC   2026     743` DELETE user-approved se clear (2 runs).
- `Ledger Adjustment` ka menuHelp row nahi (registry-only) — permission SQL us caption par khali; `LedgerRef`/`TDSChal`/`TDSCerti` tables empty (data-gap).
- `other=8` bucket: Finance/Reports/Tally Reports group headers + Expense Voucher + TDS Challan/Certificate + Transaction — capture me shamil nahi (curated leaves sirf registry hits).
- Orphan `DKKJV 2026 904` DELETE: user-approved + executed (progress ledger), `test_fa_voucher` unblocked.
