#!/usr/bin/env python3
"""Debug: Test ACGROUP vs SubGroup table usage (Bug #3)"""

import sys
from HMS_py.core import db

print('=' * 60)
print('BUG #3: ACGROUP vs SUBGROUP TABLE USAGE')
print('=' * 60)
print()
print('VB6: FaAdjust.frm uses ACGROUP table for account selection')
print('Python: AdjustmentDeleteWindow._load_accounts uses SubGroup table')
print('BUG: Different tables = wrong data shown')
print()
print('Checking both tables...')
print()

# Test 1: ACGROUP table
print('TEST 1: ACGROUP table (VB6 equivalent)')
try:
    rows = db.query("SELECT GroupCode, GroupName FROM ACGROUP ORDER BY GroupName LIMIT 10")
    print(f'  SUCCESS: {len(rows)} rows found')
    for r in rows[:3]:
        print(f'  - Code: "{r[0]}", Name: "{r[1]}"')
except Exception as e:
    print(f'  ERROR: {e}')

print()

# Test 2: SubGroup table  
print('TEST 2: SubGroup table (Python current usage)')
try:
    rows = db.query("SELECT SubCode, Name FROM SubGroup ORDER BY Name LIMIT 10")
    print(f'  SUCCESS: {len(rows)} rows found')
    for r in rows[:3]:
        print(f'  - Code: "{r[0]}", Name: "{r[1]}"')
except Exception as e:
    print(f'  ERROR: {e}')

print()
# Test 3: Compare sample data
print('TEST 3: Compare first few entries from each table')
try:
    ac_rows = db.query("SELECT GroupCode, GroupName FROM ACGROUP ORDER BY GroupName")
    sg_rows = db.query("SELECT SubCode, Name FROM SubGroup ORDER BY Name")
    
    print(f'  ACGROUP total: {len(ac_rows)} rows')
    print(f'  SubGroup total: {len(sg_rows)} rows')
    
    # Show if they have overlapping data
    ac_codes = set(r[0] for r in ac_rows)
    sg_codes = set(r[0] for r in sg_rows)
    
    overlap = ac_codes & sg_codes
    only_ac = ac_codes - sg_codes
    only_sg = sg_codes - ac_codes
    
    print(f'  Overlapping codes: {len(overlap)}')
    print(f'  Only in ACGROUP: {len(only_ac)}')
    print(f'  Only in SubGroup: {len(only_sg)}')
    
    if only_ac:
        print(f'  ACGROUP-only codes: {list(only_ac)[:5]}')
    if only_sg:
        print(f'  SubGroup-only codes: {list(only_sg)[:5]}')
        
except Exception as e:
    print(f'  ERROR comparing tables: {e}')

print()
print('BUG ANALYSIS:')
print('  - VB6 FaAdjust BtnAdd UnknownEvent queries ACGROUP')
print('  - Python AdjustmentDeleteWindow._load_accounts queries SubGroup')
print('  - Result: Different accounts shown, wrong data for adjustments')
print('  - FIX: Change SubGroup query to ACGROUP like VB6')
print('=' * 60)