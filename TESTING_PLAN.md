# HMS Python - Complete Testing Plan
# ===================================
# 89 Core + 58 UI = 147 modules
# 641 Shell menu entries
# SQL Server DB: KailashData2526
# ===================================

## Testing Phases:

### Phase 1: Core Module Unit Tests
- Test every CRUD function in 89 core modules
- Verify DB connections, queries, inserts, updates, deletes
- Run: python test_core_modules.py

### Phase 2: UI Module Tests
- Test every form opens without crash
- Verify data loads into tables/forms
- Check error handling for missing data
- Run: python test_ui_modules.py

### Phase 3: Shell Integration Tests
- Test 641 menu entries map to correct forms
- Verify sidebar navigation works
- Test theme toggle (dark/light)
- Run: python test_shell.py

### Phase 4: E2E Workflow Tests
- Test real hotel operations:
  1. Login -> Company Select -> Main Window
  2. Guest Check-In -> Room Assignment -> Charges
  3. POS: KOT -> Sale Bill -> Payment
  4. Night Audit: Run -> Reports
  5. Finance: Voucher -> Ledger -> Trial Balance
- Run: python test_e2e.py

### Phase 5: Regression Tests
- Full regression after every change
- All 147 modules must pass
- Run: python test_all_modules.py

## Quick Commands:
  python test_all_modules.py    # Core tests (162 tests)
  python test_ui_modules.py     # UI tests
  python test_shell.py          # Shell integration
  python test_e2e.py            # End-to-end workflows
  python -m pytest tests/ -v    # Pytest suite
