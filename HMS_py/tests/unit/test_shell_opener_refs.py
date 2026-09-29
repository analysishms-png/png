"""Registry opener-reference guard.

`ui/shell.py::_form_registry()` lambdas me `<ui_alias>.<fn>(...)` likha
jaata hai. Agar wo function module me exist hi na karta ho to import to
ho jayega (succeed) par **click par AttributeError** aayega — quiet
`_coming_soon` fallback bhi nahi chalega.

Ye test shell.py ka source scan karke har `<alias>.<fn>` ko asli module
par verify karta hai (alias `None` ho to skip).
"""
import ast
import importlib
import os
import re

import pytest

pytestmark = pytest.mark.unit

_ROOT = os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)),
                                     "..", ".."))
_SHELL = os.path.join(_ROOT, "ui", "shell.py")


def _alias_map() -> dict:
    """`from HMS_py.ui import foo as bar` -> {bar: <module foo>}"""
    src = open(_SHELL, encoding="utf-8", errors="replace").read()
    tree = ast.parse(src, filename=_SHELL)
    out = {}
    for node in ast.walk(tree):
        if not isinstance(node, ast.ImportFrom):
            continue
        mod = node.module or ""
        if not mod.startswith("HMS_py.ui") and not mod.startswith("ui."):
            continue
        for alias in node.names:
            name = alias.asname or alias.name
            out[name] = mod + "." + alias.name
    return out


def _refs() -> set[tuple[str, str, int]]:
    """`(alias, fn, lineno)` har `<alias>.<fn>(` call site par."""
    src = open(_SHELL, encoding="utf-8", errors="replace").read()
    aliases = _alias_map()
    pat = re.compile(r"\b([A-Za-z_]\w*)\.([A-Za-z_]\w*)\s*\(")
    out = set()
    for i, line in enumerate(src.splitlines(), 1):
        for m in pat.finditer(line):
            alias, fn = m.group(1), m.group(2)
            if alias in aliases:
                out.add((alias, fn, i))
    return out


def test_registry_opener_refs_exist():
    aliases = _alias_map()
    assert aliases, "shell.py se koi ui alias import nahi mila"

    missing, loaded = [], {}
    for alias, fn, lineno in sorted(_refs()):
        mod_path = aliases[alias]
        if mod_path not in loaded:
            try:
                loaded[mod_path] = importlib.import_module(mod_path)
            except Exception as e:  # pragma: no cover - module hi nahi bana
                loaded[mod_path] = e
        mod = loaded[mod_path]
        if isinstance(mod, Exception):
            continue  # import fail = `_coming_soon` fallback chalega
        if not hasattr(mod, fn):
            missing.append(f"shell.py:{lineno}  {alias}.{fn} "
                           f"({mod_path} me nahi)")

    assert not missing, (
        f"{len(missing)} registry opener missing (click par "
        f"AttributeError):\n  " + "\n  ".join(missing)
    )


def test_form_registry_resolvers_are_callable_or_none():
    from HMS_py.ui.shell import _form_registry

    reg = _form_registry()
    assert reg
    broken = [k for k, v in reg.items() if v is not None and not callable(v)]
    assert not broken, f"non-callable resolvers: {broken}"


# Menu leaf click -> registry me opener chahiye, warna item disabled (no-op).
# Ye set jaan-boojh kar allow-list hai: headers/junk + wo VB6 screens jo
# abhi port nahi (BUG_REGISTER BUG-012). Naya leaf iske bahar aaya to ya
# port karo ya yahan document karo — silent no-op nahi chalega.
_MENU_ACCEPTABLE_MISSING = {
    # VB6 folder / module headers (clickable items nahi the)
    "point of sale", "members mgmt", "banquet", "inventory",
    "hr/payroll", "epabx", "utility", "m.i.s.", "operations",
    "pos operations", "operation", "send sms", "sms",
    "reward points", "reports",
    # VB6 tree junk (folder-text item)
    "sstup", "....",
    # BUG-012 (corrected twice): "Revenue Change Entry" = genuinely dead -
    # MDIForm1.MemOpr(9) ka koi case nahi + caption dispatcher
    # (ModuleAdd.bas Proc_165_2, 128 'Loop Until') me bhi koi case nahi.
    # "Facility Sundry Setting" pehle is list me tha par wo GALAT tha:
    # wahi dispatcher ModuleAdd.bas:5278 par 'New FacilitySundry.Show'
    # hai -> ab registry me ported opener hai (ui/shell.py, ui/fd_forms_ui.py).
    "revenue change entry",
}


def _menu_leaves() -> list[tuple[str, str]]:
    from HMS_py.core import menu as um

    out: list[tuple[str, str]] = []

    def walk(items, grp):
        for it in items or []:
            nm, ch = it.get("name"), it.get("children") or []
            if ch:
                walk(ch, nm)
            elif nm:
                out.append((grp or "", nm))

    for r in um.roots():
        mod = r["name"] if isinstance(r, dict) else str(r)
        for g in um.menubar_for(mod):
            walk(g.get("items"), g.get("name"))
    return out


def test_every_menu_leaf_resolves_to_an_opener():
    from HMS_py.ui.shell import _form_registry

    leaves = _menu_leaves()
    assert leaves, "menu tree khali hai (DB/menu data check karo)"

    ci = {str(k).strip().lower(): v
          for k, v in _form_registry().items()}

    unresolved = sorted({
        f"{grp} > {leaf}"
        for grp, leaf in leaves
        if ci.get(str(leaf).strip().lower()) is None
        and str(leaf).strip().lower() not in _MENU_ACCEPTABLE_MISSING
    })

    assert not unresolved, (
        f"{len(unresolved)} menu leaf ka koi opener nahi "
        f"(click par kuch nahi hoga):\n  " + "\n  ".join(unresolved)
    )


def test_known_trailing_space_captions_resolve():
    """VB6 caption trailing space ('Cashier Report ') ka regression."""
    from HMS_py.ui.shell import _form_registry

    ci = {str(k).strip().lower(): v
          for k, v in _form_registry().items()}
    for cap in ("Cashier Report ", "Instant House Count ",
                "Package Forecast "):
        assert ci.get(cap.strip().lower()), f"{cap!r} resolve nahi hua"


# BUG-012 correction regression: Facility Sundry Setting pehle allow-list
# me tha ("VB6 me bhi dead") - galat tha, VB6 dispatcher ModuleAdd.bas:5278
# isko kholta tha. Registry me asli opener + menu leaf dono verify karo.
def _qapp():
    from PyQt6.QtWidgets import QApplication
    return QApplication.instance() or QApplication([])


def test_facility_sundry_setting_is_a_real_opener():
    _qapp()
    from HMS_py.ui.shell import _form_registry

    res = _form_registry().get("Facility Sundry Setting")
    assert res, '"Facility Sundry Setting" registry me nahi hai'
    win = res(None)
    assert win.__class__.__name__ == "FacilitySundryWindow", (
        f"unexpected opener: {win!r}"
    )


def test_facility_sundry_still_in_menu_tree():
    leaves = {leaf.strip().lower() for _, leaf in _menu_leaves()}
    assert "facility sundry setting" in leaves, (
        "menu tree se leaf gayab ho gaya - test stale hai"
    )
