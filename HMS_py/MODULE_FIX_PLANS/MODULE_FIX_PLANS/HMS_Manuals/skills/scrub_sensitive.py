# -*- coding: utf-8 -*-
"""Sensitive details scrub karta hai:
- Property ID 103 ("Analysis Demonstration Package (103)", "Property 103")
- Credentials (sa / balaji)
- Version 2026-27
- Property-specific code suffixes (FOM103 -> FOM, RES103 -> RES ...)
Targets: 13 Hinglish configs, translation dict, README, SKILL.md, generate_manual.js,
FO logic txt. English configs regenerate hote hain (Hinglish + dict se).
Temp files with credentials delete.
"""
import json, os, re, sys
sys.stdout.reconfigure(encoding='utf-8')

SK = 'HMS_Manuals/skills'
MODULES = ['housekeeping','frontoffice','pos','reservation','finance','inventory',
           'banquet','nightaudit','hrpayroll','maintenance','mall','members','extras']
SKIP_KEYS = {'output', 'imageRoot', 'screenshot'}

# ---- ordered replacements (specific -> generic) ----
EXACT = [
    ('Property: Analysis Demonstration Package (103)', 'Property: Demo Property'),
    ('Analysis Demonstration Package (103)', 'Demo Property'),
    ('Analysis Demonstration Package', 'Demo Property'),
    ('User: sa | Pass: balaji | Property: 103 (demo data)', 'Apna assigned User ID aur Password use karo (demo data)'),
    ('User: sa | Pass: balaji | Property: 103', 'Apna assigned User ID aur Password use karo'),
    ('Assigned password (demo: balaji)', 'Assigned password'),
    ('Re-login karo (sa/balaji/103)', 'Re-login karo (apne credentials se)'),
    ('sa/balaji/103', 'apne credentials se'),
    ('sa / balaji / property 103', 'apne credentials'),
    ('sa/balaji, property 103', 'credentials admin se lein'),
    ('Property 103 demo', 'demo'),
    ('Property 103', 'Demo Property'),
    ('Property: 103', 'Property: Demo'),
    ('property 103', 'demo property'),
    (' (Demo Property)', ''),
]

REGEX = [
    (re.compile(r"\b(FOM|RES|RS|BA|TAD|LAUN|RMCH|CGSS|SGSS|POS|KIT|BAN|HKG|MEM|EIN|WHT)103\b"), r'\1'),
    (re.compile(r'Version\s*2026-27\s*\|*\s*'), ''),
    (re.compile(r'\s*\|\s*2026-27'), ''),
    (re.compile(r'\b2026-27\b'), ''),
]

NEW_DICT = {
    'Apna assigned User ID aur Password use karo': 'Use your assigned User ID and Password',
    'Apna assigned User ID aur Password use karo (demo data)': 'Use your assigned User ID and Password (demo data)',
    'Re-login karo (apne credentials se)': 'Re-login (with your own credentials)',
}


def scrub_str(s):
    for old, new in EXACT:
        s = s.replace(old, new)
    for rx, rep in REGEX:
        s = rx.sub(rep, s)
    # cosmetic cleanup
    s = re.sub(r'\s*\|\s*(?=\|)', ' | ', s)          # " || " -> " | "
    s = re.sub(r'\s*\|\s*$', '', s)                  # trailing pipe
    s = re.sub(r'\(\s*\)', '', s)                    # empty parens
    s = re.sub(r'  +', ' ', s)
    return s


def scrub_walk(o):
    if isinstance(o, dict):
        return {k: (v if k in SKIP_KEYS else scrub_walk(v)) for k, v in o.items()}
    if isinstance(o, list):
        return [scrub_walk(v) for v in o]
    if isinstance(o, str):
        return scrub_str(o)
    return o


def load(p):
    return json.load(open(p, encoding='utf-8'))


def dump(obj, p):
    json.dump(obj, open(p, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)


changed = 0

# 1) Hinglish configs
for m in MODULES:
    p = f'{SK}/{m}_config.json'
    cfg = load(p)
    before = json.dumps(cfg, ensure_ascii=False)
    cfg = scrub_walk(cfg)
    after = json.dumps(cfg, ensure_ascii=False)
    dump(cfg, p)
    if before != after:
        changed += 1
    print(f'{m}: scrubbed')

# 2) Translation dict — keys + values dono scrub, naye entries add
DICT_PATH = f'{SK}/hms_translation_dict.json'
cache = load(DICT_PATH)
new_cache = {}
key_moves = 0
for k, v in cache.items():
    nk, nv = scrub_str(k), scrub_str(v)
    if nk != k:
        key_moves += 1
    new_cache[nk] = nv
for k, v in NEW_DICT.items():
    new_cache[k] = v
dump(new_cache, DICT_PATH)
print(f'dict: {len(cache)} -> {len(new_cache)} entries, {key_moves} keys renamed')

# 3) English configs regenerate (Hinglish + dict se)
for m in MODULES:
    cfg = load(f'{SK}/{m}_config.json')
    def walk(o):
        if isinstance(o, dict):
            return {k: (v if k in SKIP_KEYS else walk(v)) for k, v in o.items()}
        if isinstance(o, list):
            return [walk(v) for v in o]
        if isinstance(o, str):
            return new_cache.get(o, o)
        return o
    eng = walk(cfg)
    eng['output'] = re.sub(r'\.docx$', '_English.docx', cfg.get('output', ''))
    eng = scrub_walk(eng)  # safety net for pure-English strings not in dict
    dump(eng, f'{SK}/{m}_config_english.json')
    print(f'{m}: english regenerated')

# 4) README, SKILL, generate_manual.js, logic txt
for path in ['HMS_Manuals/README.md', f'{SK}/hms-module-manual/SKILL.md',
             f'{SK}/generate_manual.js',
             'HMS_Manuals/FrontOffice/FO_Logic_Explanation_01to18Sep.txt']:
    if not os.path.exists(path):
        print('MISSING:', path)
        continue
    raw = open(path, encoding='utf-8').read()
    fixed = scrub_str(raw)
    if 'README' in path:
        # System Access section ki credential line generic karo
        fixed = fixed.replace(
            '- Credentials: Demo property pe full admin access - credentials admin se lein',
            '- Credentials: apne admin se User ID / Password lein (demo property pe full admin access)')
    open(path, 'w', encoding='utf-8').write(fixed)
    print('scrubbed:', path)

# 5) Temp files delete (credentials ke saath)
for f in [f'{SK}/_all_sentences.txt', f'{SK}/_remaining.txt', f'{SK}/_translate_todo.txt']:
    if os.path.exists(f):
        os.remove(f)
        print('deleted:', f)

print('SCRUB DONE, configs changed:', changed)
