# -*- coding: utf-8 -*-
"""English configs ko Hinglish configs ke saath sync karta hai (naye sections + translated).
Google gtx endpoint se batch translation, dict-cached. Full-word Hinglish detection.
Usage: python sync_english_configs.py
"""
import json, os, re, sys, time, urllib.parse, urllib.request
sys.stdout.reconfigure(encoding='utf-8')

SK = 'HMS_Manuals/skills'
MODULES = ['housekeeping','frontoffice','pos','reservation','finance','inventory',
           'banquet','nightaudit','hrpayroll','maintenance','mall','members','extras']
DICT_PATH = os.path.join(SK, 'hms_translation_dict.json')
SKIP_KEYS = {'output', 'imageRoot'}

# Full-word Hinglish tokens (word boundary se match, false positives kam)
HING = re.compile(
    r'\b(karo|kare|karna|karte|karke|kariye|kijiye|dijiye|hai|hain|hota|hoti|hote|hoga|hogi|'
    r'hua|hue|hui|lete|lena|lenge|liye|liya|diya|diye|dena|denge|deta|deti|dete|'
    r'dhundo|dhoondo|dekho|dekha|kaise|kyun|kyunki|aur|nahi|nhi|sakte|sakta|banate|banao|bana|banta|banti|'
    r'dikhta|dikhte|dikhega|dikhe|milta|milti|milega|sabse|zyada|zada|tarah|prakar|istemaal|upyog|'
    r'madad|dhyan|shuru|khatam|wala|wali|wale|jisme|jispe|jismein|jahan|kahan|agar|lekin|'
    r'saath|sath|hokar|rakho|rakhe|raha|rahi|rahe|pata|nikal|bhare|daal|dalo|dale|'
    r'khulta|khola|chalu|badha|aap|aapka|aapki|aapke|taki|matra|badle|badla|jaata|jaati|jaye|jata|gayi|gaya|'
    r'iske|uske|iski|uski|yeh|woh|teeno|pehle|pahle|phir|abhi|aaj|'
    r'mein|samjhao|bataya|bataye|likha|likhi|banti|banata|padhta|padhte|mil|jata|'
    r'chahiye|rahega|rahegi|rahe|isme|usme|isse|iska|isko|uska|uski|wahi|kaun|kitna|kitne|sabhi|'
    r'bolo|jaldi|dikhti|dikhta|lagta|lagti|lagte|rehta|rehti|karte|karti|karne|kiya|kiye|honi|hona|kaam|'
    r'jodna|hatana|nikle|nikla|aaye|aaya|aati|aata|lete|dene|karke|balki|matlab|matra|purа|pura|puri|poora|'
    r'har|sab|kisi|idhar|udhar|andar|bahar|upar|niche|aage|peeche|'
    r'ka|ki|ko|ke|me|se|par|jo|jis|kholo|khole|poochho|batana|karein|kar\b)\b', re.I)


def load(p):
    return json.load(open(p, encoding='utf-8'))


def dump(obj, p):
    json.dump(obj, open(p, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)


def collect_strings():
    """Hinglish configs ki saari unique strings."""
    strs = set()
    for m in MODULES:
        cfg = load(os.path.join(SK, f'{m}_config.json'))
        def walk(o):
            if isinstance(o, dict):
                for k, v in o.items():
                    if k in SKIP_KEYS: continue
                    walk(v)
            elif isinstance(o, list):
                for v in o: walk(v)
            elif isinstance(o, str): strs.add(o)
        walk(cfg)
    return strs


def needs_translation(s):
    return bool(HING.search(s)) and bool(re.search(r'[A-Za-z]{3}', s))


GTX = 'https://translate.googleapis.com/translate_a/single'


def gtx_once(text, retries=5):
    data = urllib.parse.urlencode({'client': 'gtx', 'sl': 'auto', 'tl': 'en', 'dt': 't', 'q': text}).encode()
    for i in range(retries):
        try:
            req = urllib.request.Request(GTX, data=data,
                headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'})
            with urllib.request.urlopen(req, timeout=20) as r:
                js = json.loads(r.read().decode('utf-8'))
            segs = js[0]
            return ''.join(s[0] for s in segs if s and len(s) > 0)
        except Exception as e:
            if i == retries - 1: raise
            is429 = '429' in str(e)
            wait = 45 if is429 else 2 * (i + 1)
            print(f'    wait {wait}s ({"rate-limit" if is429 else "retry"})')
            time.sleep(wait)


def translate_batch(lines):
    joined = chr(10).join(lines)
    out = gtx_once(joined)
    parts = out.split(chr(10))
    if len(parts) == len(lines):
        return parts
    return None


def main():
    cache = load(DICT_PATH) if os.path.exists(DICT_PATH) else {}
    # Purge poisoned entries (purani script ne fail wali translations ko src->src store kiya tha)
    poisoned = [k for k, v in cache.items() if k.strip() == v.strip() or HING.search(v)]
    for k in poisoned:
        del cache[k]
    print(f'Purged {len(poisoned)} poisoned entries')
    strs = collect_strings()
    todo = sorted(s for s in strs if needs_translation(s) and s not in cache)
    print(f'Unique strings: {len(strs)}, need translation: {len(todo)}, cached: {len(cache)}')

    BATCH = 25
    i = 0
    while i < len(todo):
        batch = todo[i:i + BATCH]
        try:
            res = translate_batch(batch)
            if res is None:
                res = [gtx_once(s) for s in batch]
            for src, dst in zip(batch, res):
                dst = dst.strip() or src
                cache[src] = dst
        except Exception as e:
            print(f'  batch fail @{i}: {e} — next pass me retry')
        i += BATCH
        dump(cache, DICT_PATH)
        print(f'  progress {min(i, len(todo))}/{len(todo)}')
        time.sleep(1.5)
    dump(cache, DICT_PATH)
    print(f'Dictionary size: {len(cache)}')

    # English configs regenerate from current Hinglish configs
    for m in MODULES:
        cfg = load(os.path.join(SK, f'{m}_config.json'))
        def walk(o):
            if isinstance(o, dict):
                return {k: (v if k in SKIP_KEYS else walk(v)) for k, v in o.items()}
            if isinstance(o, list):
                return [walk(v) for v in o]
            if isinstance(o, str):
                return cache.get(o, o)
            return o
        eng = walk(cfg)
        out = cfg.get('output', '')
        eng['output'] = re.sub(r'\.docx$', '_English.docx', out)
        dump(eng, os.path.join(SK, f'{m}_config_english.json'))
        print(f'  english config: {m}')
    print('ALL ENGLISH CONFIGS SYNCED')


if __name__ == '__main__':
    main()
