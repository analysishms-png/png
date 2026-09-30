# Bug #8 fix: Add adj_pending check to delete method in partial_forms_ui.py
with open('ui/partial_forms_ui.py', 'r', encoding='utf-8', errors='replace') as f:
    content = f.read()

# The _delete method section we need to enhance
# Based on earlier analysis, the _delete method in AdjustmentDeleteWindow
# starts at around line 1154 with "def _delete(self):"

# Let me find the exact section
idx = content.find('def _delete')
if idx >= 0:
    # Print 100 chars from that point
    print('Found def _delete at index:', idx)
    print(content[idx:idx+200])
else:
    print('def _delete not found')