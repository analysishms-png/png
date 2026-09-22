# HMS Python — Final QA Report
**Date:** 22 Sep 2026  
**Build:** 42ddefa → d926d10  
**Total Tests:** 179 (all PASS)

---

## Executive Summary

The HMS Python port (VB6 → Python/PyQt6) has undergone comprehensive QA across 8 phases:
1. Module-wise GUI testing (12 sidebar modules, 22/22 PASS)
2. CRUD validation (71 forms, 36 live CRUD PASS)
3. Code-level UI review (87 issues found)
4. Critical bug fixing (8 CRITICAL UI + 5 Python bugs + 14 report lambdas)
5. Security audit (brute-force protection added)
6. Form dialog verification (keyboard shortcuts confirmed working)
7. EPABX crash fix (lambda args mismatch)
8. Canvas text internationalization (Hindi → English)

---

## Bugs Fixed This Session

### CRITICAL UI Bugs (8 found, 7 fixed, 1 false positive)

| # | Bug | File | Fix |
|---|-----|------|-----|
| BUG-001 | Dashboard import broken | dashboard.py:152 | `from core import db` → `from HMS_py.core import db` |
| BUG-002 | Dashboard int() crash | dashboard.py:199 | Wrap in try/except for "N/A" values |
| BUG-003 | Booking modify no save | booking_ops_ui.py | Added `_on_save()` handler + toggle button text |
| BUG-004 | Guest lookup SQL wrong cols | guest_lookup_ui.py:52 | Company/Address → Phone/Add1 (5 cols) |
| BUG-005 | Guest history offscreen | guest_history_ui.py:12 | Gated behind `if __name__ == "__main__"` |
| BUG-006 | FA voucher _theme missing | fa_voucher_ui.py:28 | FALSE POSITIVE — `_theme` already imported |
| BUG-007 | Inventory palette() | inventory.py (5 loc) | `palette()` → `_theme.palette()` |
| BUG-008 | GIN browse missing | inventory.py:378 | Added `self.tbl` QTableWidget for browse list |

### Python Logic Bugs (5 found, 5 fixed)

| # | Bug | File | Fix |
|---|-----|------|-----|
| PY-001 | cashrcd reads addr2 | pos_sales.py:79 | `vals[42]` → `vals[43]` |
| PY-002 | insert_leave_ench param count | hr_payroll.py:164 | 9 params → 8 (removed extra `user`) |
| PY-003 | _map_purch1 34 vars for 35 cols | purchase.py:63 | Added `sc2` throwaway variable |
| PY-004 | tax/service_charge same value | purchase.py:77-78 | `sc` → `sc2` for service_charge |
| PY-005 | porder1_insert 26 ? for 25 params | purchase.py:780 | Removed extra `?` placeholder |

### Report Lambda Crash (14 forms fixed)

| # | Bug | Fix |
|---|-----|-----|
| EPABX | `_form_registry` lambdas take 0 args | All 14 report lambdas: `lambda:` → `lambda f=None, t=None:` |

### Security (1 fix)

| # | Fix | Detail |
|---|-----|--------|
| SEC-001 | Brute-force protection | 5 failed attempts → 15-min lockout per user |

---

## GUI Testing Results

| Module | Sidebar | Menubar | Form Opens | Status |
|--------|---------|---------|------------|--------|
| Finance | PASS | PASS | PASS (Voucher Entry via Ctrl+T) | ✅ |
| Main Setup | PASS | PASS | PASS (Plan Master via Ctrl+P) | ✅ |
| Reservation | PASS | PASS | PASS | ✅ |
| Front Office | PASS | PASS | PASS (Check-In via Ctrl+K) | ✅ |
| House Keeping | PASS | PASS | PASS | ✅ |
| Inventory | PASS | PASS | PASS (Indent via Ctrl+Y) | ✅ |
| Point Of Sale | PASS | PASS | PASS | ✅ |
| Banquet | PASS | PASS | PASS | ✅ |
| Night Audit | PASS | PASS | PASS (Night Audit via Ctrl+N) | ✅ |
| EPABX | PASS | PASS | PASS (no crash after lambda fix) | ✅ |
| Messaging | PASS | PASS | PASS | ✅ |
| Members Mgmt | PASS | PASS | PASS | ✅ |

**Evidence:** 150+ PNG screenshots in `_qa/HMSTesting_20260922/evidence/`

---

## Known Limitations

### VB6 Encryption (Not Fixable)
The VB6 encryption (`encrypt`/`decrypt`) uses a simple shift cipher (seed+27). This is trivially reversible but **cannot be changed** without breaking all existing DB passwords. Brute-force protection (5 attempts/15 min) mitigates this.

### Missing DB Tables (20)
HallBill, CateringBook, EventMast, BanquetSundry, TelCall, Extension, SmartCard, RewardPoint, etc. These VB6 forms had no data in the production DB.

### Performance (Deferred)
- N+1 query in nightaudit.py (21 sequential DB calls)
- 21 `SELECT *` occurrences across core modules
- 7 sequential DB calls in dashboard.py

---

## Git Commits (This Session)

| Commit | Description |
|--------|-------------|
| 0c84048 | fix: EPABX lambda crash, report lambdas args, canvas text EN |
| eb2d739 | fix: 8 CRITICAL UI bugs from QA review |
| 75fc179 | fix: 5 active Python bugs (pos_sales, hr_payroll, purchase) |
| d926d10 | security: add brute-force protection to login |

**GitHub:** https://github.com/analysishms-png/png

---

## Test Coverage

```
179 passed in 11.83s

tests/test_front_office.py          — 27 tests
tests/unit/test_bugfix_batch.py     — 36 tests
tests/unit/test_core_validation.py  — 98 tests
tests/unit/test_missing_logic_core.py — 18 tests
```
