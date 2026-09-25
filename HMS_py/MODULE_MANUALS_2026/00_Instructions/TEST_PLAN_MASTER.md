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
| 01_Finance | ✅ 2026-09-25: L1 380 / L2 9 / L2b 27 / L3 40 PASS; L2c 4 fails (fa_voucher, inventory, reports, tally) | ✅ 10 items, failed=[], 10 ok | KI-1 `_next_vno`/`_get_voucher_prefix` family; KI-2/KI-3 data-gap L2c |
| 02_MainSetup | ✅ L1 385 / L2b 27 PASS (pehla run flaky fail → immediate rerun green, KI-6 family) | ✅ 5 items, failed=[], 5 ok | — |
| 03_Reservation | ✅ L1 380 / L2b 27 PASS | ✅ 7 items, failed=[], 4 ok + 3 skipped_messagebox | KI-7-family: 3 coming_soon leaves |
| 05_HouseKeeping | ✅ L1 408 / L2b 27 PASS | ✅ 1 item, failed=[], 1 ok | single-leaf module (Room Status) |
| 06_Inventory | ✅ L1 408 / L2b 27 PASS | ✅ 6 items, failed=[], 5 ok + 1 skipped_messagebox (Stock Summary) | KI-1 indent `_next_vno`; KI-2 register data-gap; GINForm `party`-key port-bug fixed (ui/inventory.py:484) |
| 07_POS | ✅ L1 410 / L2b 27 PASS | ✅ 5 items, failed=[], 5 ok | KI-1 `_next_kot_vno` pos.py:306; empty ShiftMast/HappyHours/SchemeMast/DeliveryBoy; `TableMast` table absent |
| 08_Banquet | ✅ L1 410 / L2b 27 PASS | ✅ 3 items, failed=[], 2 ok + 1 skipped_messagebox (Banquet Taxwise Details) | KI-1 `_next_vno` banquet_ops:85; empty HallBook1/CatalogMast/SeasonMast |
| 09_NightAudit | ✅ L1 410 / L2b 27 PASS | ✅ 2 items, failed=[], 2 ok | KI-1 `_get_voucher_prefix` nightaudit:380; Reverse NA (`Enviro.NCur - 1`) critical flow not captured |
| 10_HRPayroll | ✅ L1 410 / L2b 27 PASS | ✅ 3 items, failed=[], 3 ok | Salary upsert = delete+insert race; empty Holiday/Attendence/Loan; VB6 misspellings (`Attendence`, `Category  Master`) parity |
| 11_EPABX | ✅ L1 434 / L2b 27 PASS | ✅ 2 items, failed=[], 2 ok | KI-11: zero menuHelp rows + all tables 0 rows + `Location` table missing |
| 12_Messaging | ✅ L1 413 / L2b 27 PASS (first run transient KI-12 red) | ✅ 2 items, failed=[], 2 ok | KI-10 classify norm-collision; KI-1 `EmailSMSForward MAX(Id)`/`DBSendSMS.DocId`; `SMSEnviro` singleton no-lock |
| 13_MembersMgmt | ✅ L1 413 / L2b 27 PASS (first run transient KI-12 red) | ✅ 2 items, failed=[], 2 ok | KI-1 `MemBill`/`FacilityBill` vno; sparse `MemBill=0`/`FacilityMast=0` (KI-2 analog); `Member Master` blocked `_coming_soon` |
| 14_SaleMarketing | ✅ L1 434 / L2b 27 PASS | ✅ 2 items, failed=[], 2 ok | rows `Module_Name='Mas'` (02 classify bucket, discovery ruling); KI-1 `guestprof.next_code()`; no dedicated sidebar (uses extras) |

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
| KI-10 | classify norm-collision (`_norm_caption`) | `menu_help._norm_caption` trailing `(...)` strip (menu_help.py:35-38) → `SMS (API)/(Scheduled)/(Conditional)/SMS` sab `"sms"` normalize → curated masters leaf (`12_Messaging`) ke `master_caps` poore family ko masters me kheench leta hai (masters-first order collect_logic.py:39-41) — ops bucket 0 despite curated ops leaf. Capture/registry_hits unaffected. Candidate fix: curated caption-disp matching — not applied (gate counts par depend nahi karta) | tool quirk — documented, candidate fix noted |
| KI-11 | EPABX module gaps | `11_EPABX`: zero menuHelp rows anywhere (module_names=(), SA + broad LIKE both 0); `TelCallType`/`TelCallCode`/`TelExt`/`EPABX_Data` sab 0 rows; `Location` table MISSING → `Location-Master` (shell:1434) unguarded `_open_fv_list` crash karega agar khola jaye (capture se avoid kiya) | documented gap + latent app bug — out of plan scope |
| KI-12 | Cross-session interference (batch) | Concurrent workstream (untracked desktop-surface TDD `test_main_setup_desktop_ui.py`/`desktop_style.py` + Channel-Manager/DPAPI commits → HEAD `3403012` > plan BASE `4f138719`) ne batch ke beech 2 transient L1 reds kiye (13:04 `1 error`, 13:13 `1 failed`) — 13_MembersMgmt/12_Messaging ke first runs; immediate reruns green. Doosre session ke tests ab stable (L1 434 green) | cross-session flake — resolved on rerun, documented |
| KI-13 | KI-1 family recurrence (batch modules) | select-then-consume counters har module me recur: 06 indent `_next_vno`, 08 `banquet_ops:85` `_next_vno`, 09 `nightaudit:380` `_get_voucher_prefix`, 12 `DBSendSMS.DocId/VNo` + `EmailSMSForward MAX(Id)+1` (explicit), 13 `MemBill.vno`/`FacilityBill.vno`, 14 `guestprof.next_code()` | same root class as KI-1 — per-module locations catalogued |

## Baseline numbers (2026-09-25, batch rollup)

- L1 unit: **434 tests** final (green; 334→434 grew during day — pipeline ke naye tests + concurrent workstream ke desktop-surface tests; per-module matrix rows me historical counts)
- L2: 9 (01_Finance full: ratelist 4 + collect_logic_live 2 + 3) — green
- L2b: 27 — green (har module run me)
- L3: 40 — green (04 + 01 full runs)
- L4 batch total: **68 items attempted (18 FO + 50 batch), 61 ok, 7 skipped_messagebox, 0 failed, 0 invalid images**
- Batch gate: **14/14 COMPLETE** (`check_manual` foreach, pilot + 13)
- `test_manual_pipeline`: 15 green (capture_leaf opener try/except TDD test shamil)
