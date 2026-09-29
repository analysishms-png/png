"""PyQt6 invalid-enum guard.

BUG CLASS: purane PyQt5-style `Class.Member` usages jo PyQt6 me runtime
`AttributeError` dete hain (import-time nahi — dialog open karte waqt).

Mila tha: `fa_sub_forms_ui.py` me `QTableWidget.SelectRows` /
`.SingleSelection` (T.D.S. Challan Entry ke opener par crash), aur
`farm_check_ui.py` me `QDialog.Accepted`.

Sahi form: `QAbstractItemView.SelectionBehavior.SelectRows`,
`QDialog.DialogCode.Accepted`.

Ye test poora `ui/`, `core/` aur `tests/` tree ka AST scan karke har
`QtClass.member` ko PyQt6 se verify karta hai.
"""
import ast
import os

import pytest

pytestmark = pytest.mark.unit

_HERE = os.path.dirname(os.path.abspath(__file__))
_ROOT = os.path.abspath(os.path.join(_HERE, "..", ".."))

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

_QT_NS: dict = {}


def _qt_names() -> set:
    if _QT_NS:
        return set(_QT_NS)
    from PyQt6 import QtCore, QtGui, QtWidgets
    for _mod in (QtWidgets, QtCore, QtGui):
        for _n in dir(_mod):
            _QT_NS.setdefault(_n, getattr(_mod, _n))
    return set(_QT_NS)


def _py_files():
    for sub in ("ui", "core", "tests"):
        d = os.path.join(_ROOT, sub)
        if not os.path.isdir(d):
            continue
        for dirpath, dirnames, filenames in os.walk(d):
            dirnames[:] = [x for x in dirnames if x != "__pycache__"]
            for f in sorted(filenames):
                if f.endswith(".py"):
                    yield os.path.join(dirpath, f)


def _invalid_usages(path: str) -> list[tuple[int, str, str]]:
    try:
        src = open(path, encoding="utf-8", errors="replace").read()
        tree = ast.parse(src, filename=path)
    except (OSError, SyntaxError):
        return []
    names = _qt_names()
    out = []
    for node in ast.walk(tree):
        if not isinstance(node, ast.Attribute):
            continue
        chain, cur = [], node
        while isinstance(cur, ast.Attribute):
            chain.append(cur.attr)
            cur = cur.value
        if not isinstance(cur, ast.Name):
            continue
        chain.append(cur.id)
        chain.reverse()
        cls_name, attr = chain[0], chain[1]
        if cls_name not in names:
            continue
        cls = _QT_NS[cls_name]
        if not hasattr(cls, attr):
            out.append((node.lineno, cls_name, attr))
    return out


def test_no_invalid_pyqt6_enum_usage():
    names = _qt_names()
    assert names, "PyQt6 classes load nahi hue"

    bad = []
    for path in _py_files():
        rel = os.path.relpath(path, _ROOT)
        for lineno, cls, attr in _invalid_usages(path):
            bad.append(f"{rel}:{lineno}  {cls}.{attr}")

    assert not bad, (
        f"{len(bad)} invalid PyQt6 attribute usage (ye runtime me "
        f"AttributeError denge):\n  " + "\n  ".join(bad)
    )


def test_known_fixed_enums_are_valid():
    """Regression: dono exact bugs jo pehle crash karte the."""
    from PyQt6.QtWidgets import QAbstractItemView, QDialog

    assert hasattr(QAbstractItemView.SelectionBehavior, "SelectRows")
    assert hasattr(QAbstractItemView.SelectionMode, "SingleSelection")
    assert hasattr(QDialog.DialogCode, "Accepted")
