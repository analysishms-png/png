# -*- coding: utf-8 -*-
"""Round-4 fixes: bache hue 8 Hinglish residue strings (EN configs) + dict future-proof."""
import json, re, sys
sys.stdout.reconfigure(encoding='utf-8')

SK = 'HMS_Manuals/skills'
MODULES = ['housekeeping','frontoffice','pos','reservation','finance','inventory',
           'banquet','nightaudit','hrpayroll','maintenance','mall','members','extras']
SKIP_KEYS = {'output', 'imageRoot', 'screenshot'}

REPL = [
    ('Record payment of pending laundry bills by: For Year + Bill No. daalo → select payment mode (Cash/Cheque/UPI/Card) → Amount + Narration → Submit. Total/Paid/Balance is visible in Pending Bill Details.',
     'Record payment of pending laundry bills: enter For Year + Bill No. → select payment mode (Cash/Cheque/UPI/Card) → Amount + Narration → Submit. Total/Paid/Balance is visible in Pending Bill Details.'),
    ('Ek laundry bill ko multiple accounts me split karna: original bill select karo → split amounts define karo → individual bills generate karo → har split ka settlement karo. Splits original memo se linked rehte hain.\n\nNote: Demo property pe ye screen restricted hai — live property pe ye fully functional hota hai.',
     'Splitting one laundry bill across multiple accounts: select the original bill → define the split amounts → generate individual bills → settle each split. The splits stay linked to the original memo.\n\nNote: This screen is restricted on the demo property — it is fully functional on a live property.'),
    ('Guest details bharo', 'Fill in guest details'),
    ('Nayi departure date / rate daalo', 'Enter the new departure date / rate'),
    ('Old printed bill should be printed again – guest copy should be kept or duplicate should be kept. Year + Bill No. daalo → Search → details → Print. If the bill was wrong then a new bill is made after re-settlement.',
     'Reprint an old printed bill — keep the guest copy or issue a duplicate. Enter Year + Bill No. → Search → details → Print. If the bill was wrong, a new bill is made after re-settlement.'),
    ('Items + qty daalo → Save/Print', 'Add items + qty → Save/Print'),
    ('Leave type LWP daalo utne din — salary auto-adjust', 'Mark LWP leave for those days — salary adjusts automatically'),
    ('Unique ID + naam (AC-201, Geyser-305)', 'Unique ID + name (AC-201, Geyser-305)'),
    ('Dono mandatory fields bharo', 'Fill in both mandatory fields'),
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


# 1) EN configs direct patch
for m in MODULES:
    p = f'{SK}/{m}_config_english.json'
    cfg = json.load(open(p, encoding='utf-8'))
    json.dump(walk(cfg), open(p, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
print('EN configs patched')

# 2) Dict future-proof: HI source dhundo (prefix match) -> proper EN translation add
DICT_PATH = f'{SK}/hms_translation_dict.json'
cache = json.load(open(DICT_PATH, encoding='utf-8'))
added = 0
for old, new in REPL:
    # exact match in HI configs?
    for m in MODULES:
        raw = json.dumps(json.load(open(f'{SK}/{m}_config.json', encoding='utf-8')), ensure_ascii=False)
        if f'"{old}"' in raw:
            if old not in cache:
                cache[old] = new
                added += 1
            break
    else:
        # fuzzy: HI source with same 40-char prefix
        pref = old[:40]
        done = False
        for m in MODULES:
            cfg = json.load(open(f'{SK}/{m}_config.json', encoding='utf-8'))
            stack = [cfg]
            while stack and not done:
                o = stack.pop()
                if isinstance(o, dict):
                    stack.extend(o.values())
                elif isinstance(o, list):
                    stack.extend(o)
                elif isinstance(o, str) and o.startswith(pref[:30]) and abs(len(o) - len(old)) < 60:
                    if o not in cache:
                        cache[o] = new
                        added += 1
                    done = True
json.dump(cache, open(DICT_PATH, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
print(f'dict: +{added}, size {len(cache)}')

# 3) Re-verify with full token list
HING = re.compile(r'\b(karo|karein|karna|karte|karke|karti|hain|hota|hoti|hote|daalo|dalo|bharo|bharna|naam|utne|dono|aake|maange|dekhne|jaise|kaunsa|kaunsi|saare|I bear)\b', re.I)
bad = 0
for m in MODULES:
    raw = open(f'{SK}/{m}_config_english.json', encoding='utf-8').read()
    hits = set(HING.findall(raw))
    if hits:
        print(f'RESIDUE {m}: {sorted(hits)}')
        bad += 1
print('Residue configs:', bad if bad else 'NONE — CLEAN')
