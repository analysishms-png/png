"""Add missing entries to shell.py _form_registry."""
import sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath('.')))
os.environ["QT_QPA_PLATFORM"] = "offscreen"

with open('ui/shell.py', encoding='utf-8') as f:
    content = f.read()

# Find the last entry in _form_registry dict
# Look for the pattern of the last entry before the function closes
# The dict typically ends with entries like:
# "Leave": (lambda w: hr.open_leave(w)) if hr else _coming_soon("Leave"),
# followed by the closing brace and return statement

# Find all closing patterns of the _form_registry function
# Search for the pattern that closes the registry dict
import re

# Find the position after the last _coming_soon entry
# Look for patterns like _coming_soon("something"),
last_coming = content.rfind('_coming_soon("')
if last_coming < 0:
    last_coming = content.rfind('_coming_soon(')

# Find the closing brace after that
# Search for ',\n        )})' or similar
brace_close = content.find('        )})', last_coming)
if brace_close < 0:
    brace_close = content.find('})', last_coming)

print(f"Last _coming_soon at: {last_coming}")
print(f"Possible brace close at: {brace_close}")

# Insert new entries before the closing of _form_registry
# The new entries should be added right before the closing of the dict
new_entries = '''
        # Year-End Processing (VB6 frmYearEnd.frm port)
        "Year End Processing": (lambda w: year_end_ui.year_end_process()) if year_end_ui else _coming_soon("Year End Processing"),
        # E-Invoice (VB6 eInvoice.bas port)
        "eInvoice": (lambda w: einvoice_ui.open_einvoice()) if einvoice_ui else _coming_soon("eInvoice"),
'''

# Check if entries already exist
if "Year End Processing" not in content:
    # Insert after the last _coming_soon entry
    insert_pos = brace_close + len('        )})')
    modified = content[:insert_pos] + new_entries + content[insert_pos:]
    with open('ui/shell.py', 'w', encoding='utf-8') as f:
        f.write(modified)
    print("Added Year End and eInvoice entries to shell.py")
else:
    print("Entries already exist in shell.py")

# Also add imports at the top of _form_registry
# Find the import section of _form_registry
import_section_end = content.find('    # Wave 4 imports', 25866)
if import_section_end < 0:
    import_section_end = content.find('    try:', 25866)
    if import_section_end < 0:
        import_section_end = 25866

# Add year_end_ui and einvoice_ui imports
import_addition = '''    # Year-End and E-Invoice imports (VB6 ports)
    try:
        from HMS_py.ui import year_end_ui
    except ImportError:
        year_end_ui = None
    try:
        from HMS_py.ui import einvoice_ui
    except ImportError:
        einvoice_ui = None
'''

# Check if already imported
if "year_end_ui" not in content[:50000]:
    # Insert after the Wave 4 imports block
    wave4_end = content.find('    try:\n        from HMS_py.ui import booking_ops_ui', 25866)
    if wave4_end > 0:
        # Find end of this try block
        next_try = content.find('    try:', wave4_end + 10)
        if next_try < 0:
            next_try = wave4_end + 200
        modified = content[:next_try] + import_addition + content[next_try:]
        with open('ui/shell.py', 'w', encoding='utf-8') as f:
            f.write(modified)
        print("Added imports to shell.py")
    else:
        print("Could not find import section")
else:
    print("Imports already exist")

print("Done!")
