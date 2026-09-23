import sys
import os

# Add the current directory to the path so we can import core
sys.path.insert(0, '.')

import re

# Read the original report
with open('original_report.txt', 'r', encoding='utf-8') as f:
    content = f.read()

# Find all lines that start with "## "
l1_candidates = []
for line in content.split('\n'):
    if line.startswith('## '):
        # Remove the "## " and any trailing spaces
        name = line[3:].strip()
        l1_candidates.append(name)

print("L1 node names from original report:")
for name in l1_candidates:
    print(f"  {name}")

# Now, we need to check against the menuHelp table for SA
from core import menu_help as mh

rows = mh._load_user('SA')
# Get L1 nodes: flag='N', opt2, opt3, opt4 empty, opt1 not empty
l1_nodes = []
for r in rows:
    if r.get('flag') == 'N' and r.get('opt2') == '' and r.get('opt3') == '' and r.get('opt4') == '' and r.get('opt1') and r.get('opt1') != '':
        l1_nodes.append((r.get('opt1'), r.get('caption').strip()))

print("\nL1 nodes in menuHelp table for SA:")
for opt1, caption in l1_nodes:
    print(f"  Opt1={opt1}: {caption}")

# Find missing L1 nodes: those in l1_candidates but not in l1_nodes (by caption)
missing_l1 = []
for name in l1_candidates:
    found = False
    for _, caption in l1_nodes:
        if caption.lower() == name.lower():
            found = True
            break
    if not found:
        missing_l1.append(name)

print("\nMissing L1 nodes (by caption):")
for name in missing_l1:
    print(f"  {name}")