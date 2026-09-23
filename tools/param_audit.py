"""Param-count audit: har db.execute()/db.query() call me SQL ke `?`
markers vs params tuple ki length match karta hai (AST-based).

Static catch for SQL error 109/7326-class bugs (jaise facility_billing
ka 16-columns-12-values tha). Adjacent string concat + getdate()/'A'
jaise literals handle karta hai. f-strings aur non-literal SQL skip
hote hain (unme markers runtime pe resolve hote hain).

Run:
    python tools/param_audit.py            # sab core/*.py + ui/*.py
    exit 1 agar mismatch mile (CI-ready)
"""
from __future__ import annotations

import ast
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
TARGET_DIRS = ["core", "ui"]


def flat_sql(node: ast.AST) -> str | None:
    """Static string (Constant / adjacent-concat BinOp) -> full SQL, warna None."""
    if isinstance(node, ast.Constant) and isinstance(node.value, str):
        return node.value
    if isinstance(node, ast.BinOp) and isinstance(node.op, ast.Add):
        left = flat_sql(node.left)
        right = flat_sql(node.right)
        if left is not None and right is not None:
            return left + right
    return None


def tuple_len(node: ast.AST) -> int | None:
    """Params tuple ki static length, warna None (Name/Starred/f-string)."""
    if isinstance(node, ast.Tuple):
        if any(isinstance(e, ast.Starred) for e in node.elts):
            return None
        return len(node.elts)
    return None


def audit_file(path: Path) -> list[tuple[int, str, int, int]]:
    issues = []
    try:
        tree = ast.parse(path.read_text(encoding="utf-8", errors="replace"))
    except SyntaxError as e:
        print(f"  [syntax-error] {path.name}: {e}")
        return issues
    for node in ast.walk(tree):
        if not (isinstance(node, ast.Call) and isinstance(node.func, ast.Attribute)):
            continue
        if node.func.attr not in ("execute", "query", "executemany"):
            continue
        if not node.args:
            continue
        sql = flat_sql(node.args[0])
        if sql is None:
            continue  # dynamic SQL — runtime pe hi check ho sakta
        markers = sql.count("?")
        n = tuple_len(node.args[1]) if len(node.args) > 1 else 0
        if n is None:
            continue
        if node.func.attr == "executemany":
            continue  # per-row params — alag shape
        if markers != n:
            issues.append((node.lineno, sql.strip()[:70], markers, n))
    return issues


def main() -> int:
    total = 0
    for d in TARGET_DIRS:
        for py in sorted((ROOT / "HMS_py" / d).glob("*.py")):
            issues = audit_file(py)
            if issues:
                print(f"\n{py.relative_to(ROOT)}:")
                for lineno, sql, markers, n in issues:
                    print(f"  L{lineno}: markers={markers} params={n}  | {sql}")
                total += len(issues)
    print(f"\n{'=' * 50}\nParam audit: {total} mismatch(es)")
    return 1 if total else 0


if __name__ == "__main__":
    sys.exit(main())
