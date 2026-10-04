"""Recapture 3 screens with longer wait (mid-fill artifacts verify).

Group Accounts, User Master, Plan Master -> show + 1.5s wait -> print
browse label vs table row counts + save screenshot to _ui_shots/mainsetup/recheck/.
"""
import os
import sys

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from PyQt6.QtTest import QTest
from PyQt6.QtWidgets import (QApplication, QDialog, QFileDialog,  # noqa: E402
                             QInputDialog, QMessageBox, QTableWidget, QLabel)

CAP = {"w": None}


def _exec(self, *a, **k):
    CAP["w"] = self
    self.show()
    QTest.qWait(1500)          # fill settle hone ka time (mid-fill fix)
    return QDialog.DialogCode.Rejected


QDialog.exec = _exec
QMessageBox.information = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.warning = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.critical = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Ok)
QMessageBox.question = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Yes)
QInputDialog.getText = staticmethod(lambda *a, **k: ("", False))
QInputDialog.getInt = staticmethod(lambda *a, **k: (0, False))
QInputDialog.getItem = staticmethod(lambda *a, **k: ("", 0, False))
QFileDialog.getOpenFileName = staticmethod(lambda *a, **k: ("", ""))
QFileDialog.getSaveFileName = staticmethod(lambda *a, **k: ("", ""))

OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                   "_ui_shots", "mainsetup", "recheck")
os.makedirs(OUT, exist_ok=True)

app = QApplication(sys.argv)
from HMS_py.ui import shell  # noqa: E402

mw = shell.MainWindow("SA", {"name": "Moon and Mars Resorts",
                             "short": "MMR", "year": "2026-27"})


def recapture(caption, fname):
    CAP["w"] = None
    op = mw._opener(caption)
    res = None
    if op is None:
        print(f"{caption}: NO OPENER")
        return
    try:
        res = op(mw)
    except Exception as e:
        print(f"{caption}: ERR {type(e).__name__}: {e}")
        return
    w = res if hasattr(res, "findChildren") else CAP["w"]
    if w is None:
        print(f"{caption}: no window")
        return
    if not w.isVisible():
        w.show()
        QTest.qWait(1200)
    QTest.qWait(800)
    tables = w.findChildren(QTableWidget)
    browses = [l.text() for l in w.findChildren(QLabel) if "Browse" in l.text()]
    counts = [t.rowCount() for t in tables]
    visible = []
    for t in tables:
        visible.append(sum(1 for r in range(t.rowCount()) if not t.isRowHidden(r)))
    path = os.path.join(OUT, fname)
    w.grab().save(path)
    print(f"{caption}: browse={browses} rowCount={counts} visible={visible} -> {fname}")
    try:
        w.close()
    except Exception:
        pass


for cap, fn in (("Group Accounts", "recheck_group_accounts.png"),
                ("User Master", "recheck_user_master.png"),
                ("Plan Master", "recheck_plan_master.png")):
    recapture(cap, fn)
os._exit(0)
