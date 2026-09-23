"""Live (visible) app screenshot: updated dynamic sidebar + module menus.

Windows platform (offscreen NAHI) — real rendered QSS grab ke liye.
Window 2 sec dikhegi, screenshots grab hongi, phir band.
"""
import io
import os
import sys

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8",
                              errors="replace")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ.pop("QT_QPA_PLATFORM", None)  # offscreen HATAO — real render

from PyQt6.QtCore import QTimer
from PyQt6.QtWidgets import QApplication

from HMS_py.ui import shell

OUT = (r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py"
       r"\HMS_py\_qa\sidebar_dynamic")
os.makedirs(OUT, exist_ok=True)

MODULES = ["Reservation", "Finance", "Point Of Sale", "Front Office",
           "Main Setup", "Messaging"]

_state = {"idx": -1, "win": None}


def _shoot(name):
    pm = _state["win"].grab()
    path = os.path.join(OUT, f"live_{name.lower()}.png")
    pm.save(path)
    print(f"saved: {path}")


def _next():
    _state["idx"] += 1
    if _state["idx"] >= len(MODULES):
        _state["win"].close()
        app.quit()
        return
    mod = MODULES[_state["idx"]]
    win = _state["win"]
    # sidebar button dhoondo (mod_target match) aur click karo — real flow
    hit = None
    for b in win._side_buttons:
        t = str(b.property("mod_target") or "").strip().lower()
        if t == mod.lower():
            hit = b
            break
    if hit is not None:
        hit.click()
    else:
        win._load_module_menu(mod)
    app.processEvents()

    def snap():
        _shoot(f"sidebar_{mod}")
        QTimer.singleShot(400, _next)
    QTimer.singleShot(700, snap)


app = QApplication(sys.argv)
win = shell.MainWindow("SA", {"name": "Moon and Mars Resorts",
                              "short": "MMR", "year": "2026-27"})
_state["win"] = win
win.show()
app.processEvents()


def _start():
    _shoot("sidebar_home")
    _next()


QTimer.singleShot(1500, _start)
sys.exit(app.exec())
