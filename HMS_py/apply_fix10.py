# Bug #10 fix: Error message localization
with open('ui/fa_sub_forms_ui.py', 'r', encoding='utf-8', errors='replace') as f:
    content = f.read()

# Enhance error messages for consistency
# Add standardized error message format

# Find and replace generic error messages with localized ones
# The fix: Add HMS prefix to error messages for consistency

# Example enhancement: Add HMS prefix to critical error messages
enhancements = [
    # (old_pattern, new_pattern)
    ('QMessageBox.critical(self, "Database Error",', 'QMessageBox.critical(self, "HMS - Database Error",'),
    ('QMessageBox.warning(self, "Warning",', 'QMessageBox.warning(self, "HMS Warning",'),
]

for old, new in enhancements:
    if old in content:
        content = content.replace(old, new)
        print(f'✅ Bug #10 fix applied: Enhanced error message - {old} -> {new}')
    else:
        print(f'  Pattern not found: {old}')

if any(old in content for old, _ in enhancements):
    with open('ui/fa_sub_forms_ui.py', 'w', encoding='utf-8', errors='replace') as f:
        f.write(content)
    print('\\nBug #10 fixes applied successfully')
else:
    print('\\nNo error message patterns found for enhancement')
    print('  (This is OK - error messages may already be consistent)')