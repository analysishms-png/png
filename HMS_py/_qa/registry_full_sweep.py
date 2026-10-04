"""Full registry sweep (offscreen): open EVERY caption in ui/shell._form_registry()
and record, per caption:

  * opened window title (or [dialog] / [stub] / [nothing])
  * exceptions raised
  * modal QMessageBox calls (critical = ERROR, warning = WARN,
    information = STUB/note, question = interactive)
  * caption -> window-title collisions (many captions landing on the SAME
    window = report-alias hijack, the BUG-MS-10 / BUG-FO-01 class)

Modal primitives are monkeypatched so the sweep never blocks, and every
patched message box is recorded instead of shown.

Run:
    python _qa/registry_full_sweep.py            # human summary
    python _qa/registry_full_sweep.py --json out.json
"""
from __future__ import annotations

import argparse
import io
import json
import os
import sys
import traceback
from collections import defaultdict

PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
sys.path.insert(0, PROJECT)
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtWidgets import (  # noqa: E402
    QApplication,
    QDialog,
    QFileDialog,
    QInputDialog,
    QMessageBox,
)

app = QApplication.instance() or QApplication(["registry-sweep"])

# ── modal guards ──────────────────────────────────────────────────────────────
EVENTS: list[dict] = []          # recorded modal events for the current caption
_DIALOGS: list[str] = []


def _cur() -> dict:
    return EVENTS[-1] if EVENTS else {}


def _rec(level: str, text: str) -> None:
    e = _cur()
    if e is not None:
        e.setdefault("messages", []).append([level, " ".join(str(text).split())[:400]])


def _msgbox(level):
    def call(self, *a, **k):
        parts = []
        for x in list(a) + [v for v in k.values() if isinstance(v, str)]:
            if isinstance(x, QMessageBox):
                parts.append(x.text())
            elif isinstance(x, str) and x.strip():
                parts.append(x)
        _rec(level, " | ".join(parts) or self.text())
        if level == "question":
            return QMessageBox.StandardButton.Yes
        return QMessageBox.StandardButton.Ok

    return call


for _lvl, _fn in (
    ("CRITICAL", QMessageBox.critical),
    ("WARNING", QMessageBox.warning),
    ("INFORMATION", QMessageBox.information),
    ("ABOUT", QMessageBox.about),
    ("QUESTION", QMessageBox.question),
):
    setattr(QMessageBox, _lvl.lower(), _msgbox(_lvl))
QMessageBox.exec = lambda self, *a, **k: QMessageBox.StandardButton.Ok
QMessageBox.exec_ = lambda self, *a, **k: QMessageBox.StandardButton.Ok


def _dlg_exec(self, *a, **k):
    _DIALOGS.append(self.windowTitle() or type(self).__name__)
    _rec("DIALOG", self.windowTitle() or type(self).__name__)
    return QDialog.DialogCode.Accepted


QDialog.exec = _dlg_exec
QDialog.exec_ = _dlg_exec

QInputDialog.getText = staticmethod(lambda *a, **k: ("", False))
QInputDialog.getItem = staticmethod(lambda *a, **k: ("", False))
QInputDialog.getInt = staticmethod(lambda *a, **k: (0, False))
QInputDialog.getDouble = staticmethod(lambda *a, **k: (0.0, False))
QInputDialog.getText.__func__ if False else None
QFileDialog.getOpenFileName = staticmethod(lambda *a, **k: ("", ""))
QFileDialog.getSaveFileName = staticmethod(lambda *a, **k: ("", ""))
QFileDialog.getExistingDirectory = staticmethod(lambda *a, **k: "")

# ── shell under test ─────────────────────────────────────────────────────────
from HMS_py.ui import shell as sh  # noqa: E402
from HMS_py.ui.shell import MainWindow  # noqa: E402

win = MainWindow("SA", {"name": "Sweep Verify", "short": "SWP", "year": "2026-27"})
app.processEvents()

registry = sh._form_registry()
caps = sorted(registry.keys(), key=lambda s: s.lower())
print(f"REGISTRY_CAPTIONS: {len(caps)}")

# sidebar / module wiring sanity
empty_menus = []
for name, _src in getattr(sh, "MODULE_SOURCES", {}).items() if hasattr(sh, "MODULE_SOURCES") else []:
    pass

results = []
JSONL = os.path.join(PROJECT, "qa_evidence", "reports", "sweep_results.jsonl")
try:
    os.makedirs(os.path.dirname(JSONL), exist_ok=True)
except Exception:
    JSONL = None
_jl = io.open(JSONL, "a", encoding="utf-8") if JSONL else None
skip = set()
if "--skip" in sys.argv:
    skip = {s.strip() for s in sys.argv[sys.argv.index("--skip") + 1].split("|") if s.strip()}
start = int(sys.argv[sys.argv.index("--start") + 1]) if "--start" in sys.argv else 0
end = int(sys.argv[sys.argv.index("--end") + 1]) if "--end" in sys.argv else len(caps)
caps = [c for c in caps if c not in skip][start:end]
print(f"SWEEPING {len(caps)} captions (start={start}) jsonl={JSONL}", flush=True)

for cap in caps:
    print(f"  -> {cap}", flush=True)
    fn = registry[cap]
    EVENTS.append({"caption": cap, "messages": []})
    before_dialogs = len(_DIALOGS)
    entry = {
        "caption": cap,
        "status": "OK",
        "window": "",
        "exc": "",
        "messages": [],
    }
    try:
        w = fn(win)
        app.processEvents()
        if w is not None and hasattr(w, "windowTitle"):
            entry["window"] = w.windowTitle()
            try:
                w.close()
            except Exception:
                pass
        elif len(_DIALOGS) > before_dialogs:
            entry["window"] = "[dialog] " + _DIALOGS[-1]
        else:
            entry["window"] = "[nothing]"
            entry["status"] = "NOTHING"
    except Exception as e:  # noqa: BLE001
        entry["status"] = "EXCEPTION"
        entry["exc"] = f"{type(e).__name__}: {e}"
        entry["trace"] = traceback.format_exc(limit=6)
    msgs = EVENTS[-1].pop("messages", [])
    entry["messages"] = msgs
    if any(m[0] == "CRITICAL" for m in msgs):
        entry["status"] = "ERROR_BOX"
    elif entry["status"] == "OK" and any(m[0] == "INFORMATION" for m in msgs):
        entry["status"] = "STUB_OR_NOTE"
    results.append(entry)
    EVENTS.pop()
    if _jl:
        _jl.write(json.dumps(entry, ensure_ascii=False) + "\n")
        _jl.flush()
    print(f"     [{entry['status']}] {entry['window']} {entry['exc']}", flush=True)

# ── collision analysis: N captions -> same window == alias hijack ─────────────
by_window = defaultdict(list)
for r in results:
    w = r["window"]
    if w and w != "[nothing]":
        by_window[w].append(r["caption"])

report = {
    "registry_captions": len(caps),
    "results": results,
    "collisions": {w: c for w, c in by_window.items() if len(c) > 1},
}

fails = [r for r in results if r["status"] in ("EXCEPTION", "ERROR_BOX", "NOTHING")]
print(f"OK={len(results) - len(fails)}  PROBLEM={len(fails)}")
for r in fails:
    print(f"  [{r['status']}] {r['caption']} -> {r['window']} {r['exc']}")
    for lvl, txt in r["messages"]:
        print(f"        {lvl}: {txt[:220]}")
print("COLLISIONS (same window for many captions):")
for w, cs in sorted(by_window.items(), key=lambda kv: -len(kv[1])):
    if len(cs) > 1:
        print(f"  {w}  <- {len(cs)} captions: {', '.join(cs[:6])}"
              + (" ..." if len(cs) > 6 else ""))

if "--json" in sys.argv:
    out = sys.argv[sys.argv.index("--json") + 1]
    io.open(out, "w", encoding="utf-8").write(
        json.dumps(report, indent=2, ensure_ascii=False)
    )
    print("WROTE", out)

win.close()