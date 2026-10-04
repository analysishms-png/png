"""Report names referenced but not imported/defined at module scope.

Usage: python _qa/undefined_names.py ui/fo_sub_forms_ui.py [more modules...]
"""
import ast
import builtins
import sys

BI = set(dir(builtins))


def collect(path):
    src = open(path, encoding="utf-8").read()
    tree = ast.parse(src, path)

    defined = set(BI) | {"__file__", "__name__", "__doc__", "self", "cls"}
    for node in ast.walk(tree):
        if isinstance(node, (ast.Import, ast.ImportFrom)):
            for a in node.names:
                defined.add((a.asname or a.name).split(".")[0])
        elif isinstance(node, (ast.FunctionDef, ast.AsyncFunctionDef, ast.ClassDef)):
            defined.add(node.name)
        elif isinstance(node, ast.Name) and isinstance(node.ctx, ast.Store):
            defined.add(node.id)
        elif isinstance(node, ast.arg):
            defined.add(node.arg)
        elif isinstance(node, ast.ExceptHandler) and node.name:
            defined.add(node.name)
        elif isinstance(node, (ast.comprehension,)):
            for t in ast.walk(node.target):
                if isinstance(t, ast.Name):
                    defined.add(t.id)
        elif isinstance(node, ast.Global):
            defined.update(node.names)

    missing = {}
    for node in ast.walk(tree):
        if isinstance(node, ast.Name) and isinstance(node.ctx, ast.Load):
            if node.id not in defined:
                missing.setdefault(node.id, node.lineno)
    return missing


for p in sys.argv[1:]:
    m = collect(p)
    print(f"== {p}: {len(m)} undefined name(s)")
    for k, ln in sorted(m.items(), key=lambda kv: kv[1]):
        print(f"   line {ln}: {k}")