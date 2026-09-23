"""Non-SA login-flow test: admin / AMIR (restricted menus).

Strategy:
  1. Real login try: admin + AMIR with common password 'KANPUR'
     (1 attempt each — brute-force lockout safe).
  2. Fail hone par template-copy test users banate hain:
     E2E_ADM <- admin rights, E2E_AMR <- AMIR rights (mh.create_user
     template_user=...). Login unse, rights identical, real password
     untouched. Cleanup end me.
  3. Har user ke liye full flow: Login -> Company -> MainWindow ->
     sidebar dump + har module menubar (groups + disabled) ->
     screenshots + expectations check:
       - sidebar modules == mh.sidebar_sources(user) order
       - restricted: EPABX/Messaging/Members/Extras nahi dikhne chahiye
         (jab tak unke menuHelp modules na hon)
       - menubar sab non-empty, group names original-case
"""
import io
import os
import sys

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8",
                              errors="replace")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from HMS_py.core import db as _db  # noqa: F401  (db-first)

from PyQt6.QtCore import QTimer
from PyQt6.QtWidgets import QApplication, QDialog

from HMS_py.ui import shell
from HMS_py.core import menu_help as mh
from HMS_py.core.auth import check_login
from HMS_py.core import usermaster

OUT = (r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py"
       r"\HMS_py\_qa\restricted_login_test")
os.makedirs(OUT, exist_ok=True)

COMPANY = {"name": "Moon and Mars Resorts", "short": "MMR", "year": "2026-27"}
TEST_PW = "restricted123"

_log = []


def log(m):
    print(m, flush=True)
    _log.append(m)


def flow_for(user: str, pw: str, tag: str) -> dict:
    """Login -> Company -> MainWindow -> sidebar + menubar dump."""
    app = QApplication.instance() or QApplication(sys.argv)
    shell.apply_theme(app)

    # ---- real login dialog ----
    login = shell.LoginDialog()
    login.show()
    app.processEvents()
    login.txtUser.setText(user)
    login.txtPass.setText(pw)
    login._do_login()
    app.processEvents()
    assert login.result() == QDialog.DialogCode.Accepted, \
        f"{user}: login fail"
    log(f"  [{tag}] LOGIN OK: {login.user!r}")

    # ---- company ----
    comp = shell.CompanyDialog(login.user)
    comp.show()
    app.processEvents()
    comp.tbl.selectRow(0)
    comp._do_login()
    app.processEvents()
    sel = comp.selected
    log(f"  [{tag}] COMPANY: {sel.get('name')!r}")

    # ---- main window ----
    win = shell.MainWindow(login.user, sel)
    win.show()
    app.processEvents()

    side = [str(b.property("mod_target") or "") for b in win._side_buttons]
    log(f"  [{tag}] sidebar: {side}")

    # modal auto-open guard (Reservation/Main Setup)
    orig_exec = QDialog.exec
    opened = []

    def spy_exec(self, *a, **k):
        opened.append(self.windowTitle())
        QTimer.singleShot(150, self.close)
        try:
            return orig_exec(self, *a, **k)
        except Exception:
            return 0
    QDialog.exec = spy_exec
    try:
        mod_stats = []
        for b in win._side_buttons:
            tgt = str(b.property("mod_target") or "")
            if tgt.startswith("__action") or tgt.lower() == "dashboard":
                continue
            b.click()
            app.processEvents()
            disabled = 0
            groups = len(win.menuBar().actions())

            def walk(menu):
                nonlocal disabled
                for a in menu.actions():
                    if a.menu():
                        walk(a.menu())
                        continue
                    if a.text() and a.text() != "-" and not a.isEnabled():
                        disabled += 1
            for t in win.menuBar().actions():
                if t.menu():
                    walk(t.menu())
            mod_stats.append((tgt, groups, disabled))
        log(f"  [{tag}] modules: "
            + ", ".join(f"{t}={g}g/{d}d" for t, g, d in mod_stats))
        log(f"  [{tag}] modals: {opened}")
    finally:
        QDialog.exec = orig_exec

    win.grab().save(os.path.join(OUT, f"{tag}_main.png"))
    win.close()
    app.processEvents()

    return {"side": side, "modules": mod_stats, "shots": OUT}


def main():
    app = QApplication.instance() or QApplication(sys.argv)

    # ---- expectations from menuHelp (ground truth) ----------------------
    exp_admin = [s["name"].strip().lower()
                 for s in mh.sidebar_sources("admin")]
    exp_amir = [s["name"].strip().lower()
                for s in mh.sidebar_sources("AMIR")]
    log(f"expected admin modules: {exp_admin}")
    log(f"expected AMIR  modules: {exp_amir}")

    results = {}

    # ---- 1. real-password attempts (max 1 per user — lockout safe) ------
    real = {}
    for u in ("admin", "AMIR"):
        ok, msg = check_login(u, "KANPUR")
        real[u] = ok
        log(f"real login {u}/KANPUR -> {ok} ({msg})")

    # ---- 2. fallback: template-copy test users ---------------------------
    plan = []
    for src, tag in (("admin", "E2E_ADM"), ("AMIR", "E2E_AMR")):
        if real[src]:
            plan.append((src, tag, src))          # (login_as, tag, rights_of)
        else:
            mh.delete_user_rights(tag)
            usermaster.delete(tag)
            res = mh.create_user(tag, TEST_PW, label=f"E2E {src}",
                                 template_user=src)
            plan.append((tag, tag, src))
            log(f"template user {tag} <- {src}: "
                f"menuHelp rows={res['menuhelp_rows']}")

    # ---- 3. full UI flow per user ----------------------------------------
    try:
        for login_as, tag, rights_of in plan:
            log(f"--- flow: {login_as} (rights of {rights_of}) ---")
            r = flow_for(login_as, TEST_PW if login_as.startswith("E2E_")
                         else "KANPUR", tag)
            exp = exp_admin if rights_of == "admin" else exp_amir
            got = [s.strip().lower() for s in r["side"]
                   if not s.startswith("__action")
                   and s.strip().lower() != "dashboard"]
            assert got == exp, f"{tag}: sidebar mismatch\n got={got}\n exp={exp}"
            empty = [t for t, g, d in r["modules"] if g == 0]
            assert not empty, f"{tag}: khali menubar: {empty}"
            results[tag] = r
            log(f"  [{tag}] sidebar order + menubar non-empty ✓")
    finally:
        # ---- 4. cleanup ---------------------------------------------------
        for _, tag, _src in plan:
            if tag.startswith("E2E_"):
                mh.delete_user_rights(tag)
                usermaster.delete(tag)
        log("cleanup: E2E_ users + rights deleted")

    log("RESTRICTED_LOGIN_FLOW_OK")
    with open(os.path.join(OUT, "evidence.txt"), "w", encoding="utf-8") as fh:
        fh.write("\n".join(_log) + "\n")


if __name__ == "__main__":
    main()
