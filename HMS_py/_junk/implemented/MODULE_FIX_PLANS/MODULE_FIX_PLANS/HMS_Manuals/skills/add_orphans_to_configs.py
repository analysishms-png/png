# -*- coding: utf-8 -*-
"""Orphan screenshots ko configs me add karta hai:
- Login page -> 'Login & Navigation' section me pehla subsection (agar wahan pehle se nahi hai)
- Baaki orphan screens -> new 'Complete Screens Gallery' section (Appendix se pehle)
FrontOffice ke 03_Reports/04_MIS orphans skip (dated versions already manual me hain).
"""
import glob, json, os, sys
sys.stdout.reconfigure(encoding='utf-8')

BSL = chr(92)
def norm(p):
    return p.replace(BSL, '/')

MODULE_ORDER = [
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

# Build used set from configs
used = set()
for _, cf, _lbl in MODULE_ORDER:
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

report = []
for module, cf, label in MODULE_ORDER:
    p = 'HMS_Manuals/skills/' + cf
    try:
        cfg = json.load(open(p, encoding='utf-8'))
    except Exception as e:
        report.append(f'{module}: CONFIG ERROR {e}')
        continue

    root = cfg.get('imageRoot', '.')
    shots = sorted(glob.glob(f'HMS_Manuals/{module}/screenshots/**/*.png', recursive=True))
    shots = [norm(s) for s in shots]

    orphans = []
    for s in shots:
        if s in used:
            continue
        # FrontOffice: skip old 03_Reports / 04_MIS orphans (dated versions already embedded)
        if module == 'FrontOffice' and ('/03_Reports/' in s or '/04_MIS/' in s):
            continue
        orphans.append(s)

    if not orphans:
        report.append(f'{module}: nothing to add')
        continue

    # 1) Login page -> Login & Navigation section pehla subsection
    login = [s for s in orphans if '/00_Login/' in s]
    others = [s for s in orphans if '/00_Login/' not in s]

    if login:
        login_sec = next((s for s in cfg['sections'] if 'Login' in s['title']), None)
        if login_sec is not None:
            rel = os.path.relpath(login[0], root).replace(BSL, '/')
            already = any(
                sub.get('screenshot') == rel
                for sub in login_sec.get('subsections', [])
            )
            if not already:
                login_sec['subsections'].insert(0, {
                    'title': 'Login Page',
                    'screenshot': rel,
                    'para': 'Login Page — analysishms.com pe User ID + Password daalke Sign In karo. Property selection ke baad module ka menu khulta hai. (Ye screenshot pehle gallery me missing tha, ab add kiya gaya hai.)'
                })
                used.add(norm(login[0]))
                others = [o for o in others if o != login[0]]

    # 2) Baaki orphans -> Complete Screens Gallery section (Appendix se pehle)
    if others:
        # Remove old gallery if regenerating
        cfg['sections'] = [s for s in cfg['sections'] if 'Screens Gallery' not in s['title']]

        subs = []
        for s in others:
            rel = os.path.relpath(s, root).replace(BSL, '/')
            folder = s.split('/screenshots/')[1].split('/')[0]
            fname = os.path.basename(s).replace('.png', '').replace('_', ' ')
            subs.append({
                'title': f'{folder} — {fname}',
                'screenshot': rel,
                'para': 'Live system (Property 103) se captured screen. Complete reference ke liye gallery me included — fields aur operations ke detail ke liye respective section dekho.'
            })

        gallery = {
            'title': f'Complete Screens Gallery — {label} (All Captured Screens)',
            'intro': 'Ye gallery {mod} module ki SAARI captured screens dikhati hai jo main sections me detail me cover nahi hui. Training ke baad revision ke liye — trainee har screen pehle dekh chuka hoga, yahan ek jagah pura reference hai.'.replace('{mod}', label),
            'subsections': subs
        }

        app_idx = next((i for i, s in enumerate(cfg['sections']) if 'Appendix' in s['title']), len(cfg['sections']))
        cfg['sections'].insert(app_idx, gallery)

    json.dump(cfg, open(p, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
    report.append(f'{module}: +1 login, +{len(others)-len([o for o in others if o in used]) if False else len(others)} gallery = {len(orphans)} total added')

print('\n'.join(report))
