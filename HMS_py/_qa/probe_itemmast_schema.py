"""ItemMast/Depart live-schema probe (VB6 frmMenuItemCopy port ke liye).

Read-only: TOP 1 * + COUNT. VB6 evidence frmMenuItemCopy.frm:1357/:1642.
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.getcwd()))  # parent of HMS_py dir
sys.path.insert(0, os.getcwd())

from HMS_py.core import db  # noqa: E402


def main() -> int:
    cn = db.connect()
    cur = cn.cursor()
    for t in ("ItemMast", "Depart", "ItemGrp", "ItemCatMast"):
        try:
            cur.execute(f"SELECT TOP 1 * FROM [{t}]")
            cols = [d[0] for d in cur.description]
            print(f"{t} COLS: {','.join(cols)}")
        except Exception as exc:
            print(f"{t} ERR: {str(exc)[:80]}")
    cur.execute("SELECT COUNT(*) FROM ItemMast")
    print("ItemMast rows:", cur.fetchone()[0])
    cur.execute(
        "SELECT TOP 3 RTRIM(RestCode), RTRIM(Code), RTRIM(Name) "
        "FROM ItemMast ORDER BY RestCode, Code")
    for r in cur.fetchall():
        print("sample:", r)
    cn.close()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
