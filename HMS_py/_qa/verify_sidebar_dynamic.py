"""Dynamic sidebar verify (menuHelp-driven).

Checks:
  1. SA sidebar = ACTIONS section + MODULES section (menuHelp L1 order,
     ini-key-9 parity) — 'finance' pehla module, 'Messaging' last.
  2. Har module button click -> menubar load (non-empty).
  3. Restricted user (kot): sidebar me sirf uske modules.
  4. Screenshot evidence (SA).
"""
import io
import os
import sys

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8",
                              errors="replace")

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

# db-first import (HMS_py/__init__ attribute-chain)
from HMS_py.core import db as _db  # noqa: F401,E402

from PyQt6.QtWidgets import QApplication
from HMS_py.ui import shell
from HMS_py.core import menu_help as mh

OUT = (r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py"
       r"\HMS_py\_qa\sidebar_dynamic")
os.makedirs(OUT, exist_ok=True)


def side_items(win):
    out = []
    for b in win._side_buttons:
        out.append((b.property("full_text"), b.property("mod_target")))
    return out


def main():
    app = QApplication.instance() or QApplication(sys.argv)
    win = shell.MainWindow("SA", {"name": "Moon and Mars Resorts",
                                  "short": "MMR", "year": "2026-27"})
    win.show()
    app.processEvents()

    items = side_items(win)
    targets = [t for _, t in items]
    print(f"1. sidebar items: {len(items)}")
    for txt, tgt in items:
        print(f"   {txt}")

    # expected module order (menuHelp L1, ini-9 parity)
    expected = [s["name"] for s in mh.sidebar_sources("SA")]
    low_targets = [str(t).strip().lower() for t in targets
                   if not str(t).startswith("__action")
                   and str(t).strip().lower() != "dashboard"]
    low_expected = [str(e).strip().lower() for e in expected]
    assert low_targets == low_expected, \
        f"order mismatch:\n got={low_targets}\n exp={low_expected}"
    print("2. module order == menuHelp sidebar_sources order ✓")

    # click-test: har module button menubar bhar de
    fail = []
    for b in win._side_buttons:
        tgt = b.property("mod_target")
        if str(tgt).startswith("__action") or tgt == "Dashboard":
            continue
        b.click()
        app.processEvents()
        if not win.menuBar().actions():
            fail.append(tgt)
    assert not fail, f"menubar khali: {fail}"
    print("3. click-test: sab module menubars non-empty ✓")

    # restricted user
    win2 = shell.MainWindow("kot", {"name": "Moon and Mars Resorts",
                                    "short": "MMR", "year": "2026-27"})
    win2.show()
    app.processEvents()
    items2 = side_items(win2)
    print(f"4. kot sidebar: {items2}")
    assert items2, "kot ka sidebar khali hai"
    # kot ke menuHelp modules ke bahar koi module na ho
    kot_expected = {s["name"].strip().lower()
                    for s in mh.sidebar_sources("kot")}
    for _, tgt in items2:
        t_low = str(tgt).strip().lower()
        if t_low == "dashboard" or str(tgt).startswith("__action"):
            continue  # pinned actions sabko dikhte hain
        assert t_low in kot_expected, \
            f"kot ko extra module dikha: {tgt}"
    print("   restricted scope ✓")

    pm = win.grab()
    path = os.path.join(OUT, "sidebar_sa.png")
    pm.save(path)
    print(f"5. screenshot: {path}")
    print("SIDEBAR_DYNAMIC_OK")


if __name__ == "__main__":
    main()
