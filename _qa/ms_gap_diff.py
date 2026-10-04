"""Diff VB6 Main Setup visible leaves against the Python _form_registry()."""
import io
import re
import sys

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")

TREE = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_qa\MS_VB6_MENU_TREE.txt"
rows = []
for line in io.open(TREE, encoding="utf-8").read().splitlines():
    m = re.match(r"\s*\[\s*(\d+)\]\s+(.+?)\s*(HIDDEN)?\s*\(frm line (\d+)\)\s*$", line)
    if m:
        idx, path, hid, ln = m.groups()
        rows.append((int(idx), path, bool(hid), int(ln)))

visible_leaves = [r for r in rows if not r[2] and " > " in r[1]]
hidden_leaves = [r for r in rows if r[2] and " > " in r[1]]
print("VB6 Main Setup: %d leaves total / %d visible / %d hidden"
      % (len([r for r in rows if ' > ' in r[1]]), len(visible_leaves), len(hidden_leaves)))

from HMS_py.ui.shell import _form_registry
reg = _form_registry()
reg_ci = {str(k).strip().lower(): v for k, v in reg.items()}


def opener_ok(v):
    if v is None:
        return False
    if callable(v):
        return True
    return True


wired, missing, coming_soon = [], [], []
for idx, path, hid, ln in visible_leaves:
    leaf = path.split(" > ")[-1]
    key = leaf.strip().lower()
    v = reg_ci.get(key)
    if v is None:
        missing.append((idx, path, ln, "ABSENT-FROM-REGISTRY"))
    elif isinstance(v, str) or "coming soon" in str(getattr(v, "__doc__", "")).lower():
        coming_soon.append((idx, path, ln, "PLACEHOLDER"))
    else:
        wired.append((idx, path, ln))

print("\nWIRED (registry has real opener): %d" % len(wired))
print("PLACEHOLDER: %d" % len(coming_soon))
for r in coming_soon:
    print("   [%2d] %s" % (r[0], r[1]))
print("MISSING (absent from registry): %d" % len(missing))
for r in missing:
    print("   [%2d] %-58s (frm %d)" % (r[0], r[1], r[2]))

print("\n== per-group wiring ==")
g = {}
for idx, path, hid, ln in visible_leaves:
    grp = path.split(" > ")[0]
    g.setdefault(grp, [0, 0, 0])
    g[grp][0] += 1
    key = path.split(" > ")[-1].strip().lower()
    if key in reg_ci and reg_ci[key] is not None:
        g[grp][1] += 1
    else:
        g[grp][2] += 1
for grp, (tot, w, m) in g.items():
    print("  %-16s total=%-3d wired=%-3d missing=%d" % (grp, tot, w, m))