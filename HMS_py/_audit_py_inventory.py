import ast
import os
import sys

ROOT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py"

report = []


def scan(directory, label):
    path = os.path.join(ROOT, directory)
    if not os.path.isdir(path):
        report.append(f"{label}: MISSING DIR {directory}")
        return
    files = [f for f in os.listdir(path) if f.endswith(".py")]
    classes = funcs = 0
    for f in files:
        try:
            tree = ast.parse(
                open(os.path.join(path, f), encoding="utf-8", errors="replace").read()
            )
        except SyntaxError:
            report.append(f"  SYNTAX-ERROR: {directory}/{f}")
            continue
        for node in tree.body:
            if isinstance(node, ast.ClassDef):
                classes += 1
            elif isinstance(node, (ast.FunctionDef, ast.AsyncFunctionDef)):
                funcs += 1
    report.append(
        f"{label}: files={len(files)} top-level classes={classes} top-level funcs={funcs}"
    )


for d, lbl in [
    ("ui", "ui"),
    ("core", "core"),
    ("tests", "tests"),
    ("migrations", "migrations"),
    ("tools", "tools"),
    ("comparison", "comparison"),
]:
    scan(d, lbl)

# any api/service/repo/auth packages anywhere?
for name in ["api", "services", "repositories", "database", "reports",
             "printing", "authentication", "api", "app", "web"]:
    p = os.path.join(ROOT, name)
    if os.path.isdir(p):
        py = [f for f in os.listdir(p) if f.endswith(".py")]
        report.append(f"EXTRA DIR {name}/: {len(py)} py files")

# report/printing related modules inside ui/core
hits = []
for d in ("ui", "core"):
    p = os.path.join(ROOT, d)
    for f in sorted(os.listdir(p)):
        if f.endswith(".py") and any(
            k in f.lower() for k in ("report", "print", "reprint", "preview")
        ):
            hits.append(f"{d}/{f}")
report.append(f"report/print modules: {len(hits)}")
for h in hits:
    report.append(f"  {h}")

print("\n".join(report))
