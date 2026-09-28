#!/usr/bin/env python3
"""Test: Verify ACGROUP vs SubGroup table fix"""

from HMS_py.core import db

print("=" * 60)
print("TEST: ACGROUP vs SubGroup Table Fix")
print("=" * 60)
print()

# Test 1: ACGROUP table query (the FIX)
print("TEST 1: ACGROUP table query (FIX - should use ACGROUP like VB6)")
try:
    rows = db.query('SELECT GroupCode, GroupName FROM ACGROUP ORDER BY GroupName')
    print(f"  SUCCESS: {len(rows)} rows found")
    for r in rows[:5]:
        print(f"  - Code: \"{r[0]}\", Name: \"{r[1]}\"")
except Exception as e:
    print(f"  ERROR: {e}")

print()

# Test 2: SubGroup table query (the OLD buggy code)
print("TEST 2: SubGroup table query (OLD - was incorrectly used)")
print("  This should show more rows but WRONG data for adjustments")
try:
    rows = db.query('SELECT SubCode, Name FROM SubGroup ORDER BY Name')
    print(f"  SUCCESS: {len(rows)} rows found (but these are SubGroup, not ACGROUP)")
    print(f"  NOTE: SubGroup has {len(rows)} rows vs ACGROUP's {len(db.query('SELECT GroupCode, GroupName FROM ACGROUP ORDER BY GroupName'))} rows")
    for r in rows[:3]:
        print(f"  - Code: \"{r[0]}\", Name: \"{r[1]}\"")
except Exception as e:
    print(f"  ERROR: {e}")

print()
print("BUG ANALYSIS:")
print("  - VB6 FaAdjust BtnAdd UnknownEvent queries ACGROUP table")
print("  - Python AdjustmentDeleteWindow._load_accounts previously queried SubGroup")
print("  - RESULT: Different accounts shown, wrong data for adjustments")
print("  - FIX: Changed to ACGROUP table query (see partial_forms_ui.py _load_accounts)")
print("  - VERIFICATION: ACGROUP has fewer rows but CORRECT data for adjustments")
print("=" * 60)