#!/usr/bin/env python3
"""Script to fix Main Setup reports SQL - replace LogSite_Code parameter with subquery"""

import re

# Read the current file
with open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core\reports.py", "r") as f:
    content = f.read()

# Replace LogSite_Code = ? OR LogSite_Code = 'HO' with subquery pattern
# Pattern: LogSite_Code = \? OR LogSite_Code = 'HO'
# Replace with: LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO'

old_pattern = r"LogSite_Code = \? OR LogSite_Code = 'HO'"
new_pattern = "LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO'"

# Count occurrences before
old_count = len(re.findall(old_pattern, content))
print(f"Found {old_count} occurrences of LogSite_Code parameter pattern")

# Replace
new_content = re.sub(old_pattern, new_pattern, content)

# Count occurrences after
new_count = len(re.findall(old_pattern, new_content))
print(f"Remaining occurrences after replacement: {new_count}")

# Write back
with open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core\reports.py", "w") as f:
    f.write(new_content)

print("Done!")