#!/usr/bin/env python3
"""Add get_acgroup_list function to fa_ledger_ops.py"""

from HMS_py.core import fa_ledger_ops as falo
import inspect

# Check current state
print("Current functions in fa_ledger_ops:")
for name in sorted(dir(falo)):
    if not name.startswith('_'):
        print(f"  {name}")

# Check if get_acgroup_list exists
if hasattr(falo, 'get_acgroup_list'):
    print("\nget_acgroup_list already exists!")
else:
    print("\nget_acgroup_list does NOT exist - need to add it")
    
# Show the adj_pending function which might be related
print("\nadj_pending function signature:")
print(inspect.signature(falo.adj_pending))