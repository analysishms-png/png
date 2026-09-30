# Verify all 6 fixes are present in the codebase
import os

HMS_PY = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py"

checks = {
    "Fix #1 - Numeric validation in _save": False,
    "Fix #1 - Pending amount check": False,
    "Fix #1 - Amount greater check": False,
    "Fix #2 - QCompleter in _build_ui": False,
    "Fix #2 - ACGROUP map": False,
    "Fix #2 - QDoubleValidator": False,
    "Fix #3 - ACGROUP query": False,
    "Fix #5 - setTabOrder calls": False,
    "Fix #6 - resizeEvent method": False,
}

# Check fa_sub_forms_ui.py
filepath = os.path.join(HMS_PY, "ui/fa_sub_forms_ui.py")
if os.path.exists(filepath):
    with open(filepath, "r", encoding="utf-8") as f:
        src = f.read()
    
    checks["Fix #1 - Numeric validation in _save"] = "if not amt_text" in src
    checks["Fix #1 - Pending amount check"] = "adj_pending" in src
    checks["Fix #1 - Amount greater check"] = "Amount is Greater Than Pending Adj.Amt" in src
    checks["Fix #2 - QCompleter in _build_ui"] = "QCompleter" in src
    checks["Fix #2 - ACGROUP map"] = "_acgroup_map" in src
    checks["Fix #2 - QDoubleValidator"] = "QDoubleValidator" in src
    checks["Fix #5 - setTabOrder calls"] = "setTabOrder(" in src
    checks["Fix #6 - resizeEvent method"] = "def resizeEvent" in src

# Check partial_forms_ui.py for Fix #3
filepath = os.path.join(HMS_PY, "ui/partial_forms_ui.py")
if os.path.exists(filepath):
    with open(filepath, "r", encoding="utf-8") as f:
        src = f.read()
    checks["Fix #3 - ACGROUP query"] = "ACGROUP" in src and "SubGroup" not in src.lower()

# Check error_handler.py for Fix #4
filepath = os.path.join(HMS_PY, "core/error_handler.py")
if os.path.exists(filepath):
    with open(filepath, "r", encoding="utf-8") as f:
        src = f.read()
    checks["Fix #4 - ErrorHandler module"] = "class ErrorHandler" in src and "def handle" in src

# Print results
print("=" * 70)
print("VB6→PYTHON FIX VERIFICATION")
print("=" * 70)
print()

all_pass = True
for desc, found in checks.items():
    status = "✅ PASS" if found else "❌ FAIL"
    if not found:
        all_pass = False
    print(f"{status}: {desc}")

print()
print("=" * 70)
if all_pass:
    print("RESULT: ALL 6 FIXES VERIFIED ✅")
else:
    print("RESULT: SOME FIXES MISSING ❌")
print("=" * 70)