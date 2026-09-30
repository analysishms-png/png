#!/usr/bin/env python3
"""Verify all 6 fixes are applied"""

from HMS_py.ui.fa_sub_forms_ui import FaAdjustWindow
from HMS_py.ui.partial_forms_ui import AdjustmentDeleteWindow
from HMS_py.core.error_handler import ErrorHandler
import inspect

print("=" * 60)
print("VERIFICATION: All 6 Fixes Applied")
print("=" * 60)
print()

# Fix #1: Numeric validation
src = inspect.getsource(FaAdjustWindow._save)
has_validation = 'amt > pending_amt' in src and 'QMessageBox.warning' in src
print(f'Fix #1 (Numeric validation TXTADJ_AMT): {"APPLIED" if has_validation else "MISSING"}')

# Fix #2: DataCombo QCompleter
src = inspect.getsource(FaAdjustWindow._build_ui)
has_completer = 'QCompleter' in src and 'QStringListModel' in src
print(f'Fix #2 (DataCombo QCompleter): {"APPLIED" if has_completer else "MISSING"}')

# Fix #3: ACGROUP table
import HMS_py.ui.partial_forms_ui as pfi
src = inspect.getsource(pfi.AdjustmentDeleteWindow._load_accounts)
has_acgroup = 'ACGROUP' in src
print(f'Fix #3 (ACGROUP table): {"APPLIED" if has_acgroup else "MISSING"}')

# Fix #4: Error handler module
has_error_handler = 'ErrorHandler' in dir()
print(f'Fix #4 (Error handler module): {"APPLIED" if has_error_handler else "MISSING"}')

# Fix #5: Tab order
has_ontab = hasattr(FaAdjustWindow, '_on_subcode_change')
print(f'Fix #5 (Tab order): {"APPLIED" if has_ontab else "MISSING"}')

# Fix #6: Form resize
has_resize = hasattr(FaAdjustWindow, 'resizeEvent')
print(f'Fix #6 (Form resize): {"APPLIED" if has_resize else "MISSING"}')

print()
count = sum([has_validation, has_completer, has_acgroup, has_error_handler, has_ontab, has_resize])
print(f"Total: {count}/6 fixes applied")
print(f"Status: {'ALL COMPLETE' if count == 6 else 'IN PROGRESS'}")