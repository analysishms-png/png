# Master Test Plan (coverage matrix)

## Layers

| Layer | Scope | Command (cwd) | DB? |
|---|---|---|---|
| L1 unit | no DB, pure logic | `python -m pytest tests/unit -q` (cwd `png\HMS_py`) | no |
| L2 db pytest | live DB, rollback fixtures | `python -m pytest tests/database -q` (cwd `png\HMS_py`) | yes (rollback) |
| L2b FO flow | check-in/checkout/folio flows | `python -m pytest tests/test_front_office.py -q` | yes |
| L2c db script | `main()`-style proof scripts (snapshot/restore/cleanup) | `python tests/database/<file>.py` (cwd `png\HMS_py`) | yes (snapshot→restore) |
| L3 UI | widget instantiation (offscreen) | `python -m pytest tests/test_wave_ui_forms.py tests/test_ui_walkthroughs.py -q` | no |
| L4 live capture | real desktop windows + image validation | `python -m HMS_py.tools.manual_pipeline.capture_module --module <NN_Module>` (cwd `png`, LIVE desktop) | login only |

Ek command me sab (FO pilot):
```powershell
python -m HMS_py.tools.manual_pipeline.run_module_tests --module 04_FrontOffice   # L1..L3, TEST_RESULTS.md + RUN_TEST_LOG append
python -m HMS_py.tools.manual_pipeline.capture_module --module 04_FrontOffice      # L4, screenshots/ + manifest.json
```

L2c script files (9): test_enviro, test_fa_voucher, test_inventory_registers, test_main_setup_plan, test_receive_payment, test_reports_engine, test_room_pk_fixes, test_scheme_tds, test_tally_export.

## Per-module matrix (fill as batches complete)

| Module | TEST_RESULTS.md | L4 manifest | Known issues |
|---|---|---|---|
| 04_FrontOffice | ✅ 2026-09-25: L1 334 / L2 6 / L2b 27 / L3 40 PASS; L2c 5 fails (see below) | ✅ 18 items, failed=[], 16 shots + 2 skipped_messagebox | see Known issues |
| 01_Finance | pending (Task 12) | pending | |
| 02_MainSetup | pending | pending | |
| 03_Reservation | pending | pending | |
| 05_HouseKeeping | pending | pending | |
| 06_Inventory | pending | pending | |
| 07_POS | pending | pending | |
| 08_Banquet | pending | pending | |
| 09_NightAudit | pending | pending | |
| 10_HRPayroll | pending | pending | |
| 11_EPABX | pending | pending | |
| 12_Messaging | pending | pending | |
| 13_MembersMgmt | pending | pending | |
| 14_SaleMarketing | pending | pending | |

## Known issues log (no silent skips)

Run: 2026-09-25, full L1..L3 via `run_module_tests` (evidence: `00_GLOBAL/RUN_TEST_LOG.md` + `04_FrontOffice/TEST_RESULTS.md`).

| # | Item | Detail | Class |
|---|---|---|---|
| KI-1 | L2c `test_reports_engine` | 370/445 PASS (75 report assertions failing) | pre-existing app issue — app fix out of plan scope |
| KI-2 | L2c `test_inventory_registers` | 5/8 — T3 date-window 0 rows, T5b vprefix='2025' 0 rows, T6 GIN/POrder empty in DB | data-gap (DB me test data nahi) |
| KI-3 | L2c `test_tally_export` | 20/22 — T6c vouchers>0, T10 balanced 0/0 | data-gap |
| KI-4 | L2c `test_fa_voucher` | orphan `Ledger` row `DocId='DKKJV   2026      904', V_SNo=2, Narration='cash dep'` DELETE executed 2026-09-25 (user-approved) — ab bhi 8/9: failing check `V7 TB balanced` (pre-existing TB parity assertion, app fix out of plan scope) | pre-existing assertion — out of plan scope |
| KI-5 | L2c `test_enviro` | run1 17/18, immediate rerun 18/18 (incl SNAPSHOT RESTORED) — order/flaky | flaky — Enviro row verified stable `('No','10:00',0)` |
| KI-6 | `tests/unit/test_seasonmaster_parity.py` | one full-suite run me 2 fails (seasonmaster read-only dialog), dobara green — order/DB-dependent | flaky unit test |
| KI-7 | L4 skipped leaves (FO) | `Guest Registration`, `Reservation Status Report` → coming_soon/inactive QMessageBox (`skipped_messagebox`) | documented gap — manual me "gap" note |
| KI-8 | App gap: fd_forms_ui no-show | `Room Check Out`/`Guest Ledger` (poore fd_forms_ui ke openers) window construct karke `.show()` nahi karte — real app me bhi invisible. Capture tool rescue se screenshot leta hai. | pre-existing app bug — out of plan scope |
| KI-9 | L2c `test_receive_payment` recurrence | `_preflight_cleanup` `PayCharge` delete karta hai `PayChargeLog` nahi → VNo reuse + PK duplicate. Orphan `DocId LIKE 'DKKREC%'` (`DKKREC   2026     743`) DELETE executed 2026-09-25 (user-approved, 2 runs se). Future full-run fixture: `DELETE FROM PayChargeLog WHERE DocId LIKE 'DKKREC%' AND U_Name='PYADMIN'` (app test fix out of plan scope) | test-state pollution — fixture gap documented |

## Baseline numbers (2026-09-25)

- L1 unit: 334 tests (pipeline ke 13 naye tests included) — green
- L2: 6 (ratelist 4 + collect_logic_live 2) — green
- L2b: 27 — green
- L3: 40 — green
- L4 FO: 18 leaves attempted, 16 ok, 2 skipped_messagebox, 0 failed, 0 invalid images
