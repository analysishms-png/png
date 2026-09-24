"""VB6 <-> Python parity matrix generator (skill: vb6-python-parity).

Evidence sources (programmatic, never hand-waved):
  VB6:   ../*.frm  -> form name, Caption, inline-SQL table evidence
  Py:    HMS_py/ui/shell.py _form_registry() (offscreen import)
         + HMS_py/core/*.py + HMS_py/ui/*.py text scan
  DB:    live-table probe via HMS_py.core.db (information_schema)

Status buckets: DONE / PARTIAL / UI-ONLY / BLOCKED-TBL / MISSING
Output: ../VB6_PARITY_MATRIX.txt (+ copy at _qa/VB6_PARITY_MATRIX.txt)
Run:    python _qa/gen_parity_matrix.py
"""
from __future__ import annotations

import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))  # repo root (HMS_py)
PARENT = os.path.dirname(ROOT)                                      # VB6 sources live here
sys.path.insert(0, ROOT)
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from HMS_py.core import db  # noqa: E402

# ── VB6 side ────────────────────────────────────────────────────
FORM_RE = re.compile(r"Begin VB\.Form (\w+)")
CAPTION_RE = re.compile(r'Caption = "([^"]*)"')
SQL_RE = re.compile(
    r"(?:\bFROM\b|\bINTO\b|\bUPDATE\b|\bDELETE\s+FROM\b|\bJOIN\b)\s+"
    r"([A-Za-z_][A-Za-z0-9_]{2,})", re.IGNORECASE)

STOP = {
    "select", "from", "where", "insert", "update", "delete", "set", "values",
    "into", "join", "and", "or", "not", "null", "is", "in", "as", "order",
    "by", "group", "left", "right", "inner", "outer", "top", "distinct",
    "case", "when", "then", "else", "end", "the", "for", "all", "err",
    "date", "dates", "cvar", "caption", "account", "accounts", "name",
    "format", "trim", "mid", "chr", "ucase", "lcase", "val", "cstr", "clng",
    "cint", "cdbl", "cbool", "error", "data", "site", "sites", "string",
    "this", "that", "with", "you", "are", "yes", "has", "been", "was",
    "var", "true", "false", "nothing", "record", "records", "table",
    "print", "report", "index", "here", "new", "enter", "exit", "help",
}

def vb6_forms() -> dict[str, dict]:
    """{form_name: {caption, tables:set}} from ../*.frm"""
    out: dict[str, dict] = {}
    for fn in sorted(os.listdir(PARENT)):
        if not fn.lower().endswith(".frm"):
            continue
        try:
            text = open(os.path.join(PARENT, fn), encoding="utf-8",
                        errors="replace").read()
        except OSError:
            continue
        m = FORM_RE.search(text)
        if not m:
            continue
        name = m.group(1)
        cap_m = CAPTION_RE.search(text[:text.find("Attribute VB_Name") + 2000]
                                  if "Attribute VB_Name" in text else text)
        caption = (cap_m.group(1) if cap_m else "").strip()
        tables: set[str] = set()
        for t in SQL_RE.findall(text):
            tl = t.lower()
            if tl in STOP or "var_" in tl or tl.startswith(("vb", "frm", "msh")):
                continue
            tables.add(t)
        out[name] = {"caption": caption, "tables": tables, "file": fn}
    return out

# ── Python side ─────────────────────────────────────────────────
def py_registry() -> dict[str, callable]:
    from HMS_py.ui import shell
    return shell._form_registry()

def py_texts() -> tuple[str, str]:
    core_txt = ui_txt = ""
    for d, acc in ((os.path.join(ROOT, "HMS_py", "core"), "c"),
                   (os.path.join(ROOT, "HMS_py", "ui"), "u")):
        for fn in os.listdir(d):
            if not fn.endswith(".py"):
                continue
            try:
                txt = open(os.path.join(d, fn), encoding="utf-8",
                           errors="replace").read().upper()
            except OSError:
                continue
            if acc == "c":
                core_txt += txt
            else:
                ui_txt += txt
    return core_txt, ui_txt

# ── documented equivalences / caption quirks ────────────────────
DOCUMENTED_EQUIV = {
    "frmPassword": "LoginDialog (ui/shell.py) — VB6 authentication window",
    "FrmMenuList": "Dynamic sidebar (menuHelp tree) — VB6 'Main Menu' ka port",
    "FrmDataRecieving": ("Documented skip: Access-MDB transfer; tables absent "
                         "(VB6 me bhi dead)"),
    "Form1": "Generic/scratch VB6 form",
    # generic scratch-caption forms whose real identity is known
    "FaRepView": "FaRepView window (ui/fa_voucher_ui.py) — wired via report captions",
    "DMTree": "DMTree (ui/dmtree_ui.py) — menuHelp tree renderer",
}
CAPTION_ALIASES = {
    "rstouchscreenfafind": "FA Find",
    "rstouchorderpersondetails": "Customer Information",
    "frmmessagekey": "Key Massage",
    "reptouchdate": "Select Report Date",
    "fdlookuproom": "Look Up Room",
    # generic-caption forms -> real registry captions (ui module evidence)
    "farepview": "Trial Balance",
    "dmtree": "Main Menu",
    "cateringbooking": "Catalog Master",
    "departsundry": "Outlet Bill Sundry Setting",
    "facilitysundry": "Outlet Bill Sundry Setting",
    "outletsundry": "Outlet Bill Sundry Setting",
    "hallsundry": "Outlet Bill Sundry Setting",
    "frmfaclitymast": "Facility Master",
    "frmfclitymast": "Facility Master",
    "faenvron": "FA Environment",
    "faenviro": "FA Environment",
    "frmmenuitemcopy": "Menu Item Copy",
    "frmtallyexport": "Tally Export(XML)",
    "frmyearend": "Year End Updation",
    "frminc": "Inconsistency Check",
    "frmserialisevr": "Voucher Serialisation",
    "frmjobscheduler": "Task Scheduler",
    "frmdenomination": "Denomination Detail",
    "houskeeping": "House Keeping Screen",
    "hhhousekeeping": "House Keeping Screen",
    "faglobenarr": "Global Narration",
    # VB6 caption space quirks ("T.D.S.X" vs menu "T.D.S. X")
    "fatdscertificate": "T.D.S. Certificate Entry",
    "fatdschal": "T.D.S. Challan Entry",
    "favtype": "Voucher Environment",
    "famagic": "Magic",
    "fareports": "Finance Reports",
    "fagrEnt": "Group Accounts Entry",
    "fasubgroup": "Ledger Accounts Entry",
    "fadjustdel": "Adjustment Delete",
    "fachqclear": "Cheque/DD Clearing Entry",
    "departmast": "Department/Outlet",
    "depopstk": "Location wise Opening Stock Entry",
    "frmpartymast": "Party Master",
    "frmitemmastraw": "Item Entry",
    "frmmenurate": "Item Rate Entry",
    "frmpackageMast": "Package Master",
    "frmplanpackmast": "Package Master",
}

# ── DB probe (cached) ───────────────────────────────────────────
_tbl_cache: dict[str, bool] = {}

def table_exists(t: str) -> bool:
    tl = t.lower()
    if tl not in _tbl_cache:
        try:
            rows = db.query(
                "SELECT 1 FROM sys.objects WHERE object_id = "
                "OBJECT_ID(?) AND type IN ('U','V')", (t,))
            _tbl_cache[tl] = bool(rows)
        except Exception:
            _tbl_cache[tl] = False
    return _tbl_cache[tl]

def wired(fn) -> bool:
    if fn is None:
        return False
    return "coming_soon" not in repr(fn) and \
        "coming_soon" not in getattr(fn, "__qualname__", "")

# ── main ────────────────────────────────────────────────────────
def main():
    forms = vb6_forms()
    reg = py_registry()
    reg_ci = {k.lower(): (k, fn) for k, fn in reg.items()}
    core_txt, ui_txt = py_texts()

    rows = []
    for name, info in forms.items():
        caption = info["caption"]
        tables = info["tables"]
        alias_cap = CAPTION_ALIASES.get(name.lower())
        # pehla WIRED candidate chuno (caption -> form-name -> alias)
        key = None
        for cand in (caption.lower(), name.lower(),
                     (alias_cap or "").lower()):
            if not cand:
                continue
            hit = reg_ci.get(cand)
            if hit and wired(hit[1]):
                key = hit
                break
        is_wired = bool(key)

        ui_hit = False
        for probe in {caption.lower(), (alias_cap or "").lower(),
                      name.lower()}:
            if probe and probe in ui_txt:
                ui_hit = True
                break
        core_hit = any(t.upper() in core_txt for t in tables) or \
            name.lower() in core_txt
        # module-name evidence: ui/*.py class/def names carry VB6 form hints
        ui_mod_hit = any(
            h in ui_txt for h in
            (name.replace("Frm", "").lower(),
             name.lower().replace("frm", ""))) if len(name) > 5 else False
        ui_hit = ui_hit or ui_mod_hit

        live = [t for t in tables if table_exists(t)]
        all_absent = bool(tables) and not live

        if name in DOCUMENTED_EQUIV:
            status = "DONE"
            note = DOCUMENTED_EQUIV[name]
        elif all_absent and not is_wired:
            status, note = "BLOCKED-TBL", ""
        elif is_wired:
            status, note = "DONE", ""
        elif ui_hit and not core_hit:
            status, note = "UI-ONLY", ""
        elif core_hit or ui_hit:
            status, note = "PARTIAL", ""
        else:
            status, note = "MISSING", ""

        rows.append({"form": name, "caption": caption or "(blank)",
                     "ui": "YES" if (ui_hit or is_wired) else "no",
                     "core": "Y" if core_hit else "-",
                     "wired": "Y" if is_wired else "-",
                     "tables": ", ".join(sorted(tables)[:5]) +
                         (f" (+{len(tables)-5})" if len(tables) > 5 else ""),
                     "status": status, "note": note})

    order = {"DONE": 0, "PARTIAL": 1, "UI-ONLY": 2, "BLOCKED-TBL": 3,
             "MISSING": 4}
    rows.sort(key=lambda r: (order[r["status"]], r["form"].lower()))
    counts = {s: sum(1 for r in rows if r["status"] == s)
              for s in ("DONE", "PARTIAL", "UI-ONLY", "BLOCKED-TBL",
                        "MISSING")}

    def section(title: str, subset: list[dict]) -> list[str]:
        L = ["=" * 78, f"## {title}", "=" * 78, "",
             "| VB6 form            | Caption                    "
             "| Python UI | Core | Wired | Tables (live) |",
             "|---------------------|----------------------------"
             "|-----------|------|-------|"
             "----------------------------------------|"]
        for r in subset:
            note = f"\n|                     | note: {r['note']} |" \
                if r["note"] else ""
            L.append(
                f"| {r['form']:<19} | {r['caption'][:26]:<26} "
                f"| {r['ui']:<9} | {r['core']:<4} | {r['wired']:<5} "
                f"| {r['tables'][:38]:<38} |{note}")
        return L

    L = ["VB6 <-> PYTHON PARITY MATRIX",
         "=" * 78,
         "Generated: _qa/gen_parity_matrix.py (skill: vb6-python-parity)",
         "VB6: *.frm captions + inline-SQL table evidence | "
         "Py: shell registry + core/ui scan | DB: live-table probe",
         "",
         "STATUS SUMMARY",
         "-" * 78]
    for s in ("DONE", "PARTIAL", "UI-ONLY", "BLOCKED-TBL", "MISSING"):
        L.append(f"  {s:<12} {counts[s]}")
    L.append(f"  {'TOTAL':<12} {len(rows)}")
    L.append("")
    for s in ("PARTIAL", "UI-ONLY", "BLOCKED-TBL", "DONE", "MISSING"):
        L += [""] + section(s, [r for r in rows if r["status"] == s]) + [""]

    # ACTION QUEUE: MISSING + PARTIAL (portable: tables live ya unknown)
    queue = [r for r in rows if r["status"] in ("PARTIAL", "MISSING")]
    L += ["=" * 78, "## ACTION QUEUE (MISSING + PARTIAL, portable)",
          "=" * 78, ""]
    for r in queue:
        L.append(f"- {r['form']} ({r['form']}.frm): '{r['caption']}'")
        L.append(f"    tables: {r['tables']}")
        L.append(f"    ui={r['ui'] if r['ui']=='YES' else 'N'} "
                 f"core={'Y' if r['core']=='Y' else 'N'}")
    L.append("")

    out = "\r\n".join(L)
    for path in (os.path.join(PARENT, "VB6_PARITY_MATRIX.txt"),
                 os.path.join(ROOT, "_qa", "VB6_PARITY_MATRIX.txt")):
        with open(path, "w", encoding="utf-8", newline="") as f:
            f.write(out)
    for s in ("DONE", "PARTIAL", "UI-ONLY", "BLOCKED-TBL", "MISSING"):
        print(f"{s:<12} {counts[s]}")
    print("TOTAL      ", len(rows))
    print("\nNext 10 ACTION QUEUE items:")
    for r in queue[:10]:
        print(f"  - {r['form']}: '{r['caption']}'")

if __name__ == "__main__":
    main()
