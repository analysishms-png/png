"""Screenshot hygiene pass (Phase 1 of the 2026-09-29 remediation).

What it does (idempotent, no deletions):
  1. MOVES the 4 House Keeping captures that were saved into 07_Inventory back
     to 06_House_Keeping (they were misfiled by the capture tool's strip mapping).
  2. ARCHIVES byte-identical duplicate PNGs into screenshots/_duplicates/<orig folder>/
     - keeps the first occurrence in sorted order, moves the rest.
     Nothing is deleted; originals remain recoverable at their mirrored path.
  3. Writes screenshots/_duplicates/MANIFEST.md with the groups that were archived.
  4. Prints coverage stats used to regenerate CAPTURE_INDEX.md.

Safety: only moves files inside screenshots/; never touches source, DB or HMS data.
"""
import hashlib
import os
import re
import shutil
from collections import defaultdict

HERE = os.path.dirname(os.path.abspath(__file__))
SS = os.path.join(HERE, "screenshots")
DUP = os.path.join(SS, "_duplicates")

HK_RE = re.compile(r"house[_ ]?keeping|housekee|complain", re.I)
SRC_FOLDER = "07_Inventory"
DST_FOLDER = "06_House_Keeping"


def md5(path):
    h = hashlib.md5()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def move_misfiled_hk():
    """Return list of (name,) moved back to the correct folder."""
    src = os.path.join(SS, SRC_FOLDER)
    dst = os.path.join(SS, DST_FOLDER)
    moved = []
    if not os.path.isdir(src):
        return moved
    for fn in sorted(os.listdir(src)):
        if not fn.lower().endswith(".png"):
            continue
        if HK_RE.search(fn):
            os.makedirs(dst, exist_ok=True)
            target = os.path.join(dst, fn)
            if os.path.exists(target):
                # same name already there -> treat as duplicate, archive instead
                os.makedirs(os.path.join(DUP, SRC_FOLDER), exist_ok=True)
                shutil.move(os.path.join(src, fn), os.path.join(DUP, SRC_FOLDER, fn))
                moved.append(fn + " (name clash -> archived)")
            else:
                shutil.move(os.path.join(src, fn), target)
                moved.append(fn)
    return moved


def collect_pngs():
    out = {}
    for folder in sorted(os.listdir(SS)):
        full = os.path.join(SS, folder)
        if not os.path.isdir(full) or folder == "_duplicates":
            continue
        for fn in sorted(os.listdir(full)):
            if fn.lower().endswith(".png"):
                out[os.path.join(folder, fn)] = os.path.join(full, fn)
    return out


def archive_duplicates():
    """Group by md5; keep first (sorted rel path), move the rest to _duplicates/."""
    files = collect_pngs()
    groups = defaultdict(list)
    for rel, full in sorted(files.items()):
        groups[md5(full)].append((rel, full))
    archived = []
    for digest, items in groups.items():
        if len(items) < 2:
            continue
        keep_rel, _keep_full = items[0]
        for rel, full in items[1:]:
            dest_dir = os.path.join(DUP, os.path.dirname(rel))
            os.makedirs(dest_dir, exist_ok=True)
            shutil.move(full, os.path.join(DUP, rel))
            archived.append((digest, keep_rel, rel))
    return archived


def write_manifest(moved, archived):
    os.makedirs(DUP, exist_ok=True)
    lines = ["# ARCHIVED DUPLICATES (Phase 1 — 2026-09-9 remediation pass)",
             "",
             "Yahan rakhe PNG **byte-identical duplicates** hain. Original delete nahi",
             "hua; har file apne mirrored path par preserved hai. Recover karne ke liye",
             "wapas us folder me move kar dein.",
             "",
             "## A. Misfiled House Keeping captures (07_Inventory -> 06_House_Keeping)",
             ""]
    if moved:
        lines += ["- `%s`" % m for m in moved]
    else:
        lines.append("- (koi nahi — pehle se sahi)")
    lines += ["", "## B. Byte-identical duplicate groups archived", "",
              "| # | md5 (short) | kept at | archived path |", "|---:|---|---|---|"]
    for i, (digest, keep, rel) in enumerate(archived, 1):
        lines.append("| %d | `%s` | `%s` | `%s` |" % (i, digest[:10], keep, rel))
    lines += ["", "Total archived: %d file(s). " % len(archived), ""]
    with open(os.path.join(DUP, "MANIFEST.md"), "w", encoding="utf-8") as f:
        f.write("\n".join(lines))


def stats():
    files = collect_pngs()
    per = defaultdict(int)
    for rel in files:
        per[rel.split(os.sep, 1)[0]] += 1
    return len(files), dict(sorted(per.items()))


def main():
    moved = move_misfiled_hk()
    archived = archive_duplicates()
    write_manifest(moved, archived)
    total, per = stats()
    print("Misfiled HK moved back: %d" % len(moved))
    for m in moved:
        print("   -", m)
    print("Duplicates archived: %d" % len(archived))
    print("Remaining unique PNGs: %d" % total)
    for folder, n in per.items():
        print("   %-26s %3d" % (folder, n))


if __name__ == "__main__":
    main()
