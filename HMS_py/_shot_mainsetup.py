"""Main Setup screenshot collector (offscreen).

Usage:
  python _shot_mainsetup.py            -> login/company/main/module + all group row shots
  python _shot_mainsetup.py <gi>       -> open every leaf of group <gi>, screenshot each

Writes PNGs + _errors.json + _triage.json into _ui_shots/mainsetup/.
Login: real LoginDialog with user SA / password kanpur (Kanpur site creds).
"""
import json
import os
import re
import sys
import threading
import traceback

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from PyQt6.QtTest import QTest
from PyQt6.QtWidgets import (QApplication, QDialog, QFileDialog,  # noqa: E402
                             QInputDialog, QMessageBox, QTableWidget,
                             QListWidget, QTextEdit, QPlainTextEdit, QWidget,
                             QLineEdit, QPushButton)

# --- hang guards (same as _qa/sweep_ui_bugs.py) ---
QDialog.exec = lambda self, *a, **k: QDialog.DialogCode.Rejected
QMessageBox.information = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.warning = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.critical = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.question = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Yes)
QInputDialog.getText = staticmethod(lambda *a, **k: ("", False))
QInputDialog.getInt = staticmethod(lambda *a, **k: (0, False))
QInputDialog.getItem = staticmethod(lambda *a, **k: ("", 0, False))
QFileDialog.getOpenFileName = staticmethod(lambda *a, **k: ("", ""))
QFileDialog.getSaveFileName = staticmethod(lambda *a, **k: ("", ""))

OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "_ui_shots", "mainsetup")
os.makedirs(OUT, exist_ok=True)
CAP = {"path": None, "saved": False}


def _exec(self, *a, **k):
    """Modal exec -> show + capture + reject (headless safe)."""
    if CAP["path"] and not CAP["saved"]:
        self.show()
        _wait(350)
        self.grab().save(CAP["path"])
        CAP["saved"] = True
        self.hide()
    return QDialog.DialogCode.Rejected


QDialog.exec = _exec

USER, PASS = "SA", "kanpur"   # Kanpur site creds (password from git history: kanpur)


def _wait(ms):
    QTest.qWait(ms)


def _san(s):
    return re.sub(r"[^0-9A-Za-z]+", "_", s).strip("_")[:60] or "screen"


def describe(w):
    """Auto-triage snapshot of a window: tables/labels/buttons state."""
    info = {"class": type(w).__name__, "title": w.windowTitle() if w else ""}
    try:
        tables = []
        for t in w.findChildren(QTableWidget):
            hdr = []
            for c in range(t.columnCount()):
                it = t.horizontalHeaderItem(c)
                hdr.append(it.text() if it else "")
            first = []
            if t.rowCount():
                first = [(t.item(0, c).text() if t.item(0, c) else "") for c in range(t.columnCount())]
            tables.append({"rows": t.rowCount(), "cols": t.columnCount(),
                           "hdr": hdr, "first_row": first,
                           "objectName": t.objectName()})
        info["tables"] = tables
        lists = [{"rows": l.count(), "objectName": l.objectName()}
                 for l in w.findChildren(QListWidget)]
        info["lists"] = lists
        from PyQt6.QtWidgets import QPushButton
        btns = []
        for b in w.findChildren(QPushButton):
            btns.append({"text": b.text(), "enabled": b.isEnabled()})
        info["buttons"] = btns
        edits = []
        from PyQt6.QtWidgets import QLineEdit
        for e in w.findChildren(QLineEdit):
            edits.append({"name": e.objectName(), "text": e.text()})
        info["edits"] = edits
        txts = []
        for t in list(w.findChildren(QTextEdit)) + list(w.findChildren(QPlainTextEdit)):
            txts.append({"name": t.objectName(), "len": len(t.toPlainText())})
        info["texts"] = txts
    except Exception as e:
        info["describe_err"] = f"{type(e).__name__}: {e}"
    return info


def shot(w, name):
    path = os.path.join(OUT, name)
    w.grab().save(path)
    return path


def do_login(app):
    from HMS_py.ui import shell
    shell.apply_theme(app, "dark")
    try:
        shell.install_vb6_keymap(app)
    except Exception:
        pass

    login = shell.LoginDialog()
    login.show()
    _wait(400)
    shot(login, "00_login.png")
    login.txtUser.setText(USER)
    login.txtPass.setText(PASS)
    login.btnLogin.click()
    _wait(600)
    if not login.user:
        raise SystemExit(f"LOGIN FAILED: {login.lblMsg.text()}")
    login.hide()

    comp = shell.CompanyDialog(login.user)
    comp.show()
    _wait(400)
    # Kanpur company row (Analysis.ini 7=KK, 8=Kanpur) ya pehli row
    rows = comp.tbl.rowCount()
    pick = 0
    for r in range(rows):
        it = comp.tbl.item(r, 0)
        if it and "kanpur" in it.text().lower():
            pick = r
            break
        it1 = comp.tbl.item(r, 1)
        if it1 and it1.text().strip().upper() == "KK":
            pick = r
            break
    comp.tbl.selectRow(pick)
    _wait(150)
    shot(comp, "01_company.png")
    comp.btnLogin.click()
    _wait(500)
    if not comp.selected:
        raise SystemExit("COMPANY SELECT FAILED")
    comp.hide()

    win = shell.MainWindow(login.user, comp.selected)
    win.show()
    _wait(700)
    shot(win, "02_main.png")
    return shell, win


def goto_main_setup(win):
    from PyQt6.QtWidgets import QPushButton
    btn = None
    for b in win.findChildren(QPushButton):
        if b.text().strip().lower() == "main setup":
            btn = b
            break
    if btn is None:
        btn = win._side_buttons[1] if len(win._side_buttons) > 1 else None
    win._on_module({"name": "Main Setup", "srno": 41}, btn)
    _wait(400)
    shot(win, "03_mainsetup_module.png")


def open_leaf(win, name, cap_path):
    """Open one leaf; return (captured?, describe dict, error|None)."""
    opener = win._opener(name)
    if opener is None:
        return False, {}, "no-opener"
    CAP["path"] = cap_path
    CAP["saved"] = False
    before = {w for w in QApplication.instance().topLevelWidgets() if w.isVisible()}
    res = None
    err = None
    try:
        res = opener(win)
    except Exception as e:
        err = f"{type(e).__name__}: {e}"
        traceback.print_exc()
    _wait(450)
    target = None
    if CAP["saved"]:
        target = None
    elif isinstance(res, QWidget) and res.isVisible():
        target = res
    else:
        new = [w for w in QApplication.instance().topLevelWidgets()
               if w.isVisible() and w not in before]
        target = new[-1] if new else None
    info = {}
    if target is not None:
        shot(target, os.path.basename(cap_path))
        info = describe(target)
        try:
            target.close()
        except Exception:
            pass
        _wait(120)
    captured = CAP["saved"] or target is not None
    CAP["path"] = None
    if not captured and err is None:
        err = "no-visible-window"
    return captured, info, err


def main():
    app = QApplication.instance() or QApplication(sys.argv)

    # watchdog: koi window hang ho to abort
    def _wd():
        import time
        last, stall = None, 0
        while True:
            time.sleep(5)
            cur = CAP.get("path") or "<login>"
            if cur == last:
                stall += 5
            else:
                stall = 0
            last = cur
            if stall >= 150:
                print(f"*** WATCHDOG hang on {cur} ***", flush=True)
                os._exit(2)
    threading.Thread(target=_wd, daemon=True).start()

    shell, win = do_login(app)
    goto_main_setup(win)

    groups = win._menus("Main Setup", "SA")
    errors = []
    triage = {}

    arg = sys.argv[1] if len(sys.argv) > 1 else None
    if arg is None:
        for gi, g in enumerate(groups):
            win._on_group("Main Setup", g)
            _wait(250)
            shot(win, f"10_group_{gi:02d}_{_san(g['name'])}.png")
            print(f"group {gi}: {g['name']} ({len(g['items'])} items)")
    else:
        gi = int(arg)
        g = groups[gi]
        win._on_group("Main Setup", g)
        _wait(250)
        flat = []

        def walk(items):
            for it in items:
                flat.append(it)
                walk(it.get("children") or [])
        walk(g["items"])
        for li, it in enumerate(flat):
            name = it["name"]
            cap = os.path.join(OUT, f"20_g{gi:02d}_{li:02d}_{_san(name)}.png")
            captured, info, err = open_leaf(win, name, cap)
            rec = {"group": g["name"], "leaf": name, "captured": captured,
                   "err": err, "info": info}
            triage[f"g{gi:02d}_{li:02d}_{_san(name)}"] = rec
            status = "OK " if captured and not err else f"ERR({err})"
            print(f"[{gi}:{li}] {status} {name}")
            if err:
                errors.append(rec)

    with open(os.path.join(OUT, f"_triage_g{arg}.json"), "w") as f:
        json.dump(triage, f, indent=1, default=str)
    with open(os.path.join(OUT, "_errors.json"), "a") as f:
        f.write(json.dumps(errors, indent=1, default=str) + "\n")
    print(f"DONE arg={arg} errors={len(errors)}")
    os._exit(0 if not errors else 1)


if __name__ == "__main__":
    main()
