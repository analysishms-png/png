"""Extract the VB6 Main Setup menu tree from MDIForm1.frm (authoritative)."""
import io
import re
import sys

PATH = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\FODER\MDIForm1.frm"

lines = io.open(PATH, encoding="latin-1").read().splitlines()

start = None
for i, l in enumerate(lines):
    if l.strip() == "Begin Menu Mast":
        for j in range(i, min(i + 5, len(lines))):
            if "&Main Setup" in lines[j]:
                start = i
                break
        if start is not None:
            break
if start is None:
    sys.exit("Main Setup menu not found")

entries = []  # (path, index, visible, line)
stack = []
depth = 1  # "Begin Menu Mast" itself is already open
i = start + 1
while i < len(lines):
    s = lines[i].strip()
    if s == "End":
        depth -= 1
        if stack:
            stack.pop()
        if depth <= 0:
            break
        i += 1
        continue
    m = re.match(r"Begin Menu (\S+)$", s)
    if m:
        depth += 1
        cap = idx = None
        vis = True
        j = i + 1
        while j < len(lines) and lines[j].strip() != "End":
            t = lines[j].strip()
            if t.startswith("Caption =") and cap is None:
                cap = t.split("=", 1)[1].strip().strip('"')
            elif t.startswith("Index =") and idx is None:
                idx = t.split("=", 1)[1].strip()
            elif t.startswith("Visible ="):
                vis = t.split("=", 1)[1].strip().split()[0] not in ("0", "False")
            j += 1
        if cap and cap != "&Main Setup":
            clean = cap.replace("&", "")
            path = " > ".join([c for c, _ in stack] + [clean])
            entries.append((path, idx, vis, i + 1))
            stack.append((clean, m.group(1)))
        i += 1
        continue
    i += 1

indexed = [e for e in entries if e[1] is not None]
visible = [e for e in indexed if e[2]]

out = []
out.append("VB6 Main Setup menu: %d indexed items (%d visible / %d hidden)"
           % (len(indexed), len(visible), len(indexed) - len(visible)))
out.append("")

groups = {}
for path, idx, v, ln in indexed:
    groups.setdefault(path.split(" > ")[0], []).append((path, idx, v, ln))

for g, items in groups.items():
    vv = sum(1 for it in items if it[2])
    out.append("== %s : %d items (%d visible)" % (g, len(items), vv))
    for path, idx, v, ln in sorted(items, key=lambda x: int(x[1])):
        out.append("   [%2s] %-55s %s  (frm line %d)" % (idx, path, "" if v else "HIDDEN", ln))
    out.append("")

text = "\n".join(out)
io.open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_qa\MS_VB6_MENU_TREE.txt",
        "w", encoding="utf-8").write(text)
print(text)