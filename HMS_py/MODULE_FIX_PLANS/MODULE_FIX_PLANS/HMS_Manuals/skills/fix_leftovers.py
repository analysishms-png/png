# -*- coding: utf-8 -*-
"""Bache hue sensitive leftovers fix + mistakes:
- Login tables me '103' property cells, '(demo: sa)', '(demo: sa/balaji)'
- 'User/Pass/103 verify karo' variants
- 'Demo property (103)' leftovers
- Housekeeping version field galat tha (login info) — proper training version
- README 'Demo demo property: user sa...' line
- SKILL.md backtick-wala credential line
- Dict me naye strings ki English translations + purane credential keys remove
Dono (Hinglish + English) configs pe apply hota hai.
"""
import json, os, re, sys
sys.stdout.reconfigure(encoding='utf-8')

SK = 'HMS_Manuals/skills'
MODULES = ['housekeeping','frontoffice','pos','reservation','finance','inventory',
           'banquet','nightaudit','hrpayroll','maintenance','mall','members','extras']
SKIP_KEYS = {'output', 'imageRoot', 'screenshot'}

EXACT = [
    ('POS user credentials (demo: sa/balaji)', 'POS user credentials (admin se lein)'),
    ('Front desk user ID (demo: sa)', 'Front desk user ID (admin se lein)'),
    ('(demo: sa/balaji)', '(admin se lein)'),
    ('(demo: sa)', '(admin se lein)'),
    ('(ya admin: sa)', '(ya admin — credentials admin se lein)'),
    ('User/Pass/103 verify karo', 'User/Pass/Property verify karo'),
    ('User/Pass/Property verify karo (103)', 'User/Pass/Property verify karo'),
    ('Demo property (103)', 'Demo property'),
    ('demo property (103)', 'demo property'),
    ('Demo demo property', 'Demo property'),
    ('Demo Demo', 'Demo'),
]

EN_DICT_ADD = {
    'Front desk user ID (admin se lein)': 'Front desk user ID (get from admin)',
    'Apna property ID (admin se lein)': 'Your property ID (get from admin)',
    'POS user credentials (admin se lein)': 'POS user credentials (get from admin)',
    'e.g. HOUSEKEEPING (ya admin — credentials admin se lein)': 'e.g. HOUSEKEEPING (or admin — get credentials from admin)',
    'User/Pass/Property verify karo': 'Verify User/Password/Property',
}

HK_VERSION = 'Training Manual for Housekeeping Staff'


def scrub(s):
    for old, new in EXACT:
        s = s.replace(old, new)
    if s.strip() == '103':
        return 'Apna property ID (admin se lein)'
    if s.strip() == '103 (demo data)':
        return 'Apna property ID (admin se lein)'
    return s


def walk(o):
    if isinstance(o, dict):
        return {k: (v if k in SKIP_KEYS else walk(v)) for k, v in o.items()}
    if isinstance(o, list):
        return [walk(v) for v in o]
    if isinstance(o, str):
        return scrub(o)
    return o


def load(p):
    return json.load(open(p, encoding='utf-8'))


def dump(obj, p):
    json.dump(obj, open(p, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)


# 1) Configs (dono languages)
for suf in ['', '_english']:
    for m in MODULES:
        p = f'{SK}/{m}_config{suf}.json'
        cfg = load(p)
        cfg = walk(cfg)
        # Housekeeping version field mistake fix
        if m == 'housekeeping' and cfg.get('version', '').startswith('Login:'):
            cfg['version'] = HK_VERSION
        dump(cfg, p)
    print(f'configs{suf}: fixed')

# 2) Dict — credential wale keys hatao, naye translations add
DICT_PATH = f'{SK}/hms_translation_dict.json'
cache = load(DICT_PATH)
clean = {}
removed = 0
for k, v in cache.items():
    if 'balaji' in k or 'balaji' in v or k.strip() == '103':
        removed += 1
        continue
    clean[k] = v
for k, v in EN_DICT_ADD.items():
    clean[k] = v
dump(clean, DICT_PATH)
print(f'dict: removed {removed} credential entries, size {len(clean)}')

# 3) README line fix
p = 'HMS_Manuals/README.md'
raw = open(p, encoding='utf-8').read()
raw = raw.replace(
    '- Demo demo property: user `sa` / pass `balaji` (full admin)',
    '- Credentials: apne admin se User ID / Password lein (demo property pe full admin access)')
raw = re.sub(r'- Demo [Dd]emo property: user.*', '- Credentials: apne admin se User ID / Password lein (demo property pe full admin access)', raw)
open(p, 'w', encoding='utf-8').write(raw)
print('README: fixed')

# 4) SKILL.md backtick credential line fix
p = f'{SK}/hms-module-manual/SKILL.md'
raw = open(p, encoding='utf-8').read()
raw = raw.replace(
    '- Session expire ho jaye to re-login: `sa` / `balaji` / property `103`.',
    '- Session expire ho jaye to apne credentials se re-login karo.')
raw = raw.replace('`sa` / `balaji` / property `103`', 'apne credentials')
open(p, 'w', encoding='utf-8').write(raw)
print('SKILL.md: fixed')

# 5) Final leftover scan
print('\n=== FINAL SCAN ===')
bad = 0
for suf in ['', '_english']:
    for m in MODULES:
        raw = open(f'{SK}/{m}_config{suf}.json', encoding='utf-8').read()
        for needle in ['balaji', '2026-27', 'Demonstration', '(demo: sa', "'103'", '"103"']:
            if needle in raw:
                print(f'LEFTOVER {m}{suf}: {needle}')
                bad += 1
for f in ['HMS_Manuals/README.md', f'{SK}/hms-module-manual/SKILL.md',
          f'{SK}/generate_manual.js',
          'HMS_Manuals/FrontOffice/FO_Logic_Explanation_01to18Sep.txt']:
    raw = open(f, encoding='utf-8').read()
    for needle in ['balaji', '2026-27', 'Demonstration', 'Property 103', 'sa / `balaji`']:
        if needle in raw:
            print(f'LEFTOVER {os.path.basename(f)}: {needle}')
            bad += 1
print('LEFTOVERS:', bad if bad else 'NONE — ALL CLEAN')
