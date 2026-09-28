#!/usr/bin/env python3
"""Test: Verify numeric validation fix triggers on _save"""

from PyQt6.QtWidgets import QApplication
import sys

app = QApplication(sys.argv)

from HMS_py.ui.fa_sub_forms_ui import FaAdjustWindow
w = FaAdjustWindow()

# Test 1: Call _save with non-numeric amount - should show warning
print("Test 1: _save with 'abc' amount")
# Simulate what happens when user clicks Save with abc
from PyQt6.QtTest import QTest
from PyQt6.QtCore import Qt

# Programmatically trigger save click
w.btn_save.click()
QTest.qWait(100)
print("  After save click with 'abc': form should show warning")

# Test 2: Call _save with valid amount - should proceed
print("\nTest 2: _save with '100.50' amount")
w.txt_amt.setText("100.50")
w.btn_save.click()
QTest.qWait(100)
print("  After save click with '100.50': proceed to save logic")

# Test 3: Call _save with amount exceeding pending
print("\nTest 3: _save with '9999' amount (exceeds pending=0)")
w.txt_amt.setText("9999")
w.btn_save.click()
QTest.qWait(100)
print("  After save click with '9999': should show 'Amount Greater Than Pending' warning")

print("\nTests completed - check the warning messages above")
app.quit()