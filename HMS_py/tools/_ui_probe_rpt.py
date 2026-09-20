import os, sys
os.environ["QT_QPA_PLATFORM"] = "offscreen"
ROOT = os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__))))
sys.path.insert(0, ROOT)
from PyQt6.QtWidgets import QApplication
from PyQt6.QtCore import QTimer
app = QApplication([])
def clos(): [w.close() for w in QApplication.topLevelWidgets()]
t = QTimer(); t.setInterval(400); t.timeout.connect(clos); t.start()
from HMS_py.ui import reports_ui
key = sys.argv[1] if len(sys.argv) > 1 else None
dlg = reports_ui.ReportsCenter(None, report_key=key)
print("ROWS:", dlg.tbl.rowCount(), "COLS:", dlg.tbl.columnCount(), flush=True)
print("RETURNED", flush=True)
