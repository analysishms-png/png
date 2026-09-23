"""Live (visible) screenshot of VB6-style UI — Home + Finance canvas.

Window dikhegi, 2 screenshots grab honge (Home + Finance canvas), phir band.
Output: _qa/vb6_ui/live_home.png, live_finance.png
"""
import os
import io
import sys

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8",
                              errors="replace")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ.pop("QT_QPA_PLATFORM", None)  # real Windows platform

from PyQt6.QtWidgets import QApplication, QDialog  # noqa: E402

app = QApplication.instance() or QApplication([])

# Modal auto-open hang-safe (headless jaisa hi)
_orig_exec = QDialog.exec
QDialog.exec = lambda self: QDialog.DialogCode.Rejected

from HMS_py.ui import shell  # noqa: E402

OUT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\_qa\vb6_ui"
os.makedirs(OUT, exist_ok=True)

w = shell.MainWindow("SA", {"name": "Moon and Mars Resorts",
                            "year": "2026-27", "short": "Kanpur"})
w.resize(1400, 800)
w.show()


def grab_home():
    w.grab().save(os.path.join(OUT, "live_home.png"))
    print("live_home.png saved")


def grab_finance():
    fin = next((b for b in w._side_buttons
                if b.text().lower().startswith("finance")), None)
    if fin:
        fin.click()
    app.processEvents()
    w.grab().save(os.path.join(OUT, "live_finance.png"))
    print("live_finance.png saved")
    w.close()
    app.quit()


from PyQt6.QtCore import QTimer  # noqa: E402

QTimer.singleShot(1500, grab_home)
QTimer.singleShot(3000, grab_finance)
app.exec()
QDialog.exec = _orig_exec
print("LIVE_SHOTS_DONE")
