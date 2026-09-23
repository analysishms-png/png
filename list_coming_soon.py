import re
with open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\ui\shell.py", "r", encoding="utf-8", errors="replace") as f:
    content = f.read()

# Find all _coming_soon lines with line numbers
for i, line in enumerate(content.split("\n"), 1):
    if "_coming_soon" in line:
        print(f"Line {i}: {line.strip()}")