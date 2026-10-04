# -*- coding: utf-8 -*-
"""Scope all HMS module manuals: screenshots vs docx images (pixel-match), report gaps."""
import io, os, sys, zipfile
import docx
from PIL import Image
from docx.oxml.ns import qn

ROOT = r"C:/Users/PC/Downloads/189/113/MANUAL/HMS_Manuals"
MODULES = ["Housekeeping", "POS", "Banquet", "Reservation", "NightAudit", "Inventory",
           "Finance", "HRPayroll", "Maintenance", "MallManagement", "MembersMgmt", "Extras"]

def img_bytes_key(b):
    try:
        im = Image.open(io.BytesIO(b)).convert("RGB")
        return im.size, im.tobytes()
    except Exception:
        return None

def docx_media(path):
    z = zipfile.ZipFile(path)
    out = []
    for n in z.namelist():
        if n.startswith("word/media/"):
            try:
                out.append(z.read(n))
            except Exception:
                pass
    z.close()
    return out

def doc_blips(path):
    d = docx.Document(path)
    heads, media_rids = [], {}
    cur = "(start)"
    placement = []
    for rel_id, rel in d.part.rels.items():
        if "media" in rel.target_ref:
            media_rids[rel.target_ref.split("/")[-1]] = rel_id
    for p in d.paragraphs:
        sname = p.style.name if p.style is not None else ""
        if sname.startswith("Heading") and p.text.strip():
            cur = p.text.strip()
        for b in p._p.findall(".//" + qn("a:blip")):
            placement.append(cur)
    return placement

def shots(folder):
    out = []
    for dp, _, fns in os.walk(folder):
        for fn in fns:
            if fn.lower().endswith((".png", ".jpg", ".jpeg")) and not fn.startswith("~$"):
                out.append(os.path.join(dp, fn))
    return sorted(out)

for m in MODULES:
    mdir = os.path.join(ROOT, m)
    docs = [f for f in os.listdir(mdir) if f.endswith(".docx") and not f.startswith("~$")]
    primary = [f for f in docs if "English" not in f]
    if not primary:
        print(f"== {m}: NO primary docx ({docs}) =="); continue
    docpath = os.path.join(mdir, primary[0])
    sdir = os.path.join(mdir, "screenshots")
    ss = shots(sdir) if os.path.isdir(sdir) else []
    media = docx_media(docpath)
    mset = set()
    for b in media:
        k = img_bytes_key(b)
        if k: mset.add(k)
    placement = doc_blips(docpath)
    missing, matched = [], []
    for sp in ss:
        with open(sp, "rb") as f: k = img_bytes_key(f.read())
        if k and k in mset: matched.append(os.path.basename(sp))
        else: missing.append(os.path.relpath(sp, sdir))
    print(f"== {m} ==")
    print(f"   docx: {primary[0]} | doc-images: {len(media)} | screenshots: {len(ss)} | matched: {len(matched)} | missing: {len(missing)}")
    if missing:
        print("   missing: " + "; ".join(missing[:12]) + (" ..." if len(missing) > 12 else ""))
    # placement distribution per top-level section for matched
    from collections import Counter
    top = Counter(p.split("|")[0].strip()[:30] if p.startswith("SECTION") else p for p in placement)
    print("   placement: " + ", ".join(f"{k}:{v}" for k, v in top.most_common(8)))
