import json, sys, os, inspect, re
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
import HMS_py.ui.shell as shell
from HMS_py.core import reports as rp

reg = shell._form_registry()
capmap = rp.menu_caption_map()
tree = json.load(open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core\mdi_menu.json", encoding="utf-8"))

# parents that have >=1 live leaf child
parents = []
def walk(ns):
    for n in ns:
        kids = n.get("children") or []
        cap = (n.get("caption") or "").replace("&", "")
        if kids and cap:
            leaves = []
            def collect(kns):
                for k in kns:
                    kc = (k.get("caption") or "").replace("&", "")
                    kk = k.get("children") or []
                    if kk: collect(kk)
                    elif kc: leaves.append(kc)
            collect(kids)
            live = [x for x in leaves if reg.get(x)]
            if live and cap not in reg:
                parents.append((cap, live[0]))
        if kids: walk(kids)
walk(tree.get("children", []))
print(f"missing parent openers: {len(parents)}")
for p, first in parents[:30]:
    print(f"  {p!r} -> {first!r} (capmap={bool(capmap.get(first))})")
