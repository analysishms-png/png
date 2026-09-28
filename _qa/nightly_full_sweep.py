"""Nightly FULL UI sweep orchestrator (526 windows, no fast-skip).

kya karta hai:
  - _qa/sweep_ui_bugs.py ko FULL mode me subprocess se chalata hai
    (report windows included — isliye subprocess isolation: ek hang/crash
    orchestrator ko nahi girata).
  - stdout/stderr _qa/logs/nightly_YYYYMMDD_HHMMSS.log me save.
  - "SWEEP RESULT:" line parse karke _qa/sweep_history.jsonl me append
    (trend dekhne ke liye): ts, rc, ok, fail, skip, total, duration_s, fails.
  - Exit code = number of real FAILs (Task Scheduler history me dikh jayega),
    hang/timeout pe 125 (distinct infra code).

Budget: FULL sweep ka worst-case ~40 min (cold cache + report windows).
timeout default 3000s — .bat me bhi same.

Run:  python _qa/nightly_full_sweep.py
      python _qa/nightly_full_sweep.py --budget 3600
HTML: _qa/logs/nightly_report.html (latest run ka browsable summary).
"""
from __future__ import annotations

import argparse
import datetime
import json
import os
import re
import subprocess
import sys

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SWEEP = os.path.join(REPO, "_qa", "sweep_ui_bugs.py")
LOGDIR = os.path.join(REPO, "_qa", "logs")
HISTORY = os.path.join(REPO, "_qa", "sweep_history.jsonl")
REPORT = os.path.join(LOGDIR, "nightly_report.html")

RESULT_RE = re.compile(
    r"SWEEP RESULT:\s*(\d+) OK,\s*(\d+) FAIL(?:,\s*(\d+) SKIP\(fast\))?"
    r"\s*/\s*(\d+)")
FAIL_LINE_RE = re.compile(r"^\s+- (.+?): (\w+): (.+)$")


def run_full_sweep(budget_s: int, fast: bool = False) -> tuple[int, str, list[dict]]:
    os.makedirs(LOGDIR, exist_ok=True)
    ts = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_path = os.path.join(LOGDIR, f"nightly_{ts}.log")

    env = dict(os.environ, PYTHONUNBUFFERED="1")
    # --subprocess: har caption apne process me -- Qt-offscreen teardown ka
    # RANDOM segfault (non-deterministic, exit 3221225477) results ko
    # kharab nahi karega (sweep_one_cap.py os._exit guard use karta hai).
    cmd = [sys.executable, "-u", SWEEP] +         (["--fast"] if fast else []) + ["--subprocess"]
    t0 = datetime.datetime.now()
    with open(log_path, "w", encoding="utf-8") as log:
        try:
            proc = subprocess.run(
                cmd,
                cwd=REPO, env=env, capture_output=True, text=True,
                encoding="utf-8", errors="replace", timeout=budget_s)
            out = (proc.stdout or "") + (proc.stderr or "")
            rc = proc.returncode
        except subprocess.TimeoutExpired as te:
            partial = ((te.stdout or b"").decode("utf-8", errors="replace")
                       if isinstance(te.stdout, bytes)
                       else (te.stdout or ""))
            out = (partial + "\n*** ORCHESTRATOR TIMEOUT after "
                   f"{budget_s}s (hang — query infra issue) ***")
            rc = 125
        log.write(out)
    dur = (datetime.datetime.now() - t0).total_seconds()

    fails: list[dict] = []
    for line in out.splitlines():
        m = FAIL_LINE_RE.match(line)
        if m:
            fails.append({"cap": m.group(1), "err": f"{m.group(2)}: {m.group(3)}"})

    m = RESULT_RE.search(out)
    if m:
        ok, failn, skipn, total = (int(m.group(1)), int(m.group(2)),
                                   int(m.group(3) or 0), int(m.group(4)))
    else:
        ok = failn = skipn = total = 0
        if rc != 125:
            rc = 126  # result line hi nahi mili — sweep crash hua
    rec = {"ts": datetime.datetime.now().isoformat(timespec="seconds"),
           "rc": rc, "ok": ok, "fail": failn, "skip": skipn,
           "total": total, "duration_s": round(dur, 1),
           "log": os.path.relpath(log_path, REPO),
           "fails": fails}
    with open(HISTORY, "a", encoding="utf-8") as fh:
        fh.write(json.dumps(rec, ensure_ascii=False) + "\n")
    _write_html(rec)
    return rc, log_path, [rec]


def _write_html(rec: dict) -> None:
    """Latest-run browsable report (status, counters, fail table, trend)."""
    hist: list[dict] = []
    if os.path.exists(HISTORY):
        with open(HISTORY, encoding="utf-8") as fh:
            hist = [json.loads(x) for x in fh if x.strip()][-30:]
    trend_rows = "".join(
        f"<tr><td>{h['ts']}</td><td>{h['rc']}</td><td>{h['ok']}</td>"
        f"<td>{h['fail']}</td><td>{h['skip']}</td><td>{h['total']}</td>"
        f"<td>{h['duration_s']}s</td></tr>" for h in hist)
    fail_rows = "".join(
        f"<tr><td>{f['cap']}</td><td>{f['err']}</td></tr>"
        for f in rec.get("fails", [])) or "<tr><td colspan=2>none</td></tr>"
    color = "#0a0" if rec["fail"] == 0 and rec["rc"] == 0 else "#c00"
    html = f"""<html><head><meta charset="utf-8">
<title>Nightly UI Sweep — {rec['ts']}</title>
<style>body{{font-family:Segoe UI,Arial;margin:24px}}
table{{border-collapse:collapse;margin:12px 0}}
td,th{{border:1px solid #ccc;padding:4px 10px;font-size:13px}}
h1{{font-size:20px}} .big{{font-size:26px;font-weight:bold;color:{color}}}
</style></head><body>
<h1>Nightly FULL UI Sweep — {rec['ts']}</h1>
<p class="big">rc={rec['rc']} | OK {rec['ok']} / FAIL {rec['fail']}
/ SKIP {rec['skip']} / TOTAL {rec['total']} | {rec['duration_s']}s</p>
<p>Log: {rec['log']}</p>
<h3>Is run ke FAILs</h3><table>{fail_rows}</table>
<h3>Trend (last {len(hist)} runs)</h3>
<table><tr><th>ts</th><th>rc</th><th>ok</th><th>fail</th><th>skip</th>
<th>total</th><th>dur</th></tr>{trend_rows}</table>
</body></html>"""
    with open(REPORT, "w", encoding="utf-8") as f:
        f.write(html)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--budget", type=int, default=3000,
                    help="full sweep subprocess timeout seconds (default 3000)")
    ap.add_argument("--fast", action="store_true",
                    help="sweep ko --fast pass karo (report windows skip — "
                         "orchestrator plumbing self-test, nightly me use na karo)")
    args = ap.parse_args()
    rc, log_path, recs = run_full_sweep(args.budget, fast=args.fast)
    r = recs[0]
    print(f"NIGHTLY SWEEP: rc={rc} ok={r['ok']} fail={r['fail']} "
          f"skip={r['skip']} total={r['total']} dur={r['duration_s']}s")
    print(f"log: {log_path}\nhtml: {REPORT}\nhistory: {HISTORY}")
    for f in r["fails"][:20]:
        print(f"  FAIL {f['cap']}: {f['err']}")
    # hang (125) / crash (126) ko bhi non-zero rakho, par FAIL-count se
    # distinct — Task Scheduler Last Run Result me farak dikhega.
    return r["fail"] if rc == 0 else rc


if __name__ == "__main__":
    sys.exit(main())
