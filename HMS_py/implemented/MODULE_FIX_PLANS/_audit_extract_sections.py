import re
from collections import Counter

BASE = (r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py"
        r"\VB6_VS_PYTHON_FILE_BY_FILE.baseline_20261003.txt")
CUR = (r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py"
       r"\VB6_VS_PYTHON_FILE_BY_FILE.txt")

ST = re.compile(r"^(MISSING|COMING_SOON|REGISTRY_ONLY|REGISTRY|LIKELY|PY_FILE|"
                r"SHELL|REPORT_VIEWER)\s")


def section_a_statuses(path):
    c = Counter()
    started = False
    for line in open(path, encoding="utf-8", errors="replace"):
        if "SECTION A" in line:
            started = True
            continue
        if started and line.startswith("# SECTION B"):
            break
        if started:
            m = ST.match(line)
            if m:
                c[m.group(1)] += 1
    return c


def module_statuses(path):
    c = Counter()
    started = False
    for line in open(path, encoding="utf-8", errors="replace"):
        if "SECTION B" in line:
            started = True
            continue
        if started and line.startswith("# SECTION C"):
            break
        if started:
            m = re.match(r"^(FULL|PARTIAL|SPARSE|MISSING|NO_SQL)\s", line)
            if m:
                c[m.group(1)] += 1
    return c


def summary_block(path):
    lines = open(path, encoding="utf-8", errors="replace").read().splitlines()
    for i, l in enumerate(lines):
        if "SECTION E" in l:
            return lines[i: i + 45]
    return []


b = section_a_statuses(BASE)
c = section_a_statuses(CUR)
print("FORM STATUS   baseline -> current")
for k in sorted(set(b) | set(c)):
    print(f"  {k:<15} {b.get(k, 0):>4} -> {c.get(k, 0):>4}   (delta {c.get(k,0)-b.get(k,0):+d})")
print(f"  {'TOTAL':<15} {sum(b.values()):>4} -> {sum(c.values()):>4}")

print("\nMODULE STATUS  baseline -> current")
bm, cm = module_statuses(BASE), module_statuses(CUR)
for k in sorted(set(bm) | set(cm)):
    print(f"  {k:<15} {bm.get(k, 0):>4} -> {cm.get(k, 0):>4}   (delta {cm.get(k,0)-bm.get(k,0):+d})")

print("\nBASELINE Section E:")
print("\n".join(summary_block(BASE)))
print("\nCURRENT Section E:")
print("\n".join(summary_block(CUR)))
