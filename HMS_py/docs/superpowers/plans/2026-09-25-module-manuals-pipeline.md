# HMS Module-Wise Manual + Test + Screenshot Pipeline — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Ek reusable pipeline banakar pilot module (Front Office) ka complete manual package (run/test proof + DB workflow + MenuHelp Master/Op/Reports split + live screenshots) deliver karna, phir same template se baaki 13 modules.

**Architecture:** `tools/manual_pipeline/` me 4 CLI scripts + ek shared `modules_map.py` config (menuHelp Module_Name groups, core files, registry leaves). Scripts: logic collector (DB read-only → `_logic.json`), test runner (4 layers → `TEST_RESULTS.md`), live-GUI screenshot capturer (real PyQt6 windows, watchdog timer for modals), manual completeness checker. Output `HMS_py/MODULE_MANUALS_2026/` me module folders.

**Tech Stack:** Python 3.14, PyQt6 (live GUI + QTest waits), pyodbc/`core.db` (Moondata2627, Windows Auth), pytest, PIL (image validation), win32gui (fallback capture).

**Spec:** `docs/superpowers/specs/2026-09-25-module-manuals-design.md`

## Global Constraints

- Repo root: `C:\Users\PC\Desktop\New folder (3)\png`; package: `HMS_py/`; tests run from `png\HMS_py`.
- Output root: `HMS_py/MODULE_MANUALS_2026/` (i.e. `png\HMS_py\MODULE_MANUALS_2026\`). Existing 3 manual families (`HMS_LogicWise_Manual_2026`, `HMS_MenuHelp_Wise_MasterOpReports`, `HMS_MIGRATION_READY_KIT`) me koi badlav nahi.
- DB: `Moondata2627` @ Localhost, Windows Auth, 283 tables, `menuHelp` 9212 rows. Schema me ZERO change — sirf reads; writes sirf existing test fixtures (rollback/snapshot-restore) ke through.
- Login creds: `ADITYA` / `112233` (UserMast se verified, ActiveYN=Y). Lockout: 5 attempts / 15 min — wrong creds kabhi brute-force mat karo.
- Screenshots LIVE desktop session me hote hain (`QT_QPA_PLATFORM=offscreen` forbidden); capture run ke dauran windows screen pe dikhenge — expected.
- **No git commits** (user ne explicitly nahi kaha).
- Python 3.14.6, PyQt6, pyodbc, Pillow, pytest sab installed hain.

## Review Focus

1. **Offscreen env leak capture karta hai** (blank/no window) — capture must refuse to run under offscreen; test: `_assert_live_gui` raises under monkeypatched `QT_QPA_PLATFORM=offscreen`. → Task 5.
2. **Modal `.exec()` forms capture script ko hang kar sakte hain** (`Reservation/Cancellation` jaise leaves) — watchdog QTimer must capture+close inside nested loop; verification: capture run includes `--leaf-timeout` and reports per-leaf status, never blocks > timeout. → Task 5.
3. **DB script tests snapshot→restore karte hain, rollback nahi** (`test_enviro` update→restore) — agar beech me crash ho to data badal reh sakta hai; step: pre/post `Enviro` row checksum compare after L2c. → Task 4.
4. **menuHelp rows classification me silently drop ho sakti hain** — classify must return `other` bucket and log its count; test: fixture row with unknown caption lands in `other`, not dropped. → Task 3.
5. **Blank screenshots** (`_qa/kanpur_12..17.png` = 107 B history) — `validate_image` must reject flat images; test: synthetic white PNG rejected, noise PNG accepted. → Task 5.

---

### Task 1: Folder scaffold + RUN_TEST_LOG skeleton

**Files:**
- Create: `HMS_py/MODULE_MANUALS_2026/00_Instructions/`, `00_GLOBAL/`, `04_FrontOffice/{screenshots,01_Masters,02_Operations,03_Reports}/` (+ `screenshots/` inside each of the 3 layer dirs)
- Create: `HMS_py/MODULE_MANUALS_2026/00_GLOBAL/RUN_TEST_LOG.md`
- Create: `HMS_py/tools/__init__.py` (empty), `HMS_py/tools/manual_pipeline/__init__.py` (empty)

**Interfaces:**
- Produces: directory layout jo baaki sab tasks use karte hain; `MODULE_MANUALS_2026` root path constant ke roop me.

- [ ] **Step 1: Dirs banao**

```powershell
$root = "C:\Users\PC\Desktop\New folder (3)\png\HMS_py\MODULE_MANUALS_2026"
@("00_Instructions","00_GLOBAL",
  "04_FrontOffice/screenshots","04_FrontOffice/01_Masters/screenshots",
  "04_FrontOffice/02_Operations/screenshots","04_FrontOffice/03_Reports/screenshots"
) | ForEach-Object { New-Item -ItemType Directory -Force -Path (Join-Path $root $_) | Out-Null }
New-Item -ItemType File -Force -Path "C:\Users\PC\Desktop\New folder (3)\png\HMS_py\tools\__init__.py" | Out-Null
New-Item -ItemType File -Force -Path "C:\Users\PC\Desktop\New folder (3)\png\HMS_py\tools\manual_pipeline\__init__.py" | Out-Null
```

- [ ] **Step 2: RUN_TEST_LOG.md skeleton likho**

```markdown
# RUN_TEST_LOG — cumulative run/test proof
Format: one entry per run: ISO timestamp | layer | command | exit | summary | notes
(no entries yet — Task 4 first run yahan append karegi)
```

Path: `HMS_py/MODULE_MANUALS_2026/00_GLOBAL/RUN_TEST_LOG.md`

- [ ] **Step 3: Verify**

```powershell
Test-Path "$root\04_FrontOffice\01_Masters\screenshots"   # True
python -c "import sys; sys.path.insert(0, r'C:\Users\PC\Desktop\New folder (3)\png'); import HMS_py.tools.manual_pipeline; print('pkg ok')"
```

Expected: `True` + `pkg ok`.

---

### Task 2: `modules_map.py` (shared config, TDD)

**Files:**
- Test: `HMS_py/tests/unit/test_manual_pipeline.py`
- Create: `HMS_py/tools/manual_pipeline/modules_map.py`

**Interfaces:**
- Produces: `Module` dataclass + `MODULES: list[Module]` + `get(key_or_no) -> Module` — Tasks 3/4/5/11 isi se padhte hain.
- `Module` fields: `key: str`, `no: int`, `name: str`, `sidebar: str`, `module_names: tuple[str, ...]`, `master_modules: tuple[str, ...]`, `core_files: tuple[str, ...]`, `leaves: dict[str, list[str]]` (keys: `masters`, `operations`, `reports`).

- [ ] **Step 1: Failing tests likho** — `HMS_py/tests/unit/test_manual_pipeline.py`:

```python
"""Manual pipeline unit tests (no DB, no GUI)."""
import pathlib
import sys

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parents[2]))

from HMS_py.tools.manual_pipeline import modules_map as mm


def test_fourteen_modules_stable_numbering():
    assert [m.no for m in mm.MODULES] == list(range(1, 15))


def test_front_office_entry_complete():
    fo = mm.get("04_FrontOffice")
    assert fo.no == 4
    assert fo.sidebar == "front office"
    assert "FDOForms" in fo.module_names
    assert "FDORep" in fo.module_names
    assert "checkin" in fo.core_files
    assert "Check In" in fo.leaves["operations"]
    assert "Room Status" in fo.leaves["reports"]
    assert "Guest Profile" in fo.leaves["masters"]


def test_get_by_key_and_number():
    assert mm.get(4).key == "04_FrontOffice"
    assert mm.get("07_POS").no == 7


def test_every_module_has_sidebar_and_layers():
    for m in mm.MODULES:
        assert m.sidebar, m.key
        assert set(m.leaves) == {"masters", "operations", "reports"}, m.key
        assert m.core_files, m.key
```

- [ ] **Step 2: Fail hona chahiye**

Run (workdir `png\HMS_py`): `python -m pytest tests/unit/test_manual_pipeline.py -q`
Expected: FAIL — `ModuleNotFoundError: ... modules_map`.

- [ ] **Step 3: Implement `modules_map.py`**

```python
"""Module registry: 14 manual modules -> menuHelp groups + code + leaves.

Source of truth:
- module_names: live menuHelp Module_Name values (discovered 2026-09-25,
  see 00_GLOBAL/MenuHelp_Module_Map.md) grouped per business module.
- sidebar: MainWindow._on_sidebar_click mod_target (menuHelp sidebar roots).
- leaves: curated registry leaf names (ui/shell.py _form_registry keys)
  for the Masters/Operations/Reports split + screenshot targets.
"""
from __future__ import annotations
from dataclasses import dataclass, field


@dataclass
class Module:
    key: str                      # folder name, e.g. "04_FrontOffice"
    no: int
    name: str                     # display name
    sidebar: str                  # sidebar mod_target (lowercase)
    module_names: tuple[str, ...] = ()    # menuHelp Module_Name values
    master_modules: tuple[str, ...] = ()  # Module_Name values = masters layer
    core_files: tuple[str, ...] = ()      # HMS_py/core/<name>.py (no ext)
    leaves: dict = field(default_factory=dict)


MODULES: list[Module] = [
    Module("01_Finance", 1, "Finance", "finance",
           module_names=("FA", "FAT", "fate", "farp", "FAREPORT", "fae",
                         "fame", "TallyRPTS", "TallyPOSRPT"),
           master_modules=("fame",),
           core_files=("fa_voucher", "fa_ledger_ops", "fa_masters_ops",
                       "fa_reports", "fa_tds_ops", "fa_enviro", "ledger",
                       "acgroup", "narr", "tdscat", "tdscerti", "tally_export"),
           leaves={"masters": ["Ledger Accounts Entry", "Group Accounts Entry",
                               "Global Narration", "T.D.S.Category Entry"],
                   "operations": ["Voucher Entry", "Bank Reconciliation",
                                  "Ledger Adjustment Entry"],
                   "reports": ["Trial Balance", "Ledger", "Cash Book"]}),
    Module("02_MainSetup", 2, "Main Setup", "main setup",
           module_names=("Mast", "GEN", "GENMas", "Mas", "HL", "HallM",
                         "CCenter", "CCenterMas", "Util", "UTL"),
           master_modules=("GENMas", "Mas", "HallM", "CCenterMas", "UTL"),
           core_files=("roommaster", "roomcategory", "plans", "company",
                       "guestprof", "depart", "unit", "item", "taxmaster",
                       "paymenttype", "marketsegment", "general_setup",
                       "sys_config", "sundry", "sundry_type"),
           leaves={"masters": ["Room Master", "Room Category", "Plan Master",
                               "Guest Profile", "Department Master"],
                   "operations": [],
                   "reports": []}),
    Module("03_Reservation", 3, "Reservation", "reservation",
           module_names=("Reserv", "ReservationEnt", "ResOpEnt", "ResStatusRpt",
                         "AdvRecdRpt", "ReservationMIS"),
           master_modules=(),
           core_files=("reservation", "booking", "guestprof"),
           leaves={"masters": [],
                   "operations": ["Booking Operations", "Reservation/Cancellation",
                                  "Reservation With History"],
                   "reports": ["Reservation Status Report", "Reservation Status",
                               "Reservation Status Arrival",
                               "Reservation Status In-House"]}),
    Module("04_FrontOffice", 4, "Front Office", "front office",
           module_names=("FrontDesk", "FDO", "FDOMenu", "FDOForms", "FDORep",
                         "FDOReports", "TFDOForms", "FDOMIS", "FDOMISRep",
                         "FDOTax", "FDOTaxr"),
           master_modules=(),
           core_files=("checkin", "checkout", "folio", "fo_ops", "guestprof",
                       "guest_folio", "guest_services", "roomstatus",
                       "room_occ", "account_merge", "booking", "reservation"),
           leaves={"masters": ["Guest Profile", "Guest Registration",
                               "Room Master", "Room Category", "Plan Master"],
                   "operations": ["Check In", "Check In Browser", "Check Out",
                                  "Booking Operations", "Room Change",
                                  "Folio Log", "Room Check Out",
                                  "Guest Services"],
                   "reports": ["Room Status", "Room Display",
                               "Reservation Status Report", "Guest History",
                               "Guest Ledger"]}),
    Module("05_HouseKeeping", 5, "House Keeping", "house keeping",
           module_names=("HouseKeeping", "TransHK", "HouseEnt", "ReportsHK",
                         "HouseREP"),
           master_modules=(),
           core_files=("roomstatus", "room_occ"),
           leaves={"masters": [], "operations": ["Room Status"],
                   "reports": []}),
    Module("06_Inventory", 6, "Inventory", "inventory",
           module_names=("Purchase", "Matop", "Purch", "MatLok", "MatStat",
                         "MatReports", "MatVat", "MatVatR"),
           master_modules=("MatLok", "MatStat"),
           core_files=("inventory", "purchase", "item", "unit", "sundry"),
           leaves={"masters": ["Indent Master"],
                   "operations": ["Purchase Receipt / GIN", "Stock Transfer"],
                   "reports": ["Stock Summary", "Stock Register",
                               "Purchase Register"]}),
    Module("07_POS", 7, "Point Of Sale", "point of sale",
           module_names=("Restaurant", "POSEnt", "POSMas", "POSRep",
                         "POSReports", "POSMIS", "MISREP", "PosTax",
                         "PosTaxRep"),
           master_modules=("POSMas",),
           core_files=("pos", "pos_entry", "pos_kot", "pos_sales", "pos_stock",
                       "pos_table", "pos_masters", "pos_hall", "pos_packing",
                       "pos_delivery", "pos_happy"),
           leaves={"masters": ["Restaurant/Outlet Master"],
                   "operations": ["KOT Entry", "Table Change Entry",
                                  "KOT Transfer"],
                   "reports": []}),
    Module("08_Banquet", 8, "Banquet", "banquet",
           module_names=("Banquet", "oper", "Hallop", "HallReport", "BanqRep",
                         "HallMIS", "BanqRepMIS", "HallTax", "HallTaxP"),
           master_modules=(),
           core_files=("hall_booking", "banquet_ops", "banquet_masters",
                       "venue", "packagemaster", "seasonmaster"),
           leaves={"masters": [], "operations": ["Hall Booking Operations"],
                   "reports": []}),
    Module("09_NightAudit", 9, "Night Audit", "night audit",
           module_names=("NightAudit", "NightAudito", "NightAuditoR",
                         "NightAuditR", "NightAuditRR", "NightAuditL",
                         "NightAuditLR", "NightAuditGST", "NightAuditGSTR",
                         "NightAuditMenu"),
           master_modules=(),
           core_files=("nightaudit", "year_end", "guest_folio", "folio"),
           leaves={"masters": [], "operations": ["Night Audit Log"],
                   "reports": ["Night Audit Reports"]}),
    Module("10_HRPayroll", 10, "HR & Payroll", "hr/payroll",
           module_names=("PR", "PRM", "PayRoll", "PayO", "PayOpr", "PayR",
                         "PayRep"),
           master_modules=("PRM",),
           core_files=("hr_masters", "hr_payroll"),
           leaves={"masters": ["Employee Master"],
                   "operations": ["HR Payroll Operations"], "reports": []}),
    Module("11_EPABX", 11, "EPABX", "extras",
           module_names=(),           # discovery step (Task 12) se fill hoga
           master_modules=(),
           core_files=("epabx_masters", "epabx_ops"),
           leaves={"masters": ["HMS_py - EPABX Masters"],
                   "operations": [], "reports": []}),
    Module("12_Messaging", 12, "Messaging", "extras",
           module_names=("SMSSETUP", "EXTSMSSETUP", "SMSOPR", "EXTSMSOPR",
                         "EXTRSMS", "EXTSMS"),
           master_modules=("SMSSETUP", "EXTSMSSETUP"),
           core_files=("sms_comm", "sms_enviro", "sms_http"),
           leaves={"masters": [], "operations": ["SMS Center"], "reports": []}),
    Module("13_MembersMgmt", 13, "Members Mgmt", "extras",
           module_names=("Mem", "MemMas", "MemOpr"),
           master_modules=("MemMas",),
           core_files=("members_masters", "member_billing",
                       "facility_billing"),
           leaves={"masters": [], "operations": ["Member Billing"],
                   "reports": []}),
    Module("14_SaleMarketing", 14, "Sale & Marketing", "extras",
           module_names=(),           # discovery step (Task 12)
           master_modules=(),
           core_files=("marketsegment", "businesssource", "guestprof"),
           leaves={"masters": [], "operations": [], "reports": []}),
]


def get(key_or_no) -> Module:
    """Module lookup by folder key ('04_FrontOffice') ya number (4)."""
    if isinstance(key_or_no, int):
        for m in MODULES:
            if m.no == key_or_no:
                return m
        raise KeyError(f"no module no={key_or_no}")
    for m in MODULES:
        if m.key == key_or_no:
            return m
    raise KeyError(f"no module key={key_or_no!r}")
```

- [ ] **Step 4: Test pass**

Run: `python -m pytest tests/unit/test_manual_pipeline.py -q`
Expected: `4 passed`.

- [ ] **Step 5: Core file existence sanity**

```powershell
python -c "import sys; sys.path.insert(0, r'C:\Users\PC\Desktop\New folder (3)\png'); import pathlib; from HMS_py.tools.manual_pipeline.modules_map import MODULES; miss=[(m.key,f) for m in MODULES for f in m.core_files if not (pathlib.Path(r'C:\Users\PC\Desktop\New folder (3)\png\HMS_py\core')/(f+'.py')).exists()]; print('missing:', miss)"
```

Expected: `missing: []` (jo missing aaye, `core_files` se hata do aur Step 4 dobara chalao).

---

### Task 3: `collect_logic.py` — menuHelp + code → `_logic.json` (TDD)

**Files:**
- Test: `HMS_py/tests/unit/test_manual_pipeline.py` (append)
- Test (live DB, read-only): `HMS_py/tests/database/test_collect_logic_live.py`
- Create: `HMS_py/tools/manual_pipeline/collect_logic.py`

**Interfaces:**
- Consumes: `modules_map.get()`, `HMS_py.core.menu_help` (`module_tree()`, `_norm_caption()`, `clear_cache()`).
- Produces:
  - `classify(rows: list[dict], mod: Module) -> dict` → `{"masters": [...], "operations": [...], "reports": [...], "other": [...], "hidden": [...]}` (row dict: `caption_disp`, `flag`, `param`, `module`, `opt1..4`).
  - `collect(module_key: str, username: str = "SA") -> dict` (poora `_logic.json` payload).
  - CLI: `python -m HMS_py.tools.manual_pipeline.collect_logic --module 04_FrontOffice [--out PATH] [--username SA]` → writes `<module>/_logic.json`, stdout me summary print.

- [ ] **Step 1: Failing unit tests** — `test_manual_pipeline.py` me append karo:

```python
def _row(caption, flag="E", module="FDOForms", opt1="1", opt2="2", opt3="0", opt4="0", param="AEDP"):
    return {"caption": caption.lower(), "caption_disp": caption, "flag": flag,
            "param": param, "module": module, "opt1": opt1, "opt2": opt2,
            "opt3": opt3, "opt4": opt4, "code": 0}


def test_classify_layers():
    from HMS_py.tools.manual_pipeline.collect_logic import classify
    fo = mm.get("04_FrontOffice")
    rows = [
        _row("Guest Profile"),              # curated master -> masters
        _row("Walk In Check In"),           # E, not master -> operations
        _row("Instant House Count", flag="R"),  # -> reports
        _row("Deleted Leaf", flag="V"),     # -> hidden
        _row("Some Unknown Leaf"),          # -> other (not dropped)
    ]
    out = classify(rows, fo)
    assert [r["caption_disp"] for r in out["masters"]] == ["Guest Profile"]
    assert [r["caption_disp"] for r in out["operations"]] == ["Walk In Check In"]
    assert [r["caption_disp"] for r in out["reports"]] == ["Instant House Count"]
    assert [r["caption_disp"] for r in out["hidden"]] == ["Deleted Leaf"]
    assert [r["caption_disp"] for r in out["other"]] == ["Some Unknown Leaf"]


def test_collect_payload_shape():
    from HMS_py.tools.manual_pipeline import collect_logic
    fo = mm.get("04_FrontOffice")
    rows = [_row("Guest Profile"), _row("Check In"),
            _row("Room Status", flag="R")]
    payload = collect_logic._build(fo, rows)
    assert payload["module"] == "04_FrontOffice"
    assert payload["menuhelp"]["masters"][0]["caption_disp"] == "Guest Profile"
    assert payload["registry_hits"]["operations"] == ["Check In"]
    assert payload["core_files"] == list(fo.core_files)
    assert "unclassified" in payload["menuhelp"]


def test_cli_writes_json(tmp_path):
    from HMS_py.tools.manual_pipeline import collect_logic
    # DB-free path: _build + write only
    fo = mm.get("04_FrontOffice")
    out = tmp_path / "_logic.json"
    collect_logic.write_json(fo, [], out)
    import json
    data = json.loads(out.read_text(encoding="utf-8"))
    assert data["module"] == "04_FrontOffice"
```

- [ ] **Step 2: Fail check**

Run: `python -m pytest tests/unit/test_manual_pipeline.py -q`
Expected: FAIL (ImportError: collect_logic).

- [ ] **Step 3: Implement `collect_logic.py`**

```python
"""MenuHelp + code -> per-module _logic.json (DB READ-ONLY).

Usage:
    python -m HMS_py.tools.manual_pipeline.collect_logic --module 04_FrontOffice
"""
from __future__ import annotations
import argparse
import json
import pathlib
import sys

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parents[3]))

from HMS_py.tools.manual_pipeline.modules_map import Module, get


def classify(rows: list[dict], mod: Module) -> dict:
    """Split menuHelp rows into Masters/Operations/Reports/hidden/other.

    Rules (spec §3 + HMS_MenuHelp_Wise README):
      flag R -> reports;  flag V -> hidden;
      normalized caption in curated leaves['masters'] OR module in
      master_modules -> masters;  caption in leaves['operations'] ->
      operations;  everything else -> other (counted, NEVER dropped).
    """
    from HMS_py.core.menu_help import _norm_caption
    master_caps = {_norm_caption(c) for c in mod.leaves.get("masters", [])}
    oper_caps = {_norm_caption(c) for c in mod.leaves.get("operations", [])}
    out = {"masters": [], "operations": [], "reports": [],
           "hidden": [], "other": []}
    for r in rows:
        flag = (r.get("flag") or "").upper()
        cap = r.get("caption") or ""
        if flag == "V":
            out["hidden"].append(r)
        elif flag == "R":
            out["reports"].append(r)
        elif cap in master_caps or r.get("module") in mod.master_modules:
            out["masters"].append(r)
        elif cap in oper_caps:
            out["operations"].append(r)
        else:
            out["other"].append(r)
    return out


def _registry_hits(mod: Module) -> dict:
    """Curated leaves jo actually shell registry me exist karte hain."""
    from HMS_py.ui.shell import _form_registry
    reg = {k.strip().lower() for k in _form_registry()}
    out = {}
    for layer, leaves in mod.leaves.items():
        out[layer] = [l for l in leaves if l.strip().lower() in reg]
    return out


def _build(mod: Module, rows: list[dict], registry_hits: dict | None = None) -> dict:
    layers = classify(rows, mod)
    return {
        "module": mod.key,
        "name": mod.name,
        "sidebar": mod.sidebar,
        "generated_by": "collect_logic.py",
        "menuhelp": {
            "masters": layers["masters"],
            "operations": layers["operations"],
            "reports": layers["reports"],
            "hidden": layers["hidden"],
            "unclassified": layers["other"],
            "counts": {k: len(v) for k, v in layers.items()},
        },
        "registry_hits": registry_hits if registry_hits is not None
                         else {"masters": [], "operations": [], "reports": []},
        "core_files": list(mod.core_files),
        "module_names": list(mod.module_names),
    }


def collect(module_key: str, username: str = "SA") -> dict:
    from HMS_py.core import menu_help as mh
    mod = get(module_key)
    mh.clear_cache()
    tree = mh.module_tree(username=username)
    rows: list[dict] = []
    for name in mod.module_names:
        rows.extend(tree.get(name, []))
    hits = _registry_hits(mod)
    return _build(mod, rows, registry_hits=hits)


def write_json(mod: Module, rows: list[dict], out_path: pathlib.Path,
               registry_hits: dict | None = None) -> None:
    payload = _build(mod, rows, registry_hits)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(json.dumps(payload, indent=2, ensure_ascii=False),
                        encoding="utf-8")


def main(argv: list[str] | None = None) -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--module", required=True, help="e.g. 04_FrontOffice")
    ap.add_argument("--username", default="SA")
    ap.add_argument("--out", default=None)
    a = ap.parse_args(argv)
    payload = collect(a.module, a.username)
    out = pathlib.Path(a.out) if a.out else (
        pathlib.Path(__file__).resolve().parents[3]
        / "MODULE_MANUALS_2026" / a.module / "_logic.json")
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(json.dumps(payload, indent=2, ensure_ascii=False),
                   encoding="utf-8")
    c = payload["menuhelp"]["counts"]
    print(f"{a.module}: masters={c['masters']} ops={c['operations']} "
          f"reports={c['reports']} hidden={c['hidden']} "
          f"other={c['other']} -> {out}")
    if c["other"]:
        print(f"NOTE: {c['other']} rows in 'other' bucket — manual me jaano")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
```

- [ ] **Step 4: Unit tests pass**

Run: `python -m pytest tests/unit/test_manual_pipeline.py -q`
Expected: `7 passed` (4 purane + 3 naye).

- [ ] **Step 5: Live-DB test likho** — `HMS_py/tests/database/test_collect_logic_live.py`:

```python
"""collect_logic against live menuHelp (READ-ONLY)."""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__))))))

from HMS_py.tools.manual_pipeline import collect_logic


def test_front_office_rows_found():
    payload = collect_logic.collect("04_FrontOffice", username="SA")
    counts = payload["menuhelp"]["counts"]
    total = sum(counts.values())
    assert total > 10, f"FO menuHelp rows too few: {counts}"
    assert counts["reports"] > 0, counts


def test_classification_no_drop():
    payload = collect_logic.collect("04_FrontOffice", username="SA")
    c = payload["menuhelp"]["counts"]
    # buckets me rows hain jo classify hue, unclassified alag count hota hai
    assert c["unclassified"] == len(payload["menuhelp"]["unclassified"])
    assert c["masters"] == len(payload["menuhelp"]["masters"])
```

- [ ] **Step 6: Live test chalao**

Run: `python -m pytest tests/database/test_collect_logic_live.py -q`
Expected: `2 passed` (DB read-only).

- [ ] **Step 7: CLI se FO `_logic.json` generate karo**

Run: `python -m HMS_py.tools.manual_pipeline.collect_logic --module 04_FrontOffice`
Expected: line `04_FrontOffice: masters=... ops=... reports=... ... -> ...\_logic.json` + file exists. Note printed `other` count (Task 7 manual isi ko document karegi).

---

### Task 4: `run_module_tests.py` — 4-layer test runner (TDD) + actual runs

**Files:**
- Test: `HMS_py/tests/unit/test_manual_pipeline.py` (append)
- Create: `HMS_py/tools/manual_pipeline/run_module_tests.py`

**Interfaces:**
- Consumes: pytest CLI, `modules_map.get()`.
- Produces:
  - `parse_pytest_summary(line: str) -> tuple[int, str] | None` — `(count, "passed"|"failed"|"error"|"skipped")`.
  - `run_layers(layers: list[str], cwd: pathlib.Path) -> list[dict]` — records `{layer, cmd, exit, summary, seconds}`.
  - `render_results(module_key: str, records: list[dict]) -> str` — markdown.
  - CLI: `python -m HMS_py.tools.manual_pipeline.run_module_tests --module 04_FrontOffice [--layers L1,L2,L2b,L2c,L3] [--no-run]`.
  - Writes `<module>/TEST_RESULTS.md`, appends entry to `00_GLOBAL/RUN_TEST_LOG.md`.

- [ ] **Step 1: Failing tests** — append to `test_manual_pipeline.py`:

```python
def test_parse_pytest_summary():
    from HMS_py.tools.manual_pipeline.run_module_tests import parse_pytest_summary
    assert parse_pytest_summary("284 passed in 17.14s") == (284, "passed")
    assert parse_pytest_summary("3 failed, 281 passed in 20.00s") == (3, "failed")
    assert parse_pytest_summary("4 passed in 0.14s") == (4, "passed")
    assert parse_pytest_summary("no tests ran") is None


def test_render_results_has_all_sections():
    from HMS_py.tools.manual_pipeline.run_module_tests import render_results
    records = [
        {"layer": "L1_unit", "cmd": "pytest tests/unit",
         "exit": 0, "summary": "284 passed in 17.14s", "seconds": 17.14},
        {"layer": "L3_ui", "cmd": "pytest ui tests",
         "exit": 1, "summary": "3 failed, 37 passed", "seconds": 9.0},
    ]
    md = render_results("04_FrontOffice", records)
    assert "# TEST_RESULTS — 04_FrontOffice" in md
    assert "L1_unit" in md and "L3_ui" in md
    assert "284 passed" in md
    assert "FAIL" in md          # exit != 0 layer clearly marked
    assert "| Layer |" in md     # summary table
```

- [ ] **Step 2: Fail check**

Run: `python -m pytest tests/unit/test_manual_pipeline.py -q`
Expected: FAIL (ImportError).

- [ ] **Step 3: Implement `run_module_tests.py`**

```python
"""4-layer test runner -> TEST_RESULTS.md + RUN_TEST_LOG.md append.

Layers:
  L1  unit (no DB)          pytest tests/unit
  L2  db pytest (rollback)  pytest tests/database
  L2b front-office flow     pytest tests/test_front_office.py
  L2c db script tests       python tests/database/<each main()-style file>
  L3  UI offscreen          pytest tests/test_wave_ui_forms.py tests/test_ui_walkthroughs.py

Usage:
  python -m HMS_py.tools.manual_pipeline.run_module_tests --module 04_FrontOffice
"""
from __future__ import annotations
import argparse
import datetime as dt
import pathlib
import re
import subprocess
import sys
import time

ROOT = pathlib.Path(__file__).resolve().parents[3]   # png\HMS_py
PKG_ROOT = ROOT.parent                                # png (sys.path entry)

SUMMARY_RE = re.compile(r"(\d+) (passed|failed|error|skipped)")

DB_SCRIPTS = [
    "tests/database/test_enviro.py",
    "tests/database/test_fa_voucher.py",
    "tests/database/test_inventory_registers.py",
    "tests/database/test_main_setup_plan.py",
    "tests/database/test_receive_payment.py",
    "tests/database/test_reports_engine.py",
    "tests/database/test_room_pk_fixes.py",
    "tests/database/test_scheme_tds.py",
    "tests/database/test_tally_export.py",
]

LAYER_CMDS: dict[str, list[str]] = {
    "L1": [sys.executable, "-m", "pytest", "tests/unit", "-q", "--tb=line"],
    "L2": [sys.executable, "-m", "pytest", "tests/database", "-q", "--tb=line"],
    "L2b": [sys.executable, "-m", "pytest", "tests/test_front_office.py",
            "-q", "--tb=line"],
    "L3": [sys.executable, "-m", "pytest", "tests/test_wave_ui_forms.py",
           "tests/test_ui_walkthroughs.py", "-q", "--tb=line"],
}


def parse_pytest_summary(line: str) -> tuple[int, str] | None:
    m = SUMMARY_RE.search(line or "")
    if not m:
        return None
    return int(m.group(1)), m.group(2)


def _tail_summary(text: str) -> str:
    for ln in reversed(text.strip().splitlines()):
        if parse_pytest_summary(ln):
            return ln.strip()
    last = text.strip().splitlines()
    return last[-1].strip() if last else "(no output)"


def _run(cmd: list[str], cwd: pathlib.Path, timeout: int = 900) -> dict:
    t0 = time.time()
    try:
        p = subprocess.run(cmd, cwd=str(cwd), capture_output=True,
                           text=True, timeout=timeout)
        out = (p.stdout or "") + (p.stderr or "")
        return {"exit": p.returncode, "out": out,
                "seconds": round(time.time() - t0, 1)}
    except subprocess.TimeoutExpired:
        return {"exit": 124, "out": "TIMEOUT", "seconds": timeout}


def run_layers(layers: list[str]) -> list[dict]:
    records: list[dict] = []
    for lay in layers:
        if lay == "L2c":
            for f in DB_SCRIPTS:
                r = _run([sys.executable, str(ROOT / f)], cwd=PKG_ROOT)
                records.append({
                    "layer": f"L2c:{pathlib.Path(f).stem}",
                    "cmd": f"python {f}",
                    "exit": r["exit"],
                    "summary": _tail_summary(r["out"]),
                    "seconds": r["seconds"],
                })
            continue
        cmd = LAYER_CMDS[lay]
        r = _run(cmd, cwd=ROOT)
        records.append({
            "layer": lay,
            "cmd": " ".join(c.replace(str(PKG_ROOT) + os_sep(), "")
                            for c in cmd[1:]),
            "exit": r["exit"],
            "summary": _tail_summary(r["out"]),
            "seconds": r["seconds"],
        })
    return records


def os_sep() -> str:
    return str(pathlib.Path(__file__).anchor)


def render_results(module_key: str, records: list[dict]) -> str:
    now = dt.datetime.now().isoformat(timespec="seconds")
    lines = [f"# TEST_RESULTS — {module_key}", "",
             f"Generated: {now}  |  Python {sys.version.split()[0]}  |  "
             f"DB: Moondata2627", "",
             "| Layer | Command | Exit | Result | Sec |",
             "|---|---|---|---|---|"]
    for r in records:
        status = "PASS" if r["exit"] == 0 else "FAIL"
        lines.append(f"| {r['layer']} | `{r['cmd']}` | {r['exit']} | "
                     f"{status}: {r['summary']} | {r['seconds']} |")
    lines += ["", "## Notes", "- FAIL layers rahe to unhe "
              "`00_GLOBAL/RUN_TEST_LOG.md` me known-issue note karo "
              "(silent skip nahi).", ""]
    return "\n".join(lines)


def append_run_log(records: list[dict]) -> None:
    log = ROOT / "MODULE_MANUALS_2026" / "00_GLOBAL" / "RUN_TEST_LOG.md"
    now = dt.datetime.now().isoformat(timespec="seconds")
    with log.open("a", encoding="utf-8") as fh:
        for r in records:
            status = "PASS" if r["exit"] == 0 else "FAIL"
            fh.write(f"{now} | {r['layer']} | {r['cmd']} | exit={r['exit']} "
                     f"| {status} {r['summary']} | {r['seconds']}s\n")


def main(argv: list[str] | None = None) -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--module", required=True)
    ap.add_argument("--layers", default="L1,L2,L2b,L2c,L3")
    a = ap.parse_args(argv)
    layers = [x.strip() for x in a.layers.split(",") if x.strip()]
    records = run_layers(layers)
    out = (ROOT / "MODULE_MANUALS_2026" / a.module / "TEST_RESULTS.md")
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(render_results(a.module, records), encoding="utf-8")
    append_run_log(records)
    fails = [r for r in records if r["exit"] != 0]
    print(f"wrote {out}  layers={len(records)} fails={len(fails)}")
    for r in fails:
        print(f"  FAIL {r['layer']}: {r['summary']}")
    return 1 if fails else 0


if __name__ == "__main__":
    raise SystemExit(main())
```

- [ ] **Step 4: Unit tests pass**

Run: `python -m pytest tests/unit/test_manual_pipeline.py -q`
Expected: `9 passed`.

- [ ] **Step 5: Preflight — L1 + L3 chalao (fast)**

```powershell
python -m HMS_py.tools.manual_pipeline.run_module_tests --module 04_FrontOffice --layers L1,L3
```

Expected: `wrote ...TEST_RESULTS.md layers=2 fails=0`; L1 = `284 passed`. L3 40 tests — koi fail ho to summary me dikhega (known-issue note Task 6 me).

- [ ] **Step 6: Pura 4-layer run**

```powershell
python -m HMS_py.tools.manual_pipeline.run_module_tests --module 04_FrontOffice
```

Expected: `layers=14` (L1, L2, L2b, 9×L2c, L3) + `TEST_RESULTS.md` + `RUN_TEST_LOG.md` me 14 lines. Fails = known issues (record karo, app code fix is plan ke bahar).

- [ ] **Step 7: Enviro restore-verify (Review Focus #3)**

```powershell
python -c "import sys; sys.path.insert(0, r'C:\Users\PC\Desktop\New folder (3)\png'); from HMS_py.core import db; r=db.query('SELECT TOKENPrint, CheckoutVar, FomBillCopies FROM Enviro'); print(r)"
```

Expected: `TOKENPrint='Yes'`-style original values (jaise pre-run the — `test_enviro` snapshot/restore). Agar restore fail dikhe → `RUN_TEST_LOG.md` me note + manually `UPDATE` se wapas mat karo, sirf document karo aur user ko batao.

---

### Task 5: `capture_module.py` — live GUI screenshots (TDD) + FO capture run

**Files:**
- Test: `HMS_py/tests/unit/test_manual_pipeline.py` (append)
- Create: `HMS_py/tools/manual_pipeline/capture_module.py`

**Interfaces:**
- Consumes: `modules_map.get()`, `shell.LoginDialog/CompanyDialog/MainWindow/apply_theme`, `core.auth.check_login`.
- Produces:
  - `validate_image(path, min_bytes=5000, min_unique_colors=64) -> bool`
  - `_assert_live_gui() -> None` (SystemExit under offscreen)
  - `capture_leaf(win, app, leaf: str, out_path: pathlib.Path) -> str` → `"ok" | "skipped_messagebox" | "failed" | "missing"`
  - `capture_module(module_key, out_dir) -> dict` manifest `{module, generated_at, items: [{leaf, layer, file, status}], failed: [...]}`.
  - CLI: `python -m HMS_py.tools.manual_pipeline.capture_module --module 04_FrontOffice [--username ADITYA --password 112233]`.

**Note:** ye script DESKTOP session me chalti hai — windows screen pe dikhenge, ~40-60s ke liye mouse/keyboard mat chalao.

- [ ] **Step 1: Failing tests** — append to `test_manual_pipeline.py`:

```python
def test_validate_image_rejects_blank_accepts_noise(tmp_path):
    from PIL import Image
    from HMS_py.tools.manual_pipeline.capture_module import validate_image
    blank = tmp_path / "blank.png"
    Image.new("RGB", (800, 600), (255, 255, 255)).save(blank)
    assert validate_image(blank) is False
    import random
    noise = tmp_path / "noise.png"
    im = Image.new("RGB", (800, 600))
    im.putdata([(random.randrange(256), random.randrange(256),
                 random.randrange(256)) for _ in range(800 * 600)])
    im.save(noise)
    assert validate_image(noise) is True


def test_validate_image_rejects_tiny(tmp_path):
    from HMS_py.tools.manual_pipeline.capture_module import validate_image
    tiny = tmp_path / "tiny.png"
    tiny.write_bytes(b"\x89PNG\r\n\x1a\n" + b"\x00" * 40)
    assert validate_image(tiny) is False


def test_assert_live_gui_refuses_offscreen(monkeypatch):
    from HMS_py.tools.manual_pipeline import capture_module as cm
    monkeypatch.setenv("QT_QPA_PLATFORM", "offscreen")
    try:
        cm._assert_live_gui()
        raised = False
    except SystemExit:
        raised = True
    assert raised
    monkeypatch.delenv("QT_QPA_PLATFORM", raising=False)
    monkeypatch.setenv("HMS_FORCE_HEADLESS", "1")
    try:
        cm._assert_live_gui()
        raised = False
    except SystemExit:
        raised = True
    assert raised
```

- [ ] **Step 2: Fail check**

Run: `python -m pytest tests/unit/test_manual_pipeline.py -q`
Expected: FAIL (ImportError).

- [ ] **Step 3: Implement `capture_module.py`**

```python
"""LIVE desktop screenshot capture (PyQt6 real windows, no offscreen).

Flow: login -> company -> MainWindow -> sidebar module -> open each leaf
(modal .exec() safe via watchdog QTimer) -> grab -> validate -> manifest.

Usage (on the desktop session, NOT over ssh/headless):
  python -m HMS_py.tools.manual_pipeline.capture_module --module 04_FrontOffice
"""
from __future__ import annotations
import argparse
import datetime as dt
import json
import os
import pathlib
import sys

ROOT = pathlib.Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT.parent))

DEFAULT_USER, DEFAULT_PASS = "ADITYA", "112233"   # verified 2026-09-25
LEAF_WAIT_MS = 900


def _assert_live_gui() -> None:
    if (os.environ.get("QT_QPA_PLATFORM") == "offscreen"
            or os.environ.get("HMS_FORCE_HEADLESS") == "1"
            or (not os.environ.get("DISPLAY") and os.name != "nt")):
        raise SystemExit(
            "capture_module needs a LIVE desktop session — unset "
            "QT_QPA_PLATFORM / HMS_FORCE_HEADLESS and run on the desktop.")


def validate_image(path: pathlib.Path, min_bytes: int = 5000,
                   min_unique_colors: int = 64) -> bool:
    """Blank/107-byte screenshots ko reject karo (Review Focus #5)."""
    from PIL import Image
    p = pathlib.Path(path)
    if not p.exists() or p.stat().st_size < min_bytes:
        return False
    try:
        im = Image.open(p).convert("RGB")
    except Exception:
        return False
    colors = im.getcolors(maxcolors=2_000_000)
    if colors is None:            # >2M unique colors = definitely not blank
        return True
    return len(colors) >= min_unique_colors


def _pick_target(app, win):
    from PyQt6.QtWidgets import QDialog, QMessageBox, QWidget
    best = None
    for w in app.topLevelWidgets():
        if not w.isVisible() or w is win:
            continue
        if isinstance(w, QMessageBox):
            return w          # message box hi top-most issue hai
        if isinstance(w, (QDialog, QWidget)):
            best = w
    return best


def _grab(widget, out_path: pathlib.Path) -> bool:
    pix = widget.grab()               # live rendering (real window)
    pix.save(str(out_path))
    if validate_image(out_path):
        return True
    # fallback: screen grab of window id (true screen capture)
    try:
        from PyQt6.QtGui import QGuiApplication
        screen = QGuiApplication.primaryScreen()
        wid = int(widget.winId())
        got = screen.grabWindow(wid)
        if not got.isNull():
            got.save(str(out_path))
            return validate_image(out_path)
    except Exception:
        pass
    return False


def _close_toplevels(app, win) -> None:
    from PyQt6.QtWidgets import QMessageBox
    for w in list(app.topLevelWidgets()):
        if w is win or not w.isVisible():
            continue
        try:
            if isinstance(w, QMessageBox):
                w.reject()
            else:
                w.close()
                w.reject() if hasattr(w, "reject") else None
        except Exception:
            pass


def capture_leaf(win, app, leaf: str, out_path: pathlib.Path) -> str:
    """Open registry leaf; modal (exec) + non-modal dono handle karte hain."""
    from PyQt6.QtCore import QTimer
    from PyQt6.QtTest import QTest
    from PyQt6.QtWidgets import QMessageBox

    if leaf.strip().lower() not in win._reg_ci:
        return "missing"
    state = {"status": "failed"}

    def _fire():
        target = _pick_target(app, win)
        if target is None:
            return
        if isinstance(target, QMessageBox):
            state["status"] = "skipped_messagebox"
        elif _grab(target, out_path):
            state["status"] = "ok"
        _close_toplevels(app, win)

    watchdog = QTimer()
    watchdog.setSingleShot(True)
    watchdog.timeout.connect(_fire)
    watchdog.start(LEAF_WAIT_MS)

    win._safe_open(leaf)              # modal leaf yahan block hota hai
    if state["status"] == "failed":
        QTest.qWait(LEAF_WAIT_MS + 500)
        if state["status"] == "failed":
            _fire()
    watchdog.stop()
    _close_toplevels(app, win)
    QTest.qWait(150)
    return state["status"]


def capture_module(module_key: str, out_dir: pathlib.Path,
                   username: str = DEFAULT_USER,
                   password: str = DEFAULT_PASS) -> dict:
    _assert_live_gui()
    os.environ["HMS_GUI"] = "1"
    os.environ.pop("QT_QPA_PLATFORM", None)

    from PyQt6.QtWidgets import QApplication, QDialog
    from PyQt6.QtTest import QTest
    from HMS_py.core import auth
    from HMS_py.ui import shell
    from HMS_py.tools.manual_pipeline.modules_map import get

    ok, msg = auth.check_login(username, password)   # EK hi attempt (lockout!)
    if not ok:
        raise SystemExit(f"login preflight failed: {msg}")

    mod = get(module_key)
    out_dir = pathlib.Path(out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    app = QApplication.instance() or QApplication([])
    shell.apply_theme(app)

    login = shell.LoginDialog()
    login.show()
    login.txtUser.setText(username)
    login.txtPass.setText(password)
    login.btnLogin.click()
    QTest.qWait(800)
    if login.isVisible():
        raise SystemExit(f"login dialog rejected: {login.lblMsg.text()}")

    comp = shell.CompanyDialog(username)
    comp.show()
    QTest.qWait(700)
    comp.tbl.selectRow(0)
    comp._do_login()
    QTest.qWait(400)
    if comp.isVisible() or not comp.selected:
        raise SystemExit("company select failed")

    win = shell.MainWindow(username, comp.selected)
    win.show()
    QTest.qWait(1800)

    # sidebar module navigation
    btn = next((b for b in win._side_buttons
                if (b.property("mod_target") or "").strip().lower()
                == mod.sidebar), None)
    if btn is None:
        raise SystemExit(f"sidebar target {mod.sidebar!r} not found")
    win._on_sidebar_click(mod.sidebar, btn)
    QTest.qWait(1200)
    _grab(win, out_dir / "00_shell_module.png")

    items, failed = [], []
    idx = 10
    for layer in ("masters", "operations", "reports"):
        for leaf in mod.leaves.get(layer, []):
            fname = f"{idx:02d}_{layer}_{leaf.replace('/', '-').replace(' ', '_')}.png"
            status = capture_leaf(win, app, leaf, out_dir / fname)
            items.append({"leaf": leaf, "layer": layer,
                          "file": fname, "status": status})
            if status not in ("ok", "skipped_messagebox"):
                failed.append(leaf)
            idx += 10

    manifest = {
        "module": module_key,
        "generated_at": dt.datetime.now().isoformat(timespec="seconds"),
        "sidebar": mod.sidebar,
        "items": items,
        "failed": failed,
        "shell": "00_shell_module.png",
    }
    (out_dir / "manifest.json").write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False), encoding="utf-8")
    win.close()
    return manifest


def main(argv: list[str] | None = None) -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--module", required=True)
    ap.add_argument("--out", default=None)
    ap.add_argument("--username", default=DEFAULT_USER)
    ap.add_argument("--password", default=DEFAULT_PASS)
    a = ap.parse_args(argv)
    out = pathlib.Path(a.out) if a.out else (
        ROOT / "MODULE_MANUALS_2026" / a.module / "screenshots")
    m = capture_module(a.module, out, a.username, a.password)
    print(f"captured {len(m['items'])} leaves, failed={m['failed']}")
    return 1 if m["failed"] else 0


if __name__ == "__main__":
    raise SystemExit(main())
```

- [ ] **Step 4: Unit tests pass (GUI ke bina)**

Run: `python -m pytest tests/unit/test_manual_pipeline.py -q`
Expected: `12 passed`.

- [ ] **Step 5: Live capture — FO shell + leaves**

```powershell
$env:QT_QPA_PLATFORM=$null; $env:HMS_FORCE_HEADLESS=$null
python -m HMS_py.tools.manual_pipeline.capture_module --module 04_FrontOffice
```

Expected: windows dikhenge (~40-60s) → `04_FrontOffice/screenshots/` me `00_shell_module.png` + per-leaf PNGs + `manifest.json`; `failed=[]` (jo leaf `missing`/`failed` ho use `registry_hits` se cross-check karo — leaf name typo fix karo `modules_map.py` me aur dobara chalao).

- [ ] **Step 6: Sab screenshots validate**

```powershell
python -c "import json,pathlib,sys; sys.path.insert(0, r'C:\Users\PC\Desktop\New folder (3)\png'); from HMS_py.tools.manual_pipeline.capture_module import validate_image; d=pathlib.Path(r'C:\Users\PC\Desktop\New folder (3)\png\HMS_py\MODULE_MANUALS_2026\04_FrontOffice\screenshots'); bad=[p.name for p in d.glob('*.png') if not validate_image(p)]; print('invalid:', bad)"
```

Expected: `invalid: []`. Agar koi aaye → woh leaf dobara capture karo (`--module 04_FrontOffice` repeat safe hai).

---

### Task 6: GLOBAL docs (MenuHelp map + DB workflow overview + master test plan)

**Files:**
- Create: `HMS_py/MODULE_MANUALS_2026/00_GLOBAL/MenuHelp_Module_Map.md`
- Create: `HMS_py/MODULE_MANUALS_2026/00_GLOBAL/DB_Workflow_Overview.md`
- Create: `HMS_py/MODULE_MANUALS_2026/00_GLOBAL/TEST_PLAN_MASTER.md`

**Interfaces:**
- Consumes: `modules_map.MODULES`, `menu_help.modules()/sidebar_modules()`, `collect_logic` output (any `other` counts), `TEST_RESULTS.md` (Task 4).

- [ ] **Step 1: MenuHelp_Module_Map.md**

Content source (live query — script se output lo aur table me paste karo):

```powershell
python -c "import sys; sys.path.insert(0, r'C:\Users\PC\Desktop\New folder (3)\png'); from HMS_py.core import menu_help as mh; import json; print(json.dumps(mh.modules())); print(json.dumps([s['name'] for s in mh.sidebar_modules()]))"
```

Markdown structure (fill with query output):

```markdown
# MenuHelp → Module Map (live, Moondata2627, 9212 rows)
## Sidebar roots (11)
<list from sidebar_modules()>

## Analysis.ini key 9 (15 entries) vs sidebar (11) — known mismatch
EPABX / Messaging / Members Mgmt / Sale & Marketing / Mall Management sidebar roots nahi hain
→ modules_map me inka sidebar='extras' rakha gaya hai; Module_Name grouping `modules()` se.
(dashboard/14_SaleMarketing ke module_names abhi khali = discovery pending, Task 12)

## Module_Name → manual folder (modules_map.MODULES table)
| # | Folder | sidebar | Module_Name groups | core files |

## Classification rules
flag R → Reports | flag V → hidden | curated master leaves/master_modules → Masters |
baki sab → Operations | unmatched → "other" (count logged per module)
```

- [ ] **Step 2: DB_Workflow_Overview.md**

Structure:

```markdown
# DB Workflow Overview (Moondata2627, 283 tables)
## Connection path
Analysis.ini [HMS] key1=Localhost key6=Moondata2627 key7=KK(site) → core/db.py load_config/connect (Windows Auth)
## Global transaction pattern (VB6 BeginTrans/Commit/Rollback faithful port)
- writes: cn.begin() → validate → INSERT/UPDATE → commit / except → rollback
- VNo race safety: db.next_vno(table, vtype, vprefix) with UPDLOCK,HOLDLOCK (README v0.1.1)
- site filter: LOGSITE_CODE HO-or-site pattern (README + fo_ops.py)
## Core ER groups (source: HMS_MIGRATION_READY_KIT/99_SHARED/ER_GROUPING.md agar exist, else query)
GuestProf↔GuestFolio↔PayCharge | Booking↔RoomOcc↔RoomMast | KOT↔Sale1/2 |
Purch1/2↔Stock↔ItemMast | Ledger/LedgerM | menuHelp/UserMast/UserPermission | Enviro (1 row config)
## Tables-per-module pointer
har module ka table list uske DATABASE.md me
```

ER_GROUPING.md existence check: `Test-Path ...\HMS_MIGRATION_READY_KIT\99_SHARED\ER_GROUPING.md` — exist kare to actual headings copy karo, na ho to `SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES` (283) ka grouped summary likho.

- [ ] **Step 3: TEST_PLAN_MASTER.md**

```markdown
# Master Test Plan (coverage matrix)
## Layers
L1 unit (284, no DB) | L2 db pytest (rollback fixture) | L2b FO flow | L2c db script tests (snapshot→restore) | L3 UI offscreen | L4 live capture (manifest + validate_image)
## Commands (exact)
<table from run_module_tests.LAYER_CMDS + capture CLI>
## Per-module matrix (fill as batches complete)
| Module | TEST_RESULTS.md | L4 manifest | Known issues |
| 04_FrontOffice | Task 4 | Task 5 | ... |
## Known issues log
(Task 4 run ke FAIL layers yahan list karo — no silent skips)
```

- [ ] **Step 4: Verify**

Run: 3 files exist + `Select-String -Path ...\00_GLOBAL\*.md -Pattern "TBD|TODO"` → kuch nahi.
Expected: koi match nahi.

---

### Task 7: Pilot manual — `README.md` + `DATABASE.md` (Front Office)

**Files:**
- Create: `HMS_py/MODULE_MANUALS_2026/04_FrontOffice/README.md`
- Create: `HMS_py/MODULE_MANUALS_2026/04_FrontOffice/DATABASE.md`

**Interfaces:**
- Consumes: `04_FrontOffice/_logic.json` (Task 3), `TEST_RESULTS.md` (Task 4), live DB schema queries, `core/checkin.py|checkout.py|folio.py|fo_ops.py` source.

- [ ] **Step 1: Schema facts nikalo** (read-only queries, output paste karne ke liye):

```powershell
@'
import sys; sys.path.insert(0, r"C:\Users\PC\Desktop\New folder (3)\png")
from HMS_py.core import db
for t in ["Booking","GuestFolio","PayCharge","RoomOcc","RoomMast","GuestProf"]:
    n = db.query(f"SELECT COUNT(*) FROM {t}")[0][0]
    print(t, n)
cols = db.query("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='RoomOcc' ORDER BY ORDINAL_POSITION")
print("RoomOcc cols:", [c[0] for c in cols])
'@ | Out-File "$env:TEMP\fo_schema.py" -Encoding utf8; python "$env:TEMP\fo_schema.py"
```

- [ ] **Step 2: README.md likho** — exact sections:

```markdown
# 04 — Front Office — Module Manual
## 1. Menu path (MenuHelp)
sidebar: "front office" | Module_Name groups: <_logic.json module_names> | leaf counts: <_logic.json counts table>
## 2. Workflow (menu → screen → action → DB write)
Step table: | # | Menu leaf (Flag) | Screen (FRONTEND.md §) | User action | Core function | Tables written |
(e.g. Check In → walkin entry → core.checkin save → GuestFolio/RoomOcc INSERT + RoomMast RoomStat)
## 3. Layers snapshot
Masters: <list> | Operations: <list> | Reports: <list> | Other(unclassified): <count + note>
## 4. Screenshot index
<manifest.json items table: file | leaf | layer>
## 5. Test status
link TEST_RESULTS.md + RUN_TEST_LOG summary line
## 6. Related docs
DATABASE.md, FRONTEND.md, BACKEND.md, TEST_PLAN.md, 01_Masters/, 02_Operations/, 03_Reports/
```

Workflow rows ke liye source: `core/fo_ops.py` docstrings (room_change/merge_charge/re_settlement), `core/checkin.py`, `core/checkout.py`, `core/folio.py` ke public functions padho aur har operation ka "Tables written" nikaalo (INSERT/UPDATE grep se).

- [ ] **Step 3: DATABASE.md likho** — exact sections:

```markdown
# 04 — Front Office — Database Workflow
## 1. Tables (this module)
| Table | Role | Key columns | Row count (live) | Used by |
(GuestProf, GuestFolio, PayCharge, RoomOcc, RoomMast, Booking, RoomBlockOut, RevMast, ForEx — Step 1 data)
## 2. Read flows (SELECT patterns)
2-3 real SELECTs code se (e.g. open_folio_by_room, free_rooms) with WHERE LOGSITE_CODE/site filter note
## 3. Write flows (transaction diagrams)
per operation: BeginTrans → validate → INSERT/UPDATE → Commit/Rollback
(room_change: RoomOcc new row + old checkout + GuestMessage + Booking.OccRoom + RoomMast dirty + PlanDetails re-link — README v0.1.2 ke faithful steps)
## 4. VNo / race safety
db.next_vno usage jo is module me hai (folio RC/REC, checkin next_folio)
## 5. MenuHelp permission check SQL
SELECT Param_Str FROM menuHelp WHERE UserName=? AND CompCode=? AND [Option]=? (booking._check_menu_help pattern)
```

- [ ] **Step 4: Verify sections**

```powershell
$m="C:\Users\PC\Desktop\New folder (3)\png\HMS_py\MODULE_MANUALS_2026\04_FrontOffice"
Select-String -Path "$m\README.md","$m\DATABASE.md" -Pattern "^## " | Group-Object Filename | Select-Object Name,Count
```

Expected: README ≥6 sections, DATABASE ≥5 sections, koi `TBD` nahi.

---

### Task 8: Pilot manual — `FRONTEND.md` + `BACKEND.md` + `TEST_PLAN.md`

**Files:**
- Create: `HMS_py/MODULE_MANUALS_2026/04_FrontOffice/{FRONTEND,BACKEND,TEST_PLAN}.md`

- [ ] **Step 1: FRONTEND.md** — sections:

```markdown
# 04 — Front Office — Frontend (PyQt6)
## 1. Shell integration
sidebar mod_target="front office" → MainWindow._on_sidebar_click → fo_dashboard + _load_module_menu("Front Office")
registry leaves → _form_registry (ui/shell.py) → openers (line refs)
## 2. Screen inventory (leaf → Qt class → file:line)
| Layer | Leaf | Qt widget/class | File | Screenshot |
(masters/operations/reports rows — screenshot filename from manifest)
## 3. Navigation & shortcuts
Ctrl+N/I/O/R shortcuts (shell.py:2104-2109) + Alt+<n> sidebar
## 4. Modal vs non-modal
kaunse leaves QDialog.exec() (modal — capture watchdog) vs widget window
```

Data sources: `ui/shell.py` registry lines (1058-1617 jahan FO leaves map hote hain), har leaf ka opener module (`frontoffice.py`, `checkout_ui.py`, `fo_sub_forms_ui.py`, `fd_forms_ui.py`, `reservation_browser.py`, `folio_ui.py`, `guest_services_ui.py`).

- [ ] **Step 2: BACKEND.md** — sections:

```markdown
# 04 — Front Office — Backend (core/)
## 1. Module map (core file → responsibility → public API)
| core/*.py | responsibility | key functions (name + args) |
(checkin, checkout, folio, fo_ops, guestprof, guest_folio, guest_services, roomstatus, room_occ, account_merge, booking, reservation)
## 2. Key flows (function-level logic)
per flow: function signature → validation → SQL writes → return
(checkin save, checkout _get_checkout_type, folio charge posting, room_change, merge_charge, re_settlement)
## 3. Guards & invariants
menuHelp permission checks (_check_menu_help), free-room validation, settlement sum guard, next_vno race lock
## 4. Error handling
db rollback points + BUG-016..024 relevant fixes (README changelog)
```

Source: padho `core/checkin.py`, `checkout.py`, `folio.py`, `fo_ops.py` (public `def` list AST se nikaal sakte ho: `python -c "import ast;..."`).

- [ ] **Step 3: TEST_PLAN.md** — sections:

```markdown
# 04 — Front Office — Test Plan (module logic)
## 1. Coverage map (feature → test file)
| Flow | Unit test | DB test | UI test |
(checkin/checkout/folio/room change/merge/re-settle → tests/unit/test_missing_logic_core.py, tests/test_front_office.py, tests/database/*)
## 2. Layer commands + status
(copy from TEST_RESULTS.md table + L4 manifest status)
## 3. Manual test script (live app, 10 steps)
| # | Action | Expected | Screenshot ref |
(open Check In Browser → rows load from DB; open Room Status → grid; etc.)
## 4. Known issues / gaps
(TEST_RESULTS FAILs + registry leaves jinhe screenshot skip karna pada)
```

- [ ] **Step 4: Verify** — 3 files exist, sections ≥3 each, no TBD/TODO.

---

### Task 9: Pilot layer folders — `01_Masters/` `02_Operations/` `03_Reports/`

**Files:**
- Create: `04_FrontOffice/{01_Masters,02_Operations,03_Reports}/README.md`
- Move/copy: layer screenshots (`04_FrontOffice/screenshots/*_{layer}_*.png`) → `04_FrontOffice/<layer_dir>/screenshots/`

- [ ] **Step 1: Layer README template (ek hi structure, 3 files)** — per file:

```markdown
# 04 Front Office — <Masters|Operations|Reports>
## Leaves (MenuHelp)
| # | Option (caption) | Flag | Param_Str | Module_Name | Screenshot |
(rows from _logic.json <layer> bucket + registry screenshot filename)
## Functioning
per leaf 1-2 lines: kya karta hai, kaunsa core function call hota hai
## Database Tables (this layer)
(FO table set se jo is layer me use hote hain — README §2 workflow rows se)
## Backend SQL pattern
SELECT/WHERE LOGSITE_CODE note + BeginTrans (DATABASE.md §3 ref)
## MenuHelp permission check
actual SQL block (README.md pattern) + live sample output for 1 leaf
```

- [ ] **Step 2: Screenshots copy**

```powershell
$m="C:\Users\PC\Desktop\New folder (3)\png\HMS_py\MODULE_MANUALS_2026\04_FrontOffice"
foreach($layer in @(@("masters","01_Masters"),@("operations","02_Operations"),@("reports","03_Reports"))){
  Copy-Item "$m\screenshots\*_$($layer[0])_*.png" "$m\$($layer[1])\screenshots\" -Force
}
(Get-ChildItem "$m\01_Masters\screenshots","$m\02_Operations\screenshots","$m\03_Reports\screenshots" -Filter *.png).Count
```

Expected: count ≥ (masters+ops+reports ka manifest ok items count) — 0 shots wale layer folder bhi chalega (README me "no mapped leaves" note).

- [ ] **Step 3: Verify** — 3 READMEs, koi TBD nahi; layer screenshot counts manifest se match.

---

### Task 10: `00_Instructions/` — MANUAL_TEMPLATE.md + CAPTURE_GUIDE.md

**Files:**
- Create: `HMS_py/MODULE_MANUALS_2026/00_Instructions/MANUAL_TEMPLATE.md`
- Create: `HMS_py/MODULE_MANUALS_2026/00_Instructions/CAPTURE_GUIDE.md`

- [ ] **Step 1: MANUAL_TEMPLATE.md** — yehi "ins" hai jisse baaki 13 manuals banenge. Exact content:

```markdown
# MANUAL_TEMPLATE — module manual banane ka SOP (pilot 04_FrontOffice se frozen)
Har module ke liye ye 9 files banao (root = MODULE_MANUALS_2026/<NN_Module>/):
  _logic.json, TEST_RESULTS.md, screenshots/manifest.json,
  README.md, DATABASE.md, FRONTEND.md, BACKEND.md, TEST_PLAN.md,
  01_Masters/README.md, 02_Operations/README.md, 03_Reports/README.md (+ screenshots/)

## Command sequence (order matters)
1. python -m HMS_py.tools.manual_pipeline.collect_logic --module <NN_Module>
   → _logic.json (menuHelp counts; 'other' bucket ka count README me likho)
2. python -m HMS_py.tools.manual_pipeline.run_module_tests --module <NN_Module>
   → TEST_RESULTS.md + RUN_TEST_LOG append
   (Layer table + known issues TEST_PLAN_MASTER.md me add)
3. python -m HMS_py.tools.manual_pipeline.capture_module --module <NN_Module>
   → screenshots/*.png + manifest.json (failed leaves fix → modules_map leaves typo → rerun)
4. Manuals likho — file-by-file: kya source hai:

| File | Source |
|---|---|
| README.md | _logic.json counts/leaves + workflow rows core code se + manifest index + TEST_RESULTS link |
| DATABASE.md | live schema queries + core INSERT/UPDATE/SELECT grep + next_vno + menuHelp SQL |
| FRONTEND.md | ui/shell.py registry lines + opener module + shortcuts + manifest |
| BACKEND.md | AST public-def list per core file + guards/changelog |
| TEST_PLAN.md | tests/ mapping + TEST_RESULTS table + 10-step manual script |
| 0x_*/README.md | _logic.json layer bucket + 1-2 line functioning + tables + SQL pattern |

5. python -m HMS_py.tools.manual_pipeline.check_manual --module <NN_Module>  (Task 11)
6. Section rules: har ## section ka source upar wali table se; data live hai —
   guess mat karo, query/padho; jo na mile wo "gap" likho (TBD nahi).

## Layer classification rules (classify())
R→reports, V→hidden, curated masters/master_modules→masters, curated ops→operations, baki→other(count likhna compulsory)
```

- [ ] **Step 2: CAPTURE_GUIDE.md** — content:

```markdown
# CAPTURE_GUIDE — live screenshot pipeline
## Prereqs
Desktop session (Windows login khula), QT_QPA_PLATFORM unset, HMS_FORCE_HEADLESS unset.
Preflight: python -c "...auth.check_login('ADITYA','112233')" → True (EK attempt only — lockout 5/15min).
## Run
python -m HMS_py.tools.manual_pipeline.capture_module --module <NN_Module>
(~40-60s; windows screen pe dikhenge — mouse/keyboard mat chalao)
## How it works
login → company row0 → MainWindow → _on_sidebar_click(sidebar) → shell grab →
har leaf: _safe_open + watchdog QTimer(900ms) (modal exec safe) → grab → _close_toplevels
## Validation
validate_image: ≥5000 bytes AND ≥64 unique colors (blank 107-byte history reject)
har run ke baad validate loop (Task 5 Step 6 wala command)
## Failure playbook
- "sidebar target not found" → modules_map sidebar value check (sidebar_modules() list)
- leaf status=missing → leaf name registry me nahi; registry_hits se naam match karo
- leaf status=skipped_messagebox → coming_soon dialog; manual me "gap" likho
- status=failed/invalid image → leaf dobara run; zaroorat ho LEAF_WAIT_MS badhao
- offscreen SystemExit → env vars clear karke desktop pe chalao
```

- [ ] **Step 3: Verify** — both files exist, no TBD/TODO, MANUAL_TEMPLATE me command sequence exact hai (copy-paste chalta ho — ek command dry-run `--help` se verify).

---

### Task 11: `check_manual.py` + pilot completeness gate (USER REVIEW)

**Files:**
- Create: `HMS_py/tools/manual_pipeline/check_manual.py`
- Test (append): `HMS_py/tests/unit/test_manual_pipeline.py`

**Interfaces:**
- Produces: `check(module_key, root=None) -> list[str]` (problems), CLI exit 0/1.

- [ ] **Step 1: Failing test**

```python
def test_check_manual_missing_dir_reports_problems(tmp_path):
    from HMS_py.tools.manual_pipeline.check_manual import check
    problems = check("04_FrontOffice", root=tmp_path)
    assert any("README.md" in p for p in problems)
    assert any("_logic.json" in p for p in problems)
```

- [ ] **Step 2: Fail → Implement `check_manual.py`**

```python
"""Pilot/module manual completeness checker. Exit 0 = complete."""
from __future__ import annotations
import argparse
import json
import pathlib
import sys

ROOT = pathlib.Path(__file__).resolve().parents[3]

REQUIRED = ["_logic.json", "TEST_RESULTS.md", "README.md", "DATABASE.md",
            "FRONTEND.md", "BACKEND.md", "TEST_PLAN.md",
            "01_Masters/README.md", "02_Operations/README.md",
            "03_Reports/README.md", "screenshots/manifest.json"]


def check(module_key: str, root: pathlib.Path | None = None) -> list[str]:
    from HMS_py.tools.manual_pipeline.capture_module import validate_image
    base = (root or ROOT / "MODULE_MANUALS_2026") / module_key
    problems: list[str] = []
    for rel in REQUIRED:
        if not (base / rel).exists():
            problems.append(f"missing {rel}")
    man = base / "screenshots" / "manifest.json"
    if man.exists():
        data = json.loads(man.read_text(encoding="utf-8"))
        if data.get("failed"):
            problems.append(f"manifest failed leaves: {data['failed']}")
        shots = [base / "screenshots" / it["file"]
                 for it in data.get("items", []) if it.get("status") == "ok"]
        if not shots:
            problems.append("no successful screenshots")
        bad = [p.name for p in shots if not validate_image(p)]
        if bad:
            problems.append(f"invalid screenshots: {bad}")
    for rel in REQUIRED:
        f = base / rel
        if f.suffix == ".md" and f.exists():
            if "TBD" in f.read_text(encoding="utf-8") or "TODO" in \
                    f.read_text(encoding="utf-8"):
                problems.append(f"placeholder (TBD/TODO) in {rel}")
    return problems


def main(argv=None) -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--module", required=True)
    a = ap.parse_args(argv)
    problems = check(a.module)
    if problems:
        print(f"{a.module}: INCOMPLETE")
        for p in problems:
            print("  -", p)
        return 1
    print(f"{a.module}: COMPLETE")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
```

- [ ] **Step 3: Tests pass** — `pytest tests/unit/test_manual_pipeline.py -q` → `13 passed`.

- [ ] **Step 4: Pilot gate run**

```powershell
python -m HMS_py.tools.manual_pipeline.check_manual --module 04_FrontOffice
```

Expected: har problem fix karo (missing file likho, failed leaf recapture, TBD hatao) jab tak `04_FrontOffice: COMPLETE` + exit 0.

- [ ] **Step 5: USER REVIEW GATE — ruko**

User ko bolo: pilot complete hai (`04_FrontOffice: COMPLETE`), wo `MODULE_MANUALS_2026/04_FrontOffice/` review kare. **Approval ke bina Task 12 (batch) start mat karo.** Approval ke baad feedback (koi section/format change) template me apply karo `00_Instructions/MANUAL_TEMPLATE.md` me, phir aage badho.

---

### Task 12: Batch — baaki 13 modules (pilot approval ke baad)

**Files:**
- Create: `MODULE_MANUALS_2026/{01_Finance,02_MainSetup,03_Reservation,05_HouseKeeping,06_Inventory,07_POS,08_Banquet,09_NightAudit,10_HRPayroll,11_EPABX,12_Messaging,13_MembersMgmt,14_SaleMarketing}/` (poora 11-file shape + screenshots)

**Interfaces:**
- Consumes: `MANUAL_TEMPLATE.md` (Task 10), saare 4 scripts (Tasks 2-5, 11), user approval (Task 11 Step 5).

- [x] **Step 1: Discovery — khali module_names fill karo**

```powershell
python -c "import sys; sys.path.insert(0, r'C:\Users\PC\Desktop\New folder (3)\png'); from HMS_py.core import menu_help as mh; print([m for m in mh.modules() if any(k in m.lower() for k in ('epabx','tel','sale','mkt','market','mall','extr'))])"
```

Output ko dekhkar `modules_map.py` me `11_EPABX` aur `14_SaleMarketing` ke `module_names` set karo (agar EPABX rows `UNMAPPED` me hain to caption-keyword fallback note karo aur leaves list registry se bharo). `pytest tests/unit/test_manual_pipeline.py -q` green rakho.

- [x] **Step 2: Per-module pipeline loop (13 modules × step order)**

Har module `M` ke liye (TASK se dependent — approval ke baad):

```powershell
# 1..3: collect + tests + capture
python -m HMS_py.tools.manual_pipeline.collect_logic --module $M
python -m HMS_py.tools.manual_pipeline.run_module_tests --module $M --layers L1,L2b
python -m HMS_py.tools.manual_pipeline.capture_module --module $M
# 4: 11 manual files MANUAL_TEMPLATE.md ke source-table se likho
# 5: gate
python -m HMS_py.tools.manual_pipeline.check_manual --module $M
```

Order (dependency-wise pehle wale): `01_Finance` → `03_Reservation` → `02_MainSetup` → `05_HouseKeeping` → `06_Inventory` → `07_POS` → `08_Banquet` → `09_NightAudit` → `10_HRPayroll` → `13_MembersMgmt` → `12_Messaging` → `11_EPABX` → `14_SaleMarketing`.

Notes:
- `run_module_tests` full layers (L1..L3) sirf `01_Finance` pe ek baar (global log update); baaki modules `--layers L1,L2b` (module-scoped) — RUN_TEST_LOG me per-module lines.
- `11_EPABX` / `14_SaleMarketing` capture `sidebar="extras"` use karta hai — agar sidebar root mismatch mile to `_sidebar module` step me `mod.sidebar` = "extras" hi rahega; leaves registry-based hain, dashboard shot extras ka aayega.
- Har module ke `other` bucket counts `README.md §3` me compulsory.

- [x] **Step 3: Batch gate**

Sab 13 modules ke liye:

```powershell
foreach($m in @("01_Finance","02_MainSetup","03_Reservation","05_HouseKeeping","06_Inventory","07_POS","08_Banquet","09_NightAudit","10_HRPayroll","11_EPABX","12_Messaging","13_MembersMgmt","14_SaleMarketing")){
  python -m HMS_py.tools.manual_pipeline.check_manual --module $m
}
```

Expected: sab `COMPLETE` + exit 0.

- [x] **Step 4: Final rollup**

`00_GLOBAL/RUN_TEST_LOG.md` ke last entries + per-module `TEST_RESULTS.md` status se `TEST_PLAN_MASTER.md` ki per-module matrix fill karo; `00_GLOBAL/TEST_PLAN_MASTER.md` me Known issues complete list. User ko final summary do (folders, screenshot counts, test status, known issues).

---

## Self-Review (plan vs spec)

1. **Spec coverage:** §3 output structure → Tasks 1,6,7,8,9,10,12; §4 tooling 3 scripts → Tasks 3,4,5 (+modules_map Task 2, checker Task 11); §5 4-layer testing → Task 4; §6 pilot flow 5 phases → Tasks 1-11 (Phase 5 gate = Task 11 Step 5, batch = Task 12); §7 risks → Review Focus + capture guards; §8 out-of-scope → Global Constraints (no schema change, no commits, existing families untouched). **No gaps.**
2. **Placeholder scan:** sab code blocks complete; data-driven sections me source table diya hai (live query/padho) — koi "TBD/TODO implement later" nahi; `11_EPABX`/`14_SaleMarketing` `module_names=()` discovery-defined hai with explicit Step (Task 12 Step 1), placeholder nahi.
3. **Type consistency:** `Module` fields Task 2 ↔ consumers Tasks 3/4/5/11 same; `classify()` returns dict-of-lists (Task 3 test) ↔ `_build` payload keys `menuhelp.*` ↔ Task 7 reads `_logic.json counts`; `capture_leaf -> str` statuses (ok/skipped_messagebox/failed/missing) ↔ manifest `items[].status` ↔ `check()` failed logic; `parse_pytest_summary -> tuple[int,str]|None` ↔ `render_results` records; `check(module_key, root=None) -> list[str]` ↔ test + CLI.
4. **Review Focus:** saare 5 items ke owning tasks + tests hain (1→T5 Step1 test; 2→T5 watchdog + failed-status reporting + playbook; 3→T4 Step7 verify; 4→T3 classify other-bucket test + live test; 5→T5 validate_image tests + T11 gate).
