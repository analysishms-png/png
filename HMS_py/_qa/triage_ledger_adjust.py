"""Triage the 'Ledger Adjustment' native abort.

Isolates each stage: construct (no show) -> show -> processEvents, and
optionally neutralises resizeEvent to test the suspected resize loop.
"""
import os
import sys

PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
sys.path.insert(0, PROJECT)
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtWidgets import QApplication, QMainWindow  # noqa: E402

app = QApplication.instance() or QApplication(["triage"])
print("app up", flush=True)

from ui import fa_sub_forms_ui as f  # noqa: E402

MODE = sys.argv[1] if len(sys.argv) > 1 else "plain"

if MODE == "noresize":
    def _plain_resize(self, event):
        QMainWindow.resizeEvent(self, event)
    f.FaAdjustWindow.resizeEvent = _plain_resize
    print("resizeEvent neutralised", flush=True)

print("constructing...", flush=True)
w = f.FaAdjustWindow(None)
print("constructed OK title=%r" % w.windowTitle(), flush=True)

print("load acgroup names:", len(w._acgroup_names), flush=True)
print("load_data rows:", w.table.rowCount(), flush=True)

if MODE in ("show", "noresize"):
    print("show()...", flush=True)
    w.show()
    app.processEvents()
    print("shown+events OK size=%dx%d" % (w.width(), w.height()), flush=True)
    for i in range(5):
        app.processEvents()
        print("  loop %d size=%dx%d minw=%d" % (
            i, w.width(), w.height(), w.centralWidget().minimumWidth()), flush=True)

print("DONE", flush=True)