# Bug #3 fix: MSFlexGrid behavior differences
# Add QTableWidget properties to mimic VB6 MSFlexGrid behavior

with open('ui/fa_sub_forms_ui.py', 'r', encoding='utf-8', errors='replace') as f:
    content = f.read()

# The fix: Add MSFlexGrid-compatible behavior to the QTableWidget
old = """self.tbl.setAlternatingRowColors(True)
        self.tbl.horizontalHeader().setStretchLastSection(True)"""

new = """self.tbl.setAlternatingRowColors(True)
        self.tbl.setSelectionBehavior(QTableWidget.SelectRows)
        self.tbl.setSelectionMode(QTableWidget.SingleSelection)
        self.tbl.setShowGrid(True)
        self.tbl.horizontalHeader().setStretchLastSection(True)"""

if old in content:
    content = content.replace(old, new)
    with open('ui/fa_sub_forms_ui.py', 'w', encoding='utf-8', errors='replace') as f:
        f.write(content)
    print('✅ Bug #3 fix applied: Added MSFlexGrid-like selection behavior')
else:
    print('❌ Could not find the target section to replace')
    print('Looking for alternative...')
    # Try to find the section
    if 'setAlternatingRowColors' in content:
        print('Found setAlternatingRowColors but pattern did not match')
    else:
        print('setAlternatingRowColors not found either')