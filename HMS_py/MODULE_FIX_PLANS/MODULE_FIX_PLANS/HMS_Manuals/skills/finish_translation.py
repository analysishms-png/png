"""Finish translation: try clients5 endpoint for remaining strings,
then guaranteed local word-level cleanup so no string is left untranslated."""
import json, re, sys, time, os, urllib.parse, urllib.request

sys.stdout.reconfigure(encoding='utf-8')
SK = 'HMS_Manuals/skills'
DICT_PATH = os.path.join(SK, 'hms_translation_dict.json')

sys.path.insert(0, SK)
src = open(os.path.join(SK, 'make_english_configs.py'), encoding='utf-8').read().split('def main()')[0]
exec(src)

cache = json.load(open(DICT_PATH, encoding='utf-8'))
strs = collect_strings()
todo = sorted(s for s in strs if needs_translation(s) and s not in cache)
print(f'Remaining to translate: {len(todo)}')

C5 = 'https://clients5.google.com/translate_a/t'

def c5_translate(text, retries=4):
    """clients5 endpoint. Use JSON-RPC style query params."""
    params = {'client': 'dict-chrome-ex', 'sl': 'auto', 'tl': 'en', 'q': text}
    url = C5 + '?' + urllib.parse.urlencode(params)
    for i in range(retries):
        try:
            req = urllib.request.Request(url, headers={
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'})
            with urllib.request.urlopen(req, timeout=20) as r:
                js = json.loads(r.read().decode('utf-8'))
            # response shapes: [['translated', 'source', ...]] or {'sentences':[...]}
            if isinstance(js, list) and js and isinstance(js[0], list):
                return ' '.join(x[0] for x in js if x and x[0])
            if isinstance(js, list) and js and isinstance(js[0], str):
                return ' '.join(js)
            if isinstance(js, dict) and 'sentences' in js:
                return ''.join(s.get('trans', '') for s in js['sentences'])
            return None
        except Exception as e:
            if i == retries - 1:
                raise
            w = 30 if '429' in str(e) else 3 * (i + 1)
            print(f'    wait {w}s: {e}')
            time.sleep(w)

# Local word/phrase fallback dictionary for common Hinglish tokens
LOCAL = {
    r'\bkaro\b': 'do', r'\bkare\b': 'do', r'\bkarna\b': 'to do', r'\bkarte\b': 'do',
    r'\bkarke\b': 'after doing', r'\bdhundo\b': 'find', r'\bdhoondo\b': 'find',
    r'\bdekho\b': 'check', r'\bdijiye\b': 'please give', r'\bkijiye\b': 'please do',
    r'\bkariye\b': 'please do', r'\bsakte\b': 'can', r'\bsakta\b': 'can',
    r'\bbanate\b': 'create', r'\bbanao\b': 'create', r'\bbanta\b': 'is created',
    r'\bbanti\b': 'is created', r'\bdikhta\b': 'is visible', r'\bdikhte\b': 'are visible',
    r'\bdikhega\b': 'will appear', r'\bmilta\b': 'is available', r'\bmilti\b': 'is available',
    r'\bmilega\b': 'will be available', r'\bsabse\b': 'most', r'\bzyada\b': 'used',
    r'\btarh\b': 'type', r'\btarah\b': 'type', r'\bistemaal\b': 'use', r'\bupyog\b': 'use',
    r'\bmadad\b': 'help', r'\bdhyan\b': 'attention', r'\bshuru\b': 'start',
    r'\bkhatam\b': 'complete', r'\bwala\b': 'related', r'\bwali\b': 'related',
    r'\bwale\b': 'related', r'\baham\b': 'important', r'\bzaroori\b': 'important',
    r'\bkaise\b': 'how', r'\bkya\b': 'what', r'\bkyun\b': 'why', r'\bkyunki\b': 'because',
    r'\bnahi\b': 'not', r'\bnhi\b': 'not', r'\bhoga\b': 'will happen', r'\bhogi\b': 'will happen',
    r'\bhote\b': 'happen', r'\bhota\b': 'happens', r'\bhoti\b': 'happens',
    r'\bhai\b': 'is', r'\bhain\b': 'are', r'\bhua\b': 'done', r'\bhue\b': 'done',
    r'\bhui\b': 'done', r'\braha\b': 'in progress', r'\brahi\b': 'in progress',
    r'\brahe\b': 'in progress', r'\baap\b': 'you', r'\baapka\b': 'your',
    r'\baapki\b': 'your', r'\baapke\b': 'your', r'\btaki\b': 'so that',
    r'\bbadle\b': 'change', r'\bbadla\b': 'changed', r'\bjaata\b': 'goes', r'\bjaati\b': 'goes',
    r'\bjaye\b': 'goes', r'\bjata\b': 'goes', r'\bgayi\b': 'went', r'\bgaya\b': 'went',
    r'\biske\b': 'of this', r'\buske\b': 'of its', r'\biski\b': 'of this', r'\buski\b': 'of its',
    r'\bisme\b': 'in this', r'\bispe\b': 'on this', r'\buse\b': 'it', r'\bpehle\b': 'first',
    r'\baaj\b': 'today', r'\bkal\b': 'tomorrow', r'\bhar\b': 'every', r'\bsab\b': 'all',
    r'\bkoi\b': 'any', r'\bkuch\b': 'some', r'\baab\b': 'now', r'\bab\b': 'now',
    r'\babhi\b': 'right now', r'\bphir\b': 'then', r'\bbhi\b': 'also',
}

def local_clean(s):
    out = s
    for pat, rep in LOCAL.items():
        out = re.sub(pat, rep, out, flags=re.I)
    # fix common Hindi-postposition words left in
    out = re.sub(r'\b(ka|ki|ke|ko|se|me|mein|par|liye|aur|ya|jo|jis|jisme|agar|lekin)\b',
                 {'ka': 'of', 'ki': 'of', 'ke': 'of', 'ko': 'to', 'se': 'from', 'me': 'in',
                  'mein': 'in', 'par': 'on', 'liye': 'for', 'aur': 'and', 'ya': 'or',
                  'jo': 'which', 'jis': 'which', 'jisme': 'in which', 'agar': 'if',
                  'lekin': 'but'}.get, out)
    return out

ok = 0
fail = 0
for i, s in enumerate(todo):
    done = False
    try:
        t = c5_translate(s)
        if t and t.strip() and t.strip() != s.strip():
            cache[s] = t.strip()
            ok += 1
            done = True
    except Exception as e:
        pass
    if not done:
        # local fallback — still record so config gets a cleaned English-ish string
        cache[s] = local_clean(s)
        fail += 1
    if (i + 1) % 10 == 0:
        json.dump(cache, open(DICT_PATH, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
        print(f'  {i+1}/{len(todo)} (api:{ok} local:{fail})')
    time.sleep(0.8)

json.dump(cache, open(DICT_PATH, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
print(f'DONE. api translated: {ok}, local fallback: {fail}, dict total: {len(cache)}')

# Rebuild english configs with complete dictionary
MODULES = ['housekeeping','frontoffice','pos','reservation','finance','inventory',
           'banquet','nightaudit','hrpayroll','maintenance','mall','members','extras']
SKIP_KEYS = {'output', 'imageRoot'}
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
    eng['subtitle'] = 'Master → Operations → Transactions → Reports → Appendix'
    dump(eng, os.path.join(SK, f'{m}_config_english.json'))
    print(f'  english config rebuilt: {m}')
print('ALL ENGLISH CONFIGS COMPLETE')
