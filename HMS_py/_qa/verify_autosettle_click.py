"""Headless verify: menu se 'Auto Settle Card Balance' click -> form opens.

Flow:
  1. MainWindow (offscreen) -> _load_module_menu('Members Mgmt')
  2. Menubar me Operations > Auto Settle Card Balance action dhundo
  3. action.trigger() -> dialog opens (Fill auto-run: pending count label)
  4. Screenshot + dialog title/table evidence
  5. Cleanup: dialog close
"""
import os
import sys

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtCore import QTimer
from PyQt6.QtWidgets import QApplication, QDialog, QMenuBar

from HMS_py.ui import shell

OUT_DIR = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_qa\autosettle_evidence"
LEAF = "Auto Settle Card Balance"


def find_action(menu, text):
    for a in menu.actions():
        if a.text().replace("&", "").strip().lower() == text.lower():
            return a
        sub = a.menu()
        if sub:
            hit = find_action(sub, text)
            if hit:
                return hit
    return None


def main():
    os.makedirs(OUT_DIR, exist_ok=True)
    app = QApplication.instance() or QApplication(sys.argv)
    win = shell.MainWindow("SA", {"name": "Moon and Mars Resorts",
                                  "short": "MMR", "year": "2026-27"})
    win.show()
    app.processEvents()

    # 1. module menu load
    win._load_module_menu("Members Mgmt")
    app.processEvents()
    mb = win.menuBar()
    assert mb.actions(), "menubar khali hai"

    # 2. action dhundo (kahin bhi, kisi group me)
    act = None
    for top in mb.actions():
        act = find_action(top.menu(), LEAF) if top.menu() else None
        if act:
            break
    assert act, f"menubar me '{LEAF}' action nahi mila"
    print(f"1. menubar action found: '{LEAF}' "
          f"(enabled={act.isEnabled()})")

    # 3. click simulate
    opened = []

    orig_exec = QDialog.exec
    def spy_exec(self):
        opened.append(self)
        print(f"2. dialog opened: '{self.windowTitle()}'")
        # table evidence
        tbl = None
        for t in self.findChildren(type(tbl)):
            tbl = t
            break
        if tbl is not None:
            print(f"   table rows: {tbl.rowCount()}, cols: {tbl.columnCount()}")
        app.processEvents()
        self.close()  # modal block na ho
        return 0
    QDialog.exec = spy_exec
    try:
        act.trigger()
        app.processEvents()
    finally:
        QDialog.exec = orig_exec

    assert opened, "click par koi dialog nahi khula"
    dlg = opened[0]
    assert dlg.windowTitle() == LEAF, f"title mismatch: {dlg.windowTitle()!r}"

    # 4. screenshot (main window, menubar visible)
    pm = win.grab()
    path = os.path.join(OUT_DIR, "menubar_members_mgmt.png")
    pm.save(path)
    print(f"3. screenshot: {path}")

    print("CLICK_VERIFY_OK")


if __name__ == "__main__":
    main()
