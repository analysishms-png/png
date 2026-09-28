"""PARTIAL-bucket classifier v2: VB6 launcher evidence per form.

Launch patterns in decompiled VB6:
  - `Set x = New <form>`   (explicit instance)
  - `Load <form>`          (default instance load)
  - `<form>.Show [0|1]`    (default instance show)

Buckets:
  WIRED-ALIAS   : a candidate caption (own caption / nearby menu string)
                  already wired in registry -> add CAPTION_ALIASES
  LAUNCHED      : launched from MDI dispatcher (caption not wired) ->
                  genuinely missing, implement
  ORPHAN        : no launch evidence outside own file (VB6-dead)

Run: python _qa/classify_partial.py
Out: _qa/PARTIAL_CLASSIFY.txt (+ alias suggestions)
"""
from __future__ import annotations

import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, ROOT)
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

FODER = os.path.join(ROOT, "FODER")
MATRIX = os.path.join(ROOT, "VB6_PARITY_MATRIX.txt")

NEW_RE = re.compile(r"New\s+(\w+)", re.IGNORECASE)
LOAD_RE = re.compile(r"\bLoad\s+(\w+)", re.IGNORECASE)
SHOW_RE = re.compile(r"(\w+)\.Show\b", re.IGNORECASE)
STR_RE = re.compile(r'"([^"\n]{3,40})"')


def partial_forms() -> list[tuple[str, str]]:
    out = []
    in_partial = False
    for line in open(MATRIX, encoding="utf-8", errors="replace"):
        if line.startswith("## PARTIAL"):
            in_partial = True
            continue
        if line.startswith("## "):
            in_partial = False
            continue
        if in_partial and line.startswith("| ") and not line.startswith("|---"):
            cols = [c.strip() for c in line.split("|")]
            if len(cols) > 3 and cols[1] not in ("", "VB6 form"):
                out.append((cols[1], cols[2]))
    return out


def launcher_map() -> dict[str, list[str]]:
    """form-name(lower) -> launcher files (New/Load/Show, minus self)."""
    launches: dict[str, list[str]] = {}
    for fn in sorted(os.listdir(FODER)):
        if not fn.lower().endswith((".frm", ".bas")):
            continue
        try:
            text = open(os.path.join(FODER, fn), encoding="utf-8",
                        errors="replace").read()
        except OSError:
            continue
        names = set()
        for rx in (NEW_RE, LOAD_RE, SHOW_RE):
            for m in rx.finditer(text):
                names.add(m.group(1).lower())
        for name in names:
            if len(name) < 4 or name.endswith(".frm"):
                continue
            launches.setdefault(name, []).append(fn)
    # drop self-launches
    for name, files in list(launches.items()):
        rest = [f for f in files if f.lower() != name + ".frm"]
        if rest:
            launches[name] = rest
        else:
            del launches[name]
    return launches


def nearby_captions(forms: list[str]) -> dict[str, str]:
    """MDI dispatcher context: quoted strings near launch lines —
    sab forms ke liye EK pass me (files ek baar load hoti hain)."""
    out: dict[str, str] = {}
    remaining = {f.lower(): f for f in forms}
    for fn in ("MDIForm1.frm", "HMS.bas", "ModuleAdd.bas"):
        if not remaining:
            break
        path = os.path.join(FODER, fn)
        if not os.path.isfile(path):
            continue
        lines = open(path, encoding="utf-8",
                     errors="replace").readlines()
        pat = re.compile(
            r"(?:New\s+|\b)(" + "|".join(sorted(remaining)) + r")"
            r"(?=\.Show|\b)", re.IGNORECASE)
        for i, line in enumerate(lines):
            m = pat.search(line)
            if not m:
                continue
            key = m.group(1).lower()
            if key not in remaining or key in out:
                continue
            for j in range(max(0, i - 12), min(len(lines), i + 12)):
                for s in STR_RE.findall(lines[j]):
                    sl = s.strip()
                    if 4 <= len(sl) <= 32 and re.search(r"[A-Za-z]", sl):
                        if not re.match(r"^(Select|Insert|Update|Delete|"
                                        r"\\|\.|%|SELECT|new)", sl,
                                        re.IGNORECASE):
                            out[key] = sl
                            break
                if key in out:
                    break
            remaining.pop(key, None)
    return out


def main() -> None:
    from HMS_py.ui import shell
    reg = shell._form_registry()

    def wired(fn) -> bool:
        if fn is None:
            return False
        return ("coming_soon" not in repr(fn)
                and "coming_soon" not in getattr(fn, "__qualname__", ""))

    reg_ci = {k.lower(): (k, fn) for k, fn in reg.items()}
    forms = partial_forms()
    lmap = launcher_map()
    ctx = nearby_captions([f for f, _ in forms])

    buckets: dict[str, list[tuple]] = {b: [] for b in
                                       ("WIRED-ALIAS", "LAUNCHED",
                                        "ORPHAN")}
    for form, caption in forms:
        key = form.lower()
        launchers = lmap.get(key, [])
        cands = []
        cap = caption.strip()
        if cap and cap.lower() in reg_ci:
            cands.append(cap)
        nc = ctx.get(key, "")
        if nc and nc.lower() in reg_ci and nc not in cands:
            cands.append(nc)
        hit = next((c for c in cands
                    if wired(reg_ci[c.lower()][1])), None)
        if hit:
            buckets["WIRED-ALIAS"].append((form, caption, hit))
            continue
        if launchers:
            buckets["LAUNCHED"].append((form, caption,
                                        ", ".join(sorted(set(launchers))[:3])
                                        + (f" | ctx='{nc}'" if nc else "")))
        else:
            buckets["ORPHAN"].append((form, caption, nc))

    with open(os.path.join(ROOT, "_qa", "PARTIAL_CLASSIFY.txt"), "w",
              encoding="utf-8") as f:
        f.write("PARTIAL BUCKET CLASSIFICATION v2 "
                "(New/Load/Show launcher evidence)\n")
        f.write("=" * 64 + "\n")
        for b in ("WIRED-ALIAS", "LAUNCHED", "ORPHAN"):
            rows = buckets[b]
            f.write(f"\n## {b}  ({len(rows)})\n" + "-" * 40 + "\n")
            for form, caption, ev in rows:
                f.write(f"{form:<38} '{caption[:30]:<30}' {ev}\n")

    print(f"total PARTIAL: {len(forms)}")
    for b in ("WIRED-ALIAS", "LAUNCHED", "ORPHAN"):
        print(f"  {b:<13} {len(buckets[b])}")
    print("\nWIRED-ALIAS (matrix me DONE hona chahiye - aliases add karo):")
    for form, caption, hit in buckets["WIRED-ALIAS"]:
        print(f"  {form:<36} '{caption[:26]:<26}' -> '{hit}'")
    print("\nLAUNCHED (genuinely missing):")
    for form, caption, ev in buckets["LAUNCHED"]:
        print(f"  {form:<36} '{caption[:26]:<26}' {ev}")
    print("\nORPHAN (VB6-dead, first 20):")
    for form, caption, _ in buckets["ORPHAN"][:20]:
        print(f"  {form:<36} '{caption[:26]}'")


if __name__ == "__main__":
    main()
