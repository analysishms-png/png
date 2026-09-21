"""API-mismatch audit: UI core-calls vs core definitions (AST-based).

Har HMS_py/ui/*.py me `from HMS_py.core import X` (ya `from HMS_py.core.X import ...`)
pattern se core-module aliases nikaalta hai, phir us alias ke saare
`X.func(...)` calls collect karta hai aur HMS_py/core/X.py ke top-level
names (functions/classes/assignments/imports) se match karta hai.

Missing call = runtime AttributeError = real bug (jaise pos_table_ui ka
`pos_table.list_all()` jo core me tha hi nahi).

Exit code 1 agar mismatch mile — CI me directly usable:
    python tools/api_mismatch_audit.py

Note: `from HMS_py.core import foo as bar` jaise aliased imports bhi
handle hote hain; dynamic getattr calls scope se bahar hain (documented).
"""
from __future__ import annotations

import ast
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
UI_DIR = ROOT / "HMS_py" / "ui"
CORE_DIR = ROOT / "HMS_py" / "core"

# In core modules me constants/dicts common hain — unhe skip nahi karte,
# kyunki callable check call-site pe hi karte hain.


def _core_toplevel_names(core_mod: str) -> set[str]:
    """core/X.py ke top-level definable names (defs, classes, assigns, imports)."""
    path = CORE_DIR / f"{core_mod}.py"
    if not path.exists():
        return set()
    try:
        tree = ast.parse(path.read_text(encoding="utf-8"))
    except SyntaxError:
        return set()
    names: set[str] = set()
    for node in tree.body:
        if isinstance(node, (ast.FunctionDef, ast.AsyncFunctionDef,
                             ast.ClassDef)):
            names.add(node.name)
        elif isinstance(node, ast.Assign):
            for t in node.targets:
                if isinstance(t, ast.Name):
                    names.add(t.id)
        elif isinstance(node, ast.AnnAssign) and isinstance(node.target,
                                                            ast.Name):
            names.add(node.target.id)
        elif isinstance(node, (ast.Import, ast.ImportFrom)):
            for a in node.names:
                names.add((a.asname or a.name).split(".")[0])
    return names


def _ui_core_aliases(ui_path: Path) -> dict[str, str]:
    """UI file ke core-module aliases: {alias: core_module_name}."""
    try:
        tree = ast.parse(ui_path.read_text(encoding="utf-8"))
    except SyntaxError:
        return {}
    aliases: dict[str, str] = {}
    for node in ast.walk(tree):
        if isinstance(node, ast.ImportFrom) and node.module:
            if node.module == "HMS_py.core" or node.module.startswith(
                    "HMS_py.core."):
                for a in node.names:
                    if a.name == "*":
                        continue
                    local = a.asname or a.name
                    # `from HMS_py.core import db` -> alias 'db' -> module 'db'
                    # `from HMS_py.core import inventory as inv` -> 'inv'->'inventory'
                    aliases[local] = a.name
                    if node.module != "HMS_py.core":
                        # `from HMS_py.core.pos_table import x` wale cases me
                        # module bhi alias ho sakta hai
                        pass
        elif isinstance(node, ast.Import):
            for a in node.names:
                if a.name.startswith("HMS_py.core."):
                    local = a.asname or a.name.split(".")[-1]
                    aliases[local] = a.name.split(".")[-1]
    return aliases


def _calls_on_alias(tree: ast.AST, alias: str) -> list[tuple[int, str]]:
    """`alias.attr(...)` calls (sirf direct attribute calls)."""
    calls: list[tuple[int, str]] = []
    for node in ast.walk(tree):
        if isinstance(node, ast.Call):
            f = node.func
            if (isinstance(f, ast.Attribute) and isinstance(f.value, ast.Name)
                    and f.value.id == alias):
                calls.append((node.lineno, f.attr))
    return calls


def audit() -> list[tuple[str, str, int, str, str]]:
    """Returns [(ui_file, core_module, lineno, attr, hint)]."""
    problems: list[tuple[str, str, int, str, str]] = []
    for ui_path in sorted(UI_DIR.glob("*.py")):
        try:
            tree = ast.parse(ui_path.read_text(encoding="utf-8"))
        except SyntaxError:
            continue
        aliases = _ui_core_aliases(ui_path)
        if not aliases:
            continue
        for alias, core_mod in aliases.items():
            names = _core_toplevel_names(core_mod)
            if not names:
                continue
            for lineno, attr in _calls_on_alias(tree, alias):
                if attr not in names:
                    problems.append((ui_path.name, core_mod, lineno, attr,
                                     f"{alias}.{attr}() core/{core_mod}.py "
                                     "me nahi hai"))
    return problems


def main() -> int:
    problems = audit()
    if not problems:
        print("API audit: 0 mismatches — sab UI core-calls valid hain.")
        return 0
    print(f"API audit: {len(problems)} MISMATCH(ES):\n")
    cur_file = None
    for f, mod, ln, attr, hint in problems:
        if f != cur_file:
            print(f"  {f}:")
            cur_file = f
        print(f"    line {ln:4d}: {hint}")
    print("\nFix: core module me function add karo ya UI call theek karo.")
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
