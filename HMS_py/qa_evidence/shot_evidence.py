# TEMP harness (lives outside repo) - offscreen UI screenshot evidence for qa_evidence.
# Usage:  python shot_evidence.py              -> 01/03/04 PNGs, then spawns MainWindow child
#         python shot_evidence.py --mainwindow [noshow]
from __future__ import annotations

import os
import subprocess
import sys
import time
import traceback

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

REPO = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py"
OUT = os.path.join(REPO, "qa_evidence", "screenshots")
sys.path.insert(0, os.path.dirname(REPO))
os.makedirs(OUT, exist_ok=True)

# ROOT CAUSE: ui/shell.py:24 sets QT_QPA_FONTDIR only on import — after
# QApplication/font-DB init in this harness -> 0 families -> tofu. Set before app.
os.environ.setdefault("QT_QPA_FONTDIR", os.path.join(REPO, "fonts"))

from PyQt6.QtCore import QCoreApplication
from PyQt6.QtGui import QFontDatabase
from PyQt6.QtWidgets import QApplication, QMessageBox


def dbg(tag: str) -> None:
    fams = QFontDatabase.families()
    print(
        f"[dbg {tag}] QT_QPA_PLATFORM={os.environ.get('QT_QPA_PLATFORM')!r} "
        f"FONTDIR={os.environ.get('QT_QPA_FONTDIR')!r} "
        f"families={len(fams)} first={fams[:5]!r}",
        flush=True,
    )


app = QApplication.instance() or QApplication([])
dbg("after-app")

# Test-harness only: DB is offline, several forms pop modal QMessageBox on
# failure -> would block offscreen forever. No-op them (repo files untouched).
for _n in ("critical", "warning", "information"):
    setattr(QMessageBox, _n, lambda *a, **k: QMessageBox.Ok)


def pump(ms: int = 600) -> None:
    end = time.time() + ms / 1000.0
    while time.time() < end:
        QCoreApplication.processEvents()
        time.sleep(0.02)


def grab(w, name: str, min_kb: int = 10, size=(1400, 900)) -> str:
    """show -> pump -> grab -> save; retry pumps until > min_kb or ~1.5s."""
    dbg("grab:" + name)
    path = os.path.join(OUT, name)
    w.resize(*size)
    w.show()
    for _ in range(8):
        pump(200)
        pm = w.grab()
        pm.save(path)
        if os.path.exists(path) and os.path.getsize(path) > min_kb * 1024:
            print(f"OK {name} {os.path.getsize(path)} bytes :: {w.windowTitle()}")
            return path
    print(f"SMALL {name} {os.path.getsize(path) if os.path.exists(path) else 0} bytes")
    return path


def grab_noshow(w, name: str, min_kb: int = 10, size=(1400, 900)) -> str:
    """MainWindow 0xC0000409 fallback: never show(), just polish + grab."""
    dbg("grab_noshow:" + name)
    path = os.path.join(OUT, name)
    w.resize(*size)
    w.ensurePolished()
    for _ in range(8):
        pump(200)
        w.grab().save(path)
        if os.path.exists(path) and os.path.getsize(path) > min_kb * 1024:
            print(f"OK-noshow {name} {os.path.getsize(path)} bytes")
            return path
    print(f"SMALL-noshow {name}")
    return path


# ---------------------------------------------------------------- capture 01
def capture_plan_master() -> None:
    from HMS_py.core import packagemaster

    def _rows(cn=None, plan_package=None, **kw):  # ponytail: offline DB stub
        return [
            {
                "code": "CP1",
                "name": "Couple Plan",
                "total": "0",
                "room_rate": "1500",
                "pkg_amount": "0",
                "active": "Y",
            },
            {
                "code": "FM1",
                "name": "Family Plan",
                "total": "0",
                "room_rate": "2500",
                "pkg_amount": "0",
                "active": "Y",
            },
            {
                "code": "DL1",
                "name": "Deluxe Plan",
                "total": "0",
                "room_rate": "3500",
                "pkg_amount": "0",
                "active": "Y",
            },
        ]

    packagemaster.list_all = _rows  # BaseMasterForm.reload() bare call, line 523
    from HMS_py.ui.p2_masters import PlanMasterForm

    grab(PlanMasterForm(), "01_plan_master.png")


# ---------------------------------------------------------------- capture 03
def capture_oic() -> None:
    from HMS_py.core import open_item_consumption_ops as oic

    oic.list_finish_items = lambda *a, **k: [
        {
            "name": "Chicken Biryani",
            "code": "F001",
            "outlet": "MAIN KITCHEN",
            "unit": "Plate",
            "rest_code": "R01",
        },
        {
            "name": "Paneer Tikka",
            "code": "F002",
            "outlet": "TANDOOR",
            "unit": "Plate",
            "rest_code": "R02",
        },
    ]
    oic.list_raw_items = lambda *a, **k: []
    oic.list_recipes = lambda *a, **k: [
        {
            "fin_item": "F001",
            "fin_name": "Chicken Biryani",
            "outlet": "MAIN KITCHEN",
            "fin_qty": 0.5,
            "unit": "Kg",
            "app_date": "01/04/2026",
        },
        {
            "fin_item": "F002",
            "fin_name": "Paneer Tikka",
            "outlet": "TANDOOR",
            "fin_qty": 0.2,
            "unit": "Kg",
            "app_date": "01/04/2026",
        },
        {
            "fin_item": "F003",
            "fin_name": "Dal Makhani",
            "outlet": "MAIN KITCHEN",
            "fin_qty": 0.1,
            "unit": "Kg",
            "app_date": "02/04/2026",
        },
    ]
    from HMS_py.ui.open_item_consumption_ui import OpenItemConsumptionWindow

    grab(OpenItemConsumptionWindow(), "03_open_item_consumption.png")


# ---------------------------------------------------------------- capture 04
def capture_enviro() -> None:
    from HMS_py.core import enviro

    enviro.get = lambda *a, **k: dict.fromkeys(enviro.EDITABLE, "1")  # offline stub
    from HMS_py.ui.enviro_ui import EnviroScreen

    grab(EnviroScreen(), "04_enviro.png")


# ---------------------------------------------------------------- capture 02
_SOURCES = [
    {"name": "Front Office", "srno": 2, "opt1": 1},
    {"name": "EPABX", "srno": 91, "opt1": 1},
    {"name": "front office", "srno": 97, "opt1": 1},
    {"name": "Main Setup", "srno": 41, "opt1": 1},
    {"name": "Reservation", "srno": 3, "opt1": 1},
    {"name": "Messaging", "srno": 92, "opt1": 1},
    {"name": "Members Mgmt", "srno": 90, "opt1": 1},
    {"name": "Banana Split", "srno": 99, "opt1": 1},
    {"name": "Night Audit", "srno": 7, "opt1": 1},
]


def capture_mainwindow(noshow: bool) -> int:
    from HMS_py.core import db, menu as core_menu, menu_help as mh
    from HMS_py.ui import shell
    from HMS_py.ui.shell import MainWindow

    def _off(*a, **k):
        raise OSError("offline (screenshot harness)")

    db.connect = _off
    mh.sidebar_sources = lambda user: list(_SOURCES)
    mh.can_open = lambda user, cap: True
    mh.menubar_for = lambda module, user: []
    core_menu.menubar_for = lambda module, user: []
    core_menu.sidebar_modules = lambda user: list(_SOURCES)
    core_menu.roots = lambda *a, **k: []
    shell.menu = shell.menu  # test-fixture parity (no-op setattr)

    w = MainWindow("SA", {"name": "Moon and Mars", "short": "MMR", "year": "2026-27"})
    # BUG-A3 evidence: lowercase source name -> title-cased crumb
    w._on_module({"name": "main setup", "srno": 41}, w._side_buttons[0])
    print(f"crumb={w.lblCrumb.text()!r} title={w.windowTitle()!r}")
    if noshow:
        grab_noshow(w, "02_sidebar_crumbs.png")
    else:
        grab(w, "02_sidebar_crumbs.png")
    w.close()
    return 0


def main() -> int:
    if "--mainwindow" in sys.argv:
        noshow = "noshow" in sys.argv
        try:
            return capture_mainwindow(noshow)
        except Exception:
            traceback.print_exc()
            return 2
    try:
        capture_plan_master()
        capture_oic()
        capture_enviro()
    except Exception:
        traceback.print_exc()
        return 3
    # MainWindow LAST in isolated child (0xC0000409 crash risk at win.show())
    child = [sys.executable, os.path.abspath(__file__), "--mainwindow"]
    r = subprocess.run(child, timeout=120, capture_output=True, text=True)
    print(r.stdout, r.stderr)
    png = os.path.join(OUT, "02_sidebar_crumbs.png")
    ok = r.returncode == 0 and os.path.exists(png) and os.path.getsize(png) > 10 * 1024
    if not ok:
        print(f"show-mode failed (rc={r.returncode}); retrying noshow fallback")
        r2 = subprocess.run(
            child + ["noshow"], timeout=120, capture_output=True, text=True
        )
        print(r2.stdout, r2.stderr)
    for n in (
        "01_plan_master.png",
        "02_sidebar_crumbs.png",
        "03_open_item_consumption.png",
        "04_enviro.png",
    ):
        p = os.path.join(OUT, n)
        print(n, os.path.getsize(p) if os.path.exists(p) else "MISSING")
    return 0


if __name__ == "__main__":
    sys.exit(main())
