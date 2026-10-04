"""Map VB6 Main Setup menu index -> target form + inline SQL evidence.

Parses MDIForm1.frm click handlers for the Main Setup submenu controls
(GENMas, Mas, POSMas, MemMas, HallM, CCenterMas, PRM, TelMaast, fame, UTL, SCRD).
"""
import io
import re
import sys

PATH = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\FODER\MDIForm1.frm"
lines = io.open(PATH, encoding="latin-1").read().splitlines()

CONTROLS = ["GENMas", "Mas", "POSMas", "MemMas", "HallM", "CCenterMas",
            "PRM", "TelMaast", "fame", "UTL", "SCRD"]

# ---- locate menu captions (reuse tree walk) ----
start = None
for i, l in enumerate(lines):
    if l.strip() == "Begin Menu Mast":
        for j in range(i, min(i + 5, len(lines))):
            if "&Main Setup" in lines[j]:
                start = i
                break
        if start is not None:
            break

menu = {}  # (control, index) -> (group, leaf, visible, line)
stack = []
depth = 1
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
        name = m.group(1)
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
            if name in CONTROLS and idx is not None:
                grp = stack[-1][0] if stack else "?"
                menu[(name, int(idx))] = (grp, clean, vis, i + 1)
            stack.append((clean, name))
        i += 1
        continue
    i += 1

# ---- locate click handler bodies ----
handlers = {}  # control -> {index: (line, body_text)}
for ctl in CONTROLS:
    pat = re.compile(r"^(?:Private |Public )?Sub %s_Click\(.*?\)" % re.escape(ctl))
    for i, l in enumerate(lines):
        if pat.match(l.strip()):
            body = []
            j = i
            depth_h = 0
            while j < len(lines):
                t = lines[j]
                st = t.strip()
                body.append(st)
                if re.match(r"^(?:End Sub|End Function)", st) and len(body) > 1:
                    break
                j += 1
            text = "\n".join(body)
            # split on Case index
            cases = {}
            for cm in re.finditer(r"Case\s+(\d+)(?:\s*(?:,|-)\s*(\d+))?\s*\n(.*?)(?=\n\s*Case\s+\d+\n|\n\s*End Select)", text, re.S):
                a = int(cm.group(1))
                b = int(cm.group(2)) if cm.group(2) else a
                for k in range(a, b + 1):
                    cases[k] = cm.group(3)
            handlers[ctl] = (i + 1, cases, text)
            break

out = []
out.append("=" * 100)
out.append("VB6 MAIN SETUP: menu index -> handler code / target form / SQL tables")
out.append("=" * 100)
n_form = n_sql = 0
for (ctl, idx), (grp, leaf, vis, mline) in sorted(menu.items(), key=lambda x: (x[0][0], x[0][1])):
    h = handlers.get(ctl)
    tag = "" if vis else "  [HIDDEN]"
    if not h:
        out.append("\n%-12s [%2d] %-34s %-24s NO CLICK HANDLER FOUND" % (ctl, idx, leaf, grp))
        continue
    hline, cases, full = h
    body = cases.get(idx)
    if body is None:
        out.append("\n%-12s [%2d] %-34s %-24s NO Case %d branch" % (ctl, idx, leaf, grp, idx))
        continue
    forms = re.findall(r"\b(\w+)\.Show\b", body)
    loads = re.findall(r"Load\s+(\w+)", body)
    targets = forms or loads
    tables = sorted(set(re.findall(r"\b(?:FROM|INTO|UPDATE|JOIN)\s+(\w+)", body, re.I)))
    if targets:
        n_form += 1
    if tables:
        n_sql += 1
    out.append("\n%-12s [%2d] %-34s %-22s%s" % (ctl, idx, leaf, grp, tag))
    out.append("    handler@%d  form=%s" % (hline, ",".join(targets) if targets else "-"))
    if tables:
        out.append("    SQL tables: %s" % ", ".join(tables))
    for ln in body.strip().splitlines():
        if ln.strip():
            out.append("      | %s" % ln.strip()[:150])

out.append("\n" + "=" * 100)
out.append("items with resolved VB6 form: %d ; items with inline SQL: %d" % (n_form, n_sql))

txt = "\n".join(out)
io.open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_qa\MS_VB6_HANDLER_MAP.txt",
        "w", encoding="utf-8").write(txt)
print(txt[:14000])