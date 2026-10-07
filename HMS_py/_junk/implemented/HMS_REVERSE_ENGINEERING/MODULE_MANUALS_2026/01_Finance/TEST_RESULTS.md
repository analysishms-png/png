# TEST_RESULTS — 01_Finance

Generated: 2026-09-25T11:37:01  |  Python 3.14.6  |  DB: Moondata2627

| Layer | Command | Exit | Result | Sec |
|---|---|---|---|---|
| L1 | `-m pytest tests/unit -q --tb=line` | 0 | PASS: 380 passed in 15.44s | 16.5 |
| L2 | `-m pytest tests/database -q --tb=line` | 0 | PASS: 9 passed in 1.62s | 2.7 |
| L2b | `-m pytest tests/test_front_office.py -q --tb=line` | 0 | PASS: 27 passed in 0.71s | 1.7 |
| L2c:test_enviro | `python tests/database/test_enviro.py` | 0 | PASS: TOTAL: 18/18 PASS | 0.2 |
| L2c:test_fa_voucher | `python tests/database/test_fa_voucher.py` | 1 | FAIL: 8/9 PASS | 0.5 |
| L2c:test_inventory_registers | `python tests/database/test_inventory_registers.py` | 1 | FAIL: 5/8 PASS | 0.3 |
| L2c:test_main_setup_plan | `python tests/database/test_main_setup_plan.py` | 0 | PASS: 16/16 PASS | 2.5 |
| L2c:test_receive_payment | `python tests/database/test_receive_payment.py` | 0 | PASS: TOTAL: 12/12 PASS | 0.4 |
| L2c:test_reports_engine | `python tests/database/test_reports_engine.py` | 1 | FAIL: 374/447 PASS | 281.0 |
| L2c:test_room_pk_fixes | `python tests/database/test_room_pk_fixes.py` | 0 | PASS: 9/9 PASS | 0.2 |
| L2c:test_scheme_tds | `python tests/database/test_scheme_tds.py` | 0 | PASS: 9/9 PASS | 0.2 |
| L2c:test_tally_export | `python tests/database/test_tally_export.py` | 1 | FAIL: TOTAL: 20/22 PASS | 0.7 |
| L3 | `-m pytest tests/test_wave_ui_forms.py tests/test_ui_walkthroughs.py -q --tb=line` | 0 | PASS: 40 passed in 11.76s | 12.9 |

## Notes
- FAIL layers rahe to unhe `00_GLOBAL/RUN_TEST_LOG.md` me known-issue note karo (silent skip nahi).
