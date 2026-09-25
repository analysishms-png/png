# -*- coding: utf-8 -*-
"""Live restricted-user login visual verify (offscreen, DB-backed).

Flow (frmPassword -> frmCompany -> MDIForm1 jaisa):
  1. auth.check_login('admin', <decrypted>) — restricted menuHelp user
  2. CompanyDialog bypass (live comp config se)
  3. MainWindow(user) — sidebar buttons + menubar groups capture
  4. Har module click: menubar titles vs mh.menubar_for(user)
  5. Screenshots: _qa/live_restricted_<user>_<module>.png

Run:  QT_QPA_PLATFORM=offscreen python _qa/verify_live_restricted_login.py
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")


def main() -> int:
    from PyQt6.QtWidgets import QApplication
    app = QApplication.instance() or QApplication(sys.argv)

    # 1. Login (real check_login — brute-force lockout se bachne ke liye
    #    password DB se decrypt karke use hota hai, guess nahi)
    from HMS_py.core import auth, db, menu_help as mh
    users = [u for u in mh.users_with_rights() if u.upper() not in ("SA",)]
    # active restricted user chuno
    user = None
    for u in users:
        rows = db.query(
            "SELECT ActiveYN FROM UserMast WHERE USER_NAME = ?", (u,))
        if rows and (rows[0][0] or "Y").upper() == "Y":
            user = u
            break
    if user is None:
        print("koi ACTIVE restricted menuHelp user nahi — skip")
        return 0
    raw = db.query(
        "SELECT CAST(PASSWD AS varbinary(max)) FROM UserMast "
        "WHERE USER_NAME = ?", (user,))[0][0]
    stored = raw.decode("latin-1") if isinstance(raw, (bytes, bytearray)) else str(raw)
    pwd = auth.decrypt(stored)
    ok, msg = auth.check_login(user, pwd)
    print(f"[login] {user} -> {ok} {msg}")
    if not ok:
        return 1

    # 2. Company (frmCompany bypass — live config)
    from HMS_py.core import company
    comp = company.current()
    print(f"[company] {comp}")

    # 3. MainWindow restricted user ke saath
    from HMS_py.core import menu_help as mh2
    from HMS_py.ui.shell import MainWindow
    win = MainWindow(user, comp)
    win.show()
    app.processEvents()
    win._safe_open = lambda name: opened.append(name)  # type: ignore[method-assign]
    opened: list[str] = []

    rows_mh = mh2.entries(user)
    allowed = {r["caption"] for r in rows_mh}
    print(f"[user] {user}: menuHelp rows={len(rows_mh)} "
          f"full_access={mh2.full_access(user)}")

    from HMS_py.ui.sidebar_buttons import build_all_buttons
    btns = build_all_buttons(user)
    side = [b["mod_target"] for b in btns["MODULES"]]
    leaks = [t for t in side if mh2._norm_caption(t) not in allowed]
    print(f"[sidebar] targets={side}")
    print(f"[sidebar] leaks={leaks or 'none'}")

    ok_all = not leaks
    for b in btns["MODULES"]:
        target = b["mod_target"]
        btn = next((x for x in win._side_buttons
                    if str(x.property("mod_target") or "").lower()
                    == target.lower()), None)
        if btn is None:
            continue
        opened.clear()
        win._on_sidebar_click(btn.property("mod_target"), btn)
        app.processEvents()
        loaded = [a.text() for a in win.menuBar().actions()]
        expected = [g["name"] for g in mh2.menubar_for(target, user)]
        loaded_l = {x.strip().lower() for x in loaded}
        match = [t for t in expected if t.strip().lower() in loaded_l]
        status = "OK" if (not expected or len(match) == len(expected)) else "MISMATCH"
        if status != "OK":
            ok_all = False
        print(f"[click] {target:<14} menus={len(loaded):2d} "
              f"expected={len(expected):2d} matched={len(match):2d} {status}")
        shot = os.path.join(
            os.path.dirname(__file__),
            f"live_restricted_{user.replace(' ', '_')}_"
            + target.replace(" ", "_").replace("/", "_") + ".png")
        win.grab().save(shot)
        app.processEvents()

    print("\nRESULT:", "PASS" if ok_all else "FAIL")
    win.close()
    return 0 if ok_all else 1


if __name__ == "__main__":
    raise SystemExit(main())
