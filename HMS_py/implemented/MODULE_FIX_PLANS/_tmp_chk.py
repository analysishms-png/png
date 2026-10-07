import sys, os, re, collections
sys.path.insert(0, os.path.abspath("."))
import tools.vb6_py_file_parity as V
from core import db
live = {r[0].lower() for r in db.query("SELECT LOWER(TABLE_NAME) FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'")}
# raw loose extraction over ALL frm/bas/py
loose_vb6 = collections.Counter()
for f in sorted(os.listdir(V.VB6_DIR)):
    if f.lower().endswith((".frm", ".bas")):
        for t in V.extract_tables(V.read_text(os.path.join(V.VB6_DIR, f))):
            loose_vb6[t.lower()] += 1
print("loose vb6 tokens:", len(loose_vb6), " of which live:", sum(1 for t in loose_vb6 if t in live))
print("top non-live:", [t for t, c in loose_vb6.most_common(60) if t not in live][:40])
