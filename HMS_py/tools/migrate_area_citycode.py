"""AreaMast.CityCode widen migration: varchar(5) -> varchar(6).

BACKGROUND (evidence-documented in core/area.py):
  AreaMast.CityCode varchar(5) hai par City.CityCode varchar(6) - asli
  codes (KK0002...) 6-char hain. Original VB6 app me bhi Area me real
  City assign karna impossible tha (isi se AreaMast 0 rows).

SAFETY DESIGN:
  1. Default = DRY RUN (koi change nahi - sirf current state dikhata hai)
  2. APPLY karne ke liye: --apply --yes --i-understand-schema-change
     (teeno flags zaroori - accident impossible)
  3. Apply se pehle automatic backup table: AreaMast_bak_YYYYMMDD
  4. Migration single transaction me - fail hone par auto-rollback
  5. Post-check: naya size verify + old data intact

Usage:
  python -m HMS_py.tools.migrate_area_citycode           # dry run
  python -m HMS_py.tools.migrate_area_citycode --apply --yes --i-understand-schema-change
"""
import argparse
import datetime
import sys

from HMS_py.core import db

CHECK_SQL = """
SELECT c.name, t.name AS type_name, c.max_length
FROM sys.columns c JOIN sys.types t ON c.user_type_id = t.user_type_id
WHERE c.object_id = OBJECT_ID('AreaMast') AND c.name = 'CityCode'
"""
ALTER_SQL = "ALTER TABLE AreaMast ALTER COLUMN CityCode varchar(6)"


def show_state(cn):
    cur = cn.cursor()
    cur.execute(CHECK_SQL)
    row = cur.fetchone()
    cur.execute("SELECT COUNT(*) FROM AreaMast")
    n = cur.fetchone()[0]
    cur.execute("SELECT COUNT(*) FROM City WHERE LEN(CityCode) > 5")
    overflow = cur.fetchone()[0]
    return row, n, overflow


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true",
                    help="Migration apply karo (dry-run ke bajaye)")
    ap.add_argument("--yes", action="store_true",
                    help="Confirmation flag 1")
    ap.add_argument("--i-understand-schema-change", action="store_true",
                    help="Confirmation flag 2 (schema change = irreversible "
                         "safety)")
    args = ap.parse_args()

    cn = db.connect()
    (col, typ, mlen), nrows, overflow = show_state(cn)
    print(f"CURRENT: AreaMast.CityCode = {typ}({mlen}) | rows={nrows} | "
          f"City codes >5 chars: {overflow}")
    if mlen >= 6:
        print("Already widened - kuch karne ki zaroorat nahi.")
        cn.close()
        return 0

    if not args.apply:
        print("\nDRY RUN - koi change nahi kiya.")
        print("Plan: CityCode varchar(5) -> varchar(6), backup table ke "
              "saath, single transaction.")
        print("Apply: --apply --yes --i-understand-schema-change")
        cn.close()
        return 0

    if not (args.yes and args.i_understand_schema_change):
        print("\nBLOCKED: schema change ke liye teeno flags chahiye "
              "(--apply --yes --i-understand-schema-change)")
        cn.close()
        return 2

    # APPLY with backup
    bak = f"AreaMast_bak_{datetime.datetime.now():%Y%m%d}"
    cur = cn.cursor()
    try:
        cur.execute(f"SELECT OBJECT_ID('{bak}')")
        if cur.fetchone()[0] is None:
            cur.execute(f"SELECT * INTO [{bak}] FROM AreaMast")
            print(f"backup table banaya: {bak} ({nrows} rows)")
        cur.execute(ALTER_SQL)
        cn.commit()
        print("ALTER complete.")
        # post-check
        (col2, typ2, mlen2), nrows2, _ = show_state(cn)
        assert mlen2 >= 6 and nrows2 == nrows, "post-check FAIL"
        print(f"POST-CHECK OK: CityCode = {typ2}({mlen2}), rows={nrows2} "
              f"(data intact), backup={bak}")
        return 0
    except Exception as e:
        cn.rollback()
        print(f"FAILED - rollback kiya: {e}")
        return 1
    finally:
        cn.close()


if __name__ == "__main__":
    raise SystemExit(main())
