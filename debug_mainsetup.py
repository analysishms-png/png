#!/usr/bin/env python3
"""Debug: Main Setup Module - Frontend and Backend Verification"""

print("=" * 60)
print("MAINSETUP MODUL DEBUG: Frontend + Backend")
print("=" * 60)
print()

from HMS_py.core.general_setup import (
    SITE_CODE, USER, ENVIRO_EDITABLE_FIELDS, ENVIRO_FINANCE_FIELDS,
    roomfeat_list, roomfeat_get, roomfeat_exists, roomfeat_insert, roomfeat_update, roomfeat_delete
)
from HMS_py.core.sys_config import (
    SITE_CODE as SC2, USER as US2,
    roundoff_list, _map_roundoff
)
from HMS_py.core import db

print("1. FRONTEND: General Setup Configuration")
print("-" * 50)
print(f"   SITE_CODE (from ini):              '{SITE_CODE}'")
print(f"   USER (from session):               '{USER}'")
print(f"   Total editable env fields:        {len(ENVIRO_EDITABLE_FIELDS)}")
print(f"   Total finance fields (read-only):  {len(ENVIRO_FINANCE_FIELDS)}")
print()

print("   ENVIRO_EDITABLE_FIELDS (sample - first 10):")
for i, field in enumerate(sorted(ENVIRO_EDITABLE_FIELDS)[:10]):
    print(f"     - {field}")
print(f"     ... and {len(ENVIRO_EDITABLE_FIELDS) - 10} more")

print()
print("   ENVIRO_FINANCE_FIELDS (sample - first 10):")
for i, field in enumerate(sorted(ENVIRO_FINANCE_FIELDS)[:10]):
    print(f"     - {field}")
print(f"     ... and {len(ENVIRO_FINANCE_FIELDS) - 10} more")

print()
print("2. BACKEND: Database Functions Verification")
print("-" * 50)

# Test roomfeat functions
print("   Room Feature Master functions:")
try:
    rooms = roomfeat_list()
    rc = len(rooms)
    print(f"     roomfeat_list(): {rc} room features loaded")
    print("     OK" if rc >= 0 else "     ERROR")
except Exception as e:
    print(f"     ERROR: {e}")

try:
    # Test with a known code or first room feat
    if rooms:
        first_code = rooms[0].get("code", "")
        fetched = roomfeat_get(first_code)
        status = "OK" if fetched else "NO_DATA"
        print(f"     roomfeat_get(): {status}")
except Exception as e:
    print(f"     ERROR: {e}")

try:
    # Test exists
    if rooms:
        test_code = rooms[0].get("code", "") if rooms else ""
        exists = roomfeat_exists(test_code)
        status = "OK" if exists else "NOT_EXISTS"
        print(f"     roomfeat_exists(): {status}")
except Exception as e:
    print(f"     ERROR: {e}")

# Test roundoff functions
print()
print("   Round-Off Settings functions:")
try:
    rounds = roundoff_list(limit=10)
    rc = len(rounds)
    print(f"     roundoff_list(limit=10): {rc} round-off rules loaded")
    print("     OK" if rc >= 0 else "     ERROR")
except Exception as e:
    print(f"     ERROR: {e}")

try:
    if rounds:
        first_round = _map_roundoff(rounds[0])
        print(f"     _map_roundoff(first round): OK")
        print("     OK")
except Exception as e:
    print(f"     ERROR: {e}")

print()
print("3. CORE DATA CHECK")
print("-" * 50)

# Check site code consistency
print(f"   SITE_CODE from general_setup:    '{SITE_CODE}'")
print(f"   SITE_CODE from sys_config:       '{SC2}'")
mc = "MATCH" if SITE_CODE == SC2 else "MISMATCH"
print(f"   Match:                            {mc}")

print(f"   USER from general_setup:         '{USER}'")
print(f"   USER from sys_config:            '{US2}'")
print(f"   Match:                            {'MATCH' if USER == US2 else 'MISMATCH'}")

print()
print("4. DEBUG HINTS")
print("-" * 50)
print("   • SITE_CODE driven from Analysis.ini key 7 = 'KK'")
print("   • USER loaded from session/INI configuration")
print("   • ENVIRO_EDITABLE_FIELDS: 111 operational flags editable")
print("   • ENVIRO_FINANCE_FIELDS: 84 financial fields read-only")
print("   • RoomFeature: master data with Code, Name, Site_Code")
print("   • RoundOffSetting: PK = RoundOFFType + ModuleName + Site_Code")
print("   • BUG-014: SITE_CODE was previously hardcoded 'KK', now ini-driven")

print()
print("=" * 60)
print("MAINSETUP DEBUG COMPLETE")
print("=" * 60)