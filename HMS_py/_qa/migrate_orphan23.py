"""Orphan bucket 23 -> proper Members Mgmt bucket (Opt1=21) migration.

VB6 evidence (MDIForm1.frm:2420-2475):
  MembOpr "Operations" menu, MemOpr Index 0..12 — Index 12 =
  'Auto Settle Card Balance'. menuHelp me ye row orphan Opt1=23 par thi
  (root/group N-rows kabhi seed hi nahi hue).

Migration (VB6 Code-convention: Opt1*10^6 + Opt2*10^4 + Opt3*10^2 + Opt4):
  1. Leaf:  (23,0,11,0) -> (21,11,12,0), Code 23001100 -> 21111200
  2. Root:  INSERT (21,0,0,0)  'Members Mgmt' N  (sidebar bucket)
  3. Group: INSERT (21,11,0,0) 'Operations'   N  (group title)

Legacy User_Module (Members Operations/Reports) menubar_for gap-merge se
auto-merge hoga — VB6 Index 0..11 items waise hi dikhenge.
Backup: _qa/orphan23_backup.txt
"""
import sys
from datetime import date

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")

from HMS_py.core import db, menu_help as mh

BACKUP = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_qa\orphan23_backup.txt"


def main():
    comp = mh._comp()

    # --- pre-state + backup -------------------------------------------
    rows = db.query(
        "SELECT UserName, Opt1, Opt2, Opt3, Opt4, [Option], Flag, Param_Str, "
        "Module_Name, Code, CompCode FROM menuHelp WHERE Opt1 = 23 "
        "ORDER BY UserName")
    print(f"pre-state: {len(rows)} orphan rows at Opt1=23")
    for r in rows:
        print("  ", tuple(r))
    with open(BACKUP, "w", encoding="utf-8") as fh:
        fh.write(f"# orphan Opt1=23 backup {date.today().isoformat()}\n")
        for r in rows:
            fh.write(repr(tuple(r)) + "\n")

    # --- idempotency guard ---------------------------------------------
    existing = db.query(
        "SELECT COUNT(*) FROM menuHelp WHERE Opt1 = 21")
    if existing[0][0]:
        print(f"Opt1=21 pehle se {existing[0][0]} rows — migration already done")
        return

    cn = db.connect()
    try:
        cur = cn.cursor()
        # 1. leaf reposition (sab users — sirf SA wali row hai filhal)
        cur.execute(
            "UPDATE menuHelp SET Opt1 = 21, Opt2 = 11, Opt3 = 12, Code = 21111200 "
            "WHERE Opt1 = 23")
        n_leaf = cur.rowcount
        # 2. root + group N-rows: har distinct (UserName, CompCode) jiske paas
        #    ab Opt1=21 leaf hai, wahan seed karo
        # holders bhi SAME connection se (uncommitted txn ka lock —
        # doosra connection LOCK_TIMEOUT 1222 dega)
        cur.execute(
            "SELECT DISTINCT UserName, CompCode FROM menuHelp WHERE Opt1 = 21")
        holders = cur.fetchall()
        n_root = n_group = 0
        for u, cc in holders:
            u, cc = str(u), str(cc)
            cur.execute(
                "SELECT COUNT(*) FROM menuHelp WHERE UserName=? AND CompCode=? "
                "AND Opt1=21 AND Opt2=0 AND Opt3=0 AND Opt4=0", (u, cc))
            if not cur.fetchone()[0]:
                cur.execute(
                    "INSERT INTO menuHelp (UserName, CompCode, Opt1, Opt2, Opt3, "
                    "Opt4, [Option], Flag, Param_Str, Module_Name, Code) "
                    "VALUES (?, ?, 21, 0, 0, 0, 'Members Mgmt', 'N', 'AEDP', "
                    "'MemOpr', 21)", (u, cc))
                n_root += 1
            cur.execute(
                "SELECT COUNT(*) FROM menuHelp WHERE UserName=? AND CompCode=? "
                "AND Opt1=21 AND Opt2=11 AND Opt3=0 AND Opt4=0", (u, cc))
            if not cur.fetchone()[0]:
                cur.execute(
                    "INSERT INTO menuHelp (UserName, CompCode, Opt1, Opt2, Opt3, "
                    "Opt4, [Option], Flag, Param_Str, Module_Name, Code) "
                    "VALUES (?, ?, 21, 11, 0, 0, 'Operations', 'N', 'AEDP', "
                    "'MemOpr', 22)", (u, cc))
                n_group += 1
        cn.commit()
        print(f"migrated: leaf={n_leaf}, root={n_root}, group={n_group} "
              f"(users: {[tuple(h) for h in holders]})")
    except Exception:
        cn.rollback()
        raise
    finally:
        cn.close()

    mh.clear_cache()

    # --- post-state verify ----------------------------------------------
    post = db.query(
        "SELECT UserName, Opt1, Opt2, Opt3, Opt4, [Option], Flag, Code "
        "FROM menuHelp WHERE Opt1 IN (21, 23) ORDER BY UserName, Opt2, Opt3")
    print("post-state:")
    for r in post:
        print("  ", tuple(r))
    left = db.query("SELECT COUNT(*) FROM menuHelp WHERE Opt1 = 23")[0][0]
    assert left == 0, "Opt1=23 rows abhi bhi bachi hain!"
    print("MIGRATION_OK")


if __name__ == "__main__":
    main()
