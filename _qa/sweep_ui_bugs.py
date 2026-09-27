"""Full UI sweep v2: registry ki saari wired windows offscreen open karo.

Bug-hunt: constructor + show + processEvents + close — jo window crash
ho (AttributeError/KeyError/SQL error etc.) wo report.

v2 changes:
- Refresh-method calls (_fill/refresh/load_data) sirf tab kiye jaate hain
  jab wo ZERO-arg callable hon (inspect.signature guard) — warna
  ReportViewer._fill(self, data) jaise internal helpers pe false positive
  aata tha (wo constructor me _run() se sahi call hote hain).
- Har fail ka chhota traceback --tb flag se dikhta hai.
- Hang guard: QDialog/QMessageBox/QInputDialog/QFileDialog sab stubbed.
"""
import inspect
import os
import sys
import threading
import traceback
import _thread

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
# repo root: <repo> (script <repo>/_qa me hai) — HMS_py package yahin hai
sys.path.insert(0, os.path.dirname(os.path.dirname(
    os.path.abspath(__file__))))

from PyQt6.QtCore import QTimer  # noqa: E402
from PyQt6.QtWidgets import (QApplication, QDialog, QFileDialog,  # noqa: E402
                             QInputDialog, QMessageBox)

QDialog.exec = lambda self, *a, **k: QDialog.DialogCode.Rejected
QMessageBox.information = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.warning = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.critical = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.question = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Yes)
# static modal helpers bhi hang karte hain offscreen pe
QInputDialog.getText = staticmethod(lambda *a, **k: ("", False))
QInputDialog.getInt = staticmethod(lambda *a, **k: (0, False))
QInputDialog.getItem = staticmethod(lambda *a, **k: ("", 0, False))
QFileDialog.getOpenFileName = staticmethod(lambda *a, **k: ("", ""))
QFileDialog.getSaveFileName = staticmethod(lambda *a, **k: ("", ""))

from HMS_py.ui import shell  # noqa: E402


def _zero_arg_method(w, name):
    """Return bound method if callable with zero args, else None."""
    m = getattr(w, name, None)
    if m is None or not callable(m):
        return None
    try:
        sig = inspect.signature(m)
    except (TypeError, ValueError):
        return None
    params = [p for p in sig.parameters.values()
              if p.kind not in (p.VAR_POSITIONAL, p.VAR_KEYWORD)]
    # bound method: 'self' already stripped
    if any(p.default is p.empty for p in params):
        return None  # koi required arg hai -> harness call NAHI karega
    return m


app = QApplication(sys.argv)

# Real MainWindow (offscreen) — lambdas w.user etc. use karte hain
try:
    mw = shell.MainWindow("SA", {"name": "Moon and Mars Resorts",
                                 "short": "MMR", "year": "2026-27"})
    print("MainWindow OK")
except Exception as e:
    print(f"MainWindow FAIL: {type(e).__name__}: {e}")
    mw = None

reg = shell._form_registry()
wired = {k: v for k, v in reg.items()
         if v is not None and "coming_soon" not in repr(v)
         and "doc_skip" not in repr(v)}
print(f"WIRED={len(wired)}")

ok, fail = 0, []
fails = {}

# Hang watchdog: agar koi window 60s se zyada block kare to current cap
# print karke process kill (thread se os._exit safe hai).
_state = {"cap": "<none>"}

def _watchdog():
    import time
    last = None
    stall = 0
    while True:
        time.sleep(5)
        cur = _state["cap"]
        if cur == last:
            stall += 5
        else:
            stall = 0
            last = cur
        if stall >= 60:
            print(f"\n*** WATCHDOG: HANG on [{cur}] — aborting ***", flush=True)
            os._exit(2)

threading.Thread(target=_watchdog, daemon=True).start()

for i, (cap, fn) in enumerate(sorted(wired.items()), 1):
    _state["cap"] = cap
    try:
        w = fn(mw) if mw is not None else None
        # kuch entries None window return karti hain (internal forms)
        if w is None:
            ok += 1
            continue
        if not hasattr(w, "show"):
            # modal-style entry (lambda ... .exec() -> DialogCode) ya koi
            # non-widget return — constructor chal gaya, kaam ho gaya
            ok += 1
            continue
        w.show()
        app.processEvents()
        # zero-arg public refresh methods ko ek baar chalao (signature-guarded)
        for mname in ("_fill", "refresh", "load_data"):
            m = _zero_arg_method(w, mname)
            if m is not None:
                try:
                    m()
                    app.processEvents()
                except Exception as e:
                    raise RuntimeError(
                        f"{mname}(): {type(e).__name__}: {e}")
        w.close()
        ok += 1
        if i % 50 == 0:
            print(f"  ...{i}/{len(wired)} scanned")
    except Exception as e:
        fail.append(cap)
        fails[cap] = f"{type(e).__name__}: {e}"
        print(f"  FAIL [{cap}]: {type(e).__name__}: {e}")
        if "--tb" in sys.argv:
            print(traceback.format_exc(limit=4))

print("=" * 70)
print(f"SWEEP RESULT: {ok} OK, {len(fail)} FAIL / {len(wired)}")
for cap in fail[:80]:
    print(f"  - {cap}: {fails[cap]}")
QTimer.singleShot(5000, app.quit)
app.exec()
# Qt-offscreen teardown pe segfault aata hai (results ke baad) —
# Python finalization skip karke clean exit code do.
os._exit(0 if not fail else 1)
