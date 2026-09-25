"""Translate Hinglish config strings to English and generate *_english.json configs.

Strategy:
1. Collect all unique translatable strings from the 13 module configs.
2. Translate only strings containing Hinglish markers (pure-English strings stay untouched).
3. Batch-translate via Google Translate public gtx endpoint (newline-separated batches).
4. Cache dictionary to hms_translation_dict.json (idempotent, resumable).
5. Apply dictionary to configs -> write <name>_config_english.json
"""
import json, re, sys, time, os, urllib.parse, urllib.request

sys.stdout.reconfigure(encoding='utf-8')
SK = 'HMS_Manuals/skills'
MODULES = ['housekeeping','frontoffice','pos','reservation','finance','inventory',
           'banquet','nightaudit','hrpayroll','maintenance','mall','members','extras']
DICT_PATH = os.path.join(SK, 'hms_translation_dict.json')
SKIP_KEYS = {'output', 'imageRoot'}

# Strong Hinglish detection (Roman Hindi tokens)
HING = re.compile(
    r'\b(karo|kare|karna|karte|karke|kar |hai|hain|hota|hoti|hote|hoga|hogi|hote|hua|hue|hui|'
    r'lete|lena|lenge|liye|liya|diya|diye|dena|denge|deta|deti|dete|'
    r'dhundo|dhoondo|dekho|dekha|dijiye|kijiye|kariye|kaise|kya|kyun|kyunki|'
    r'aur|nahi|nhi|sakte|sakta|banate|banao|bana|banta|banti|ban|'
    r'dikhta|dikhte|dikhega|dikhe|milta|milti|milega|mil |sabse|zyada|zada|'
    r'tarah|prakar|istemaal|upyog|madad|dhyan|shuru|khatam|wala|wali|wale|'
    r'jo |jis |jisme|jispe|jismein|jahan|kahan|kab |agar|lekin|'
    r'saath|sath|hokar|rakho|rakhe|rakh|raha|rahi|rahe|pata|nikal|bhar|bhare|daal|dalo|dale|'
    r'khulta|khola|khol|chalu|badha|badh|kam |ghat|jod|jodna|'
    r'aap|aapka|aapki|aapke|taki|matra|badle|badla|jaata|jaati|jaye|jata|gayi|gaya|'
    r'iske|uske|iski|uski|in |un |ye |vo |wo |yeh|woh|ek |do |teeno|char|'
    r'pehle|baad|pahle|phir|bhi |hi |to |ab |abhi|aaj|kal|har |sab |koi|kuch|'
    r'me |mein|se |ke |ki |ka |ko |par |liye)\b', re.I)


def load(p):
    return json.load(open(p, encoding='utf-8'))


def dump(obj, p):
    json.dump(obj, open(p, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)


def collect_strings():
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
    if HING.search(s) and re.search(r'[A-Za-z]{3}', s):
        return True
    return False


GTX = 'https://translate.googleapis.com/translate_a/single'


def gtx_once(text, retries=6):
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
            is429 = '429' in str(e)
            if i == retries - 1: raise
            wait = 45 if is429 else 2 * (i + 1)
            print(f'    wait {wait}s ({"rate-limit" if is429 else "retry"})')
            time.sleep(wait)


def translate_batch(lines):
    """Translate newline-joined batch; returns list aligned to lines or None on mismatch."""
    joined = '\n'.join(lines)
    out = gtx_once(joined)
    parts = out.split('\n')
    if len(parts) == len(lines):
        return parts
    return None


def main():
    cache = load(DICT_PATH) if os.path.exists(DICT_PATH) else {}
    strs = collect_strings()
    todo = sorted(s for s in strs if needs_translation(s) and s not in cache)
    print(f'Unique strings: {len(strs)}, need translation: {len(todo)}, cached: {len(cache)}')

    BATCH = 30
    i = 0
    while i < len(todo):
        batch = todo[i:i + BATCH]
        try:
            res = translate_batch(batch)
            if res is None:
                # fallback: translate individually
                res = [gtx_once(s) for s in batch]
            for src, dst in zip(batch, res):
                dst = dst.strip() or src
                cache[src] = dst
        except Exception as e:
            print(f'  batch fail @{i}: {e} — will retry next pass')
        i += BATCH
        dump(cache, DICT_PATH)
        print(f'  progress {min(i,len(todo))}/{len(todo)}')
        time.sleep(2.0)
    dump(cache, DICT_PATH)
    print(f'Dictionary size: {len(cache)}')

    # Apply dictionary to configs -> english configs
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
        # English output path
        out = cfg.get('output', '')
        eng['output'] = re.sub(r'\.docx$', '_English.docx', out)
        eng['subtitle'] = 'Master → Operations → Transactions → Reports → Appendix'
        dump(eng, os.path.join(SK, f'{m}_config_english.json'))
        print(f'  english config: {m}')
    print('ALL ENGLISH CONFIGS READY')


if __name__ == '__main__':
    main()
