# -*- coding: utf-8 -*-
"""QC me mile English residue fixes:
- 'I bear setup' (bad machine translation) -> proper English
- 'aake/maange/dekhne/jaise' wale Hinglish cells -> dict me translations add
Phir English configs regenerate.
"""
import json, sys
sys.stdout.reconfigure(encoding='utf-8')

SK = 'HMS_Manuals/skills'
MODULES = ['housekeeping','frontoffice','pos','reservation','finance','inventory',
           'banquet','nightaudit','hrpayroll','maintenance','mall','members','extras']
SKIP_KEYS = {'output', 'imageRoot', 'screenshot'}

# 1) FO MASTER purpose cell ka Hinglish source nikalo
fo = json.load(open(f'{SK}/frontoffice_config.json', encoding='utf-8'))
src_purpose = fo['sections'][0]['subsections'][0]['table']['rows'][0][1]
print('FO MASTER purpose source:', repr(src_purpose))

ADD = {
    src_purpose: 'One-time setup — rooms, plans and sources',
    'Guest directly aake room maange': 'Guest walks in directly and asks for a room',
    'Available/dirty rooms dekhne': 'To see available/dirty rooms',
    'Point Of Sale → Bar (BA): Restaurant jaise hi saare screens': 'Point Of Sale → Bar (BA): Same screens as Restaurant',
    'Point Of Sale → TADKA (TAD): Restaurant jaise hi saare screens': 'Point Of Sale → TADKA (TAD): Same screens as Restaurant',
    'Departments maange': 'Departments request',
    'Do clients same venue same date maange': 'Two clients want the same venue on the same date',
}

# 2) Dict me add
DICT_PATH = f'{SK}/hms_translation_dict.json'
cache = json.load(open(DICT_PATH, encoding='utf-8'))
for k, v in ADD.items():
    cache[k] = v
# Bad translation purge (agar dict me tha)
for k in list(cache.keys()):
    if 'I bear' in cache[k]:
        del cache[k]
json.dump(cache, open(DICT_PATH, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
print('dict size:', len(cache))

# 3) English configs regenerate
import re
for m in MODULES:
    cfg = json.load(open(f'{SK}/{m}_config.json', encoding='utf-8'))
    def walk(o):
        if isinstance(o, dict):
            return {k: (v if k in SKIP_KEYS else walk(v)) for k, v in o.items()}
        if isinstance(o, list):
            return [walk(v) for v in o]
        if isinstance(o, str):
            return cache.get(o, o)
        return o
    eng = walk(cfg)
    eng['output'] = re.sub(r'\.docx$', '_English.docx', cfg.get('output', ''))
    json.dump(eng, open(f'{SK}/{m}_config_english.json', 'w', encoding='utf-8'), ensure_ascii=False, indent=1)

# 4) Verify — koi residue bacha?
import re as r
HING = r.compile(r'\b(aake|aayega|aayegi|maange|maang|dekhne|dekhna|jaise|jaisa|kholna|dhundo|I bear)\b', r.I)
bad = 0
for m in MODULES:
    raw = open(f'{SK}/{m}_config_english.json', encoding='utf-8').read()
    hits = set(HING.findall(raw))
    if hits:
        print(f'RESIDUE {m}: {sorted(hits)}')
        bad += 1
print('Configs with residue:', bad if bad else 'NONE — CLEAN')
