"""Map VB6 Main Setup menu index -> target VB6 form (from decompiled New <Form>)."""
import io
import re

PATH = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\FODER\MDIForm1.frm"
lines = io.open(PATH, encoding="latin-1").read().splitlines()

CONTROLS = ["GENMas", "Mas", "POSMas", "MemMas", "HallM", "CCenterMas",
            "PRM", "TelMaast", "fame", "UTL", "SCRD"]

# ---------- menu tree ----------
start = None
for i, l in enumerate(lines):
    if l.strip() == "Begin Menu Mast":
        for j in range(i, min(i + 5, len(lines))):
            if "&Main Setup" in lines[j]:
                start = i
                break
        if start is not None:
            break

menu = {}
stack, depth, i = [], 1, start + 1
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
                menu[(name, int(idx))] = (stack[-1][0] if stack else "?", clean, vis, i + 1)
            stack.append((clean, name))
        i += 1
        continue
    i += 1

# ---------- handlers ----------
handlers = {}
for ctl in CONTROLS:
    pat = re.compile(r"^\s*(?:Private |Public )?Sub %s_Click\(" % re.escape(ctl))
    for i, l in enumerate(lines):
        if pat.search(l):
            j = i
            body = []
            while j < len(lines):
                body.append(lines[j])
                if re.match(r"^\s*End Sub\s*$", lines[j]) and len(body) > 1:
                    break
                j += 1
            handlers[ctl] = (i + 1, body)
            break

out = ["=" * 110,
       "VB6 MAIN SETUP - menu index -> VB6 form (decompiled 'New <Form>' dispatch)",
       "=" * 110]

mapping = {}   # leaf -> form
for (ctl, idx), (grp, leaf, vis, mline) in sorted(menu.items(), key=lambda x: (x[0][0], x[0][1])):
    h = handlers.get(ctl)
    tag = "" if vis else "   [HIDDEN]"
    if not h:
        out.append("%-11s [%2d] %-38s %-16s%s  <no handler>" % (ctl, idx, leaf, grp, tag))
        continue
    hline, body = h
    disp = {}
    cur = None
    for raw in body:
        t = raw.strip()
        mi = re.search(r"If \(var_[0-9A-Za-z]+ = (\d+)\) Then", t)
        if mi:
            cur = int(mi.group(1))
            continue
        nm = re.search(r"=\s*New\s+(\w+)", t)
        if nm and cur is not None:
            disp.setdefault(cur, nm.group(1))
    forms_by_idx = disp
    out.append("__DISPATCH__ %s : %s" % (ctl, disp))
    form = None
    if forms_by_idx:
        form = forms_by_idx.get(idx)
    if form:
        mapping[leaf] = form
    out.append("%-11s [%2d] %-38s %-16s%s  -> %s   (handler@%d)"
               % (ctl, idx, leaf, grp, tag, form or "<no New>", hline))

out.append("")
out.append("resolved forms: %d of %d menu items" % (len(mapping), len(menu)))

# ---------- which .frm files exist ----------
import os
FD = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\FODER"
have = {f[:-4].lower() for f in os.listdir(FD) if f.lower().endswith(".frm")}
out.append("")
out.append("== form source presence ==")
miss = []
for leaf, form in sorted(mapping.items()):
    ok = form.lower() in have
    if not ok:
        miss.append((leaf, form))
    out.append("  %-38s %-24s %s" % (leaf, form, "frm OK" if ok else "!! .frm NOT FOUND"))
out.append("")
out.append("forms referenced but .frm missing: %d" % len(miss))
for leaf, form in miss:
    out.append("   %s -> %s" % (leaf, form))

txt = "\n".join(out)
io.open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_qa\MS_VB6_FORM_MAP.txt",
        "w", encoding="utf-8").write(txt)
print(txt)