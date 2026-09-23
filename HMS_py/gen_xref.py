import json
from collections import defaultdict

mdi_data = json.loads(open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core\mdi_menu.json").read())

def extract_leaves(node, path=""):
    leaves = []
    current_path = f"{path} > {node['caption']}".strip(" >") if node['caption'] else path
    if not node.get('children'):
        leaves.append({
            'name': node['name'],
            'caption': node['caption'].strip(),
            'path': current_path,
            'parent_node': node.get('name', '')
        })
    else:
        for child in node['children']:
            leaves.extend(extract_leaves(child, current_path))
    return leaves

leaves = extract_leaves(mdi_data)
print(f"Total VB6 leaf items: {len(leaves)}")

by_parent = defaultdict(list)
for l in leaves:
    by_parent[l['parent_node']].append(l['caption'])

for p, caps in sorted(by_parent.items()):
    print(f"\n[{p}] ({len(caps)} leaves)")
    for c in caps:
        print(f"  - {c}")
