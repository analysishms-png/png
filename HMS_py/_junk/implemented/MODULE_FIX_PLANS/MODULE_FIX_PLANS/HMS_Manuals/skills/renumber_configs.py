# -*- coding: utf-8 -*-
"""Configs me section numbering normalize karta hai:
- Main sections: 1..N sequential
- Gallery section ke subsections: G.01, G.02... prefix
Usage: python renumber_configs.py [_english]
"""
import json, re, sys
sys.stdout.reconfigure(encoding='utf-8')

SUFFIX = sys.argv[1] if len(sys.argv) > 1 else ''
MODULES = ['housekeeping','frontoffice','pos','reservation','finance','inventory',
           'banquet','nightaudit','hrpayroll','maintenance','mall','members','extras']

for m in MODULES:
    p = f'HMS_Manuals/skills/{m}_config{SUFFIX}.json'
    try:
        cfg = json.load(open(p, encoding='utf-8'))
    except Exception as e:
        print(f'{m}: SKIP ({e})')
        continue

    for i, sec in enumerate(cfg['sections']):
        # Strip old numeric prefix, renumber sequentially
        clean = re.sub(r'^\d+\.\s*', '', sec['title'])
        sec['title'] = f'{i+1}. {clean}'

        # Gallery subsections ko G.01... number do
        if 'Screens Gallery' in sec['title']:
            for j, sub in enumerate(sec.get('subsections', []), 1):
                sub['title'] = re.sub(r'^G\.\d+\s*', '', sub['title'])
                sub['title'] = f'G.{j:02d} {sub["title"]}'

    json.dump(cfg, open(p, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
    titles = [s['title'][:40] for s in cfg['sections']]
    print(f'{m}: {len(cfg["sections"])} sections numbered')

print('done')
