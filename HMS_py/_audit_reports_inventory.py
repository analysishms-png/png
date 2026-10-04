import ast
import os
import re
import sys

ROOT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py"
out = []


def top_defs(path):
    try:
        tree = ast.parse(open(path, encoding="utf-8", errors="replace").read())
    except Exception as e:
        return None, str(e)
    cls = [n.name for n in tree.body if isinstance(n, ast.ClassDef)]
    fn = [n.name for n in tree.body
          if isinstance(n, (ast.FunctionDef, ast.AsyncFunctionDef))]
    return (cls, fn), None


# reports: count report dicts in core/reports.py
rp = os.path.join(ROOT, "core", "reports.py")
text = open(rp, encoding="utf-8", errors="replace").read()
keys = re.findall(r'"key"\s*:\s*"([^"]+)"', text)
out.append(f"core/reports.py report 'key' entries: {len(keys)} (unique {len(set(keys))})")

# report dispatch functions
fns = re.findall(r"^def (\w+)\(", text, re.M)
out.append(f"core/reports.py top-level defs: {len(fns)}")

# printing modules
for f in ["print_engine.py", "printersetup.py", "printformats.py", "printmast.py"]:
    p = os.path.join(ROOT, "core", f)
    if os.path.isfile(p):
        (cls, fn), err = top_defs(p)
        lines = len(open(p, encoding="utf-8", errors="replace").read().splitlines())
        out.append(f"core/{f}: {lines} lines, classes={len(cls)} funcs={len(fn)}" if not err else f"core/{f}: ERR {err}")

# api-ish modules (VB6 MobWebAPI port)
for f in sorted(os.listdir(os.path.join(ROOT, "core"))):
    if f.endswith(".py") and any(k in f.lower() for k in ("api", "http", "web", "mobile")):
        p = os.path.join(ROOT, "core", f)
        (cls, fn), err = top_defs(p)
        out.append(f"API-like core/{f}: classes={len(cls)} funcs={len(fn)}")

# tests: count test functions recursively
total_tests = 0
test_files = 0
for dirpath, dirnames, filenames in os.walk(os.path.join(ROOT, "tests")):
    if "__pycache__" in dirpath:
        continue
    for fn in filenames:
        if fn.startswith("test_") and fn.endswith(".py"):
            test_files += 1
            try:
                src = open(os.path.join(dirpath, fn), encoding="utf-8",
                           errors="replace").read()
                total_tests += len(re.findall(r"^\s*def test_", src, re.M))
            except Exception:
                pass
out.append(f"tests/: files={test_files} def test_* functions={total_tests}")

# root-level test scripts
root_tests = [f for f in os.listdir(ROOT)
              if f.startswith("test_") and f.endswith(".py")]
out.append(f"root-level test_*.py scripts: {len(root_tests)}")

# shell registry key count
sh = open(os.path.join(ROOT, "ui", "shell.py"), encoding="utf-8",
          errors="replace").read()
out.append(f"ui/shell.py: {len(sh.splitlines())} lines")

print("\n".join(out))
