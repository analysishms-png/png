# TEMP harness: Kanpur (SA / KANPUR) live-DB QA run.
# Usage:  python qa_evidence/qa_kanpur_flow.py [--forms N] [--nodata]
# Screenshots -> qa_evidence/screenshots/kanpur_*.png
# Prints BUGS (exceptions) + captured QMessageBoxes at the end.
from __future__ import annotations

import os
import sys
import time
import traceback

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(REPO, "qa_evidence", "screenshots")
sys.path.insert(0, os.path.dirname(REPO))
os.makedirs(OUT, exist_ok=True)
os.environ.setdefault("QT_QPA_FONTDIR", os.path.join(REPO, "fonts"))

from PyQt6.QtCore import QCoreApplication, QTimer
from PyQt6.QtWidgets import QApplication, QMessageBox, QDialog

app = QApplication.instance() or QApplication([])

from HMS_py.ui.theme import apply_theme

apply_theme(app, "dark")

# Record message boxes instead of blocking offscreen forever.
BOXES: list[tuple[str, str, str]] = []


def _mk(kind, ret):
    def _fn(self=None, *a, **k):
        # static-style call: (parent, title, text, ...)
        args = a
        title = str(args[1]) if len(args) > 1 else str(k.get("title", ""))
        text = str(args[2]) if len(args) > 2 else str(k.get("text", ""))
        BOXES.append((kind, title, text))
        return ret
    return _fn


for _n, _r in (
    ("critical", QMessageBox.StandardButton.Ok),
    ("warning", QMessageBox.StandardButton.Ok),
    ("information", QMessageBox.StandardButton.Ok),
    ("question", QMessageBox.StandardButton.Yes),
):
    setattr(QMessageBox, _n, staticmethod(_mk(_n, _r)))


BUGS: list[tuple[str, str]] = []


def pump(ms: int = 400) -> None:
    end = time.time() + ms / 1000.0
    while time.time() < end:
        QCoreApplication.processEvents()
        time.sleep(0.01)


def grab(w, name: str, min_kb: int = 8, size=(1400, 900), show: bool = True) -> str:
    path = os.path.join(OUT, name)
    try:
        w.resize(*size)
        if show:
            w.show()
        else:
            w.ensurePolished()
        for _ in range(6):
            pump(150)
            w.grab().save(path)
            if os.path.exists(path) and os.path.getsize(path) > min_kb * 1024:
                print(f"OK  {name} {os.path.getsize(path)}B :: {w.windowTitle()}")
                return path
        print(f"SMALL {name} :: {w.windowTitle()}")
    except Exception:
        BUGS.append((f"grab:{name}", traceback.format_exc()))
    return path


def toplevels() -> set:
    return {w for w in QApplication.topLevelWidgets() if w.isVisible() or True}


def close_new(before: set) -> None:
    for w in toplevels() - before:
        try:
            w.close()
        except Exception:
            pass
    pump(100)


def _autoclose_after(before: set, main_win, delay_ms: int = 1500) -> None:
    """Modal dlg.exec() offscreen hang karta hai — timer se naye dialogs
    delay baad band kar do (timer exec() ke event-loop me chalta hai)."""
    def _close():
        for w in toplevels() - before:
            if w is main_win:
                continue
            try:
                w.close()
            except Exception:
                pass
    QTimer.singleShot(delay_ms, _close)


def main() -> int:
    # hard watchdog: kabhi bhi 240s me process force-quit (hang safety)
    QTimer.singleShot(240_000, lambda: (print("WATCHDOG QUIT"), os._exit(9)))

    from HMS_py.ui import shell
    from HMS_py.ui.shell import LoginDialog, CompanyDialog, MainWindow
    from HMS_py.core import menu_help as mh
    from PyQt6.QtWidgets import QPushButton

    # ---------------------------------------------------------- 1. login
    login = LoginDialog()
    grab(login, "kanpur_01_login_dialog.png")
    print("db status:", login.lblDb.text())
    login.txtUser.setText("SA")
    login.txtPass.setText("KANPUR")
    login.btnLogin.click()
    pump(600)
    print("login result:", login.result() == QDialog.DialogCode.Accepted,
          "user:", login.user, "msg:", login.lblMsg.text())
    if login.result() != QDialog.DialogCode.Accepted:
        print("LOGIN FAILED — cannot continue")
        return 1
    login.close()
    pump(100)

    # -------------------------------------------------------- 2. company
    comp = CompanyDialog(login.user)
    grab(comp, "kanpur_02_company_dialog.png")
    print("company rows:", comp.tbl.rowCount())
    if comp.tbl.rowCount() > 0:
        comp.tbl.selectRow(0)
    comp.btnLogin.click()
    pump(500)
    print("company result:", comp.result() == QDialog.DialogCode.Accepted,
          "selected:", comp.selected)
    if comp.result() != QDialog.DialogCode.Accepted:
        print("COMPANY SELECT FAILED")
        return 1
    comp.close()
    pump(100)

    # --------------------------------------------------- 3. main window
    win = MainWindow(login.user, comp.selected)
    grab(win, "kanpur_03_mainwindow.png")
    print("rail buttons:", [b.text() for b in win._side_buttons])

    rail = None
    for b in win._side_buttons:
        if b.text().strip().lower() == "main setup":
            rail = b
            break
    if rail is None:
        BUGS.append(("rail", "Main Setup rail button nahi mila"))
        print("rail buttons present:", [b.text() for b in win._side_buttons])
        return 1
    win._on_module({"name": "Main Setup", "srno": 41}, rail)
    pump(400)
    grab(win, "kanpur_04_mainsetup_module.png")
    print("crumb:", win.lblCrumb.text(), "| title:", win.windowTitle())

    # ---------------------------------------- 4. Main Setup menu + smoke
    groups = mh.menubar_for("Main Setup", "SA")
    leaves: list[tuple[str, str]] = []  # (group, leaf)

    def walk(items, group):
        for it in items:
            if it.get("children"):
                walk(it["children"], it.get("name") or group)
            else:
                leaves.append((group, it.get("name") or ""))

    walk(groups, None)
    print(f"Main Setup leaves: {len(leaves)}")

    limit = 20
    for arg_i, a in enumerate(sys.argv):
        if a == "--forms":
            limit = int(sys.argv[arg_i + 1])

    opened = 0
    for group, leaf in leaves:
        if opened >= limit:
            break
        opener = win._opener(leaf, "Main Setup", group)
        if not opener:
            continue  # disabled/coming-soon leaf
        before = toplevels()
        print(f"  [open] {group} > {leaf}", flush=True)
        try:
            _autoclose_after(before, win)
            opener(win)
            pump(350)
            opened += 1
            new_wins = [w for w in toplevels() - before
                        if w is not win and w.windowTitle()]
            if new_wins:
                grab(new_wins[-1], f"kanpur_form_{opened:02d}.png")
            else:
                print(f"  [no-new-window] {group} > {leaf}")
        except Exception:
            BUGS.append((f"open:{group}>{leaf}", traceback.format_exc()))
            print(f"  [EXC] {group} > {leaf}")
        close_new(before)

    print(f"forms opened: {opened}")

    # --------------------------------------------- 5. live data entry CRUD
    if "--nodata" not in sys.argv:
        from HMS_py.core import db, roomcategory
        code = "ZQA99"
        try:
            db.execute("DELETE FROM RoomCat WHERE Code = ?", (code,), commit=True)
        except Exception:
            pass
        rec = {
            "code": code, "name": "QA TEST CAT", "short": "ZQ",
            "maxperson": "2", "revcode": "R00099", "retchg": "10",
            "cancelchg": "5", "minadv": "500", "norooms": "1",
            "multper": "1", "inclcount": "Y", "mapcode": "QA-MAP",
        }
        try:
            roomcategory.insert(rec)
            rows = db.query(
                "SELECT Code, Name, ShortName, MapCode FROM RoomCat WHERE Code = ?",
                (code,))
            print("AFTER INSERT:", rows)
            rec2 = dict(rec, name="QA TEST CAT 2")
            roomcategory.update(code, rec2)
            rows = db.query("SELECT Name FROM RoomCat WHERE Code = ?", (code,))
            print("AFTER UPDATE:", rows)
            try:
                roomcategory.insert(dict(rec, mapcode="M" * 21))
                BUGS.append(("roomcat validation", "MapCode 21 chars par ValueError nahi aaya"))
            except ValueError as e:
                print("validation OK:", e)
        except Exception:
            BUGS.append(("dataentry:roomcat", traceback.format_exc()))
            print("DATA ENTRY EXCEPTION — traceback upar")
        finally:
            try:
                n = db.execute("DELETE FROM RoomCat WHERE Code = ?", (code,),
                               commit=True)
                print("cleanup delete rows:", n)
            except Exception:
                BUGS.append(("cleanup", traceback.format_exc()))

    # ---------------------------------------------------------- summary
    print("\n================ SUMMARY ================")
    print("screenshots:", len([f for f in os.listdir(OUT)
                               if f.startswith("kanpur_")]))
    print("message boxes captured:", len(BOXES))
    for kind, title, text in BOXES[:30]:
        print(f"  [{kind}] {title}: {text[:140]}")
    print("BUGS:", len(BUGS))
    for tag, tb in BUGS:
        print(f"--- {tag} ---")
        print(tb[-1500:])
    return 0


if __name__ == "__main__":
    sys.exit(main())
