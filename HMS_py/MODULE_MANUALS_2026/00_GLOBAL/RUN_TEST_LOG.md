# RUN_TEST_LOG — cumulative run/test proof
Format: one entry per run: ISO timestamp | layer | command | exit | summary | notes
(no entries yet — Task 4 first run yahan append karegi)
2026-09-25T10:12:50 | L1 | -m pytest tests/unit -q --tb=line | exit=0 | PASS 333 passed in 28.64s | 30.3s
2026-09-25T10:12:50 | L3 | -m pytest tests/test_wave_ui_forms.py tests/test_ui_walkthroughs.py -q --tb=line | exit=0 | PASS 40 passed in 72.13s (0:01:12) | 73.3s
2026-09-25T10:20:22 | L1 | -m pytest tests/unit -q --tb=line | exit=0 | PASS 334 passed in 13.62s | 15.3s
2026-09-25T10:20:22 | L2 | -m pytest tests/database -q --tb=line | exit=0 | PASS 6 passed in 1.57s | 2.6s
2026-09-25T10:20:22 | L2b | -m pytest tests/test_front_office.py -q --tb=line | exit=0 | PASS 27 passed in 1.31s | 2.4s
2026-09-25T10:20:22 | L2c:test_enviro | python tests/database/test_enviro.py | exit=1 | FAIL TOTAL: 17/18 PASS | 1.7s
2026-09-25T10:20:22 | L2c:test_fa_voucher | python tests/database/test_fa_voucher.py | exit=1 | FAIL 8/9 PASS | 1.8s
2026-09-25T10:20:22 | L2c:test_inventory_registers | python tests/database/test_inventory_registers.py | exit=1 | FAIL 5/8 PASS | 0.7s
2026-09-25T10:20:22 | L2c:test_main_setup_plan | python tests/database/test_main_setup_plan.py | exit=0 | PASS 16/16 PASS | 3.5s
2026-09-25T10:20:22 | L2c:test_receive_payment | python tests/database/test_receive_payment.py | exit=0 | PASS TOTAL: 12/12 PASS | 1.3s
2026-09-25T10:20:22 | L2c:test_reports_engine | python tests/database/test_reports_engine.py | exit=1 | FAIL 370/445 PASS | 374.3s
2026-09-25T10:20:22 | L2c:test_room_pk_fixes | python tests/database/test_room_pk_fixes.py | exit=0 | PASS 9/9 PASS | 0.4s
2026-09-25T10:20:22 | L2c:test_scheme_tds | python tests/database/test_scheme_tds.py | exit=0 | PASS 9/9 PASS | 0.3s
2026-09-25T10:20:22 | L2c:test_tally_export | python tests/database/test_tally_export.py | exit=1 | FAIL TOTAL: 20/22 PASS | 0.9s
2026-09-25T10:20:22 | L3 | -m pytest tests/test_wave_ui_forms.py tests/test_ui_walkthroughs.py -q --tb=line | exit=0 | PASS 40 passed in 12.54s | 13.9s
2026-09-25T11:21:58 | L1 | -m pytest tests/unit -q --tb=line | exit=0 | PASS 368 passed in 19.38s | 20.5s
2026-09-25T11:21:58 | L2 | -m pytest tests/database -q --tb=line | exit=0 | PASS 9 passed in 2.47s | 3.5s
2026-09-25T11:21:58 | L2b | -m pytest tests/test_front_office.py -q --tb=line | exit=0 | PASS 27 passed in 0.67s | 1.7s
2026-09-25T11:21:58 | L2c:test_enviro | python tests/database/test_enviro.py | exit=0 | PASS TOTAL: 18/18 PASS | 0.2s
2026-09-25T11:21:58 | L2c:test_fa_voucher | python tests/database/test_fa_voucher.py | exit=1 | FAIL 8/9 PASS | 0.6s
2026-09-25T11:21:58 | L2c:test_inventory_registers | python tests/database/test_inventory_registers.py | exit=1 | FAIL 5/8 PASS | 0.4s
2026-09-25T11:21:58 | L2c:test_main_setup_plan | python tests/database/test_main_setup_plan.py | exit=0 | PASS 16/16 PASS | 2.7s
2026-09-25T11:21:58 | L2c:test_receive_payment | python tests/database/test_receive_payment.py | exit=1 | FAIL pyodbc.IntegrityError: ('23000', "[23000] [Microsoft][SQL Server Native Client 10.0][SQL Server]Violation of PRIMARY KEY constraint 'aaaaaPayChargeLog_PK'. Cannot insert duplicate key in object 'dbo.PayChargeLog'. (2627) (SQLExecDirectW); [23000] [Microsoft][SQL Server Native Client 10.0][SQL Server]The statement has been terminated. (3621)") | 0.5s
2026-09-25T11:21:58 | L2c:test_reports_engine | python tests/database/test_reports_engine.py | exit=1 | FAIL 374/447 PASS | 300.5s
2026-09-25T11:21:58 | L2c:test_room_pk_fixes | python tests/database/test_room_pk_fixes.py | exit=0 | PASS 9/9 PASS | 0.3s
2026-09-25T11:21:58 | L2c:test_scheme_tds | python tests/database/test_scheme_tds.py | exit=0 | PASS 9/9 PASS | 0.3s
2026-09-25T11:21:58 | L2c:test_tally_export | python tests/database/test_tally_export.py | exit=1 | FAIL TOTAL: 20/22 PASS | 0.9s
2026-09-25T11:21:58 | L3 | -m pytest tests/test_wave_ui_forms.py tests/test_ui_walkthroughs.py -q --tb=line | exit=0 | PASS 40 passed in 14.13s | 15.4s
2026-09-25T11:31:09 | L1 | -m pytest tests/unit -q --tb=line | exit=0 | PASS 380 passed in 17.68s | 19.0s
2026-09-25T11:31:09 | L2 | -m pytest tests/database -q --tb=line | exit=0 | PASS 9 passed in 1.73s | 2.8s
2026-09-25T11:31:09 | L2b | -m pytest tests/test_front_office.py -q --tb=line | exit=0 | PASS 27 passed in 0.80s | 1.8s
2026-09-25T11:31:09 | L2c:test_enviro | python tests/database/test_enviro.py | exit=0 | PASS TOTAL: 18/18 PASS | 0.2s
2026-09-25T11:31:09 | L2c:test_fa_voucher | python tests/database/test_fa_voucher.py | exit=1 | FAIL 8/9 PASS | 0.5s
2026-09-25T11:31:09 | L2c:test_inventory_registers | python tests/database/test_inventory_registers.py | exit=1 | FAIL 5/8 PASS | 0.4s
2026-09-25T11:31:09 | L2c:test_main_setup_plan | python tests/database/test_main_setup_plan.py | exit=0 | PASS 16/16 PASS | 2.5s
2026-09-25T11:31:09 | L2c:test_receive_payment | python tests/database/test_receive_payment.py | exit=1 | FAIL pyodbc.IntegrityError: ('23000', "[23000] [Microsoft][SQL Server Native Client 10.0][SQL Server]Violation of PRIMARY KEY constraint 'aaaaaPayChargeLog_PK'. Cannot insert duplicate key in object 'dbo.PayChargeLog'. (2627) (SQLExecDirectW); [23000] [Microsoft][SQL Server Native Client 10.0][SQL Server]The statement has been terminated. (3621)") | 0.6s
2026-09-25T11:31:09 | L2c:test_reports_engine | python tests/database/test_reports_engine.py | exit=1 | FAIL 374/447 PASS | 304.7s
2026-09-25T11:31:09 | L2c:test_room_pk_fixes | python tests/database/test_room_pk_fixes.py | exit=0 | PASS 9/9 PASS | 0.2s
2026-09-25T11:31:09 | L2c:test_scheme_tds | python tests/database/test_scheme_tds.py | exit=0 | PASS 9/9 PASS | 0.2s
2026-09-25T11:31:09 | L2c:test_tally_export | python tests/database/test_tally_export.py | exit=1 | FAIL TOTAL: 20/22 PASS | 0.7s
2026-09-25T11:31:09 | L3 | -m pytest tests/test_wave_ui_forms.py tests/test_ui_walkthroughs.py -q --tb=line | exit=0 | PASS 40 passed in 12.04s | 13.1s
2026-09-25T11:37:01 | L1 | -m pytest tests/unit -q --tb=line | exit=0 | PASS 380 passed in 15.44s | 16.5s
2026-09-25T11:37:01 | L2 | -m pytest tests/database -q --tb=line | exit=0 | PASS 9 passed in 1.62s | 2.7s
2026-09-25T11:37:01 | L2b | -m pytest tests/test_front_office.py -q --tb=line | exit=0 | PASS 27 passed in 0.71s | 1.7s
2026-09-25T11:37:01 | L2c:test_enviro | python tests/database/test_enviro.py | exit=0 | PASS TOTAL: 18/18 PASS | 0.2s
2026-09-25T11:37:01 | L2c:test_fa_voucher | python tests/database/test_fa_voucher.py | exit=1 | FAIL 8/9 PASS | 0.5s
2026-09-25T11:37:01 | L2c:test_inventory_registers | python tests/database/test_inventory_registers.py | exit=1 | FAIL 5/8 PASS | 0.3s
2026-09-25T11:37:01 | L2c:test_main_setup_plan | python tests/database/test_main_setup_plan.py | exit=0 | PASS 16/16 PASS | 2.5s
2026-09-25T11:37:01 | L2c:test_receive_payment | python tests/database/test_receive_payment.py | exit=0 | PASS TOTAL: 12/12 PASS | 0.4s
2026-09-25T11:37:01 | L2c:test_reports_engine | python tests/database/test_reports_engine.py | exit=1 | FAIL 374/447 PASS | 281.0s
2026-09-25T11:37:01 | L2c:test_room_pk_fixes | python tests/database/test_room_pk_fixes.py | exit=0 | PASS 9/9 PASS | 0.2s
2026-09-25T11:37:01 | L2c:test_scheme_tds | python tests/database/test_scheme_tds.py | exit=0 | PASS 9/9 PASS | 0.2s
2026-09-25T11:37:01 | L2c:test_tally_export | python tests/database/test_tally_export.py | exit=1 | FAIL TOTAL: 20/22 PASS | 0.7s
2026-09-25T11:37:01 | L3 | -m pytest tests/test_wave_ui_forms.py tests/test_ui_walkthroughs.py -q --tb=line | exit=0 | PASS 40 passed in 11.76s | 12.9s
2026-09-25T12:05:27 | L1 | -m pytest tests/unit -q --tb=line | exit=0 | PASS 380 passed in 15.60s | 16.7s
2026-09-25T12:05:27 | L2b | -m pytest tests/test_front_office.py -q --tb=line | exit=0 | PASS 27 passed in 0.62s | 1.6s
2026-09-25T12:17:19 | L1 | -m pytest tests/unit -q --tb=line | exit=1 | FAIL 1 failed, 384 passed in 19.06s | 20.5s
2026-09-25T12:17:19 | L2b | -m pytest tests/test_front_office.py -q --tb=line | exit=0 | PASS 27 passed in 0.91s | 2.1s
