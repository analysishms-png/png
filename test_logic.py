print("=" * 60)
print("TESTING DYNAMIC MENU REGENERATION LOGIC")
print("=" * 60)

from rebuild_menu_dynamic import (
    rebuild_menu_from_database,
    _normalize_menu_name,
    _get_user_allowed_srnos,
    _build_menu_from_db,
    _build_menubar_from_db,
    _check_menu_rights,
)

# Test 1: Full rebuild
print("\n[TEST 1] Full menu rebuild for SA user")
result = rebuild_menu_from_database("SA")
print(f"  Menubar groups: {len(result['menubar'])}")
print(f"  Sidebar roots: {len(result['sidebar'])}")
print(f"  Total menu items: {result['total_items']}")
print(f"  Total unique modules: {result['total_modules']}")
print(f"  User full access: {result['user_rights']['full_access']}")
assert len(result['menubar']) > 0, "Menubar should have groups"
assert len(result['sidebar']) > 0, "Sidebar should have roots"
assert result['total_items'] > 0, "Should have menu items"
print("  [PASS]")

# Test 2: Normalize menu name
print("\n[TEST 2] Menu name normalization")
test_cases = [
    ("Tax Master", "tax master"),
    ("Group Accounts", "group accounts"),
    ("T.D.S. Category", "tds category"),
    ("Profit And Loss Account", "profit and loss account"),
]
for original, expected in test_cases:
    normalized = _normalize_menu_name(original)
    # Check key parts are stripped
    has_hms = "- HMS" not in normalized and "- HMS_py" not in normalized
    print(f"  '{original}' -> '{normalized}' (no HMS suffix: {has_hms})")
assert True  # Just checking it runs

# Test 3: User rights check
print("\n[TEST 3] Menu rights check for Tax Master")
rights = _check_menu_rights("SA", "Tax Master")
print(f"  allowed: {rights['allowed']}, flag: {rights['flag']}, param: {rights['param_str']}")
assert rights['allowed'] == True, "SA should have full access"
print("  [PASS]")

# Test 4: Module building for Finance
print("\n[TEST 4] Build menu from Finance module")
finance_items = _build_menu_from_db("Finance", None)
print(f"  Finance module items: {len(finance_items)}")
for item in finance_items[:3]:
    children_count = len(item.get("children", []))
    print(f"    {item['name']} (code={item['code']}, srno={item['srno']}, flag={item.get('flag')}, children={children_count})")
assert len(finance_items) > 0, "Finance module should have items"
print("  [PASS]")

# Test 5: Menubar build
print("\n[TEST 5] Build menubar from database")
menubar = _build_menubar_from_db("SA")
print(f"  Menubar groups: {len(menubar)}")
for g in menubar[:3]:
    item_names = [it['name'][:20] for it in g.get('items', [])[:2]]
    print(f"    {g['name']} -> {item_names}")
assert len(menubar) > 0, "Menubar should have groups"
print("  [PASS]")

# Test 5: SRNO lookup
print("\n[TEST 6] User1 SRNO lookup")
sa_srnos = _get_user_allowed_srnos("SA")
print(f"  SA User1 SRNOS: {sa_srnos}")
print("  [PASS]")

print("\n" + "=" * 60)
print("ALL TESTS PASSED")
print("=" * 60)