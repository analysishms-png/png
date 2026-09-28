#!/usr/bin/env python3
"""Debug: Test numeric validation like VB6 TXTADJ_AMT_Validate"""

from PyQt6.QtWidgets import QApplication, QWidget, QVBoxLayout, QLineEdit, QPushButton, QMessageBox
import sys

app = QApplication(sys.argv)

# Test the numeric validation logic
def validate_numeric(text):
    """Like VB6 TXTADJ_AMT_Validate - only allow numeric input"""
    # VB6 KeyPress restricts to numbers only
    # Python equivalent: try float conversion
    try:
        val = float(text)
        return True, val
    except ValueError:
        return False, 0.0

# Test cases
test_cases = [
    ("100.50", True, "Valid decimal"),
    ("50", True, "Valid integer"),
    ("", True, "Empty - handled separately"),
    ("abc", False, "Non-numeric - should reject"),
    ("10.5.3", False, "Multiple decimals - should reject"),
    ("-50", True, "Negative number - may or may not be allowed"),
]

print('=' * 60)
print('BUG #1: TXTADJ_AMT NUMERIC VALIDATION TEST')
print('=' * 60)
print()
print('VB6 Behavior: TXTADJ_AMT_Validate checks if amount exceeds pending')
print('Python Test: Validating float conversion only')
print()

for text, should_pass, description in test_cases:
    valid, val = validate_numeric(text)
    status = "PASS" if valid == should_pass else "FAIL"
    print(f'  [{status}] "{text:12}" -> valid={valid}, value={val:8} | {description}')

print()
print('EXPECTED: Only "abc" and "10.5.3" should fail')
print('TEST: Run this script and verify which cases pass/fail')
print('=' * 60)