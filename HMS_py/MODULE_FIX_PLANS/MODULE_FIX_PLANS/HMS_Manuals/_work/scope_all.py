# -*- coding: utf-8 -*-
"""Scope module manuals (optionally English variants too): screenshots vs docx images."""
import io, os, sys, zipfile
import docx
from PIL import Image
from docx.oxml.ns import qn

ROOT = r"C:/Users/PC/Downloads/189/113/MANUAL/HMS_Manuals"
MODULES = ["Housekeeping", "POS", "Banquet", "Reservation", "NightAudit", "Inventory",
           "Finance", "HRPayroll", "Maintenance", "MallManagement", "MembersMgmt", "Extras"]
ALL = "--all" in sys.argv

def img_key(b):
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

def shots(folder):
    out = []
    for dp, _, fns in os.walk(folder):
        for fn in fns:
            if fn.lower().endswith((".png", ".jpg", ".jpeg")) and not fn.startswith("~$"):
                out.append(os.path.join(dp, fn))
    return sorted(out)

def report(docpath, sdir):
    media = docx_media(docpath)
    mset = {k for k in (img_key(b) for b in media) if k}
    ss = shots(sdir) if os.path.isdir(sdir) else []
    missing = []
    for sp in ss:
        with open(sp, "rb") as f:
            k = img_key(f.read())
        if not (k and k in mset):
            missing.append(os.path.relpath(sp, sdir))
    name = os.path.basename(docpath)
    tag = "MISSING!" if missing else "ok"
    print(f"[{tag}] {name}: doc-imgs={len(media)} shots={len(ss)} missing={len(missing)}")
    for m in missing:
        print("      ->", m)
    return missing

problems = 0
for m in MODULES:
    mdir = os.path.join(ROOT, m)
    docs = sorted(f for f in os.listdir(mdir) if f.endswith(".docx") and not f.startswith("~$"))
    targets = docs if ALL else [f for f in docs if "English" not in f]
    for docfn in targets:
        if report(os.path.join(mdir, docfn), os.path.join(mdir, "screenshots")):
            problems += 1
print("\nTODO docs:", problems)
