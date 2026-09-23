import re

with open("HMS_py\\ui\\shell.py", "r", encoding="utf-8") as f:
    content = f.read()

# Find all _coming_soon references
matches = re.finditer(r'_coming_soon\("([^"]+)"\)', content)
count = 0
for m in matches:
    line_num = content[:m.start()].count('\n') + 1
    print(f"Line {line_num}: _coming_soon('{m.group(1)}')")
    count += 1

print(f"\nTotal _coming_soon entries: {count}")