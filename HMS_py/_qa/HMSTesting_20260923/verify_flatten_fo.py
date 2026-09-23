import sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import menu
from HMS_py.ui.shell import _flatten_fo_operations, _inject_ported_extras, _form_registry

groups = menu.menubar_for("Front Office", "SA")
groups = _flatten_fo_operations("Front Office", groups)
groups = _inject_ported_extras("Front Office", groups)
print("=== Flattened Front Office ===")
for g in groups:
    print(f"[{g['name']}]")
    for it in g["items"]:
        kids = it.get("children") or []
        if kids:
            print(f"  {it['name']} > {[c['name'] for c in kids]}")
        else:
            print(f"  - {it['name']}")

reg = _form_registry()
print("F&&B Cost:", reg.get("F&&B Cost Statement"))
print("FB Cost:", reg.get("FB Cost Statement"))

# Expected: WalkIn CheckIn and Bill Reprint as leaves; Room Status etc siblings
ops = next(g for g in groups if g["name"] == "Operations")
names = [it["name"] for it in ops["items"]]
assert "WalkIn CheckIn" in names, "WalkIn missing"
assert "Room Status" in names, "Room Status should be sibling"
assert "Bill Reprint" in names
assert "Reverse Check Out" in names
walk = next(it for it in ops["items"] if it["name"] == "WalkIn CheckIn")
assert not walk.get("children"), f"WalkIn should be leaf, got {walk.get('children')}"
print("\nFLATTEN ASSERT OK")
