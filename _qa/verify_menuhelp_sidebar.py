# -*- coding: utf-8 -*-
"""Offscreen verify: sidebar click -> menubar menuHelp se load + screenshots.

Checks (SA user):
  1. Sidebar buttons menuHelp-primary se bane (opt1 for menuHelp L1 nodes)
  2. Click par menubar groups menuHelp menubar_for == loaded menu titles
  3. AUTO_OPEN modules: _safe_open stub (modal .exec() hang na ho) +
     menubar _load_module_menu verify
  4. Canvas/dashboard view + window title update
Screenshots: _qa/verify_menuhelp_sidebar_*.png

Restricted user (non-SA):
  5. Sidebar = sirf us user ke menuHelp modules (fallback leak nahi)

Run:  QT_QPA_PLATFORM=offscreen python _qa/verify_menuhelp_sidebar.py
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtWidgets import QApplication

from HMS_py.core import menu_help as mh
from HMS_py.ui.sidebar_buttons import build_all_buttons


def _click_module(win, mod_target: str):
    btn = next((b for b in win._side_buttons
                if str(b.property("mod_target") or "").strip().lower()
                == mod_target.strip().lower()), None)
    if btn is None:
        return None
    win._on_sidebar_click(btn.property("mod_target"), btn)
    return btn


def _menu_titles(win) -> list[str]:
    return [a.text() for a in win.menuBar().actions()]


def verify_sa(app: QApplication) -> bool:
    from HMS_py.ui.shell import MainWindow
    win = MainWindow("SA", {"name": "Moon and Mars Resorts",
                            "short": "MMR", "year": "2026-27"})
    win.show()
    app.processEvents()

    # Modal forms (ReservationBrowser.exec / MainSetupWorkbench / QMessageBox)
    # offscreen me kabhi close nahi hote — _safe_open stub karo, menubar-load
    # path (_load_module_menu) waise hi click flow me chalega.
    opened: list[str] = []
    win._safe_open = lambda name: opened.append(name)  # type: ignore[method-assign]

    btns = build_all_buttons("SA")
    ok = True

    # 1. menuHelp-primary sidebar
    mh_l1 = {s["name"].lower() for s in mh.sidebar_sources("SA")
             if s.get("opt1")}
    side_targets = {b["mod_target"].lower() for b in btns["MODULES"]}
    missing = mh_l1 - side_targets
    print(f"[1] sidebar modules={len(btns['MODULES'])} "
          f"menuHelp L1={len(mh_l1)} missing={missing or 'none'}")
    ok &= not missing

    no_opt1 = [b["label"] for b in btns["MODULES"] if b.get("opt1") is None]
    print(f"[1b] buttons without opt1 (User_Module fallback): {no_opt1}")

    # 2/3/4. click har module -> menubar titles == mh.menubar_for
    for b in btns["MODULES"]:
        target = b["mod_target"]
        opened.clear()
        _click_module(win, target)
        app.processEvents()
        loaded = _menu_titles(win)
        expected = [g["name"] for g in mh.menubar_for(target, "SA")]
        loaded_l = {x.strip().lower() for x in loaded}
        match = [t for t in expected if t.strip().lower() in loaded_l]
        view = ("dashboard" if win.fo_dashboard.isVisible()
                else "canvas" if win.canvas.isVisible() else "?")
        auto = opened or "-"
        print(f"[2] {target:<14} view={view:<9} menus={len(loaded):2d} "
              f"expected={len(expected):2d} matched={len(match):2d} "
              f"auto_open={auto}")
        if expected and len(match) < len(expected):
            ok = False
            print(f"    MISMATCH loaded={loaded} expected={expected}")
        shot = os.path.join(
            os.path.dirname(__file__),
            "verify_menuhelp_sidebar_"
            + target.replace(" ", "_").replace("/", "_") + ".png")
        win.grab().save(shot)
        app.processEvents()
    print("[4] window title:", win.windowTitle())
    win.close()
    return ok


def verify_restricted(app: QApplication, user: str) -> bool:
    from HMS_py.ui.shell import MainWindow
    rows = mh.entries(user)
    full = mh.full_access(user)
    print(f"[5] user={user} menuHelp rows={len(rows)} full_access={full}")
    if full:
        print("    (is user ke apne rows nahi — SA fallback full-access; "
              "strict-check skip, permissive OK)")
        return True
    win = MainWindow(user, {"name": "Moon and Mars Resorts",
                            "short": "MMR", "year": "2026-27"})
    win.show()
    app.processEvents()
    win._safe_open = lambda name: None  # type: ignore[method-assign]
    btns = build_all_buttons(user)
    side = [b["mod_target"] for b in btns["MODULES"]]
    allowed_caps = {r["caption"] for r in rows}
    leak = [t for t in side
            if mh._norm_caption(t) not in allowed_caps
            and not any(mh._norm_caption(t) == c for c in allowed_caps)]
    print(f"[5] sidebar targets={side}")
    print(f"[5] leaks (user ke menuHelp rows me na ho): {leak or 'none'}")
    shot = os.path.join(os.path.dirname(__file__),
                        f"verify_menuhelp_sidebar_user_{user}.png")
    win.grab().save(shot)
    app.processEvents()
    win.close()
    return not leak


def main() -> int:
    app = QApplication.instance() or QApplication(sys.argv)
    ok_sa = verify_sa(app)
    users = mh.users_with_rights()
    non_sa = [u for u in users if u.upper() != "SA"]
    print("\nmenuHelp users:", users)
    ok_res = True
    for u in non_sa[:2]:
        ok_res &= verify_restricted(app, u)
    print("\nRESULT:", "PASS" if (ok_sa and ok_res) else "FAIL")
    return 0 if (ok_sa and ok_res) else 1


if __name__ == "__main__":
    raise SystemExit(main())
