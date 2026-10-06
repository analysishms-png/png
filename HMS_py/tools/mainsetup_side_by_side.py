#!/usr/bin/env python3
"""Generate MAIN_SETUP_SIDE_BY_SIDE.md + _qa/mainsetup_side_by_side.json.

Read-only comparison of the VB6 "Main Setup" menu subtree (FODER/MDIForm1.frm)
against the Python (PyQt6) port.  Reuses the parsers in
tools/build_mainsetup_mapping.py and adds the evidence this report needs:

  * menu leaves with the has_children fix  -> 135 leaves / 106 visible / 29 hidden
  * index dispatch per group `_Click`      -> (form, line) + "no form" branch notes
  * caption dispatch chains from ModuleAdd.bas + HMS.bas, both shapes:
        If (var_188 = "cap") Then ...      and      Loop Until (var_188 = "cap")
    first-wins keyed by caption, block = next var_188 compare / End If
  * Python registry: AST parse (build_mainsetup_mapping.parse_registry) plus a
    live `_form_registry()` call when HMS_py.ui.shell imports cleanly
  * VB6 SQL table references of the target .frm compared against
    sys.objects type U+V (core/db.py, best effort - if the DB is down,
    BLOCKED-TBL is never claimed)

Status vocabulary: DONE / PARTIAL / UI-ONLY / BLOCKED-TBL / MISSING / VB6-DEAD
Rules (also printed into the MD by `rules()`):

  1. VB6-DEAD  - hidden in VB6 (Visible = 0), separator "-", or neither
                 dispatch path names a form (VB6 itself cannot reach it).
  2. MISSING   - no registry key, key wired to None, or a _coming_soon()
                 placeholder (no Python form port exists).
  3. BLOCKED-TBL - opener exists but >= 1 VB6-referenced table of the target
                 .frm is absent from the database (sys.objects U+V).
  4. UI-ONLY   - form exists in Python but its ui file has no domain core
                 module (only core/db or none): queries live inline in the
                 UI - no core layer to compare against.
  5. PARTIAL   - wired but deviates from VB6: (a) known concrete logic diff
                 from the DEEP_DIVES evidence table, (b) registry key only
                 reachable via menu/norm alias (VB6 caption != key),
                 (c) opener unresolvable / func not found, or (d) no test
                 under HMS_py/tests references the caption or the ui module
                 (wired, but the VB6 behaviour is unverified).
  6. DONE      - real opener + domain core module + all VB6 tables present
                 + test coverage + no known diff.

Precedence: separator/hidden/no-target -> MISSING -> BLOCKED-TBL -> UI-ONLY
-> PARTIAL -> DONE.

Evidence columns per leaf: VB6 form + dispatch line + caption-chain ref,
VB6 SQL tables with per-table DB state (absent / empty / N rows), Python ui
opener, Python domain core module(s), registry key + shell.py line, test
file refs.

Deterministic JSON: no timestamps, rows in menu order, `sort_keys` - a re-run
writes a byte-identical `_qa/mainsetup_side_by_side.json`.  The MD embeds a
report date (date-only) in its header; everything else is stable.

Usage:  .venv/Scripts/python tools/mainsetup_side_by_side.py
Writes: <repo>/HMS_py/MAIN_SETUP_SIDE_BY_SIDE.md
        <repo>/HMS_py/_qa/mainsetup_side_by_side.json
"""

from __future__ import annotations

import ast
import json
import re
import sys
from datetime import date
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import build_mainsetup_mapping as B  # noqa: E402

PKG, REPO, FODER = B.PKG, B.REPO, B.FODER
MDI_FRM, SHELL = B.MDI_FRM, B.SHELL
OUT_MD = PKG / "MAIN_SETUP_SIDE_BY_SIDE.md"
OUT_JSON = PKG / "_qa" / "mainsetup_side_by_side.json"

STATUSES = ("DONE", "PARTIAL", "UI-ONLY", "BLOCKED-TBL", "MISSING", "VB6-DEAD")
EXPECT = {"leaves": 135, "visible": 106, "hidden": 29}


# ------------------------------------------------------------------ VB6 side
def menu_tree() -> list[dict]:
    """Main Setup leaves - same walk as build_mainsetup_mapping.parse_menu_tree
    but a node is only a leaf when it never had a child (fixes SCard[33],
    an Index-carrying submenu header, counting as a 136th leaf)."""
    src = MDI_FRM.read_text(encoding="latin-1", errors="replace").splitlines()
    start = next(i for i, l in enumerate(src) if "Begin Menu Mast" in l)
    depth, end = 0, None
    for i in range(start, len(src)):
        if re.match(r"\s*Begin ", src[i]):
            depth += 1
        elif re.match(r"\s*End\s*$", src[i]):
            depth -= 1
            if depth == 0:
                end = i
                break
    stack: list[dict] = []
    leaves: list[dict] = []
    for i in range(start, end + 1):
        line = src[i]
        m = re.match(r"\s*Begin Menu (\S+)", line)
        if m:
            if stack:
                stack[-1]["kid"] = True
            stack.append(
                {
                    "ctrl": m.group(1),
                    "idx": None,
                    "cap": None,
                    "vis": True,
                    "line": i + 1,
                    "kid": False,
                }
            )
            continue
        m = re.match(r"\s*Index = (\d+)", line)
        if m and stack:
            stack[-1]["idx"] = int(m.group(1))
            continue
        if re.match(r"\s*Visible = 0", line) and stack:
            stack[-1]["vis"] = False
            continue
        m = re.match(r'\s*Caption = "([^"]*)"', line)
        if m and stack:
            stack[-1]["cap"] = m.group(1).replace("&", "")
            continue
        if re.match(r"\s*End\s*$", line) and stack:
            node = stack.pop()
            if node["kid"] or node["idx"] is None or not node["cap"]:
                continue
            sec = (
                stack[-1]["cap"]
                if len(stack) >= 2 and stack[-1]["cap"]
                else node["cap"]
            )
            leaves.append(
                {
                    "section": sec,
                    "ctrl": node["ctrl"],
                    "idx": node["idx"],
                    "caption": node["cap"].strip(),
                    "visible": node["vis"],
                    "line": node["line"],
                    "is_separator": node["cap"].strip() == "-",
                }
            )
    return leaves


def index_dispatch(ctrls: set[str]) -> tuple[dict, dict]:
    """ctrl -> {index: (form, line)} from `Private Sub <ctrl>_Click`, plus
    {(ctrl, index): note} for branches that never name a form (GoTo no-op)."""
    text = MDI_FRM.read_text(encoding="latin-1", errors="replace")
    forms: dict[str, dict[int, tuple[str | None, int]]] = {}
    notes: dict[tuple[str, int], str] = {}
    for ctrl in sorted(ctrls):
        m = re.search(
            rf"(?:Private|Public) Sub {re.escape(ctrl)}_Click\(Index As Integer\)"
            rf".*?^End Sub",
            text,
            re.S | re.M,
        )
        if not m:
            continue
        first = text[: m.start()].count("\n") + 1
        cur: int | None = None
        seen_new = False
        mapping: dict[int, tuple[str | None, int]] = {}
        for off, line in enumerate(m.group(0).splitlines()):
            lineno = first + off
            cm = re.search(r"If \(\w+ = (&H[0-9A-Fa-f]+|\d+)\) Then", line)
            if cm:
                if cur is not None and cur not in mapping:
                    notes[(ctrl, cur)] = f"branch without form (L{lineno})"
                cur = B._parse_idx(cm.group(1))
                seen_new = False
                continue
            if cur is None:
                continue
            nm = re.search(r"New ([A-Za-z_]\w*)", line)
            if nm and not seen_new:
                mapping[cur] = (nm.group(1), lineno)
                seen_new = True
        if cur is not None and cur not in mapping:
            notes[(ctrl, cur)] = "branch without form (end of sub)"
        forms[ctrl] = mapping
    return forms, notes


_CAP_IF = re.compile(r'If \(var_188 = "((?:[^"])*)"\) Then')
_CAP_LOOP = re.compile(r'Loop Until \(var_188 = "((?:[^"])*)"\)')
_CAP_ANY = re.compile(r"(?:If|Loop Until) \(var_188 = ")


def caption_chains() -> dict[str, dict]:
    """caption -> {form, note, file, line, kind}; first wins (ModuleAdd.bas,
    then HMS.bas).  Both decompiled dispatch shapes are matched; the block
    ends at the next var_188 compare or End If, max 14 lines of lookahead."""
    out: dict[str, dict] = {}
    for fname in ("ModuleAdd.bas", "HMS.bas"):
        path = FODER / fname
        if not path.exists():
            continue
        lines = path.read_text(encoding="latin-1", errors="replace").splitlines()
        for i, line in enumerate(lines):
            for kind, pat in (("If", _CAP_IF), ("Loop", _CAP_LOOP)):
                m = pat.search(line)
                if not m:
                    continue
                cap = m.group(1)
                form = note = None
                for j in range(i + 1, min(len(lines), i + 14)):
                    s = lines[j]
                    if _CAP_ANY.search(s) or s.strip() == "End If":
                        break
                    if form is None:
                        nm = re.search(r"New ([A-Za-z_]\w*)", s)
                        if nm:
                            form = nm.group(1)
                            continue
                        mm = re.search(r"Set \w+ = (MemVar_\w+)", s)
                        if mm:
                            form = f"<global-form-var {mm.group(1)}>"
                            continue
                    if note is None:
                        mc = re.search(r"Call (Method_arg_\w+)", s)
                        if mc:
                            note = f"helper call {mc.group(1)}"
                if cap not in out:
                    out[cap] = {
                        "form": form,
                        "note": note,
                        "file": fname,
                        "line": i + 1,
                        "kind": kind,
                    }
    return out


# ---------------------------------------------------------------- Python side
def _runtime_status(value) -> str:
    if value is None:
        return "NONE"
    if "_coming_soon" in getattr(value, "__qualname__", ""):
        return "COMING_SOON"
    return "REAL"


def runtime_registry() -> tuple[dict | None, str]:
    """Live `_form_registry()` - resolves the `... if mod else ...` conditionals
    to what the running app actually wires.  Best effort."""
    if str(REPO) not in sys.path:
        sys.path.insert(0, str(REPO))
    try:
        from HMS_py.ui import shell as sh  # noqa: PLC0415

        if Path(sh.__file__).resolve() != SHELL.resolve():
            return None, f"imported wrong shell: {sh.__file__}"
        return {k: _runtime_status(v) for k, v in sh._form_registry().items()}, "live"
    except Exception as exc:  # pragma: no cover - environment dependent
        return None, f"{type(exc).__name__}: {exc}"


_SQL_RE = re.compile(
    r"(?i)\b(?:from|into|update|join|delete\s+from)\s+\[?([A-Za-z_]\w*)\]?"
)
# A double-quoted literal is only SQL when it *starts* a statement - kills
# `rs.Update var_A4, var_CC` method calls and captions like "Update Structure".
_SQL_GATE = re.compile(
    r"(?i)\b(?:select\b|insert\s+into\b|delete\s+from\b|update\s+\w+\s+set\b)"
)


def tables_in_form(frm: str | None) -> list[str]:
    """Table names referenced by SQL string literals of a VB6 form file.

    Only matches inside `"..."` literals that look like a SQL statement."""
    if not frm:
        return []
    path = FODER / Path(frm).name
    if not path.exists():
        return []
    # ponytail: dict keyed by lowercase — kills case-duplicates (REVMAST/RevMast)
    # that make PowerShell ConvertFrom-Json throw "keys with different casing".
    found: dict[str, str] = {}
    for line in path.read_text(encoding="latin-1", errors="replace").splitlines():
        for lit in re.findall(r'"([^"]*)"', line):
            if not _SQL_GATE.search(lit):
                continue
            for m in _SQL_RE.finditer(lit):
                found.setdefault(m.group(1).lower(), m.group(1))
    return sorted(found.values())


def db_tables() -> tuple[set[str] | None, str]:
    if str(REPO) not in sys.path:
        sys.path.insert(0, str(REPO))
    try:
        from HMS_py.core import db  # noqa: PLC0415

        cfg = db.load_config()
        rows = db.query("SELECT name FROM sys.objects WHERE type IN ('U','V')")
        return {str(r[0]) for r in rows}, f"{cfg['server']}/{cfg['database']}"
    except Exception as exc:  # pragma: no cover - environment dependent
        return None, f"{type(exc).__name__}: {exc}"


def probe_row_counts(names: set[str], db_set: set[str]) -> dict[str, str]:
    """Present tables -> 'empty' | 'N rows' | 'count-error: ...'.
    Absent tables are not probed (they stay 'absent').  One shared
    connection; names validated against [A-Za-z_]\\w* before interpolation."""
    if str(REPO) not in sys.path:
        sys.path.insert(0, str(REPO))
    out: dict[str, str] = {}
    try:
        from HMS_py.core import db  # noqa: PLC0415

        actual = {t.lower(): t for t in db_set}
        want = sorted({actual[n.lower()] for n in names if n.lower() in actual})
        if not want:
            return out
        cn = db.connect()
        try:
            for t in want:
                if not re.fullmatch(r"[A-Za-z_]\w*", t):
                    out[t] = "invalid-name (count skipped)"
                    continue
                try:
                    n = db.query(f"SELECT COUNT(*) FROM [{t}]", cn=cn)[0][0]
                    out[t] = "empty" if int(n) == 0 else f"{int(n)} rows"
                except Exception as exc:  # noqa: BLE001 - evidence, not crash
                    out[t] = f"count-error: {type(exc).__name__}"
        finally:
            cn.close()
    except Exception as exc:  # pragma: no cover - environment dependent
        for t in sorted(n for n in names if n.lower() in {x.lower() for x in db_set}):
            out[t] = f"count-unavailable: {type(exc).__name__}"
    return out


def domain_core(ui_file: str | None) -> list[str]:
    """Domain core modules imported by a ui file (core/db and bare 'db'
    excluded - those are plumbing, not a domain layer).  Empty list means
    the SQL lives inline in the UI (skill UI-ONLY)."""
    if not ui_file:
        return []
    path = PKG / ui_file
    if not path.exists():
        return []
    src = path.read_text(encoding="utf-8", errors="replace")
    mods: set[str] = set(re.findall(r"HMS_py\.core\.(\w+)", src))
    for pat in (
        r"from HMS_py\.core import ([^\n]+)",
        r"from \.{1,2}core import ([^\n]+)",
    ):
        for m in re.findall(pat, src):
            for part in m.split(","):
                mods.add(part.strip().split(" as ")[0].split(".")[0])
    return sorted(m for m in mods if m != "db" and (PKG / "core" / f"{m}.py").exists())


_TEST_CACHE: dict[Path, str] | None = None


def test_refs(caption: str, key: str | None, ui_file: str | None) -> list[str]:
    """Tests referencing the leaf: caption/key substring or ui-module stem.
    -> sorted 'HMS_py/tests/...py:LINE' list (evidence, not a claim of depth)."""
    global _TEST_CACHE  # noqa: PLW0603 - one-shot cache, deterministic
    if _TEST_CACHE is None:
        _TEST_CACHE = {}
        for t in sorted((PKG / "tests").rglob("*.py")):
            try:
                _TEST_CACHE[t] = t.read_text(encoding="utf-8", errors="replace")
            except OSError:
                continue
    terms = [
        t.strip().lower()
        for t in {caption, key or ""}
        if t and t.strip() and len(t.strip()) >= 4 and t.strip() != "-"
    ]
    stem = Path(ui_file).stem if ui_file else None
    hits: list[str] = []
    for path, src in _TEST_CACHE.items():
        low = src.lower()
        at: int | None = None
        for term in terms:
            at = low.find(term)
            if at is not None and at >= 0:
                break
        if at is None or at < 0:
            if stem and stem.lower() in low:
                at = low.find(stem.lower())
            else:
                continue
        line = low.count("\n", 0, at) + 1
        hits.append(f"{path.relative_to(REPO).as_posix()}:{line}")
    return sorted(hits)


# Curated deep-dive evidence: caption -> {vb6, py, diff[, forces_partial]}.
# Populated only from actual VB6-form / Python-impl reads (see docstring).
# Keys = exact registry captions; "Company Master" (Mas[17] + UTL[26]) shares
# one entry.  No entry sets forces_partial: all 14 leaves are already non-DONE
# by the classifier -- these rows only add file:line evidence.
DEEP_DIVES: dict[str, dict[str, str]] = {
    "Guest History": {
        "vb6": "FODER/GuestProfile.frm:4153 search join (City/country/state); "
        ":5849 GuestFolioProfDetail orphan-profile backfill",
        "py": "ui/guest_history_ui.py:open_guestprof — all SQL inline in the "
        "UI module (core=[]); tests=2 cover opener only",
        "diff": "VB6 search joins City/state/country + backfills folio rows; "
        "Python keeps query logic in the UI layer (no domain core), "
        "so it is unportable/untestable beyond opener tests.",
    },
    "Company Master": {
        "vb6": "FODER/CompMast.frm:2770-2775 Ledger COUNT guard -> "
        '"Transactions Exist Can\'t Delete it"',
        "py": "core/comp_master.py:133 delete-guard counts SubGroup only; "
        "Ledger guard is docstring-only (:7); save = delete-then-reinsert "
        "(:129); UI promises Ledger blocking at "
        "ui/comp_mast_form_ui.py:591",
        "diff": "VB6 blocks delete when Ledger rows exist; Python guard checks "
        "SubGroup, not Ledger — the UI message promises more than the "
        "code enforces. One entry covers both Mas[17] and UTL[26] rows; "
        "tests=0.",
    },
    "Category wise Revenue": {
        "vb6": "FODER/memCatRevMast.frm:878 MemCatRevWise browse; :1027 INSERT "
        "INTO MemCatRevWise (11 cols); :1495 COUNT guard",
        "py": "ui/member_master_ui.py:open_member_master -> "
        "core/fa_masters_ops.py (TDSCAT/AcGroup only); MemCatRevWise = 0 "
        "rows and no ui/ or core/ SQL touches it",
        "diff": "VB6 CRUD writes per-category revenue rows; Python routes to "
        "the generic member-master opener that never reads/writes "
        "MemCatRevWise; tests=0.",
    },
    "Category wise Facility": {
        "vb6": "FODER/memCategoryFacilities.frm:901 INSERT INTO MemCatFacility "
        "(15 cols); :1491 COUNT guard; :1649 browse join",
        "py": "same generic opener ui/member_master_ui.py:open_member_master "
        "(core/fa_masters_ops.py); MemCatFacility = 0 rows, 0 ui/+core/ "
        "references",
        "diff": "facility-per-category grid is never persisted by Python — "
        "opener is wired to the wrong domain; tests=0.",
    },
    "Banquet Bill Sundry Setting": {
        "vb6": "FODER/HallSundry.frm:1609 INSERT INTO SundryType; :1243 "
        "Voucher_Type NCat='BBILL' lookup; :1935 COUNT guard",
        "py": "ui/hall_sundry_ui.py:136-208 loads/saves SundryTypeFix only "
        "(core=banquet_ops); the SundryType write path exists elsewhere "
        "— core/sundry_type.py wired to DepartSundry via "
        "ui/fd_forms_ui.py:819 — but not to this opener",
        "diff": "VB6 composes voucher-wise SundryType rows for BBILL; the "
        "banquet opener touches only SundryTypeFix. Capability exists "
        "in the codebase but is unwired here (gap = wiring, not "
        "missing code); tests=0.",
    },
    "Item Entry": {
        "vb6": "FODER/FrmItemMastRaw.frm:3448 INSERT INTO ItemMast (14 cols); "
        ":2999 Stock COUNT delete-guard; :3016 DELETE ItemMast; :3547 "
        "inline UnitMast INSERT",
        "py": "ui/p2_masters.py:313-314 open_item -> _open_dialog(item_config); "
        ":100 generic 6-field dialog, api=item, "
        'delete_guard=make_delete_guard("PYT") (ui/base_master.py:1034 '
        "= PYT sample-prefix guard)",
        "diff": "VB6 guards delete on real Stock rows and writes UnitMast "
        "inline; Python guard only blocks PYT* test rows (no Stock "
        "check), UnitMast untouched. Matched via menu alias key "
        "'Item Entry ' (trailing space); tests=3.",
    },
    "Account Merging": {
        "vb6": "FODER/AccountMerg.frm:491-657 — 19 UPDATEs re-point old->new "
        "SubCode across Ledger(+ContraSub), LedgerAdj, LedgerRef, "
        "LedgerTDS(TDSCode/TDSDrCode), BOOKING(ACCODE/COMMAC), BUDGET, "
        "CREDITCARDHISTORY(COMMAC), EMPLOYEE(AC_code/LOANAC), "
        "ENVIRO x7 AC columns",
        "py": "core/account_merge.py:55-58 targets LEDGER/LEDGERADJ/"
        "SUBGROUPCURRBAL only; :93 generic "
        "`UPDATE [{table}] SET [SubCode]`; :99 DELETE old SubGroup",
        "diff": "VB6 re-points 9 tables / 19 columns incl. non-SubCode refs; "
        "Python updates SubCode in 3 tables — LedgerRef, LedgerTDS, "
        "BOOKING, BUDGET, CREDITCARDHISTORY, EMPLOYEE and ENVIRO rows "
        "keep the old account code after a merge; tests=0.",
    },
    "Sundry Master": {
        "vb6": "FODER/SundryMast.frm:504/:508 site-filtered browse "
        "(LOGSITE_CODE/HO); :881 INSERT (10 cols); :619/:869 DELETE; "
        ":853 serial generator; :706 SysYN display",
        "py": "ui/misc_sub_forms_ui.py:228 browse, :251 INSERT, :279 DELETE "
        "RTRIM — CRUD inline in the UI file (row core shows comp_master, "
        "party_master — no sundry module)",
        "diff": "VB6 form vs Python UI-inline CRUD: no dedicated core module "
        "and no test references this caption (tests=0).",
    },
    "Inconsistency Check": {
        "vb6": "FODER/FrmInc.frm:600-616 — 17 repair UPDATEs syncing "
        "CONVFACTOR/UNIT/WTQTY into INDENT1/PORDER1/STOCK/PURCH2 from "
        "ITEMMAST; :676-682 structure re-sync "
        "(Depart/Voucher_Type/Voucher_Prefix/ItemMast)",
        "py": 'core/inconsistency.py:86 "delete karta tha; port sirf report '
        'karta hai" — read-only checks (:30-79 SELECTs); NULL-filler '
        "UPDATEs live separately in core/db_maintenance.py:15-30 under "
        "its own button (ui/db_maintenance_ui.py:44)",
        "diff": "VB6 repairs (conv-factor/unit sync + structure copy) are not "
        "ported — Python only reports inconsistencies; no test.",
    },
    "Customer History": {
        "vb6": "FODER/frmGuestInfo.frm:554/:736 LocationFacility browse joined "
        "to LocationMast (absent from sys.objects); GuestProf update "
        ":653/:663, insert :693",
        "py": "ui/frontoffice.py:open_guestprof + core/guestprof.py:84-181 "
        "full GuestProf CRUD (tests=5); LocationFacility = 0 rows",
        "diff": "opener + CRUD ported and tested; the VB6 location-facility "
        "browse needs LocationMast, which does not exist. BLOCKER: "
        "create LocationMast or formally drop that browse.",
    },
    "Member Master": {
        "vb6": "FODER/MembershipMast.frm:4246-4251 Ledger COUNT guard "
        '("Transactions Exist Can\'t Delete it"); MemAddRWA DELETEs '
        ":3879/:4069/:4190; SQL literals also reference MemCat, "
        "MemChildrenGenPic, MemSpouseGen, memFamily — all absent "
        "(MemberFamily=37 rows is the live near-name)",
        "py": "ui/member_master_ui.py:48-56 insert/update/delete (:83 "
        "fa_masters_ops ledger guard); core/fa_masters_ops.py:186-189 "
        "SubGroup guard (tests=2)",
        "diff": "opener ported + tested, but the VB6 form's SQL literals "
        "point at 4 absent tables while family data lives in "
        "MemberFamily. BLOCKER: create the 4 tables or re-point to "
        "MemberFamily/MemCatMast.",
    },
    "Member Age Wise Revenue": {
        "vb6": "FODER/memAgeRevMast.frm:895/:1144 browse; :1065 INSERT INTO "
        "MemAgeRevWise (12 cols); :1507 COUNT guard",
        "py": "generic ui/member_master_ui.py:open_member_master "
        "(core/fa_masters_ops.py); MemAgeRevWise absent from "
        "sys.objects, 0 ui/+core/ references",
        "diff": "table missing in DB and no Python SQL exists. BLOCKER: create "
        "MemAgeRevWise then wire the opener; tests=0.",
    },
    "Member Select Category": {
        "vb6": "FODER/MemSelectCategory.frm:751/:865 browse; :829 DELETE; :978 "
        "MemCatMast LEFT JOIN; :1020 INSERT (MemCode,Type,Site_Code,"
        "U_Name,U_EntDt,U_AE,LOGSITE_CODE); :1176 MemCatMast Inner Join",
        "py": "generic ui/member_master_ui.py:open_member_master; "
        "MemSelectCategory absent from sys.objects, 0 ui/+core/ "
        "references",
        "diff": "table missing in DB and no Python SQL exists. BLOCKER: create "
        "MemSelectCategory then wire the per-category assignment; "
        "tests=0.",
    },
    "Employee Master": {
        "vb6": "FODER/PrEmployee.frm:2944/:3001 browse joins "
        "`EC.Name as CatName / EC.Code as CatCode` (category_emp, "
        "absent); cascade deletes :3219-3225 (Salary/Attend/Attendence/"
        "Loan/Leave_Ench/OverTime/EMPLOYEE); guards :3475-3495 "
        "(Salary created / Leave filled block delete)",
        "py": "ui/hr_members_ui.py:292-294 EmployeeAPI insert/update; "
        "core/hr_masters.py:233 Employee browse; category codes come "
        "from EmpCategory (core/hr_masters.py:54-91, exists = 4 rows) "
        "(tests=3)",
        "diff": "opener + CRUD ported and tested; the VB6 browse join points "
        "at absent category_emp while Python uses EmpCategory (VB6 "
        "itself also reads EmpCategory at :3026). BLOCKER: create "
        "category_emp or confirm EmpCategory is the intended "
        "replacement.",
    },
}

_SHELL_DEFS: set[str] | None = None


def resolve_bare_opener(expr: str) -> tuple[str, str] | None:
    """`parse_registry` only resolves `mod.func` dotted pairs; fall back to a
    def-name lookup in ui/shell.py for exprs like `_open_enviro` or
    `lambda w: _open_plan_master(w, p2, fm)`."""
    global _SHELL_DEFS  # noqa: PLW0603 - one-shot cache, deterministic
    if _SHELL_DEFS is None:
        tree = ast.parse(SHELL.read_text(encoding="utf-8"))
        _SHELL_DEFS = {n.name for n in ast.walk(tree) if isinstance(n, ast.FunctionDef)}
    names = re.findall(r"\b([A-Za-z_]\w*)\b", expr)
    # prefer names containing "open", then shortest - deterministic order
    for name in sorted(names, key=lambda s: (("open" not in s), len(s), s)):
        if "open" in name and name in _SHELL_DEFS:
            return "ui/shell.py", name
    return None


# ------------------------------------------------------------------- classify
def classify(row: dict) -> tuple[str, str]:
    """Return (status, cause).  Order = precedence documented in the module
    docstring and printed into the MD."""
    if row["is_separator"]:
        return "VB6-DEAD", (
            f'separator "-" has no dispatch '
            f"(MDIForm1.frm:{row['line']}) - not a functional gap"
        )
    if not row["visible"]:
        cause = f"hidden in VB6 menu (Visible = 0, MDIForm1.frm:{row['line']})"
        if row["vb6_target"]:
            cause += f"; VB6 would open {row['vb6_target']}"
        return "VB6-DEAD", cause
    if row["vb6_target"] is None:
        idx_txt = (
            f"index dispatch {row['ctrl']}[{row['idx']}] "
            f"(MDIForm1.frm:{row['dispatch_line'] or row['line']}) "
            f"never names a form"
        )
        if row["vb6_index_note"]:
            idx_txt += f" [{row['vb6_index_note']}]"
        if row["vb6_caption_ref"] == "no caption-chain entry":
            cap_txt = "caption chain has no entry for this caption"
        else:
            cap_txt = f"caption chain {row['vb6_caption_ref']} names no form"
            if row["vb6_caption_note"]:
                cap_txt += f" [{row['vb6_caption_note']}]"
        return "VB6-DEAD", f"{idx_txt}; {cap_txt}"

    reg = row["registry_key"]
    if reg is None:
        return (
            "MISSING",
            "no registry key for caption or Python menu leaf "
            f"(VB6 {row['vb6_target']} in {row['vb6_frm_file'] or 'no .frm'}; "
            "ui/shell.py _form_registry has no matching caption)",
        )
    st = row["registry_status"]
    if st == "NONE":
        return (
            "MISSING",
            f"registry wired to None (ui/shell.py:{row['registry_lineno']}) - "
            f"VB6 opens {row['vb6_target']}, Python click is dead",
        )
    if st == "COMING_SOON":
        return (
            "MISSING",
            f"key wired to _coming_soon placeholder "
            f"(ui/shell.py:{row['registry_lineno']}) - no Python form port",
        )

    if row["missing_tables"]:
        miss = ", ".join(
            f"{t} ({row['table_status'].get(t, 'absent')})"
            for t in row["missing_tables"][:4]
        )
        more = (
            ""
            if len(row["missing_tables"]) <= 4
            else f" (+{len(row['missing_tables']) - 4})"
        )
        return "BLOCKED-TBL", (
            f"opener {st} but VB6 table(s) absent from sys.objects U+V: "
            f"{miss}{more} - extracted from {row['vb6_frm_file']} SQL literals"
        )

    # st starts with REAL
    if not row["registry_file"] or row["registry_func"] is None:
        return "PARTIAL", (
            f"registry REAL but opener not resolvable from expr "
            f"(ui/shell.py:{row['registry_lineno']})"
        )
    if row["registry_func_found"] is False:
        return "PARTIAL", (
            f"opener {row['registry_file']}:{row['registry_func']} "
            f"not found (ui/shell.py:{row['registry_lineno']})"
        )
    if not row["py_core"]:
        return "UI-ONLY", (
            f"form ported but {row['registry_file']} imports no domain core "
            f"module (only core/db or none) - SQL lives inline in the UI; "
            f"VB6 logic in {row['vb6_frm_file']}"
        )
    if row["matched_via"] != "caption":
        return "PARTIAL", (
            f"key {reg!r} only via {row['matched_via']} "
            f"(VB6 caption {row['caption']!r}) -> "
            f"{row['registry_file']}:{row['registry_func']}"
        )
    dd = row["deep_dive"]
    if dd and dd.get("forces_partial") == "yes":
        return "PARTIAL", dd["diff"]
    if not row["test_refs"]:
        return "PARTIAL", (
            f"wired ({row['registry_file']}:{row['registry_func']} + "
            f"core {', '.join(row['py_core'])}) but no test under "
            f"HMS_py/tests references caption or ui module - VB6 behaviour "
            f"unverified"
        )
    tail = (
        f" (import-conditional, else {row['registry_ast_status'].split('else ')[-1].rstrip(')')})"
        if "else " in row["registry_ast_status"]
        else ""
    )
    return "DONE", (
        f"registry {st.split(' ')[0]} opener "
        f"{row['registry_file']}:{row['registry_func']}{tail}"
    )


# ---------------------------------------------------------------------- build
def build_rows() -> tuple[list[dict], dict]:
    leaves = menu_tree()
    vis = sum(1 for l in leaves if l["visible"])
    assert len(leaves) == EXPECT["leaves"], (
        f"leaves {len(leaves)} != {EXPECT['leaves']}"
    )
    assert vis == EXPECT["visible"], f"visible {vis} != {EXPECT['visible']}"
    assert len(leaves) - vis == EXPECT["hidden"]

    idx_forms, idx_notes = index_dispatch({l["ctrl"] for l in leaves})
    chains = caption_chains()
    reg_ast = B.parse_registry()
    runt, runt_note = runtime_registry()
    reg_by_norm = {B._norm(k): k for k in reg_ast}
    menu = B.python_menu_leaves()
    menu_by_norm = {B._norm(c): c for c in menu}
    db_set, db_note = db_tables()
    db_reachable = db_set is not None

    rows: list[dict] = []
    for n, leaf in enumerate(leaves, 1):
        idx_entry = idx_forms.get(leaf["ctrl"], {}).get(leaf["idx"])
        idx_form, idx_line = idx_entry if idx_entry else (None, None)
        cap = chains.get(leaf["caption"])
        cap_form = cap["form"] if cap else None
        target = cap_form or idx_form
        frm_file = B.find_frm(target)
        tables = tables_in_form(frm_file)
        missing = (
            [
                t
                for t in tables
                if len(t) >= 4 and t.lower() not in {x.lower() for x in db_set}
            ]
            if db_reachable
            else []
        )

        py_leaf = menu_by_norm.get(B._norm(leaf["caption"]))
        key = None
        via = "caption"
        if leaf["caption"] in reg_ast:
            key = leaf["caption"]
        elif py_leaf and py_leaf in reg_ast:
            key, via = py_leaf, "menu-alias"
        else:
            key = reg_by_norm.get(B._norm(leaf["caption"]))
            if key is not None:
                via = "registry-norm-alias"
        ast_status = reg_ast[key]["status"] if key else None
        runtime_status = (runt or {}).get(key)
        status = runtime_status if runtime_status is not None else ast_status

        r_file = reg_ast[key]["file"] if key else None
        r_func = reg_ast[key]["func"] if key else None
        r_found = reg_ast[key].get("func_found") if key else None
        if key and (not r_file or r_func is None):
            hit = resolve_bare_opener(reg_ast[key]["expr"])
            if hit:
                r_file, r_func, r_found = hit[0], hit[1], True

        row = {
            "n": n,
            "section": leaf["section"],
            "ctrl": leaf["ctrl"],
            "idx": leaf["idx"],
            "caption": leaf["caption"],
            "visible": leaf["visible"],
            "line": leaf["line"],
            "is_separator": leaf["is_separator"],
            "vb6_index_form": idx_form,
            "vb6_index_line": idx_line,
            "vb6_index_note": idx_notes.get((leaf["ctrl"], leaf["idx"])),
            "vb6_caption_form": cap_form,
            "vb6_caption_ref": (
                f"{cap['file']}:{cap['line']} ({cap['kind']})"
                if cap
                else "no caption-chain entry"
            ),
            "vb6_caption_note": cap["note"] if cap else None,
            "vb6_target": target,
            "vb6_conflict": (
                f"index->{idx_form} vs caption->{cap_form}"
                if idx_form and cap_form and idx_form != cap_form
                else None
            ),
            "vb6_frm_file": frm_file,
            "vb6_tables": tables,
            "missing_tables": missing,
            "py_menu_leaf": py_leaf,
            "registry_key": key,
            "matched_via": via,
            "registry_ast_status": ast_status,
            "registry_status": status,
            "registry_runtime_status": runtime_status,
            "registry_lineno": reg_ast[key]["lineno"] if key else None,
            "registry_file": r_file,
            "registry_func": r_func,
            "registry_func_found": r_found,
            "db_reachable": db_reachable,
        }
        row["dispatch_line"] = idx_line or leaf["line"]
        row["caption_chain_ref"] = row["vb6_caption_ref"]
        row["py_ui"] = f"{r_file}:{r_func}" if r_file and r_func else None
        row["py_core"] = domain_core(r_file)
        row["test_refs"] = test_refs(leaf["caption"], key, r_file)
        row["deep_dive"] = DEEP_DIVES.get(leaf["caption"])
        rows.append(row)

    # one COUNT(*) probe pass for every present table of every leaf
    db_lower = {t.lower() for t in db_set} if db_reachable else set()
    present: set[str] = set()
    for row in rows:
        if db_reachable:
            present.update(t for t in row["vb6_tables"] if t.lower() in db_lower)
    counts = probe_row_counts(present, db_set or set())
    # ponytail: probe keys are DB casing, vb6_tables keep VB6 casing — look up
    # case-insensitively or every case-mismatched row serialises as null.
    counts_ci = {k.lower(): v for k, v in counts.items()}
    for row in rows:
        row["table_status"] = {
            t: (
                counts_ci.get(t.lower())
                if db_reachable and t.lower() in db_lower
                else ("absent" if db_reachable else "db unreachable")
            )
            for t in row["vb6_tables"]
            if len(t) >= 4
        }
        row["status"], row["cause"] = classify(row)
        assert row["status"] in STATUSES, row["status"]

    meta = {
        "leaves": len(leaves),
        "visible": vis,
        "hidden": len(leaves) - vis,
        "db_reachable": db_reachable,
        "db": db_note,
        "db_tables": len(db_set) if db_set else 0,
        "row_counts": len(counts),
        "runtime_registry": "live" if runt is not None else f"unavailable: {runt_note}",
        "registry_keys": len(reg_ast),
        "deep_dives": len(DEEP_DIVES),
        "sources": {
            "menu": "FODER/MDIForm1.frm:494-1099",
            "index_dispatch": "FODER/MDIForm1.frm *_Click(Index As Integer)",
            "caption_chains": "FODER/ModuleAdd.bas + FODER/HMS.bas (var_188 If + Loop Until)",
            "registry": "HMS_py/ui/shell.py _form_registry() (AST + live)",
            "python_menu": "HMS_py/core/mdi_menu.json (&Main Setup)",
            "tables": "sys.objects U+V via HMS_py/core/db.py (best effort)",
        },
    }
    return rows, meta


def rules() -> list[str]:
    return [
        '1. `VB6-DEAD` - hidden in VB6 (`Visible = 0`), the `"-"` separator, or '
        "neither dispatch path names a form (index `_Click` branch AND caption "
        "chain entry). VB6 itself cannot reach it.",
        "2. `MISSING` - no registry key, key wired to `None` (dead click), or key "
        "wired to a `_coming_soon()` placeholder: no Python form port exists.",
        "3. `BLOCKED-TBL` - a real opener exists but at least one VB6-referenced "
        "table of the target `.frm` is absent from `sys.objects` (U+V).  Empty "
        "(0 rows) is NOT blocked - per-table state is `absent` / `empty` / "
        "`N rows`.",
        "4. `UI-ONLY` - the form is ported but its `ui/` file imports no domain "
        "core module (`HMS_py.core.*` other than `db`): queries live inline in "
        "the UI, so there is no core layer to diff against.",
        "5. `PARTIAL` - wired but deviates: (a) a curated `DEEP_DIVES` logic diff "
        "with file:line on both sides, (b) registry key reachable only via "
        "menu/norm alias (VB6 caption != key), (c) opener unresolvable / func "
        "not found, or (d) no test under `HMS_py/tests/` references the caption "
        "or the ui module (wired, VB6 behaviour unverified).",
        "6. `DONE` - real opener + domain core module + all VB6 tables present + "
        "test coverage + no known diff.",
        "",
        "Precedence: separator/hidden/no-target -> MISSING -> BLOCKED-TBL -> "
        "UI-ONLY -> PARTIAL -> DONE.",
    ]


def _cell(s: str, limit: int = 90) -> str:
    """Markdown table cell: collapse newlines/pipes, truncate with marker."""
    t = re.sub(r"\s+", " ", str(s)).replace("|", "/")
    return t if len(t) <= limit else t[: limit - 1] + "…"


def _vb6_evidence(r: dict) -> str:
    """Form/dispatch evidence: index dispatch -> form + caption-chain ref."""
    bits: list[str] = []
    if r["vb6_index_form"]:
        bits.append(f"idx->{r['vb6_index_form']} (MDIForm1.frm:{r['vb6_index_line']})")
    elif r["vb6_index_note"]:
        bits.append(f"idx no-form [{r['vb6_index_note']}]")
    else:
        bits.append("idx->none")
    if r["vb6_caption_form"]:
        bits.append(f"chain->{r['vb6_caption_form']} ({r['vb6_caption_ref']})")
    if r["vb6_conflict"]:
        bits.append(f"CONFLICT: {r['vb6_conflict']}")
    return "; ".join(bits)


def _db_state(r: dict) -> str:
    if not r["vb6_tables"]:
        return "no SQL tables in target .frm"
    if not r["db_reachable"]:
        return "DB unreachable - table evidence skipped"
    return "; ".join(
        f"{t}: {r['table_status'].get(t, 'absent')}" for t in r["vb6_tables"]
    )


def write_outputs(rows: list[dict], meta: dict) -> None:
    dist: dict[str, int] = {s: 0 for s in STATUSES}
    for r in rows:
        dist[r["status"]] += 1

    lines: list[str] = []
    w = lines.append
    w("# MAIN SETUP - VB6 to Python SIDE BY SIDE")
    w("")
    w(f"Report date: {date.today().isoformat()}")
    w(
        "Generator: `& .\\.venv\\Scripts\\python.exe "
        "HMS_py\\tools\\mainsetup_side_by_side.py`"
    )
    w("Machine-readable twin: `_qa/mainsetup_side_by_side.json`.")
    w(
        "Status counts: "
        + " | ".join(f"{s} = **{dist[s]}**" for s in STATUSES)
        + f"  (leaves {meta['leaves']}, visible {meta['visible']}, "
        f"hidden {meta['hidden']})"
    )
    w("")
    w("## Status rules")
    w("")
    for r in rules():
        w(
            r
            if not r.startswith(("1.", "2.", "3.", "4.", "5.", "6.", "Precedence"))
            else f"- {r}"
        )
    w("")
    w("## Summary")
    w("")
    w(
        f"- VB6 Main Setup leaves: **{meta['leaves']}** "
        f"({meta['visible']} visible, {meta['hidden']} hidden)"
    )
    w("- Status: " + ", ".join(f"**{s}** {dist[s]}" for s in STATUSES))
    w(
        f"- Registry keys parsed: {meta['registry_keys']} "
        f"(live `_form_registry()`: {meta['runtime_registry']})"
    )
    w(
        f"- Database: {meta['db']} - "
        + (
            f"{meta['db_tables']} tables; row counts probed for "
            f"{meta['row_counts']} distinct VB6-referenced present tables "
            "(absent / empty / N rows)"
            if meta["db_reachable"]
            else "UNREACHABLE (BLOCKED-TBL not claimed)"
        )
    )
    w(
        "- Deep-dive evidence entries: "
        f"{meta['deep_dives']} (curated file:line logic diffs in "
        "`DEEP_DIVES`, rendered in Deep dive below)"
    )
    w("")
    w("## Rows")
    w("")
    section = None
    for r in rows:
        if r["section"] != section:
            section = r["section"]
            w(f"### {section}")
            w("")
            w(
                "| VB6 leaf | VB6 form/dispatch evidence | VB6 tables | DB status "
                "| Python UI | Python core | registry | test | Status |"
            )
            w("|---|---|---|---|---|---|---|---|---|")
        leaf = f"{r['ctrl']}[{r['idx']}] {r['caption']}"
        if not r["visible"]:
            leaf += " [hidden]"
        if r["is_separator"]:
            leaf += " [separator]"
        tables = ", ".join(r["vb6_tables"]) or "-"
        py_ui = (
            f"`{r['registry_file']}:{r['registry_func']}`"
            if r["registry_file"] and r["registry_func"]
            else "**no resolvable opener**"
        )
        core = (
            ", ".join(f"`core/{m}`" for m in r["py_core"])
            if r["py_core"]
            else "**none (inline in UI)**"
        )
        reg = (
            f"`{r['registry_key']}` {r['registry_status']} "
            f"(shell.py:{r['registry_lineno']})"
            if r["registry_key"]
            else "**(no key)**"
        )
        test = (
            ", ".join(f"`{h}`" for h in r["test_refs"][:3])
            + (f" (+{len(r['test_refs']) - 3})" if len(r["test_refs"]) > 3 else "")
            if r["test_refs"]
            else "**no test**"
        )
        w(
            f"| {_cell(leaf)} | {_cell(_vb6_evidence(r))} | {_cell(tables)} | "
            f"{_cell(_db_state(r), 120)} | {py_ui} | {core} | {_cell(reg)} | "
            f"{_cell(test, 70)} | **{r['status']}** |"
        )
    w("")

    non_done = sorted(
        (r for r in rows if r["status"] != "DONE"),
        key=lambda r: (STATUSES.index(r["status"]), r["n"]),
    )
    worst = non_done[:15]
    w("## Deep dive - 15 worst non-DONE leaves")
    w("")
    w(
        "Ranked by status severity (MISSING > UI-ONLY > PARTIAL > BLOCKED-TBL > "
        "VB6-DEAD) then menu order.  Leaves with a curated `DEEP_DIVES` entry "
        "carry the concrete logic diff; the rest carry their classification "
        "evidence with file:line on both sides."
    )
    w("")
    for r in worst:
        vb6 = (
            f"VB6: {r['vb6_frm_file'] or 'no .frm'}"
            f"(menu MDIForm1.frm:{r['line']}, dispatch "
            f"MDIForm1.frm:{r['dispatch_line']})"
        )
        py = (
            f"Python: ui/shell.py:{r['registry_lineno']}"
            f" -> {r['registry_file'] or 'unresolved'}"
            f"{':' + str(r['registry_func']) if r['registry_func'] else ''}"
            + (
                f"; core {', '.join('core/' + m for m in r['py_core'])}"
                if r["py_core"]
                else "; core none"
            )
        )
        w(f"- **[{r['ctrl']}[{r['idx']}]] {r['caption']}** - `{r['status']}`")
        w(f"  - cause: {r['cause']}")
        w(f"  - {vb6}")
        w(f"  - {py}")
        if r["deep_dive"]:
            dd = r["deep_dive"]
            w(f"  - diff: {dd['diff']}")
            w(f"  - evidence: VB6 {dd['vb6']} | Python {dd['py']}")
        if r["status"] == "BLOCKED-TBL" and r["table_status"]:
            w(f"  - DB: {_db_state(r)}")
        if r["test_refs"]:
            w(f"  - tests: {', '.join(r['test_refs'][:3])}")
    w("")

    gaps = non_done
    w(f"## GAPS ({len(gaps)} non-DONE leaves)")
    w("")
    for r in gaps:
        vb6_ref = (
            f"VB6 {r['vb6_frm_file'] or 'no .frm'}"
            f"(MDIForm1.frm:{r['line']}"
            + (
                f", dispatch MDIForm1.frm:{r['dispatch_line']}"
                if r["dispatch_line"] and r["dispatch_line"] != r["line"]
                else ""
            )
            + ")"
        )
        py_ref = (
            f"Python ui/shell.py:{r['registry_lineno']} -> "
            + (
                f"{r['registry_file']}:{r['registry_func']}"
                if r["registry_file"] and r["registry_func"]
                else "unresolved opener"
            )
            + (
                f"; core {', '.join('core/' + m for m in r['py_core'])}"
                if r["py_core"]
                else "; core none"
            )
            + (
                f"; tests {', '.join(r['test_refs'][:2])}"
                if r["test_refs"]
                else "; no test"
            )
        )
        w(
            f"- `{r['section']}` / [{r['ctrl']}[{r['idx']}]] {r['caption']} -> "
            f"**{r['status']}** - {r['cause']}"
        )
        w(f"  - {vb6_ref} | {py_ref}")
    w("")
    w("## Verification")
    w("")
    w("```")
    w(
        f"leaves={meta['leaves']} (expect {EXPECT['leaves']})  "
        f"visible={meta['visible']} (expect {EXPECT['visible']})  "
        f"hidden={meta['hidden']} (expect {EXPECT['hidden']})"
    )
    w("status vocabulary: " + " ".join(STATUSES))
    w(
        "re-run rewrites _qa/mainsetup_side_by_side.json byte-identical "
        "(no timestamps, sort_keys); this MD differs only in its Report date "
        "line"
    )
    w("```")
    w("")

    OUT_MD.write_text("\n".join(lines), encoding="utf-8")
    payload = {"meta": meta, "rows": rows}
    OUT_JSON.write_text(
        json.dumps(payload, indent=1, sort_keys=True, ensure_ascii=True) + "\n",
        encoding="utf-8",
    )

    print(f"WROTE {OUT_MD.relative_to(REPO)}")
    print(f"WROTE {OUT_JSON.relative_to(REPO)}")
    print(f"leaves={meta['leaves']} visible={meta['visible']} hidden={meta['hidden']}")
    print("status: " + "  ".join(f"{s}={dist[s]}" for s in STATUSES))
    print(f"db: {meta['db']} reachable={meta['db_reachable']}")
    print(f"row-count probes: {meta['row_counts']}")
    print(f"deep-dive entries: {meta['deep_dives']}")
    print(f"runtime registry: {meta['runtime_registry']}")
    print(f"GAPS ({len(gaps)}):")
    for r in gaps:
        print(
            f"  {r['section']} | [{r['ctrl']}[{r['idx']}]] {r['caption']} -> "
            f"{r['status']} | {r['cause']}"
        )


def main() -> int:
    rows, meta = build_rows()
    write_outputs(rows, meta)
    return 0


if __name__ == "__main__":
    sys.exit(main())
