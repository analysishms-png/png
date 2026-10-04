# -*- coding: utf-8 -*-
"""Fix: bache hue login-page orphans ko module ki Complete Screens Gallery me add karta hai."""
import glob, json, os, sys
sys.stdout.reconfigure(encoding='utf-8')

BSL = chr(92)
def norm(p):
    return p.replace(BSL, '/')

MODULES = [
    ('Housekeeping',  'housekeeping_config.json', 'Housekeeping'),
    ('FrontOffice',   'frontoffice_config.json',  'Front Office'),
    ('Reservation',   'reservation_config.json',  'Reservation'),
    ('POS',           'pos_config.json',          'POS'),
    ('Finance',       'finance_config.json',      'Finance'),
    ('Inventory',     'inventory_config.json',    'Inventory'),
    ('Banquet',       'banquet_config.json',      'Banquet'),
    ('NightAudit',    'nightaudit_config.json',   'Night Audit'),
    ('HRPayroll',     'hrpayroll_config.json',    'HR-Payroll'),
    ('Maintenance',   'maintenance_config.json',  'Maintenance'),
    ('MallManagement','mall_config.json',         'Mall Management'),
    ('MembersMgmt',   'members_config.json',      'Members Mgmt'),
    ('Extras',        'extras_config.json',       'EXTRAs'),
]

# used set rebuild
used = set()
for _, cf, _lbl in MODULES:
    try:
        cfg = json.load(open('HMS_Manuals/skills/' + cf, encoding='utf-8'))
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

for module, cf, label in MODULES:
    p = 'HMS_Manuals/skills/' + cf
    cfg = json.load(open(p, encoding='utf-8'))
    root = cfg.get('imageRoot', '.')

    shots = [norm(s) for s in glob.glob(f'HMS_Manuals/{module}/screenshots/**/*.png', recursive=True)]
    orphans = []
    for s in shots:
        if s in used:
            continue
        if module == 'FrontOffice' and ('/03_Reports/' in s or '/04_MIS/' in s):
            continue  # dated versions embedded hain
        orphans.append(s)

    if not orphans:
        continue

    # Gallery section dhundo ya banao
    gal = next((s for s in cfg['sections'] if 'Screens Gallery' in s['title']), None)
    if gal is None:
        gal = {
            'title': f'Complete Screens Gallery — {label} (All Captured Screens)',
            'intro': f'Ye gallery {label} module ki saari captured screens ka reference hai — training revision ke liye.',
            'subsections': []
        }
        app_idx = next((i for i, s in enumerate(cfg['sections']) if 'Appendix' in s['title']), len(cfg['sections']))
        cfg['sections'].insert(app_idx, gal)

    for s in orphans:
        rel = os.path.relpath(s, root).replace(BSL, '/')
        folder = s.split('/screenshots/')[1].split('/')[0]
        fname = os.path.basename(s).replace('.png', '').replace('_', ' ')
        gal['subsections'].append({
            'title': f'{folder} — {fname}',
            'screenshot': rel,
            'para': 'Live system (Property 103) se captured screen — complete reference gallery ka hissa.'
        })

    json.dump(cfg, open(p, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
    print(f'{module}: +{len(orphans)} gallery me add')

print('done')
