# TEST_RESULTS — 02_MainSetup

Generated: 2026-09-25T12:19:00  |  Python 3.14.6  |  DB: Moondata2627

| Layer | Command | Exit | Result | Sec |
|---|---|---|---|---|
| L1 | `-m pytest tests/unit -q --tb=line` | 0 | PASS: 385 passed in 39.00s | 40.6 |
| L2b | `-m pytest tests/test_front_office.py -q --tb=line` | 0 | PASS: 27 passed in 3.15s | 5.9 |

## Notes
- FAIL layers rahe to unhe `00_GLOBAL/RUN_TEST_LOG.md` me known-issue note karo (silent skip nahi).
