# TEST_RESULTS — 11_EPABX

Generated: 2026-09-25T13:27:10  |  Python 3.14.6  |  DB: Moondata2627

| Layer | Command | Exit | Result | Sec |
|---|---|---|---|---|
| L1 | `-m pytest tests/unit -q --tb=line` | 0 | PASS: 434 passed in 41.08s | 42.8 |
| L2b | `-m pytest tests/test_front_office.py -q --tb=line` | 0 | PASS: 27 passed in 22.40s | 24.1 |

## Notes
- FAIL layers rahe to unhe `00_GLOBAL/RUN_TEST_LOG.md` me known-issue note karo (silent skip nahi).
