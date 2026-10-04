#!/usr/bin/env python3
"""Build MAIN_SETUP_FILE_MAPPING.md (prompt section 17).

Sources (all read-only):
  1. FODER/MDIForm1.frm  -- VB6 menu tree under "Begin Menu Mast" (= Main Setup)
                            + per-control click dispatchers (index -> New <Form>).
  2. HMS_py/ui/shell.py  -- Python `_form_registry()` dict (AST parse):
                            caption -> COMING_SOON / NONE / REAL (+ opener file).
  3. HMS_py/core/mdi_menu.json -- Python menu tree (leaf captions under
                            "&Main Setup").

Usage:  python tools/build_mainsetup_mapping.py
Writes: <repo>/MAIN_SETUP_FILE_MAPPING.md  and prints a summary.
"""

from __future__ import annotations

import ast
import json
import re
import sys
from pathlib import Path

PKG = Path(__file__).resolve().parent.parent          # .../HMS_py/HMS_py
REPO = PKG.parent                                     # .../HMS_py (git root)
FODER = REPO / "FODER"
MDI_FRM = FODER / "MDIForm1.frm"
SHELL = PKG / "ui" / "shell.py"
MDI_MENU = PKG / "core" / "mdi_menu.json"
OUT_MD = REPO / "MAIN_SETUP_FILE_MAPPING.md"


# ----------------------------------------------------------------- VB6 menu
def parse_menu_tree():
    """Return leaves under 'Begin Menu Mast' (= &Main Setup)."""
    src = MDI_FRM.read_text(encoding="latin-1", errors="replace").splitlines()
    start = next(i for i, l in enumerate(src) if "Begin Menu Mast" in l)
    depth = 0
    end = None
    for i in range(start, len(src)):
        if re.match(r"\s*Begin ", src[i]):
            depth += 1
        elif re.match(r"\s*End\s*$", src[i]):
            depth -= 1
            if depth == 0:
                end = i
                break
    stack, leaves, section = [], [], "(root)"
    for i in range(start, end + 1):
        l = src[i]
        m = re.match(r"\s*Begin Menu (\S+)", l)
        if m:
            stack.append({"ctrl": m.group(1), "idx": None, "cap": None,
                          "vis": True, "line": i + 1})
            continue
        m = re.match(r"\s*Index = (\d+)", l)
        if m and stack:
            stack[-1]["idx"] = int(m.group(1))
            continue
        if re.match(r"\s*Visible = 0", l) and stack:
            stack[-1]["vis"] = False
            continue
        m = re.match(r'\s*Caption = "([^"]*)"', l)
        if m and stack:
            stack[-1]["cap"] = m.group(1).replace("&", "")
            continue
        if re.match(r"\s*End\s*$", l) and stack:
            node = stack.pop()
            # a leaf = node with an Index and no children (children already popped)
            if node["idx"] is not None and node["cap"]:
                # Only leaves carry an Index in this menu; submenus (GEN, FO...)
                # have no Index.  section = direct parent submenu; a leaf
                # directly under Mast (Smart Card) becomes its own section.
                sec = (stack[-1]["cap"] if len(stack) >= 2 and stack[-1]["cap"]
                       else node["cap"])
                leaves.append({
                    "section": sec,
                    "parent_ctrl": stack[-1]["ctrl"] if stack else node["ctrl"],
                    "ctrl": node["ctrl"],
                    "idx": node["idx"],
                    "caption": node["cap"].strip(),
                    "visible": node["vis"],
                    "line": node["line"],
                })
    return leaves


def _parse_idx(tok: str) -> int | None:
    tok = tok.strip()
    if tok.startswith("&H"):
        return int(tok[2:], 16)
    if tok.isdigit():
        return int(tok)
    return None


def parse_dispatchers(ctrls: set[str]) -> dict[str, dict[int, str]]:
    """ctrl -> {index: FormName} from `Private Sub <ctrl>_Click` bodies."""
    text = MDI_FRM.read_text(encoding="latin-1", errors="replace")
    out: dict[str, dict[int, str]] = {}
    for ctrl in sorted(ctrls):
        m = re.search(
            rf"(?:Private|Public) Sub {re.escape(ctrl)}_Click\(Index As Integer\).*?^(?:End Sub)",
            text, re.S | re.M)
        if not m:
            continue
        body = m.group(0)
        mapping: dict[int, str] = {}
        cur = None
        for line in body.splitlines():
            cm = re.search(r"If \(\w+ = (&H[0-9A-Fa-f]+|\d+)\) Then", line)
            if cm:
                cur = _parse_idx(cm.group(1))
                continue
            nm = re.search(r"New ([A-Za-z_][\w.]*)", line)
            if nm and cur is not None and cur not in mapping:
                mapping[cur] = nm.group(1)
        out[ctrl] = mapping
    return out


# ------------------------------------------------------------- python side
def _norm(cap: str) -> str:
    return re.sub(r"\s+", " ", cap.replace("&", "")).strip().lower()


def classify_value(node: ast.AST) -> str:
    if isinstance(node, ast.Call) and isinstance(node.func, ast.Name) \
            and node.func.id == "_coming_soon":
        return "COMING_SOON"
    if isinstance(node, ast.Constant) and node.value is None:
        return "NONE"
    if isinstance(node, ast.IfExp):
        # `X if mod else Y` -- runtime picks X when the module imported.
        t, f = classify_value(node.body), classify_value(node.orelse)
        if t == f:
            return t
        return f"{t} (cond, else {f})"
    return "REAL"


def parse_registry() -> dict[str, dict]:
    """caption -> {status, lineno, expr, file, func, func_found} (last wins)."""
    tree = ast.parse(SHELL.read_text(encoding="utf-8"))
    fn = next(n for n in ast.walk(tree)
              if isinstance(n, ast.FunctionDef) and n.name == "_form_registry")
    aliases: dict[str, str] = {}
    for n in ast.walk(fn):
        if isinstance(n, ast.ImportFrom) and n.module:
            base = n.module.replace("HMS_py.", "")
            for a in n.names:
                if a.asname:
                    aliases[a.asname] = f"{base}/{a.name}.py"
                elif a.name:
                    aliases[a.name] = f"{base}/{a.name}.py"
    ret = next(n for n in ast.walk(fn)
               if isinstance(n, ast.Return) and isinstance(n.value, ast.Dict))
    reg: dict[str, dict] = {}
    for key, val in zip(ret.value.keys, ret.value.values):
        if not (isinstance(key, ast.Constant) and isinstance(key.value, str)):
            continue
        expr = ast.unparse(val)
        status = classify_value(val)
        mod = func = None
        pairs = [(m.group(1), m.group(2))
                 for m in re.finditer(r"(\w+)\.(\w+)", expr)]
        cand = [p for p in pairs if p[0] in aliases]
        if cand:
            pref = next((p for p in cand if p[1].startswith("open")), cand[0])
            mod, func = aliases[pref[0]], pref[1]
        if mod is None and "ReservationBrowser" in expr:
            mod, func = "ui/reservation_browser.py", "ReservationBrowser"
        reg[key.value] = {
            "status": status,
            "lineno": key.lineno,
            "expr": expr[:110],
            "file": mod,
            "func": func,
        }
    # verify opener function exists
    for entry in reg.values():
        if entry["file"] and entry["func"]:
            p = PKG / entry["file"]
            if p.exists():
                src = p.read_text(encoding="utf-8", errors="replace")
                entry["func_found"] = (f"def {entry['func']}" in src
                                       or f"class {entry['func']}" in src)
            else:
                entry["file"] = entry["file"] + " (MISSING)"
                entry["func_found"] = False
    return reg


def python_menu_leaves() -> list[str]:
    d = json.loads(MDI_MENU.read_text(encoding="utf-8"))

    def find(n, cap):
        if (n.get("caption") or "").replace("&", "") == cap:
            return n
        for c in n.get("children") or []:
            r = find(c, cap)
            if r:
                return r
        return None
    ms = find(d, "Main Setup")
    out = []

    def leaves(n):
        ch = n.get("children") or []
        if not ch:
            out.append(n.get("caption") or "")
        for c in ch:
            leaves(c)
    if ms:
        leaves(ms)
    return out


def find_frm(form: str) -> str | None:
    if not form:
        return None
    for p in FODER.glob("*.frm"):
        if p.stem.lower() == form.lower():
            return f"FODER/{p.name}"
    return None


# Per-file progress of the sequential pass (prompt §17 status column):
#   NOT STARTED / READ / MAPPED / COMPARED / DEBUGGED / IMPLEMENTED /
#   VERIFIED - update after each file's test+live verification.
STATUS_OVERRIDES = {
    ("GENMas", 0): "VERIFIED",   # Tax Master - 2026-10-01 (BUG-MS-002..007)
    ("GENMas", 1): "VERIFIED",   # Tax Structure - 2026-10-01 (BUG-MS-008..013)
    ("GENMas", 2): "VERIFIED",   # Payment Type - 2026-10-01 (BUG-MS-009..017)
}


# ------------------------------------------------------------------- main
def main():
    leaves = parse_menu_tree()
    ctrls = {l["ctrl"] for l in leaves}
    disp = parse_dispatchers(ctrls)
    reg = parse_registry()
    menu = python_menu_leaves()
    menu_by_norm = {_norm(c): c for c in menu}

    lines = []
    w = lines.append
    w("# MAIN SETUP - FILE MAPPING (VB6 -> Python)")
    w("")
    w("Generated by `HMS_py/tools/build_mainsetup_mapping.py` from")
    w("`FODER/MDIForm1.frm` (menu + click dispatchers), `HMS_py/ui/shell.py`")
    w("(`_form_registry()` AST) and `HMS_py/core/mdi_menu.json`.")
    w("")
    w("Status legend (prompt §17): NOT STARTED / READ / MAPPED / COMPARED /")
    w("DEBUGGED / IMPLEMENTED / VERIFIED.  Wiring column = live registry")
    w("state at generation time: REAL = opener wired, COMING_SOON =")
    w("`_coming_soon()` placeholder, NONE = wired to `None` (dead click).")
    w("")

    stats = {"REAL": 0, "COMING_SOON": 0, "NONE": 0, "NO_REGISTRY": 0,
             "hidden": 0}
    unmatched = []
    section = None
    n = 0
    for l in leaves:
        if not l["visible"]:
            stats["hidden"] += 1
        if l["section"] != section:
            section = l["section"]
            w(f"## {section}")
            w("")
            w("| # | VB6 ctrl[idx] | VB6 caption | VB6 form | VB6 file | "
              "Python menu leaf | Registry wiring | Python opener file | "
              "Status |")
            w("|---|---|---|---|---|---|---|---|---|")
        n += 1
        form = disp.get(l["ctrl"], {}).get(l["idx"])
        frm_file = find_frm(form)
        py_leaf = menu_by_norm.get(_norm(l["caption"]))
        key = py_leaf or l["caption"]
        entry = reg.get(key) or reg.get(l["caption"])
        if entry:
            st = entry["status"]
            pyfile = entry["file"] or "-"
            if entry.get("func_found") is False:
                pyfile += " (FUNC NOT FOUND)"
        else:
            st, pyfile = "NO_REGISTRY", "-"
            if l["visible"]:
                unmatched.append((l["section"], l["caption"]))
        bucket = ("REAL" if st.startswith("REAL") else
                  "COMING_SOON" if st.startswith("COMING_SOON") else
                  "NONE" if st == "NONE" else "NO_REGISTRY")
        stats[bucket] += 1
        vis = "" if l["visible"] else " *(VB6 hidden)*"
        status = STATUS_OVERRIDES.get((l["ctrl"], l["idx"]), "MAPPED")
        w(f"| {n} | {l['ctrl']}[{l['idx']}] | {l['caption']}{vis} | "
          f"{form or 'NOT FOUND IN VB6'} | {frm_file or 'NOT FOUND'} | "
          f"{py_leaf or '-'} | {st} | {pyfile} | {status} |")

    w("")
    w("## Summary")
    w("")
    w(f"- VB6 Main Setup leaves: {len(leaves)} "
      f"({len(leaves) - stats['hidden']} visible, {stats['hidden']} hidden)")
    w(f"- Registry wiring: {stats['REAL']} REAL, "
      f"{stats['COMING_SOON']} COMING_SOON, {stats['NONE']} NONE, "
      f"{stats['NO_REGISTRY']} NO_REGISTRY (visible leaves)")
    w("")

    # Appendix A - visible VB6 leaves without registry entry
    w("## Appendix A - Visible VB6 leaves NOT in python registry")
    w("")
    if unmatched:
        for sec, cap in unmatched:
            w(f"- [{sec}] {cap}")
    else:
        w("(none)")
    w("")
    # Appendix B - coming soon entries
    w("## Appendix B - Registry entries currently COMING_SOON")
    w("")
    cs = [k for k, v in reg.items() if v["status"].startswith("COMING_SOON")]
    for k in sorted(cs):
        w(f"- {k} (shell.py:{reg[k]['lineno']})")
    w("")
    # Appendix C - NONE (dead)
    w("## Appendix C - Registry entries wired to NONE (dead click)")
    w("")
    none = [k for k, v in reg.items() if v["status"] == "NONE"]
    for k in sorted(none):
        w(f"- {k} (shell.py:{reg[k]['lineno']})")
    if not none:
        w("(none)")
    w("")

    OUT_MD.write_text("\n".join(lines), encoding="utf-8")
    print(f"WROTE {OUT_MD}")
    print(f"VB6 leaves: {len(leaves)}  sections: "
          f"{len({l['section'] for l in leaves})}")
    print(f"wiring: {stats}")
    print(f"NO_REGISTRY visible: {len(unmatched)}")


if __name__ == "__main__":
    sys.exit(main())
