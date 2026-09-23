import json, sys, os
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.ui import shell
reg = shell._form_registry()
p = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core\mdi_menu.json"
tree = json.load(open(p, encoding="utf-8"))
# collect all leaves under SMS / Messaging / Windows modules
def walk(ns, path=""):
    out=[]
    for n in ns:
        c=n.get("caption","")
        kids=n.get("children") or []
        p2=f"{path}>{c}" if path else c
        if kids: out += walk(kids, p2)
        else: out.append((c, p2, "coming_soon" in repr(reg.get(c))))
    return out
for mod in tree.get("children", []):
    name=mod.get("caption","").replace("&","")
    if name in ("SMS","Messaging","Windows","Direct Sale","PlanPopup","MDI","Sale Bill Modification"):
        leaves=walk(mod.get("children",[]))
        for c,path,soon in leaves:
            fn=reg.get(c)
            print(f"{name:22} {soon!s:5} {c!r} fn={'None' if fn is None else 'yes'}")
