# -*- coding: utf-8 -*-
"""Audit FrontOfficeModuleManual.docx: image placement, captions, formatting issues."""
import docx
from docx.oxml.ns import qn
from docx.shared import Emu

PATH = r"C:/Users/PC/Downloads/189/113/MANUAL/HMS_Manuals/FrontOffice/FrontOfficeModuleManual.docx"
d = docx.Document(PATH)
body = d.element.body

# usable width
sec = d.sections[0]
usable = sec.page_width - sec.left_margin - sec.right_margin
print(f"usable width: {usable/914400:.2f} in")

def has_img(p):
    return p._p.find(".//" + qn("a:blip")) is not None

def centered(p):
    jc = p._p.find(qn("w:pPr") + "/" + qn("w:jc"))
    return jc is not None and jc.get(qn("w:val")) == "center"

# ---- 1. heading sanity ----
print("\n== HEADING SANITY ==")
heads = [(i, p) for i, p in enumerate(d.paragraphs) if p.style.name.startswith("Heading")]
texts = [p.text.strip() for _, p in heads]
need = ["SECTION 8"] + [f"B.{k}" for k in range(1, 7)] + \
       ["SECTION 1", "SECTION 2", "SECTION 3", "SECTION 4"] + \
       [f"1.{k}" for k in range(1, 11)] + [f"2.{k}" for k in range(1, 10)] + \
       [f"3.{k}" for k in range(1, 7)] + ["4.1", "4.2", "4.3", "4.4", "4.5", "4.6"]
missing = [n for n in need if not any(t.startswith(n) or t == n for t in texts)]
print("missing headings:", missing if missing else "NONE - structure complete")

# headings containing images
for i, p in heads:
    if has_img(p):
        print("!! image inside heading:", repr(p.text.strip()))

# ---- 2. per-section layout sequence ----
print("\n== LAYOUT SEQUENCE PER SECTION ==")
issues = []
cur = "(cover)"
seq = {}
order = []
for p in d.paragraphs:
    t = p.text.strip()
    if p.style.name.startswith("Heading"):
        cur = t or "(empty-heading)"
        seq[cur] = []
        order.append(cur)
    if has_img(p):
        seq.setdefault(cur, []).append("I" + ("" if centered(p) else "!L"))
    elif t.startswith("Screenshot:"):
        seq[cur].append("C")
    elif t.startswith("Navigation Path"):
        seq[cur].append("N")
    elif t:
        seq[cur].append("T")

for s in order:
    print(f"  [{s}]: {' '.join(seq.get(s, []))}")

# ---- 3. leftover empty centered paragraphs (orphaned image slots) ----
print("\n== EMPTY CENTERED PARAGRAPHS (likely leftovers) ==")
n = 0
for p in d.paragraphs:
    if not p.text.strip() and not has_img(p) and centered(p):
        n += 1
        print("  leftover near section:", cur)
print("count:", n)

# ---- 4. images: captions / width / centering ----
print("\n== IMAGE CHECKS ==")
nocap = []; wide = []; uncentered = []
for p in d.paragraphs:
    if has_img(p) and not p.style.name.startswith("Heading"):
        nxt = p._p.getnext()
        cap = None
        while nxt is not None and nxt.tag == qn("w:p"):
            txt = "".join(nxt.itertext()).strip()
            if txt:
                cap = txt.startswith("Screenshot:")
            break
        if not cap:
            nocap.append(cur)
        for shp in p._p.findall(".//" + qn("wp:extent")):
            w = int(shp.get("cx"))
            if w > usable:
                wide.append(round(w / 914400, 2))
        if not centered(p):
            uncentered.append(cur)
print("images without caption next:", len(nocap), nocap)
print("images wider than usable:", wide)
print("uncentered images:", len(uncentered), uncentered)

# inline shape stats
print("\n== INLINE SHAPE WIDTHS ==")
for s in d.inline_shapes:
    print(f"  {s.width/914400:.2f} x {s.height/914400:.2f} in")
EOF_MARKER = None
