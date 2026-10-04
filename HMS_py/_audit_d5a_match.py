import os
import re

ROOT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py"

lines = open(ROOT + r"\VB6_VS_PYTHON_FILE_BY_FILE.txt", encoding="utf-8",
             errors="replace").read().splitlines()

# D5a list = between "D5a." header and "D5b."
start = next(i for i, l in enumerate(lines) if l.startswith("D5a."))
end = next(i for i, l in enumerate(lines) if l.startswith("D5b."))
d5a = []
for l in lines[start + 2:end]:
    m = re.match(r"\s+-\s+(\S+)", l)
    if m:
        d5a.append(m.group(1))
print("D5a parsed:", len(d5a))

# report keys in core/reports.py
rp = open(ROOT + r"\core\reports.py", encoding="utf-8", errors="replace").read()
keys = set(re.findall(r'"key"\s*:\s*"([^"]+)"', rp))
print("reports.py keys:", len(keys))

hit = [n for n in d5a if n in keys]
# also check any core def
core_defs = set()
for f in os.listdir(ROOT + r"\core"):
    if f.endswith(".py"):
        try:
            import ast
            t = ast.parse(open(os.path.join(ROOT, "core", f),
                               encoding="utf-8", errors="replace").read())
            core_defs |= {n.name for n in t.body
                          if isinstance(n, (ast.FunctionDef, ast.ClassDef))}
        except Exception:
            pass
hit_def = [n for n in d5a if n in core_defs and n not in keys]

print(f"D5a matched as reports.py report-key : {len(hit)}")
print(f"D5a matched as core top-level def    : {len(hit_def)}")
print(f"D5a genuinely unmatched              : {len(d5a) - len(hit) - len(hit_def)}")
print()
print("sample report-key matches:", ", ".join(hit[:25]))
print()
print("sample UNMATCHED:", ", ".join(
    [n for n in d5a if n not in keys and n not in core_defs][:40]))

# cross-check: how many reports.py keys have NO D5a entry (already counted ported elsewhere)
print()
print("reports.py keys not in D5a (ported earlier / name-ported):",
      len(keys - set(d5a)))
