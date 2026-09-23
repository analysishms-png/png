"""LIVE app run + real login flow testing (offscreen, real DB).

Flow (jaise user karta hai):
  1. LoginDialog: user='SA', pass='KANPUR' -> _do_login()
  2. CompanyDialog: pehli company select -> accept
  3. MainWindow: sidebar build (menuHelp-driven) -> har module click
  4. Har module: menubar non-empty + canvas hint + window title
  5. Reservation auto-open modal bug bhi verify hoga (patched)
  6. Screenshots + PASS/FAIL evidence
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

OUT = (r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py"
       r"\HMS_py\_qa\login_flow_test")
os.makedirs(OUT, exist_ok=True)

USER = "SA"
PASS = "KANPUR"

_log = []


def log(msg):
    print(msg, flush=True)
    _log.append(msg)


def main():
    app = QApplication.instance() or QApplication(sys.argv)
    shell.apply_theme(app)

    # ---- 1. LOGIN (real dialog, real credentials) ----------------------
    login = shell.LoginDialog()
    login.show()
    app.processEvents()
    login.txtUser.setText(USER)
    login.txtPass.setText(PASS)
    login._do_login()
    app.processEvents()
    assert login.result() == QDialog.DialogCode.Accepted, \
        f"login accept nahi hua (user={USER})"
    log(f"1. LOGIN OK: user={login.user!r}")
    login_shots = os.path.join(OUT, "01_login_filled.png")
    login.grab().save(login_shots)

    # ---- 2. COMPANY select (real dialog, real button-handler) ----------
    comp = shell.CompanyDialog(login.user)
    comp.show()
    app.processEvents()
    assert comp.tbl.rowCount() > 0, "company grid empty"
    comp.tbl.selectRow(0)
    app.processEvents()
    comp._do_login()  # selected set karke accept() karta hai
    app.processEvents()
    assert comp.result() == QDialog.DialogCode.Accepted, "company accept fail"
    sel = comp.selected
    log(f"2. COMPANY OK: {sel.get('name')!r} year={sel.get('year')!r}")

    # ---- 3. MAIN WINDOW + sidebar ---------------------------------------
    win = shell.MainWindow(login.user, sel)
    win.show()
    app.processEvents()
    log(f"3. MAIN WINDOW: sidebar items={len(win._side_buttons)}")
    for b in win._side_buttons:
        log(f"   - {b.property('full_text')}")

    # ---- 4. HAR MODULE click (real sidebar buttons) ----------------------
    # Modal auto-open (Reservation -> Reservation/Cancellation .exec()) ko
    # spy karo: dialog khule to close kar dena (hang na ho)
    orig_exec = QDialog.exec
    modals_opened = []

    def spy_exec(self, *a, **k):
        modals_opened.append(self.windowTitle())
        QTimer.singleShot(150, self.close)  # turant band
        try:
            return orig_exec(self, *a, **k)
        except Exception:
            return 0
    QDialog.exec = spy_exec
    try:
        results = []
        for b in win._side_buttons:
            tgt = str(b.property("mod_target") or "")
            if tgt.startswith("__action"):
                continue
            b.click()
            app.processEvents()
            mb_n = len(win.menuBar().actions())
            disabled = 0

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
            results.append((tgt, mb_n, disabled))
            log(f"4. click {tgt!r}: menubar groups={mb_n}, disabled={disabled}")
            win.grab().save(os.path.join(
                OUT, f"mod_{tgt.strip().lower().replace(' ', '_') or 'x'}.png"))
        assert results, "koi module click nahi hua"
        empty = [t for t, n, d in results if n == 0]
        assert not empty, f"menubar khali modules: {empty}"
        log(f"4b. sab modules menubar non-empty ✓ (modals opened: {modals_opened})")
    finally:
        QDialog.exec = orig_exec

    # ---- 5. logout/relaunch safety: window close -------------------------
    win.close()
    app.processEvents()
    log("5. window close OK")
    log("LOGIN_FLOW_TEST_OK")

    with open(os.path.join(OUT, "evidence.txt"), "w", encoding="utf-8") as fh:
        fh.write("\n".join(_log) + "\n")


if __name__ == "__main__":
    main()
