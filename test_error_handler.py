#!/usr/bin/env python3
"""Test: Verify error_handler module works with QWidget"""

from PyQt6.QtWidgets import QApplication, QWidget
import sys

app = QApplication(sys.argv)

# Create a dummy parent widget
parent = QWidget()
parent.setWindowTitle("Test Error Handler")

from HMS_py.core.error_handler import ErrorHandler, show_error

# Test 1: Create ErrorHandler and handle an error
print("Test 1: ErrorHandler.handle() with mock error")
eh = ErrorHandler(parent)
result = eh.handle(ValueError("Test value error"), "ledgeradj_insert", rollback=False)
print(f"  Handle returned: {result}")
print(f"  Error count: {eh.error_count}")
print(f"  Last error: {eh.last_error}")

# Test 2: Get error summary
print("\nTest 2: Get error summary")
summary = eh.get_error_summary()
print(f"  Summary: {summary}")

# Test 3: Show error via convenience function
print("\nTest 3: show_error() convenience function")
show_error(parent, RuntimeError("Runtime error test"), "test_context")
print("  show_error displayed QMessageBox (check above)")

print("\nAll error_handler tests completed successfully!")
app.quit()