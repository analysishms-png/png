"""BUG-011 'Open' item cleanup: ACGROUPCURRBAL me 2 orphan path-code rows.

User-confirmed cleanup (2026-09-29). Evidence-first flow:
  1. SHOW: orphan rows (GroupCode NOT IN AcGroup.GroupCode)
  2. DELETE: sirf wo exact rows (path-code wale)
  3. VERIFY: orphan count 0 + real group rows untouched
Run: python _qa/bug011_orphan_cleanup.py
"""
import os
import sys

PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
sys.path.insert(0, PROJECT)

from HMS_py.core import db


def orphans():
    return db.query(
        "SELECT C.GroupCode, C.Curr_Bal, C.V_Date "
        "FROM ACGROUPCURRBAL C WHERE C.GroupCode NOT IN "
        "(SELECT GroupCode FROM AcGroup)")


print("=== STEP 1: orphan evidence ===")
rows = orphans()
for r in rows:
    print(f"  GroupCode={r.GroupCode!r} Bal={r.Curr_Bal} VDate={r.V_Date}")
print("orphan count:", len(rows))
assert len(rows) == 2, f"expected 2 orphans (register evidence), got {len(rows)}"

print("=== STEP 2: delete ===")
n = db.execute(
    "DELETE FROM ACGROUPCURRBAL WHERE GroupCode NOT IN "
    "(SELECT GroupCode FROM AcGroup)")
print("deleted rows:", n)

print("=== STEP 3: verify ===")
after = orphans()
print("orphan count after:", len(after))
total = db.query("SELECT COUNT(*) AS N FROM ACGROUPCURRBAL")
print("total ACGROUPCURRBAL rows remaining:", total[0].N)
assert len(after) == 0, "orphans still present!"
print("CLEANUP_OK")
