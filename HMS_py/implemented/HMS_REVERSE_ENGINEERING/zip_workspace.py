"""Zip the HMS_REVERSE_ENGINEERING workspace into a single archive + MANIFEST.txt."""
import os, time, zipfile

HERE = os.path.dirname(os.path.abspath(__file__))          # .../HMS_REVERSE_ENGINEERING
PARENT = os.path.dirname(HERE)                             # C:\PENDRIVE\HMS
STAMP = time.strftime("%Y-%m-%d")
ZIP_PATH = os.path.join(PARENT, "HMS_RE_ANALYSIS_" + STAMP + ".zip")

SKIP_DIRS = {"__pycache__"}
SKIP_EXT = {".pyc"}
SKIP_NAMES = {"Thumbs.db", "desktop.ini"}

def human(n):
    for u in ("B", "KB", "MB", "GB"):
        if n < 1024 or u == "GB":
            return ("%d " if u == "B" else "%.1f ") % n + u
        n /= 1024.0

# ---- collect files ----
files = []
for root, dirs, names in os.walk(HERE):
    dirs[:] = [d for d in dirs if d not in SKIP_DIRS]
    for nm in sorted(names):
        if nm in SKIP_NAMES or nm.startswith("~$"):
            continue
        if os.path.splitext(nm)[1].lower() in SKIP_EXT:
            continue
        p = os.path.join(root, nm)
        files.append((os.path.relpath(p, HERE), os.path.getsize(p)))
files.sort()

# ---- MANIFEST.txt ----
total = sum(s for _, s in files)
folders = {}
for rel, s in files:
    top = rel.split(os.sep)[0]
    f = folders.setdefault(top, [0, 0])
    f[0] += 1
    f[1] += s

L = []
L.append("HMS REVERSE-ENGINEERING ANALYSIS - DELIVERY MANIFEST")
L.append("=" * 60)
L.append("Archive   : " + os.path.basename(ZIP_PATH))
L.append("Created   : " + time.strftime("%Y-%m-%d %H:%M"))
L.append("Workspace : " + HERE)
L.append("System    : HMS.exe (VB6, 351 objects) + MOONData2627 (SQL Server 2008 R2, 277 tables) | Site 'KK', Bareilly")
L.append("Mode      : 100% READ-ONLY analysis (closed 2026-09-28)")
L.append("Files     : %d | Uncompressed: %s" % (len(files), human(total)))
L.append("")
L.append("FOLDER SUMMARY")
L.append("-" * 60)
for top in sorted(folders):
    c, s = folders[top]
    suffix = "/" if os.path.isdir(os.path.join(HERE, top)) else ""
    L.append("%-34s %4d files  %10s" % (top + suffix, c, human(s)))
L.append("")
L.append("KEY DELIVERABLES (start here)")
L.append("-" * 60)
for kd in [
    "22_Final_Manual/00_MASTER_INDEX.md",
    "22_Final_Manual/HMS_Complete_Reverse_Engineering_Manual_v2.docx",
    "22_Final_Manual/HMS_Operations_Manual.docx",
    "22_Final_Manual/FINAL_REPORT.docx",
    "22_Final_Manual/FINAL_REPORT.md",
    "22_Final_Manual/HMS_OPERATIONS_MANUAL.md",
    "22_Final_Manual/HMS_WORKFLOWS_PART2.md",
    "23_Modernization_Blueprint/MODERNIZATION_BLUEPRINT.md",
    "23_Modernization_Blueprint/PHASE_A_TASK_LIST.md",
    "21_Testing/BUG_REGISTER.md",
    "21_Testing/SECURITY_REMEDIATION_NOTE_SRN-001.md",
    "18_Database/LIVE_DATABASE_DICTIONARY.md",
    "20_SQL_Tracking/SQL_TRACKING_RESULTS.md",
    "screenshots/CAPTURE_INDEX.md",
]:
    L.append("  " + kd)
L.append("")
L.append("FULL FILE INVENTORY (path | size)")
L.append("-" * 60)
for rel, s in files:
    L.append("%-80s %10s" % (rel, human(s)))
L.append("")
L.append("* EXTRAS.text = 54 MB decompiled VB6 evidence dump (primary source,")
L.append("  referenced by line numbers in all docs). Included in archive.")
L.append("* Passwords/secrets: NOT present in this workspace (masked throughout).")

with open(os.path.join(HERE, "MANIFEST.txt"), "w", encoding="utf-8") as f:
    f.write("\n".join(L))

# ---- zip ----
files.append(("MANIFEST.txt", os.path.getsize(os.path.join(HERE, "MANIFEST.txt"))))
with zipfile.ZipFile(ZIP_PATH, "w", zipfile.ZIP_DEFLATED, compresslevel=6) as z:
    for rel, _ in files:
        z.write(os.path.join(HERE, rel), "HMS_REVERSE_ENGINEERING/" + rel)

print("ZIP   :", ZIP_PATH)
print("Size  :", human(os.path.getsize(ZIP_PATH)), "| entries:", len(files))
