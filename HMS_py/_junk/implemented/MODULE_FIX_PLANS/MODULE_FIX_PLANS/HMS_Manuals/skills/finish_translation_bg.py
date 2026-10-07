"""Background-safe finisher: wait out rate-limit, slow-paced clients5 retries,
guaranteed completion with local fallback, then rebuild all English configs."""
import json, re, sys, time, os, urllib.parse, urllib.request

sys.stdout.reconfigure(encoding='utf-8', line_buffering=True)
SK = 'HMS_Manuals/skills'
DICT_PATH = os.path.join(SK, 'hms_translation_dict.json')

src = open(os.path.join(SK, 'make_english_configs.py'), encoding='utf-8').read().split('def main()')[0]
exec(src)

cache = json.load(open(DICT_PATH, encoding='utf-8'))
strs = collect_strings()
todo = sorted(s for s in strs if needs_translation(s) and s not in cache)
print(f'Remaining: {len(todo)}')

C5 = 'https://clients5.google.com/translate_a/t'

def c5_once(text):
    params = {'client': 'dict-chrome-ex', 'sl': 'auto', 'tl': 'en', 'q': text}
    url = C5 + '?' + urllib.parse.urlencode(params)
    req = urllib.request.Request(url, headers={
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'})
    with urllib.request.urlopen(req, timeout=25) as r:
        js = json.loads(r.read().decode('utf-8'))
    if isinstance(js, list) and js and isinstance(js[0], list):
        return ' '.join(x[0] for x in js if x and x[0])
    if isinstance(js, list) and js and isinstance(js[0], str):
        return ' '.join(js)
    if isinstance(js, dict) and 'sentences' in js:
        return ''.join(s.get('trans', '') for s in js['sentences'])
    return None

LOCAL = json.load(open(os.path.join(SK, 'hms_local_fallback.json'), encoding='utf-8'))

def local_clean(s):
    out = s
    for pat, rep in LOCAL.items():
        out = re.sub(pat, rep, out, flags=re.I)
    return out

print('Waiting 150s for rate-limit window to clear...')
time.sleep(150)

ok = 0
loc = 0
t0 = time.time()
for i, s in enumerate(todo):
    done = False
    for attempt in range(2):
        try:
            t = c5_once(s)
            if t and t.strip() and t.strip() != s.strip():
                cache[s] = t.strip()
                ok += 1
                done = True
                break
        except Exception as e:
            if '429' in str(e):
                time.sleep(90)
            else:
                time.sleep(5)
    if not done:
        cache[s] = local_clean(s)
        loc += 1
    if (i + 1) % 5 == 0:
        json.dump(cache, open(DICT_PATH, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
        print(f'{i+1}/{len(todo)} api:{ok} local:{loc} elapsed:{int(time.time()-t0)}s')
    time.sleep(2.5)

json.dump(cache, open(DICT_PATH, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
print(f'TRANSLATION DONE. api:{ok} local:{loc} total:{len(cache)}')

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
print('ALL ENGLISH CONFIGS COMPLETE')
