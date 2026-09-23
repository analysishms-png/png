"""Find mdi leaf captions not in form registry."""
import json
import sys
from pathlib import Path

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.ui.shell import _form_registry
from HMS_py.core import reports as rp

reg = _form_registry()
live = {k for k, v in reg.items() if v is not None}
capmap = rp.menu_caption_map()

p = Path(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core\mdi_menu.json")
data = json.loads(p.read_text(encoding="utf-8"))
nodes = data if isinstance(data, list) else data.get("menus") or data.get("children") or []
# handle nested root
if isinstance(data, dict) and not nodes:
    for v in data.values():
        if isinstance(v, list) and v and isinstance(v[0], dict):
            nodes = v
            break

leaves = []
parents = []

def walk(ns):
    for n in ns:
        c = n.get("caption")
        kids = n.get("children") or []
        if not c:
            walk(kids)
            continue
        if kids:
            parents.append(c)
            walk(kids)
        else:
            leaves.append(c)

walk(nodes)
print(f"leaves={len(leaves)} parents={len(parents)}")

def wired(c):
    variants = [c, c.replace("&&", "&"), c.replace("&", ""), c.strip()]
    return any(v in live for v in variants) or c in capmap

open_leaves = [c for c in leaves if wired(c)]
closed = [c for c in leaves if not wired(c)]
print(f"leaf OPEN={len(open_leaves)} CLOSED={len(closed)}")
print("--- CLOSED LEAVES ---")
for c in closed:
    # hint: report key?
    hint = capmap.get(c) or capmap.get(c.replace("&&", "&"))
    print(f"  {c!r}  report_key={hint}")

print("--- PARENT captions not in registry (submenu only, OK) ---")
pclosed = [c for c in parents if not wired(c)]
print(len(pclosed))
for c in pclosed[:40]:
    print(f"  P: {c!r}")
