"""Nested MODULE_FIX_PLANS/MODULE_FIX_PLANS cleanup — evidence-based.

Logic applied pehle (is session): nightaudit uncharged-rooms + no-show
cancel (Laravel parity), attendance Attend-table fix, ratelist, GroupCatalog.
Ab jo reference material port ho chuka hai ya dead hai, wo delete.

DELETE categories:
- database_backup .sql (MariaDB dump 1.6GB) — analysis Laravel DB ka dump,
  Python live SQL Server se koi lena-dena nahi
- Backup/HOTELBKUP (226MB TAPE format) + Moon&Mars ZIP (same tape copy)
- analysishms-master Laravel project — reference port ho chuka (scan done)
- HMS_Manuals + training docs — manuals, port ke liye inka kaam khatam
- New folder (REPORTS_TXT etc.) — Python reports engine inline-SQL hai,
  runtime file-dependency nahi (verify kiya)
- EXTRAS.text — HMS.bas ka duplicate extract (995k lines)
KEEP:
- ezee_reference (3 openapi yml — future channel-integration reference)
- ezee_research — chhota, feature notes
- plan/docs .txt/.md (active planning docs)
Run: python MODULE_FIX_PLANS/_nested_cleanup.py --apply
"""
import os
import shutil
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
NEST = os.path.join(HERE, "MODULE_FIX_PLANS")

DELETE = [
    "database_backup_2026-09-22_08-03-52",           # 1.6GB MariaDB dump
    "Backup",                                        # 226MB TAPE backup
    "Moon and Mars Resorts(DATA-220260803).ZIP",     # same tape ki ZIP
]
# User choice (2026-09-25): sirf dead backups delete. Laravel project,
# manuals, REPORTS_TXT reference ke liye RAKHE hain.
KEEP = ["ezee_reference", "ezee_research", "analysishms-master",
        "HMS_Manuals", "New folder", "EXTRAS.text"]


def main():
    targets = []
    for name in DELETE:
        p = os.path.join(NEST, name)
        if os.path.exists(p):
            targets.append(p)
    total = 0
    for p in targets:
        total += 1
    print(f"DELETE {len(targets)} items:")
    for p in targets:
        print("  -", os.path.relpath(p, HERE))
    if "--apply" not in sys.argv:
        print("(dry-run; --apply ke saath chalao)")
        return
    for p in targets:
        if os.path.isdir(p):
            shutil.rmtree(p, ignore_errors=True)
        else:
            try:
                os.remove(p)
            except PermissionError:
                print("LOCKED (skip):", p)
    print("DONE. Kept:", ", ".join(KEEP))


if __name__ == "__main__":
    main()
