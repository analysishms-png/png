"""CRLF-safe exact-string patcher for the Main Setup bug fixes.

str_replace fails on these CRLF files, so do the same exact-match edits
programmatically: read with newline='' (keeps \\r\\n), replace, write back.
"""
import sys

EDITS = [
    # BUG-MS-03: Guest LookUp - GuestProf has no 'Phone' column
    ("ui/guest_lookup_ui.py",
     '''    def _load_data(self):
        try:
            self._all_rows = db.query(
                "SELECT Code, Name, ISNULL(Phone,''), "
                "ISNULL(Add1,''), ISNULL(City,'') FROM GuestProf ORDER BY Name")
            self._populate(self._all_rows)
        except Exception:
            self._all_rows = []''',
     '''    def _load_data(self):
        try:
            # BUG-MS-03 (Main Setup screenshot audit 2026-10-03): GuestProf
            # me 'Phone' column hi nahi hai (asli: PhoneNo/MobileNo) -> query
            # fail hoti thi aur exception chup-chaap dab jaata tha -> lookup
            # screen hamesha khaali (VB6 GuestLookUp me list turant dikhti).
            self._all_rows = db.query(
                "SELECT Code, Name, ISNULL(PhoneNo,''), "
                "ISNULL(Add1,''), ISNULL(City,'') FROM GuestProf ORDER BY Name")
            self._populate(self._all_rows)
        except Exception as exc:
            self._all_rows = []
            print(f"GuestLookup _load_data failed: {exc}")'''),

    # BUG-MS-04: MemEnviro site-filter hides the single legacy row
    ("core/member_billing.py",
     '''def get_memenviro(site=SITE_CODE, cn=None):
    rows = db.query("SELECT * FROM MemEnviro WHERE Site_Code = ?", (site,), cn=cn)
    return _map_memenviro(rows[0]) if rows else None''',
     '''def get_memenviro(site=SITE_CODE, cn=None):
    rows = db.query("SELECT * FROM MemEnviro WHERE Site_Code = ?", (site,), cn=cn)
    if not rows:
        # BUG-MS-04 (Main Setup screenshot audit 2026-10-03): legacy row ka
        # Site_Code '' hai -> site-filter par rows=0 -> Environment Settings
        # screen khaali. VB6 bina site filter ke `select * from MemEnviro`
        # padhta tha (HMS.bas evidence) -> fallback to any row.
        rows = db.query("SELECT TOP 1 * FROM MemEnviro", (), cn=cn)
    return _map_memenviro(rows[0]) if rows else None'''),

    # BUG-MS-05: Opening Stock - ItemMast.ActiveYN stores 'Yes', not 'Y'
    ("ui/misc_sub_forms_ui.py",
     '''            from HMS_py.core import db
            rows = db.query(
                "SELECT Code, Name, ISNULL(Unit,''), ISNULL(MinStock,0), "
                "ISNULL(SaleRate,0) FROM ItemMast WHERE ISNULL(ActiveYN,'Y')='Y' "
                "ORDER BY Code")''',
     '''            from HMS_py.core import db
            # BUG-MS-05 (Main Setup screenshot audit 2026-10-03): ItemMast me
            # ActiveYN='Yes' stored hai (3281 rows), 'Y' nahi - purana filter
            # ISNULL(ActiveYN,'Y')='Y' 0 rows laata tha -> Opening Stock
            # screen khaali. Blank = active (VB6 semantics).
            rows = db.query(
                "SELECT Code, Name, ISNULL(Unit,''), ISNULL(MinStock,0), "
                "ISNULL(SaleRate,0) FROM ItemMast "
                "WHERE ISNULL(ActiveYN,'Yes') IN ('', 'Y', 'Yes') "
                "ORDER BY Code")'''),
]


def main():
    fail = 0
    for path, old, new in EDITS:
        with open(path, newline="", encoding="utf-8") as f:
            src = f.read()
        crlf = "\r\n" in src
        o = old.replace("\n", "\r\n") if crlf else old
        n = new.replace("\n", "\r\n") if crlf else new
        if o not in src:
            print(f"MISS: {path} (old string not found)")
            fail = 1
            continue
        if src.count(o) != 1:
            print(f"AMBIGUOUS ({src.count(o)}x): {path}")
            fail = 1
            continue
        src = src.replace(o, n, 1)
        with open(path, "w", newline="", encoding="utf-8") as f:
            f.write(src)
        print(f"PATCHED: {path}")
    sys.exit(fail)


if __name__ == "__main__":
    main()
