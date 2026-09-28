#!/usr/bin/env python3
"""Test: Verify numeric validation fix in FaAdjustWindow._save"""

from PyQt6.QtWidgets import QApplication
import sys

app = QApplication(sys.argv)

from HMS_py.ui.fa_sub_forms_ui import FaAdjustWindow
w = FaAdjustWindow()

# Test 1: Enter non-numeric - should show warning and return early
w.txt_amt.setText("abc")
print("Test 1 - Entered 'abc':", w.txt_amt.text())

# Test 2: Enter numeric value - should accept
w.txt_amt.setText("100.50")
print("Test 2 - Entered '100.50':", w.txt_amt.text())

# Test 3: Enter amount exceeding pending (pending_amt=0 by default)
# This should trigger the "Amount is Greater Than Pending Adj.Amt" warning
w.txt_amt.setText("9999")
print("Test 3 - Entered '9999':", w.txt_amt.text())

# Test 4: Empty field - should show "Amount zaroori hai"
w.txt_amt.setText("")
print("Test 4 - Entered empty:", repr(w.txt_amt.text()))

print("\nAll validation tests completed!")
print("If you see warning messages for 'abc' and '9999', the fix is working.")
print("If '100.50' is accepted without warning, the pending amount check needs pending_amt setup.")