"""Print live column names for given tables."""
import os
import sys

PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
sys.path.insert(0, PROJECT)

from core import db  # noqa: E402

for t in sys.argv[1:]:
    try:
        rows = db.query("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS "
                        "WHERE TABLE_NAME = ? ORDER BY ORDINAL_POSITION", t)
        cols = [r[0] for r in rows]
        print(f"{t} ({len(cols)}): {', '.join(cols)}")
    except Exception as e:
        print(f"{t}: ERROR {e}")
    print()