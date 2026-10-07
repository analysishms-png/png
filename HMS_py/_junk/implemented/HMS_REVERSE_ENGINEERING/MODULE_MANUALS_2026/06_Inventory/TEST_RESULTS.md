# TEST_RESULTS — 06_Inventory

Generated: 2026-09-25T12:27:35  |  Python 3.14.6  |  DB: Moondata2627

| Layer | Command | Exit | Result | Sec |
|---|---|---|---|---|
| L1 | `-m pytest tests/unit -q --tb=line` | 0 | PASS: 408 passed in 14.61s | 15.7 |
| L2b | `-m pytest tests/test_front_office.py -q --tb=line` | 0 | PASS: 27 passed in 0.55s | 1.6 |

## Notes
- FAIL layers rahe to unhe `00_GLOBAL/RUN_TEST_LOG.md` me known-issue note karo (silent skip nahi).
