VB6 Python UI Debugging Setup
==============================

DEBUGGER LAUNCHER
=================

This setup helps debug the VB6-to-Python UI migration bugs identified in:
- VB6_PYTHON_UI_BUGS.txt (436 lines analysis)
- VB6_PYTHON_UI_FIX_PLAN.txt (366 lines fix plan)

==============================================================================
STEP 1: Environment Setup
==============================================================================

1. Install required packages:
   pip install PyQt6 pyodbc

2. Verify Python environment:
   python --version
   # Should be 3.8+ for PyQt6 support

3. Check HMS project structure:
   cd HMS_py
   ls ui/*.py | head -5
   # Verify Python UI files exist

4. Test basic UI import:
   python -c "from HMS_py.ui.fa_sub_forms_ui import FaAdjustWindow; print('UI loads OK')"

==============================================================================
STEP 2: Bug Reproduction Scripts
==============================================================================

SCRIPT A: Test Numeric Validation (Bug #1)

```python
#!/usr/bin/env python3
"""Debug: Test TXTADJ_AMT numeric validation"""

from PyQt6.QtWidgets import QApplication
import sys

app = QApplication(sys.argv)

from HMS_py.ui.fa_sub_forms_ui import FaAdjustWindow

# Create window
w = FaAdjustWindow()

# Test 1: Enter non-numeric value
w.txt_amt.setText("abc")
print(f"Test 1 - After 'abc': text='{w.txt_amt.text()}'")

# Test 2: Enter numeric value  
w.txt_amt.setText("100.50")
print(f"Test 2 - After '100.50': text='{w.txt_amt.text()}'")

# Test 3: Enter amount exceeding pending
# (Would need pending amount set from table data)
w.show()
app.exec()
```

Run: `python debug_test1.py`

Expected: Should show warning for non-numeric, accept numeric

SCRIPT B: Test Account Dropdown (Bug #2)

```python
#!/usr/bin/env python3
"""Debug: Test account combo box search"""

from PyQt6.QtWidgets import QApplication
import sys

app = QApplication(sys.argv)

from HMS_py.ui.fa_sub_forms_ui import FaAdjustWindow

w = FaAdjustWindow()
w.show()

# Test typing in account field
w.txt_subcode.setText("A")
print(f"After typing 'A': text='{w.txt_subcode.text()}'")

app.processEvents()
# Check if dropdown/completer shows options

app.exec()
```

Run: `python debug_test2.py`

SCRIPT C: Test Account Table (Bug #3 - ACGROUP vs SubGroup)

```python
#!/usr/bin/env python3
"""Debug: Verify correct table used for accounts"""

import sqlite3
from HMS_py.core import db

# Check what tables exist
try:
    rows = db.query("SELECT GroupCode, GroupName FROM ACGROUP ORDER BY GroupName LIMIT 5")
    print(f"ACGROUP table: {len(rows)} rows found")
    for r in rows:
        print(f"  {r}")
except Exception as e:
    print(f"ACGROUP error: {e}")

try:
    rows = db.query("SELECT SubCode, Name FROM SubGroup ORDER BY Name LIMIT 5")
    print(f"\nSubGroup table: {len(rows)} rows found")
    for r in rows:
        print(f"  {r}")
except Exception as e:
    print(f"SubGroup error: {e}")
```

Run: `python debug_test3.py`

==============================================================================
STEP 3: Debugging Commands
==============================================================================

COMMAND 1: List all identified bugs with status

```bash
python -c "
# Import bug tracker from our analysis
bugs = {
    '1': 'TXTADJ_AMT numeric validation - HIGH',
    '2': 'DataCombo dropdown loss - HIGH', 
    '3': 'MSFlexGrid behavior - MEDIUM',
    '4': 'Error handling pattern - HIGH',
    '5': 'Tab order mismatches - MEDIUM',
    '6': 'Form resize - LOW',
    '7': 'ACGROUP vs SubGroup table - HIGH',
    '8': 'Delete validation - MEDIUM',
    '9': 'Grid filling logic - MEDIUM',
    '10': 'Error messages - LOW'
}

print('BUG TRACKER STATUS:')
print('=' * 50)
for num, desc in bugs.items():
    print(f'Bug {num}: {desc}')
print('=' * 50)
print(f'Total: {len(bugs)} bugs identified')
"
```

Run: `python debug_bugs.py`

Expected output shows all 10 bugs with priority levels

COMMAND 2: Test UI file imports

```bash
python -c "
import os
ui_dir = 'HMS_py/ui'
py_files = [f for f in os.listdir(ui_dir) if f.endswith('.py')]
print(f'UI Python files: {len(py_files)}')
print('Sample files:')
for f in sorted(py_files)[:5]:
    print(f'  - {f}')
"
```

Run: `python debug_files.py`

Expected: Lists all 103 UI .py files in the project

COMMAND 3: Verify fix plan applicability

```bash
python -c "
# Check if fix plan references match actual code
with open('VB6_PYTHON_UI_FIX_PLAN.txt') as f:
    content = f.read()

# Check for key fix references
checks = [
    'TXTADJ_AMT',
    'QComboBox',
    'ACGROUP',
    'error_handler',
    'setTabOrder',
    'resizeEvent'
]

print('FIX PLAN REFERENCES IN CODE:')
print('=' * 50)
for check in checks:
    count = content.lower().count(check.lower())
    print(f'  {check}: {count} references in fix plan')

# Also check in actual UI files
import os
ui_dir = 'HMS_py/ui'
total_refs = 0
for fname in os.listdir(ui_dir):
    if fname.endswith('.py'):
        with open(os.path.join(ui_dir, fname)) as f:
            total_refs += f.read().lower().count('def ')
print(f'\\nTotal Python UI files: {len(os.listdir(ui_dir))}')
print(f'Total functions across all UI files: {total_refs}')
"
```

Run: `python debug_fixes.py`

==============================================================================
STEP 4: Bug Priority Triage
==============================================================================

CRITICAL (fix first - causes data loss):
1. Bug #1: TXTADJ_AMT numeric validation - financial data integrity
2. Bug #7: ACGROUP vs SubGroup table - shows wrong data
3. Bug #2: DataCombo dropdown - cannot select accounts

HIGH (fix second):
4. Bug #4: Error handling pattern - no transaction safety
5. Bug #8: Delete validation - business logic gap

MEDIUM (fix third):
6. Bug #3: MSFlexGrid behavior - display differences
7. Bug #5: Tab order - keyboard navigation
8. Bug #9: Grid filling logic - data completeness

LOW (fix later):
9. Bug #6: Form resize - cosmetic
10. Bug #10: Error messages - cosmetic

==============================================================================
QUICK DEBUG STARTER
==============================================================================

Run this to immediately start debugging:

```bash
# 1. Test that the project loads
cd C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py
python -c "from HMS_py.ui.verify_vb6 import; print('Verify module loads')"

# 2. Run bug list viewer
python debug_bugs.py

# 3. Test UI import
python -c "from HMS_py.ui.fa_sub_forms_ui import FaAdjustWindow; w = FaAdjustWindow(); w.show()

# 4. Check which bugs are present in your setup
python debug_test1.py  # Test numeric validation
python debug_test3.py  # Test table usage
```

==============================================================================
NEXT STEPS AFTER DEBUGGING
==============================================================================

After identifying which bugs exist in your setup:

1. REFER TO: VB6_PYTHON_UI_FIX_PLAN.txt for code fixes
2. APPLY: The 6 priority fixes from that document
3. TEST: Run the debug scripts again to verify fixes
4. DOCUMENT: Update the bug tracker status
5. CONTINUE: Move to next priority bug

==============================================================================
DEBUG SESSION CHECKLIST
==============================================================================

□ Project loads without errors
□ All 10 bugs identified and categorized by priority
□ Numeric validation tested (Bug #1)
□ Account dropdown tested (Bug #2)
□ Table usage verified (Bug #3 - ACGROUP vs SubGroup)
□ Error handling tested (Bug #4)
□ Tab order tested (Bug #5)
□ Fix plan references checked against code
□ Fixes applied and verified
□ Ready to move to next priority

==============================================================================
USEFUL SHORTCUTS
==============================================================================

Quick debug commands:
- `python debug_bugs.py` - Show all 10 bugs
- `python debug_test1.py` - Test numeric validation
- `python debug_test3.py` - Test table usage
- `python debug_files.py` - List UI files
- `python debug_fixes.py` - Check fix plan references

Core module debugging:
- `python -c "from HMS_py.core import db; db.query('SELECT 1')"` - Test DB connection
- `python -c "from HMS_py.core import fa_ledger_ops"` - Test core ops
- `python -c "import HMS_py.core.error_handler"` - Test error handler (once created)

==============================================================================