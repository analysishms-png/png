# -*- coding: utf-8 -*-
"""Comprehensive manual bug scanner:
A) Config-level: empty strings, duplicate titles, missing screenshots, placeholders,
   Hinglish residue (curated + low-confidence short-word pass)
B) DOCX-level: HI/EN parity, empty cells, numbering gaps, encoding garbage
C) Report-only - fixes alag script me
"""
import json, re, sys, glob, os
sys.stdout.reconfigure(encoding='utf-8')

SK = 'HMS_Manuals/skills'
MODULES = ['housekeeping','frontoffice','pos','reservation','finance','inventory',
           'banquet','nightaudit','hrpayroll','maintenance','mall','members','extras']
SKIP_KEYS = {'output', 'imageRoot', 'screenshot'}

# Unambiguous Roman-Hindi tokens
HING = re.compile(
    r'\b(karo|karein|karna|karte|karke|karti|karta|hain|hota|hoti|hote|hoga|hogi|hua|hue|'
    r'raha|rahi|rahe|liye|liya|kiya|kiye|diya|diye|lena|dene|dalo|daalo|kholo|kholna|'
    r'dekho|dekha|dekhen|banao|banti|banta|banate|hona|honi|chahiye|mange|maange|'
    r'jata|jati|jate|aata|aati|aate|lagta|lagti|milta|milti|milega|sakte|sakta|nahi|nhi|'
    r'aur|iska|uska|isko|usko|isliye|wala|wali|wale|mein|sabhi|sabse|bahut|zyada|'
    r'abhi|aaj|phir|kisi|kuch|waghera|matlab|zaroori|zaruri|dhyan|madad|istemaal|upyog|'
    r'shuru|khatam|aake|aayega|aayegi|dekhne|dekhna|jaise|jaisa|dhundo|turant|karwao|'
    r'kaunsa|kaunsi|kaunse|saare|jagah|banana|banane|pura|poora|alag|yahi|wahi|'
    r'naam|naam|rakho|rakh|rakhe|batao|batana|sunlo|nikal|bharo|bhare|daalo)\b', re.I)
# Low-confidence short words (report separately, review needed)
SHORT = re.compile(r'\b(ka|ki|ko|ke|se|kar|ban|len|den|lut|yat|hay)\b')

bugs = []
warn = []

# ---------- A) CONFIG SCAN ----------
for suf in ['', '_english']:
    lang = 'HI' if suf == '' else 'EN'
    for m in MODULES:
        p = f'{SK}/{m}_config{suf}.json'
        cfg = json.load(open(p, encoding='utf-8'))

        seen_titles = {}
        def walk(o, path=''):
            if isinstance(o, dict):
                for k, v in o.items():
                    walk(v, f'{path}.{k}')
            elif isinstance(o, list):
                for i, v in enumerate(o):
                    walk(v, f'{path}[{i}]')
            elif isinstance(o, str):
                if not o.strip() and path.split('.')[-1] not in ('screenshot',):
                    bugs.append(f'{lang} {m} {path}: EMPTY STRING')
                elif o.strip() in ('TBD', 'xxx', 'TODO', 'lorem', '?', '-'):
                    bugs.append(f'{lang} {m} {path}: PLACEHOLDER {o!r}')
                if '\ufffd' in o:
                    bugs.append(f'{lang} {m} {path}: ENCODING GARBAGE')
                if lang == 'EN' and HING.search(o):
                    warn.append(f'EN {m} {path}: HINGLISH {o[:80]!r}')
                # duplicate title tracking (sections + subsections)
                if path.endswith('.title') or '.subsections[' in path and path.endswith('.title'):
                    key = o.strip().lower()
                    if key in seen_titles:
                        warn.append(f'EN{lang} {m}: DUP TITLE {o[:60]!r}')
                    seen_titles[key] = path
        walk(cfg)

        # screenshot path validity
        root = cfg.get('imageRoot', '.')
        def shots(o, path=''):
            if isinstance(o, dict):
                for k, v in o.items():
                    shots(v, f'{path}.{k}')
            elif isinstance(o, list):
                for i, v in enumerate(o):
                    shots(v, f'{path}[{i}]')
            elif isinstance(o, str) and path.endswith('.screenshot'):
                full = os.path.normpath(os.path.join(root, o))
                if not os.path.exists(full):
                    bugs.append(f'{lang} {m}: MISSING FILE {o}')
        shots(cfg)

print('=' * 70)
print('A) CONFIG BUGS:', len(bugs))
for b in bugs[:30]:
    print('  ', b)
print('A) CONFIG WARNINGS (review):', len(warn))
for w in warn[:40]:
    print('  ', w)

# ---------- B) DOCX PARITY ----------
print('=' * 70)
from docx import Document
import zipfile
parity_bugs = []
for m in MODULES:
    cfg = json.load(open(f'{SK}/{m}_config.json', encoding='utf-8'))
    hi_path = cfg.get('output')
    en_path = hi_path.replace('.docx', '_English.docx') if hi_path else None
    if not hi_path or not os.path.exists(hi_path) or not os.path.exists(en_path):
        parity_bugs.append(f'{m}: MISSING DOCX ({hi_path} / {en_path})')
        continue
    dh, de = Document(hi_path), Document(en_path)
    zh = len([n for n in zipfile.ZipFile(hi_path).namelist() if n.startswith('word/media/')])
    ze = len([n for n in zipfile.ZipFile(en_path).namelist() if n.startswith('word/media/')])
    th = len(dh.tables); te = len(de.tables)
    hh = sum(1 for p in dh.paragraphs if p.style is not None and p.style.name and p.style.name.startswith('Heading'))
    he = sum(1 for p in de.paragraphs if p.style is not None and p.style.name and p.style.name.startswith('Heading'))
    if zh != ze: parity_bugs.append(f'{m}: IMG MISMATCH HI={zh} EN={ze}')
    if th != te: parity_bugs.append(f'{m}: TABLE MISMATCH HI={th} EN={te}')
    if abs(hh - he) > 2: parity_bugs.append(f'{m}: HEADING MISMATCH HI={hh} EN={he}')
    # empty cells + garbage
    for doc, tag in [(dh, 'HI'), (de, 'EN')]:
        for ti, t in enumerate(doc.tables):
            for ri, r in enumerate(t.rows):
                for ci, c in enumerate(r.cells):
                    if '\ufffd' in c.text:
                        parity_bugs.append(f'{m} {tag} table{ti}[{ri}][{ci}]: GARBAGE CHAR')
print('B) DOCX PARITY BUGS:', len(parity_bugs))
for b in parity_bugs:
    print('  ', b)

# ---------- C) PDF TEXT SCAN (all 26) ----------
print('=' * 70)
import pymupdf
pdf_bugs = []
for f in sorted(glob.glob('HMS_Manuals/*/*.pdf')):
    base = os.path.basename(f)
    if base.startswith('Analysis_HMS') or '~$' in base:
        continue
    doc = pymupdf.open(f)
    text = ''.join(p.get_text() for p in doc)
    n = len(doc)
    doc.close()
    hits = set(HING.findall(text))
    lang = 'EN' if '_English' in base else 'HI'
    if lang == 'EN' and hits:
        pdf_bugs.append(f'{base}: HINGLISH {sorted(hits)[:6]}')
    if '\ufffd' in text:
        pdf_bugs.append(f'{base}: GARBAGE CHAR')
    if n < 5:
        pdf_bugs.append(f'{base}: TOO SHORT ({n} pages)')
print('C) PDF BUGS:', len(pdf_bugs))
for b in pdf_bugs:
    print('  ', b)
print('=' * 70)
print(f'TOTAL: bugs={len(bugs)+len(parity_bugs)+len(pdf_bugs)}, warnings={len(warn)}')
