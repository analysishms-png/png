# -*- coding: utf-8 -*-
"""Round-3 residue fixes: Kaunsa/Kaunsi/Saare/sirf wale short cells + 2 odd strings.
Direct replacement English configs me + dict me future-proof entries."""
import json, re, sys
sys.stdout.reconfigure(encoding='utf-8')

SK = 'HMS_Manuals/skills'
MODULES = ['housekeeping','frontoffice','pos','reservation','finance','inventory',
           'banquet','nightaudit','hrpayroll','maintenance','mall','members','extras']
SKIP_KEYS = {'output', 'imageRoot', 'screenshot'}

REPL = [
    ('Kaunsa housekeeper mila', 'Which housekeeper was assigned'),
    ('Saare cleaning entries — date, room, staff', 'All cleaning entries — date, room, staff'),
    ('Live room status — kaunsa room available/dirty/occupied', 'Live room status — which room is available/dirty/occupied'),
    ('Folio-based billing — saare charges ek jagah', 'Folio-based billing — all charges in one place'),
    ('Kaunsa GST lage', 'Which GST applies'),
    ('Sirf room', 'Room only'),
    ('Kaunsi floor', 'Which floor'),
    ('sirf authorized release pe', 'only on authorized release'),
    ('Confirm — folios alag ho jayenge', 'Confirm — the folios will be separated'),
    ('Date-wise saare check-ins — guest, room, rate, source', 'Date-wise all check-ins — guest, room, rate, source'),
    ('Live table status — kaunsi table busy/free', 'Live table status — which table is busy/free'),
    ('Kaunsa outlet, current time, KOT number', 'Which outlet, current time, KOT number'),
    ('3.2 Sale Bill Entry — Bill banana', '3.2 Sale Bill Entry — Creating the Bill'),
    ('Kaunsi table reserve', 'Which table to reserve'),
    ('Date-wise saare bills — amount, mode, cashier', 'Date-wise all bills — amount, mode, cashier'),
    ('How much advance should be taken on Kaunse booking?', 'How much advance should be taken on which booking?'),
    ('Kaunsa kitchen/outlet', 'Which kitchen/outlet'),
    ('Kaunsa person site pe handle karega', 'Who will handle it on site'),
    ('Kaunsa staff', 'Which staff member'),
    ('Kaunsa technician', 'Which technician'),
    ('Kaunsi shop, kaunsa tenant', 'Which shop, which tenant'),
    ('Kaunsa meter', 'Which meter'),
    ('OTA credentials — kaunsa channel, API keys, mapping', 'OTA credentials — which channel, API keys, mapping'),
    ('Kaunse bills pe e-invoice banega', 'Which bills will get an e-invoice'),
]


def fix_str(s):
    for old, new in REPL:
        s = s.replace(old, new)
    return s


def walk(o):
    if isinstance(o, dict):
        return {k: (v if k in SKIP_KEYS else walk(v)) for k, v in o.items()}
    if isinstance(o, list):
        return [walk(v) for v in o]
    if isinstance(o, str):
        return fix_str(o)
    return o


# English configs direct fix
for m in MODULES:
    p = f'{SK}/{m}_config_english.json'
    cfg = json.load(open(p, encoding='utf-8'))
    json.dump(walk(cfg), open(p, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
print('English configs patched')

# Dict future-proof: Hinglish source == replacement source (identical strings) add karo
DICT_PATH = f'{SK}/hms_translation_dict.json'
cache = json.load(open(DICT_PATH, encoding='utf-8'))
added = 0
for old, new in REPL:
    # Agar Hinglish config me 'old' exact string hai to dict me daal do
    for m in MODULES:
        cfg = json.load(open(f'{SK}/{m}_config.json', encoding='utf-8'))
        raw = json.dumps(cfg, ensure_ascii=False)
        if f'"{old}"' in raw and old not in cache:
            cache[old] = new
            added += 1
            break
json.dump(cache, open(DICT_PATH, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
print(f'dict: +{added} entries, size {len(cache)}')

# Final union-token scan
HING = re.compile(r'\b(aake|aayega|aayegi|maange|maang|dekhne|dekhna|jaise|jaisa|kholna|dhundo|I bear|kaunsa|kaunsi|kaunse|saare|ek jagah|karwao|turant|banane)\b', re.I)
bad = 0
for m in MODULES:
    raw = open(f'{SK}/{m}_config_english.json', encoding='utf-8').read()
    hits = set(HING.findall(raw))
    if hits:
        print(f'RESIDUE {m}: {sorted(hits)}')
        bad += 1
print('Residue configs:', bad if bad else 'NONE — CLEAN')
