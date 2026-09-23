# Data Entry Test Report v2

**Date:** 2026-09-22 22:23

**Results:** 19 tests, 16 passed, 3 failed

| Form | Test | Status | Detail |
|------|------|--------|--------|
| Plan Master | Form opens | PASS |  |
| Plan Master | Has fields | PASS | Found 4 |
| Plan Master | New button works | PASS |  |
| Plan Master | Empty required field blocked | FAIL | No error shown |
| Plan Master | Valid data entered | PASS |  |
| Plan Master | Save data | PASS |  |
| Guest Profile | Form opens | PASS |  |
| Guest Profile | Has fields | PASS | Found 4 edit fields |
| Guest Profile | New button works | PASS |  |
| Guest Profile | Empty name blocked | FAIL | No validation |
| Guest Profile | Valid data entered | PASS |  |
| Guest Profile | Save data | PASS |  |
| Guest Profile | Max length enforced | PASS | Typed 60 chars, got 0 |
| Registration Entry | Form opens | FAIL | Registration Entry not found in menu |
| Check-In Browser | Form opens | PASS |  |
| Check-In Browser | Table visible with data | PASS |  |
| Check-In Browser | Has Close button | PASS | Buttons: ['close', 'new check-in', 'refresh'] |
| Folio Log | Form opens | PASS |  |
| Folio Log | Correct title | PASS | Title: Folio / Check-Out - HMS_py |
