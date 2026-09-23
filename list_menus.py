import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy')
from HMS_py.core import menu

for m in menu.sidebar_modules():
    name = m['name']
    menubar = menu.menubar_for(name)
    print(f"MODULE: {name}")
    for grp in menubar:
        items_str = []
        for it in grp['items']:
            ch = [c['name'] for c in it.get('children', [])]
            if ch:
                items_str.append(f"{it['name']} -> [{', '.join(ch)}]")
            else:
                items_str.append(it['name'])
        print(f"  {grp['name']}: {', '.join(items_str[:8])}")
    print()
