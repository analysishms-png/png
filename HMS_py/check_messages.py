# Bug #10 fix: Error message localization
with open('ui/fa_sub_forms_ui.py', 'r', encoding='utf-8', errors='replace') as f:
    content = f.read()

# Search for QMessageBox calls and show the actual messages
import re
# Find all QMessageBox calls
matches = list(re.finditer(r'QMessageBox\.(\w+)\(self, "(.*?)", "(.*?)"', content))
for m in matches:
    print(f'Type: {m.group(1)}, Title: {m.group(2)}, Message: {m.group(3)[:80]}')

print()

# Also find QMessageBox.question calls
matches2 = list(re.finditer(r'QMessageBox\.question\(self, "(.*?)", "(.*?)"', content))
for m in matches2:
    print(f'Question - Title: {m.group(1)}, Message: {m.group(2)[:80]}')