"""VB6 (FODER\\*.frm,*.bas) vs Python (ui\\*.py, core\\*.py) FILE-BY-FILE parity.

Output: VB6_VS_PYTHON_FILE_BY_FILE.txt  (project root)
Sections:
  A. FORM PARITY      - har VB6 .frm  -> Python UI file / shell registry status
  B. MODULE PARITY    - har VB6 .bas  -> Python core file + function/table diff
  C. DATABASE PARITY  - tables VB6-only / BOTH / PY-only + LIVE DB row counts
  D. MISSING LIST     - consolidated checklist (forms, functions, tables)
  E. SUMMARY COUNTS

Table extraction STRICT hai: sirf SQL string-literals se table nikalte hain,
phir LIVE DB (Moondata2627) ke table list se validate kiya jata hai.

Run:  python tools/vb6_py_file_parity.py
"""
from __future__ import annotations

import json
import os
import re
import sys
from collections import defaultdict

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
VB6_DIR = os.path.abspath(os.path.join(ROOT, "..", "FODER"))
PY_UI = os.path.join(ROOT, "ui")
PY_CORE = os.path.join(ROOT, "core")
SHELL = os.path.join(PY_UI, "shell.py")
OUT = os.path.join(ROOT, "VB6_VS_PYTHON_FILE_BY_FILE.txt")
JSON_OUT = os.path.join(ROOT, "_qa", "vb6_py_file_parity.json")


# --------------------------------------------------------------------------- helpers


def read_text(path: str) -> str:
    with open(path, "r", encoding="latin-1", errors="replace") as fh:
        return fh.read()


def norm(s: str) -> str:
    return re.sub(r"[^a-z0-9]", "", (s or "").lower())


LIT_RE = re.compile(
    r'"""(.*?)"""|\'\'\'(.*?)\'\'\'|"((?:[^"\\\n]|\\.)*)"|\'((?:[^\'\\\n]|\\.)*)\'',
    re.S,
)


def string_literals(text: str) -> list[str]:
    out = []
    for m in LIT_RE.finditer(text):
        for g in m.groups():
            if g is not None:
                out.append(g)
                break
    return out


TBL_RE = re.compile(
    r"(?:FROM|JOIN|INTO|UPDATE|DELETE\s+FROM)\s+"
    r"(\[?[A-Za-z_][\w#\$]*\]?(?:\.\[?[A-Za-z_][\w#\$]*\]?)?)",
    re.IGNORECASE,
)
RECSRC_RE = re.compile(
    r"(?:RecordSource|Recordset\s*=\s*\"|sql\s*=\s*)\s*=?\s*\"?([A-Za-z_][\w#\$]*)",
    re.IGNORECASE,
)
SQL_STOP = {
    "select", "where", "group", "order", "having", "values", "set", "as",
    "on", "inner", "left", "right", "outer", "union", "and", "or", "dbo",
    "not", "null", "case", "when", "then", "end", "into", "from", "join",
    "update", "delete", "top", "distinct", "exists", "between", "like",
    # english / hinglish filler jo string literals me milta hai
    "the", "can", "must", "should", "only", "each", "here", "there", "this",
    "that", "with", "from", "will", "would", "have", "has", "are", "was",
    "were", "been", "being", "aur", "karo", "karta", "karte", "hai", "hogi",
    "nahi", "se", "ke", "ka", "ki", "ko", "me", "and", "but", "for", "you",
    "your", "our", "their", "all", "any", "one", "two", "three", "new",
    "old", "now", "then", "than", "too", "very", "just", "also", "more",
    "most", "some", "such", "same", "other", "another", "because", "before",
    "after", "while", "during", "under", "over", "into", "onto", "upon",
}


def _token(raw: str) -> str | None:
    word = re.split(r"[.\s,;()]", raw.strip())[0].strip("[]").strip()
    if not word or len(word) < 3:
        return None
    if word.lower() in SQL_STOP:
        return None
    return word


def extract_sql_tables(text: str) -> set[str]:
    """Table names from SQL string-literals only (noise bahar)."""
    out: set[str] = set()
    for lit in string_literals(text):
        if not re.search(r"\b(SELECT|INSERT|UPDATE|DELETE|FROM|JOIN)\b", lit, re.I):
            continue
        for m in TBL_RE.finditer(lit):
            t = _token(m.group(1))
            if t:
                out.add(t)
    for m in RECSRC_RE.finditer(text):
        t = _token(m.group(1))
        if t:
            out.add(t)
    return out


# ------------------------------------------------------------------------ VB6 forms

FRM_NAME_RE = re.compile(r"^\s*Begin\s+VB\.(Form|MDIForm|Control)\s+(\S+)", re.M)
CAP_RE = re.compile(r'^\s*Caption\s*=\s*"([^"]*)"', re.M)
BTN_RE = re.compile(r"Begin\s+VB\.CommandButton\s+(\S+)")
BTN_CAP_RE = re.compile(r'^\s*Caption\s*=\s*"([^"]*)"', re.M)
CTRL_RE = re.compile(r"Begin\s+VB\.(\w+)\s+(\S+)")

# curated direct-ports (VB6 form name -> python implementation)
KNOWN_PORT = {
    "mdiform1": ("SHELL", "ui/shell.py", "VB6 MDI main window -> python MainWindow"),
    "frmpassword": ("PY_FILE", "ui/shell.py", "login / User Information screen"),
    "frmwelcome": ("PY_FILE", "ui/shell.py", "splash / welcome screen"),
    "form1": ("SHELL", "ui/shell.py", "generic VB6 test form (VB6 me bhi demo)"),
}
REPORT_VIEWER_RE = re.compile(r"repview|reportview|repviewfrm|reprtform", re.I)


def parse_frm(path: str) -> dict:
    txt = read_text(path)
    m = FRM_NAME_RE.search(txt)
    name = m.group(2) if m else os.path.splitext(os.path.basename(path))[0]
    caps = CAP_RE.findall(txt)
    caption = caps[0] if caps else ""
    buttons = []
    for bm in BTN_RE.finditer(txt):
        cm = BTN_CAP_RE.search(txt[bm.end(): bm.end() + 600])
        buttons.append(cm.group(1) if cm else bm.group(1))
    ctrls = CTRL_RE.findall(txt)
    kinds = {k for k, _ in ctrls}
    return {
        "file": os.path.basename(path),
        "name": name,
        "caption": caption,
        "buttons": buttons,
        "tables": extract_sql_tables(txt),
        "controls": len(ctrls),
        "has_grid": "MSFlexGrid" in kinds or "DataGrid" in kinds,
        "has_data": ("RecordSource" in txt) or (".Open" in txt),
        "lines": txt.count("\n") + 1,
    }


# ------------------------------------------------------------------------ VB6 modules

PROC_RE = re.compile(
    r"^\s*(?:Public|Private|Friend)?\s*(Sub|Function)\s+([A-Za-z_]\w*)\s*\(",
    re.M,
)
OBF_RE = re.compile(r"^Proc_\d+_", re.I)


def parse_bas(path: str) -> dict:
    txt = read_text(path)
    seen, procs = set(), []
    for m in PROC_RE.finditer(txt):
        kind, nm = m.group(1), m.group(2)
        if nm.lower() in seen:
            continue
        seen.add(nm.lower())
        procs.append((kind, nm))
    obf = [n for _, n in procs if OBF_RE.match(n)]
    named = [n for _, n in procs if not OBF_RE.match(n)]
    return {
        "file": os.path.basename(path),
        "procs": procs,
        "obf": obf,
        "named": named,
        "tables": extract_sql_tables(txt),
        "lines": txt.count("\n") + 1,
        "bytes": len(txt),
    }


# ------------------------------------------------------------------------ Python side

DEF_RE = re.compile(r"^(?:async\s+)?def\s+([A-Za-z_]\w*)\s*\(", re.M)
CLASS_RE = re.compile(r"^class\s+([A-Za-z_]\w*)", re.M)
OPEN_RE = re.compile(r"^def\s+(open_\w+|show_\w+)\s*\(", re.M)


def parse_py(path: str) -> dict:
    txt = read_text(path)
    return {
        "file": os.path.basename(path),
        "path": path,
        "defs": DEF_RE.findall(txt),
        "classes": CLASS_RE.findall(txt),
        "opens": OPEN_RE.findall(txt),
        "tables": extract_sql_tables(txt),
        "lines": txt.count("\n") + 1,
    }


# ------------------------------------------------------------------------ shell registry


def parse_registry(path: str) -> dict[str, str]:
    """{caption: WIRED|COMING_SOON}"""
    txt = read_text(path)
    start = txt.find("def _form_registry")
    if start < 0:
        return {}
    body = txt[start:]
    endm = re.search(r"\n(?:def |class )", body[10:])
    if endm:
        body = body[: endm.start() + 10]
    reg: dict[str, str] = {}
    for m in re.finditer(r'"([^"]*)"\s*:\s*(.+)', body):
        cap, rhs = m.group(1), m.group(2).strip()
        if "_coming_soon" in rhs and "lambda" not in rhs.split("_coming_soon")[0]:
            reg[cap] = "COMING_SOON"
        else:
            reg[cap] = "WIRED"
    for blk in re.finditer(r"_coming_soon\(cap\)\s*for\s+cap\s+in\s*\((.*?)\)\}", body, re.S):
        for cap in re.findall(r'"([^"]*)"', blk.group(1)):
            reg[cap] = "COMING_SOON"
    if "_open_report(cap)" in body:
        reg["__REPORT_ENGINE__"] = "WIRED"
    return reg


# ------------------------------------------------------------------------ matching

STOP_TOK = {
    "frm", "form", "forms", "vb6", "new", "the", "and", "for", "with", "from",
    "entry", "entries", "master", "masters", "mast", "dialog", "box", "pop",
    "popup", "sub", "module", "screen", "data", "window", "win", "page",
    "ui", "py", "set", "get", "add", "del", "list", "view", "info", "detail",
    "details", "report", "reports", "rep", "settings", "setting", "cfg",
    "config", "open", "close", "show", "display", "print", "preview",
}


def _camel_tokens(s: str) -> list[str]:
    s = re.sub(r"([a-z0-9])([A-Z])", r"\1 \2", s or "")
    s = re.sub(r"[_\-.#]+", " ", s)
    return [t.lower() for t in s.split() if t]


def tokens(s: str) -> set[str]:
    out = set()
    for t in _camel_tokens(s):
        t = re.sub(r"[^a-z0-9]", "", t.lower())
        if len(t) >= 3 and t not in STOP_TOK:
            out.add(t)
    return out


def _tok_match(a: str, b: str) -> bool:
    """token-level contains match (kclstk ~ clstk, req ~ requisition)."""
    if a == b:
        return True
    if len(a) >= 4 and len(b) >= 4 and (a in b or b in a):
        return True
    return False


def _score(ta: set[str], tb: set[str]) -> tuple[int, int]:
    """(matched_count, best_token_len)"""
    if not ta or not tb:
        return 0, 0
    matched, best = 0, 0
    for a in ta:
        for b in tb:
            if _tok_match(a, b):
                matched += 1
                best = max(best, max(len(a), len(b)))
                break
    return matched, best


def best_py_form_match(
    frm: dict,
    py_ui: list[dict],
    py_core: list[dict],
    registry: dict,
) -> tuple[str, str, str]:
    stem = os.path.splitext(frm["file"])[0]
    cap = frm["caption"] or ""
    nstem, ncap = norm(stem), norm(cap)

    # 0) curated direct ports / special forms
    if nstem in KNOWN_PORT:
        st, pf, nt = KNOWN_PORT[nstem]
        return st, pf, nt
    if REPORT_VIEWER_RE.search(stem) or REPORT_VIEWER_RE.search(cap):
        return "REPORT_VIEWER", "core/reports.py", "VB6 report-viewer form -> reports engine"

    # 1) dedicated python UI file - exact / contains stem
    for p in py_ui:
        pstem = norm(os.path.splitext(p["file"])[0])
        if not pstem:
            continue
        if pstem == nstem:
            return "PY_FILE", p["file"], "exact ui stem"
        if len(nstem) >= 6 and (nstem in pstem or pstem in nstem):
            return "PY_FILE", p["file"], "ui stem contains"

    # 2) open_<stem> / open_<caption>
    for p in py_ui:
        for o in p["opens"]:
            on = norm(o)
            if len(nstem) >= 5 and on in (nstem, "open" + nstem):
                return "PY_FILE", p["file"], "open fn = stem"
    if len(ncap) >= 6:
        for p in py_ui:
            for o in p["opens"]:
                on = norm(o)
                on = on[5:] if on.startswith("open_") else on
                if on == ncap:
                    return "PY_FILE", p["file"], "open fn = caption"

    # 3) shell registry by caption (exact / case-insensitive)
    if cap:
        kind = registry.get(cap)
        if kind is None:
            for k, v in registry.items():
                if k and k.lower() == cap.lower():
                    kind = v
                    break
        if kind == "COMING_SOON":
            return "COMING_SOON", "ui/shell.py", "registry -> _coming_soon()"
        if kind == "WIRED":
            return "REGISTRY", "ui/shell.py", "registry wired (shared screen)"

    # 4) fuzzy token match against: python ui stems / open fns / core stems / registry keys
    src_toks = tokens(stem) | tokens(cap)
    if not src_toks:
        return "MISSING", "-", "no python counterpart"

    cands: list[tuple[int, int, str, str, str]] = []  # score, best_len, target, file, cat

    def add(target: str, fname: str, cat: str, weight: float = 1.0):
        m, bl = _score(src_toks, tokens(target))
        if m >= 1 and bl >= 4:
            cands.append((int(m * 10 * weight), bl, target, fname, cat))

    for p in py_ui:
        pstem = os.path.splitext(p["file"])[0]
        add(pstem, p["file"], "ui", 1.2)
        for o in p["opens"]:
            add(o[5:] if o.startswith("open_") else o, p["file"], "ui", 1.3)
    for c in py_core:
        add(os.path.splitext(c["file"])[0], "core/" + c["file"], "core", 0.9)
    for k, v in registry.items():
        if k and k != "__REPORT_ENGINE__":
            add(k, "ui/shell.py", "reg" if v == "WIRED" else "regcs",
                1.1 if v == "WIRED" else 0.95)

    if not cands:
        return "MISSING", "-", "no python counterpart"
    cands.sort(key=lambda x: (x[0], x[1]), reverse=True)
    top = cands[0]
    score, blen, target, fname, cat = top
    if score < 10:
        return "MISSING", "-", f"weak match only ({target})"
    note = f"fuzzy -> {target} (score {score}, tok {blen})"
    if score >= 14:
        if cat == "ui":
            return "PY_FILE", fname, note
        if cat == "reg":
            return "REGISTRY", fname, note
        if cat == "regcs":
            return "COMING_SOON", "ui/shell.py", note
    return "LIKELY", fname, note


BAS_ALIAS = {
    "hms": ["menu", "reports", "nightaudit", "db"],
    "folib": ["fa_voucher", "fa_ledger_ops", "fa_masters_ops", "fa_reports", "fa_tds_ops"],
    "fommodule": ["fo_ops", "reservation", "checkin", "checkout", "booking"],
    "functions": ["validation", "error_handling", "url_utils"],
    "mainlib": ["db", "menu", "auth", "reports"],
    "mdlnightaudit": ["nightaudit", "reports", "nightaudit_reports_ui"],
    "posbillprint": ["pos_sales", "pos", "pos_entry"],
    "validationmodule": ["validation"],
    "errorhandlingmodule": ["error_handling"],
    "modlog": ["error_handling"],
    "banqmodule": ["banquet_ops", "banquet_masters", "hall_booking"],
    "membermodule": ["members_masters", "member_billing"],
    "modulesmartcard": ["smartcard_ops", "smartcard"],
    "smsmodule": ["sms_comm", "sms_enviro", "sms_http"],
    "einvoice": ["einvoice"],
    "favoucher": ["fa_voucher"],
    "codemodule": ["reports", "print_preview"],
    "commondialog": ["print_preview"],
    "gridprint": ["print_preview", "reports"],
    "hotlib": ["reports", "db"],
    "json": ["url_utils", "http_client"],
    "mainsetup": ["general_setup"],
    "tmpTable": ["inventory", "pos_stock"],
    "topbarlib": ["shell"],
    "mobwebapi": ["http_client"],
    "msendinput": ["sms_comm"],
    "moduledoorlock": ["door_lock", "godrej_locks"],
    "moduleadd": ["db"],
    "mdldatatransfer": ["db_maintenance"],
    "sperialfolderpath": ["url_utils"],
    "picture": ["print_preview"],
    "databasesecuritymodule": ["auth", "usermaster", "menu_help"],
}


def match_bas(bas: dict, py_core: list[dict]) -> tuple[str, str, list[str], list[str], set[str], set[str]]:
    """-> (status, core_file, ported_named, missing_named, vb6_tables, py_covered_tables)"""
    nstem = norm(os.path.splitext(bas["file"])[0])
    cands: list[dict] = []
    for c in py_core:
        cstem = norm(os.path.splitext(c["file"])[0])
        if cstem == nstem or (len(nstem) >= 6 and (nstem in cstem or cstem in nstem)):
            cands.append(c)
    for key, mods in BAS_ALIAS.items():
        if norm(key) == nstem:
            for m in mods:
                for c in py_core:
                    if norm(os.path.splitext(c["file"])[0]) == norm(m) and c not in cands:
                        cands.append(c)
    # har VB6 table ke liye python file dhoondho
    py_tables: dict[str, set[str]] = defaultdict(set)
    for c in py_core:
        for t in c["tables"]:
            py_tables[t.lower()].add(c["file"])

    covered: set[str] = set()
    extra_files: set[str] = set()
    for t in bas["tables"]:
        tl = t.lower()
        if tl in py_tables:
            covered.add(t)
            extra_files |= py_tables[tl]

    if not cands and not extra_files:
        return "MISSING", "-", list(bas["named"]), list(bas["named"]), set(bas["tables"]), set()

    files = [c["file"] for c in cands] + sorted(extra_files - {c["file"] for c in cands})
    py_defs: set[str] = set()
    for c in cands:
        py_defs.update(norm(d) for d in c["defs"])
    # coverage-based defs from table-matched files
    for fn in extra_files:
        for c in py_core:
            if c["file"] == fn:
                py_defs.update(norm(d) for d in c["defs"])

    ported, missing = [], []
    for nm in bas["named"]:
        n = norm(nm)
        hit = n in py_defs or ("get_" + n) in py_defs or (
            n.startswith("get_") and n[4:] in py_defs
        )
        (ported if hit else missing).append(nm)

    tb = set(bas["tables"])
    if not tb:
        status = "FULL" if not missing else ("PARTIAL" if ported else "NO_SQL")
    else:
        pct = len(covered) / len(tb)
        status = "FULL" if pct >= 0.99 else ("PARTIAL" if pct >= 0.4 else "SPARSE")
        if pct == 0 and not ported:
            status = "MISSING"
    return status, "+".join(files[:4]), ported, missing, tb, covered


# ------------------------------------------------------------------------------ main


def live_db_probe(candidates: set[str]) -> tuple[dict[str, tuple[bool, int | None]], set[str]]:
    """-> ({table: (exists, rowcount)}, set_of_all_live_tables)"""
    live: dict[str, tuple[bool, int | None]] = {}
    all_live: set[str] = set()
    try:
        sys.path.insert(0, ROOT)
        from core import db  # noqa

        rows = db.query(
            "SELECT LOWER(TABLE_NAME) FROM INFORMATION_SCHEMA.TABLES "
            "WHERE TABLE_TYPE='BASE TABLE'"
        )
        all_live = {r[0] for r in rows if r[0]}
        names = {n.lower() for n in candidates if re.fullmatch(r"[A-Za-z_][\w#\$]*", n)}
        names |= all_live
        for n in sorted(names):
            if n in all_live:
                try:
                    cnt = db.query(f"SELECT COUNT(*) AS c FROM [{n}]")[0][0]
                except Exception:
                    cnt = None
                live[n] = (True, cnt)
            else:
                live[n] = (False, None)
    except Exception as e:  # pragma: no cover
        print("DB probe failed/skipped:", e)
    return live, all_live


def main() -> int:
    reg = parse_registry(SHELL)
    py_ui = [parse_py(os.path.join(PY_UI, f)) for f in sorted(os.listdir(PY_UI)) if f.endswith(".py")]
    py_core = [parse_py(os.path.join(PY_CORE, f)) for f in sorted(os.listdir(PY_CORE)) if f.endswith(".py")]

    frms = [parse_frm(os.path.join(VB6_DIR, f)) for f in sorted(os.listdir(VB6_DIR))
            if f.lower().endswith(".frm")]
    bass = [parse_bas(os.path.join(VB6_DIR, f)) for f in sorted(os.listdir(VB6_DIR))
            if f.lower().endswith(".bas")]

    parity: dict[str, str] = {}
    ppath = os.path.join(ROOT, "_qa", "foder_parity.json")
    if os.path.isfile(ppath):
        try:
            for row in json.loads(read_text(ppath)).get("rows", []):
                if isinstance(row, (list, tuple)) and len(row) >= 3:
                    parity[row[0]] = row[2]
        except Exception:
            pass

    # ---------------- forms
    rows = []
    for fr in frms:
        st, pyf, note = best_py_form_match(fr, py_ui, py_core, reg)
        if st == "MISSING":
            prior = parity.get(fr["file"], "")
            if prior in ("WIRED",):
                st, pyf, note = "REGISTRY_ONLY", "ui/shell.py", "foder_parity=WIRED"
            elif prior in ("COMING_SOON", "CS"):
                st, pyf, note = "COMING_SOON", "ui/shell.py", "foder_parity=CS"
            elif prior:
                note = f"prior={prior}"
        rows.append((fr, st, pyf, note))

    # ---------------- bas
    bas_rows = [(b,) + match_bas(b, py_core) for b in bass]

    # ---------------- tables
    vb6_tables: dict[str, set[str]] = defaultdict(set)
    for fr in frms:
        for t in fr["tables"]:
            vb6_tables[t.lower()].add(fr["file"])
    for b in bass:
        for t in b["tables"]:
            vb6_tables[t.lower()].add(b["file"])
    py_tables: dict[str, set[str]] = defaultdict(set)
    for p in py_ui + py_core:
        for t in p["tables"]:
            py_tables[t.lower()].add(p["file"])

    live, all_live = live_db_probe(set(vb6_tables) | set(py_tables))
    temps = {t for t in set(vb6_tables) | set(py_tables) if t.startswith("#")}
    real = all_live | temps | {t for t, (ok, _) in live.items() if ok}

    both, vb6only, pyonly, absent, junk = [], [], [], [], []
    for t in sorted(set(vb6_tables) | set(py_tables)):
        v, p = t in vb6_tables, t in py_tables
        is_live, cnt = live.get(t, (False if t not in real else True, None))
        if t not in real:
            junk.append((t, v, p, None, None))
            continue
        rec = (t, v, p, is_live, cnt)
        if not is_live:
            absent.append(rec)
        elif v and p:
            both.append(rec)
        elif v:
            vb6only.append(rec)
        else:
            pyonly.append(rec)

    # ---------------- report
    L: list[str] = []
    w = L.append
    w("=" * 104)
    w("VB6  vs  PYTHON  -  FILE BY FILE CODE + DATABASE  PARITY  /  MISSING LIST")
    w(f"VB6 source : {VB6_DIR}")
    w(f"Python src : {ROOT}   (ui/*.py, core/*.py, ui/shell.py registry)")
    w(f"Live DB    : Moondata2627  ({len(all_live)} base tables)")
    w("=" * 104)
    w("")

    # ---- SECTION A
    w("#" * 104)
    w("# SECTION A : FORM PARITY   (har VB6 .frm  ->  Python UI file / registry)")
    w("#" * 104)
    w(f"{'STATUS':<15} {'VB6 .frm':<30} {'VB6 FORM':<26} {'CAPTION':<34} {'PYTHON':<24} NOTE")
    w("-" * 104)
    order = ["MISSING", "COMING_SOON", "REGISTRY_ONLY", "REGISTRY", "LIKELY",
             "PY_FILE", "SHELL", "REPORT_VIEWER"]
    bucket: dict[str, list] = defaultdict(list)
    for fr, st, pyf, note in rows:
        bucket[st].append((fr, pyf, note))
    for st in order + sorted(set(bucket) - set(order)):
        for fr, pyf, note in sorted(bucket.get(st, []), key=lambda x: x[0]["file"]):
            w(f"{st:<15} {fr['file']:<30} {fr['name'][:24]:<26} "
              f"{(fr['caption'] or '')[:32]:<34} {pyf:<24} {note}")
    w("")

    # ---- SECTION B
    w("#" * 104)
    w("# SECTION B : MODULE PARITY   (har VB6 .bas  ->  Python core/*.py)")
    w("#" * 104)
    w("NOTE: VB6 decompile me zyadatar proc names obfuscated hain (Proc_<mod>_<n>_<hex>),")
    w("      isliye function-name match sirf NAMED procs par hota hai; modules ki")
    w("      coverage TABLE-level (VB6 SQL tables vs python SQL tables) se measure hoti hai.")
    w("")
    w(f"{'STATUS':<10} {'VB6 .bas':<28} {'PROC t/o/n':<12} {'TBL cov':<10} {'PY core file(s)':<46} lines")
    w("-" * 104)
    for b, st, core, ported, missing, vbt, cov in sorted(bas_rows, key=lambda x: x[0]["file"]):
        tb = f"{len(cov)}/{len(vbt)}" if vbt else "n/a"
        w(f"{st:<10} {b['file']:<28} {len(b['procs'])}/{len(b['obf'])}/{len(b['named']):<7} "
          f"{tb:<10} {core[:44]:<46} {b['lines']}")
    w("")

    w("--- B1. NAMED VB6 procs ka function-level diff (obfuscated procs excluded) ---")
    for b, st, core, ported, missing, vbt, cov in sorted(bas_rows, key=lambda x: x[0]["file"]):
        if not b["named"]:
            w(f"\n[{b['file']}]  (koi named proc nahi - {len(b['obf'])} obfuscated)")
            continue
        w(f"\n[{b['file']}] -> {core}   named={len(b['named'])} ported={len(ported)} missing={len(missing)}")
        if missing:
            line = "   MISSING:"
            for nm in missing:
                piece = " " + nm
                if len(line) + len(piece) > 98:
                    w(line)
                    line = "   "
                line += piece
            if line.strip():
                w(line)
    w("")

    w("--- B2. Module-wise TABLE coverage (VB6 SQL tables jo python core me cover nahi) ---")
    for b, st, core, ported, missing, vbt, cov in sorted(bas_rows, key=lambda x: x[0]["file"]):
        miss_t = sorted(vbt - cov)
        if not vbt:
            continue
        w(f"\n[{b['file']}]  coverage {len(cov)}/{len(vbt)}")
        if miss_t:
            w("   MISSING TABLES: " + ", ".join(miss_t))
    w("")

    # ---- SECTION C
    w("#" * 104)
    w("# SECTION C : DATABASE PARITY   (VB6 SQL  vs  Python SQL  vs  LIVE DB)")
    w("#" * 104)
    w(f"{'TABLE':<34} {'VB6':<4} {'PY':<4} {'DB':<5} {'ROWS':>10}   VB6 files / PY files")
    w("-" * 104)
    for title, group in (
        ("C1. VB6-ONLY tables  (VB6 use karta hai, PYTHON kabhi query nahi karta)  <-- MISSING", vb6only),
        ("C2. BOTH sides tables (dono taraf use ho rahi hain)", both),
        ("C3. PYTHON-ONLY tables (VB6 me nahi mili)", pyonly),
        ("C4. ABSENT in live DB (refer par DB me table hi nahi)", absent),
    ):
        w(f"\n--- {title}   [n={len(group)}] ---")
        for t, v, p, is_live, cnt in sorted(group, key=lambda x: (-(x[4] or 0), x[0])):
            vsrc = sorted(vb6_tables.get(t, set()))
            psrc = sorted(py_tables.get(t, set()))
            src = "; ".join(
                ([f"VB6:{','.join(vsrc[:3])}" if vsrc else ""] +
                 [f"PY:{','.join(psrc[:3])}" if psrc else ""])
            ).strip(" ;")
            w(f"{t[:33]:<34} {'Y' if v else '-':<4} {'Y' if p else '-':<4} "
              f"{('YES' if is_live else 'NO'):<5} {(str(cnt) if cnt is not None else '-'):>10}   {src[:70]}")
        w("")
    if junk:
        jnoise = [t for t, *_ in junk
                  if re.match(r"^(var|loc)_[0-9a-f]+$", t) or t in SQL_STOP]
        jobj = [t for t, *_ in junk if t not in jnoise]
        w(f"--- C5. SQL me refer par LIVE DB me BASE TABLE nahi "
          f"(view / doosre-saal DB / drop table / typo)  [n={len(jobj)}] ---")
        w("   " + ", ".join(sorted(jobj)))
        w(f"   (aur {len(jnoise)} string-noise tokens ignore kiye gaye)")
        w("")

    # ---- SECTION D
    w("#" * 104)
    w("# SECTION D : MISSING LIST   (kya kya missing hai - consolidated checklist)")
    w("#" * 104)
    w("")

    miss_forms = sorted([r for r in rows if r[1] == "MISSING"], key=lambda x: x[0]["file"])
    cs_forms = sorted([r for r in rows if r[1] == "COMING_SOON"], key=lambda x: x[0]["file"])
    reg_only = sorted([r for r in rows if r[1] == "REGISTRY_ONLY"], key=lambda x: x[0]["file"])
    reg_only_shared = sorted([r for r in rows if r[1] == "REGISTRY"], key=lambda x: x[0]["file"])

    w(f"D1. FORMS MISSING IN PYTHON  (na UI file, na registry entry)  [n={len(miss_forms)}]")
    w("-" * 104)
    for i, (fr, st, pyf, note) in enumerate(miss_forms, 1):
        tbls = ",".join(sorted(fr["tables"])[:6])
        w(f"{i:>3}. {fr['file']:<32} Form={fr['name']:<24} Caption=\"{(fr['caption'] or '')[:38]}\"")
        w(f"     ctrl={fr['controls']} grid={'Y' if fr['has_grid'] else '-'} lines={fr['lines']}"
          + (f"  tables=[{tbls}]" if tbls else "  (no SQL in form)"))
    w("")

    likely = sorted([r for r in rows if r[1] == "LIKELY"], key=lambda x: x[0]["file"])
    w(f"D1b. LIKELY matches (fuzzy token match - manually verify karo)  [n={len(likely)}]")
    w("-" * 104)
    for i, (fr, st, pyf, note) in enumerate(likely, 1):
        w(f"{i:>3}. {fr['file']:<32} \"{(fr['caption'] or '')[:40]:<42}\" -> {pyf:<26} {note}")
    w("")

    w(f"D2. FORMS -> COMING SOON  (registry me entry hai par UI/logic absent)  [n={len(cs_forms)}]")
    w("-" * 104)
    for i, (fr, st, pyf, note) in enumerate(cs_forms, 1):
        w(f"{i:>3}. {fr['file']:<32} \"{(fr['caption'] or '')[:60]}\"")
    w("")

    w(f"D3. FORMS registry-wired par DEDICATED python UI file nahi (shared/simplified screen)  [n={len(reg_only) + len(reg_only_shared)}]")
    w("-" * 104)
    for i, (fr, st, pyf, note) in enumerate(reg_only + reg_only_shared, 1):
        w(f"{i:>3}. [{st}] {fr['file']:<30} \"{(fr['caption'] or '')[:55]}\"")
    w("")

    w("D4. VB6 .bas MODULES - python core se FULLY nahi mile (status MISSING/SPARSE/NO_SQL):")
    w("-" * 104)
    bad = [x for x in bas_rows if x[1] in ("MISSING", "SPARSE", "NO_SQL")]
    for i, (b, st, core, ported, missing, vbt, cov) in enumerate(sorted(bad, key=lambda x: x[0]["file"]), 1):
        w(f"{i:>3}. {b['file']:<28} status={st:<8} procs={len(b['procs']):<5} "
          f"tables_cov={len(cov)}/{len(vbt)}  -> {core}")
    w("")

    EVT_RE = re.compile(
        r"_(Click|DblClick|Change|KeyDown|KeyPress|KeyUp|GotFocus|LostFocus|"
        r"Validate|SelChange|RowColChange|Scroll|MouseDown|MouseUp|MouseMove|"
        r"Activate|Unload|Load|Initialize|Resize|Timer|UnknownEvent|GotTopic|"
        r"PathChange|ScrollChange|SelChange|TabClick|CheckClick)$", re.I,
    )
    named_all = sum(len(b["named"]) for b, *_ in bas_rows)
    ported_all = sum(len(p) for _, _, _, p, _, _, _ in bas_rows)
    biz_missing = sorted({nm for b, st, c, p, m, v, cv in bas_rows for nm in m
                          if not EVT_RE.search(nm) and not nm.lower().endswith("_click")})
    _bizset = set(biz_missing)
    evt_missing = sorted({nm for b, st, c, p, m, v, cv in bas_rows for nm in m
                          if nm not in _bizset})
    w(f"D5. NAMED VB6 FUNCTIONS MISSING in python core  "
      f"[total named={named_all}, ported={ported_all}, missing={len(biz_missing) + len(evt_missing)}]")
    w("-" * 104)
    w(f"D5a. BUSINESS / REPORT functions missing  [n={len(biz_missing)}]"
      f"  (ye real logic gap hain - port karne hain)")
    for nm in biz_missing:
        w(f"    - {nm}")
    w("")
    w(f"D5b. VB6 control EVENT handlers missing  [n={len(evt_missing)}]"
      f"  (Cmd*_Click / Chk*_KeyDown etc.)")
    w("     NOTE: python me ye event-handler ki tarah nahi, direct button-callback/"
      w"lambda se hote hain - isliye naam-match fail hota hai, functionality")
    w("     Section A (form parity) se check karo.")
    line = "   "
    for nm in evt_missing:
        piece = " " + nm
        if len(line) + len(piece) > 98:
            w(line)
            line = "   "
        line += piece
    if line.strip():
        w(line)
    w("")

    w(f"D6. DATABASE TABLES MISSING IN PYTHON CODE (VB6 use karta hai)  [n={len(vb6only)}]")
    w("-" * 104)
    for i, (t, v, p, is_live, cnt) in enumerate(
        sorted(vb6only, key=lambda x: (-(x[4] or 0), x[0])), 1
    ):
        src = ", ".join(sorted(vb6_tables[t])[:4])
        w(f"{i:>3}. {t[:34]:<35} rows={(cnt if cnt is not None else '-'):>9}   VB6: {src}")
    w("")

    w(f"D7. TABLES ABSENT IN LIVE DB (dono taraf refer par DB me nahi)  [n={len(absent)}]")
    w("-" * 104)
    for i, (t, v, p, is_live, cnt) in enumerate(sorted(absent), 1):
        w(f"{i:>3}. {t[:40]:<41} vb6={'Y' if v else '-'} py={'Y' if p else '-'}")
    if not absent:
        w("   (none)")
    w("")

    w(f"D8. PYTHON-ONLY TABLES (VB6 me kabhi nahi - extra / renamed)  [n={len(pyonly)}]")
    w("-" * 104)
    for i, (t, v, p, is_live, cnt) in enumerate(sorted(pyonly), 1):
        w(f"{i:>3}. {t[:34]:<35} rows={(cnt if cnt is not None else '-'):>9}   PY: "
          + ", ".join(sorted(py_tables[t])[:3]))
    w("")

    # ---- SECTION E
    w("#" * 104)
    w("# SECTION E : SUMMARY COUNTS")
    w("#" * 104)
    w(f"VB6 forms (.frm)           : {len(rows)}")
    w(f"VB6 modules (.bas)         : {len(bass)}")
    w(f"VB6 .bas procs total       : {sum(len(b['procs']) for b, *_ in bas_rows)}")
    w(f"  obfuscated (decompiled)  : {sum(len(b['obf']) for b, *_ in bas_rows)}")
    w(f"  named (event/func)       : {sum(len(b['named']) for b, *_ in bas_rows)}")
    w(f"  NAMED ported in python   : {sum(len(p) for _, _, _, p, _, _, _ in bas_rows)}")
    w(f"  NAMED MISSING in python  : {sum(len(m) for _, _, _, _, m, _, _ in bas_rows)}")
    w(f"Python ui/*.py files       : {len(py_ui)}")
    w(f"Python core/*.py files     : {len(py_core)}")
    w(f"Python core top-level defs : {sum(len(c['defs']) for c in py_core)}")
    w("")
    w("Form status:")
    for st in order + sorted(set(bucket) - set(order)):
        w(f"  {st:<16} {len(bucket.get(st, []))}")
    w("")
    w("Module (.bas) status:")
    bc: dict[str, int] = defaultdict(int)
    for _, st, *_ in bas_rows:
        bc[st] += 1
    for st in sorted(bc):
        w(f"  {st:<16} {bc[st]}")
    w("")
    w("Database (real tables only, live-DB validated):")
    w(f"  live base tables in DB    : {len(all_live)}")
    w(f"  VB6-referenced (real)     : {len({t for t in vb6_tables if t in real})}")
    w(f"  Python-referenced (real)  : {len({t for t in py_tables if t in real})}")
    w(f"  BOTH                      : {len(both)}")
    w(f"  VB6-ONLY (PY MISSING)     : {len(vb6only)}")
    w(f"  PY-ONLY                   : {len(pyonly)}")
    w(f"  ABSENT in DB              : {len(absent)}")
    w("")
    w("=" * 104)
    w("END OF REPORT")
    w("=" * 104)

    with open(OUT, "w", encoding="utf-8") as fh:
        fh.write("\n".join(L) + "\n")
    summary = {
        "forms": len(rows),
        "form_status": {k: len(v) for k, v in bucket.items()},
        "bas": len(bass),
        "bas_status": dict(bc),
        "missing_forms": [r[0]["file"] for r in miss_forms],
        "coming_soon_forms": [r[0]["file"] for r in cs_forms],
        "missing_business_functions": biz_missing,
        "missing_event_handlers": evt_missing,
        "vb6_only_tables": [r[0] for r in vb6only],
        "absent_tables": [r[0] for r in absent],
        "py_only_tables": [r[0] for r in pyonly],
    }
    os.makedirs(os.path.dirname(JSON_OUT), exist_ok=True)
    with open(JSON_OUT, "w", encoding="utf-8") as fh:
        json.dump(summary, fh, indent=1)
    print(f"written: {OUT}  ({len(L)} lines)")
    print(json.dumps({"forms": summary["form_status"], "bas": summary["bas_status"],
                      "vb6_only_tables": len(vb6only), "absent": len(absent),
                      "missing_biz_fns": len(biz_missing), "missing_evt": len(evt_missing)}, indent=1))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
