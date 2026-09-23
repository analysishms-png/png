import json, sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py")

from HMS_py.core import menu_help as _mh

# Load mdi_menu.json
mdi_path = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core\mdi_menu.json"
mdi_data = json.load(open(mdi_path))

# Build _form_registry by importing shell
from HMS_py.ui.shell import _form_registry
reg = _form_registry()
reg_keys = set(reg.keys())
reg_ci = {str(k).strip().lower(): k for k in reg_keys}

# MainSetupWorkbench groups
wb_groups = {
    "Front Office": ["Country Master", "State Master", "Area Master", "Room Category", "Room Master", "Package Master", "Season Master", "Company Master", "Guest Parameters Setting"],
    "General Setup": ["Charge Master", "Unit Master", "Item Master", "Sundry Master", "Narration Master", "Department/Outlet", "Room Features", "Godown Master", "Voucher Environment", "FA Environment", "Parameter", "Printing Setup", "Voucher Category", "Voucher Type", "eInvoice Config"],
    "Finance & Reports": ["Tax Master", "Tax Structure", "Payment Type", "Market Segment", "Business Source", "Guest Status", "Forex Master", "Ledger Accounts", "Group Accounts"],
    "POS & Banquet": ["Session Master", "Scheme Master", "Delivery Boy", "Menu Category", "Venue Master", "Venue Features", "Catalog Master", "Group Profile", "NC Type", "Server / Waiter", "Shift Master", "Combo Pack", "Smart Card", "Function Type", "Call Type", "Call Code", "Extension"],
    "HR & Members": ["Category  Master", "Holiday Master", "Employee Master", "Category Master", "Facility Master", "Revenue Master"],
    "Inventory & Reports": ["Indent", "Stock Summary", "Stock Register", "Stock Register Detailed", "GIN / Purchase Receipt", "Kitchen Stock Report", "Kitchen Stock Summary", "eInvoice Config"],
}
wb_items = set()
for items in wb_groups.values():
    for i in items: wb_items.add(i)

# Sidebar
from HMS_py.ui.sidebar_buttons import AUTO_OPEN, DIRECT_ACTIONS
auto_open_caps = set(AUTO_OPEN.values())
direct_caps = set(DIRECT_ACTIONS.values())

def norm_caption(c):
    s = str(c or "").strip().lower()
    s = s.replace("\r","").replace("\n","")
    while "  " in s: s = s.replace("  "," ")
    if s.endswith(")"): s = s.rsplit("(",1)[0].strip()
    return s.strip()

def find_in_registry(caption):
    key = norm_caption(caption)
    if key in reg_ci:
        return True, reg_ci[key]
    return False, None

def extract_leaves(node, path=""):
    leaves = []
    current_path = f"{path} > {node['caption']}".strip(" >") if node['caption'] else path
    if not node.get('children'):
        leaves.append({'caption': node['caption'].strip(), 'name': node['name'], 'path': current_path})
    else:
        for child in node['children']:
            leaves.extend(extract_leaves(child, current_path))
    return leaves

leaves = extract_leaves(mdi_data)

result = []
for l in leaves:
    cap = l['caption']
    in_reg, reg_key = find_in_registry(cap)
    in_wb = cap in wb_items
    is_auto = cap in auto_open_caps
    is_direct = cap in direct_caps

    # Determine category
    if not in_reg and not in_wb:
        category = "missing"
    elif in_reg:
        # Check if it's a real opener or _coming_soon
        fn = reg.get(reg_key)
        if fn is None:
            category = "documentation-only"
        else:
            category = "ported"
    elif in_wb and not in_reg:
        category = "partial"
    else:
        category = "ported"

    result.append({
        "leaf_caption": cap,
        "vb6_node": l['name'],
        "menu_path": l['path'],
        "in_form_registry": in_reg,
        "registry_key": reg_key,
        "in_mainsetup": in_wb,
        "sidebar_auto_open": is_auto,
        "sidebar_direct_action": is_direct,
        "category": category
    })

output = {"cross_reference": result, "summary": {
    "total_leaves": len(result),
    "ported": sum(1 for r in result if r['category'] == 'ported'),
    "partial": sum(1 for r in result if r['category'] == 'partial'),
    "missing": sum(1 for r in result if r['category'] == 'missing'),
    "documentation_only": sum(1 for r in result if r['category'] == 'documentation-only'),
    "in_registry": sum(1 for r in result if r['in_form_registry']),
    "in_mainsetup": sum(1 for r in result if r['in_mainsetup']),
    "auto_open": sum(1 for r in result if r['sidebar_auto_open']),
    "direct_actions": sum(1 for r in result if r['sidebar_direct_action'])
}}

out_path = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\cross_reference.json"
with open(out_path, 'w', encoding='utf-8') as f:
    json.dump(output, f, indent=2, ensure_ascii=False)
print(f"Generated {len(result)} leaf entries")
print(f"Summary: {json.dumps(output['summary'], indent=2)}")
print(f"Saved to: {out_path}")
