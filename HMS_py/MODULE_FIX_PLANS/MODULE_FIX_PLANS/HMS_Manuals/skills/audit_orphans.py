# -*- coding: utf-8 -*-
"""Orphan screenshot audit: disk pe hain par kisi manual me use nahi hue."""
import glob, json, os, sys
sys.stdout.reconfigure(encoding='utf-8')

BSL = chr(92)  # backslash
def norm(p):
    return p.replace(BSL, '/')

disk = set(norm(f) for f in glob.glob('HMS_Manuals/*/screenshots/**/*.png', recursive=True))

used = set()
for cf in glob.glob('HMS_Manuals/skills/*_config.json'):
    try:
        cfg = json.load(open(cf, encoding='utf-8'))
    except Exception:
        continue
    root = cfg.get('imageRoot', '.')

    def walk(sec):
        for sub in sec.get('subsections', []):
            sc = sub.get('screenshot')
            if sc:
                used.add(norm(os.path.normpath(os.path.join(root, sc))))
        for ch in (sec.get('children') or []):
            walk(ch)

    for sec in cfg.get('sections', []):
        walk(sec)

orphan = sorted(disk - used)
print('Total on disk:', len(disk))
print('Used in manuals:', len(used & disk))
print('ORPHAN (not in any manual):', len(orphan))
for o in orphan:
    print('  ', o)
