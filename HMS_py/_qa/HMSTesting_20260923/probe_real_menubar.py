import os, sys, inspect
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from PyQt6.QtWidgets import QApplication, QMenuBar, QMenu
from PyQt6.QtGui import QAction
app = QApplication.instance() or QApplication(sys.argv)

from HMS_py.ui import shell
from HMS_py.core import menu

# Build real menu like MainWindow
reg = shell._form_registry()
groups = menu.menubar_for("Main Setup", "SA")
groups = shell._flatten_fo_operations("Main Setup", groups)
groups = shell._inject_ported_extras("Main Setup", groups)

mb = QMenuBar()
menus = []
for grp in groups:
    mm = mb.addMenu(grp["name"])
    menus.append(mm)
    for it in grp["items"]:
        # replicate _add_item without MainWindow
        opener = reg.get(it["name"])
        if it["children"]:
            sub = mm.addMenu(it["name"])
            if opener:
                act = sub.addAction(it["name"])
                act.triggered.connect(lambda _, fn=opener: fn(None))
                sub.addSeparator()
            for ch in it["children"]:
                cop = reg.get(ch["name"])
                if ch["children"]:
                    s2 = sub.addMenu(ch["name"])
                    if cop:
                        a2 = s2.addAction(ch["name"])
                        a2.triggered.connect(lambda _, fn=cop: fn(None))
                    for c2 in ch["children"]:
                        s2.addAction(c2["name"])
                else:
                    a = sub.addAction(ch["name"])
                    if cop:
                        a.triggered.connect(lambda _, fn=cop: fn(None))
        else:
            a = mm.addAction(it["name"])
            if opener:
                a.triggered.connect(lambda _, fn=opener: fn(None))

# Dump structure of first 2 menus
for i, mm in enumerate(menus[:3]):
    print(f"\n=== MENUBAR [{i}] {mm.title()!r} ===")
    for j, a in enumerate(mm.actions()):
        if a.isSeparator():
            print(f"  {j}: ---")
            continue
        menuObj = a.menu()
        if menuObj:
            print(f"  {j}: SUB {a.text()!r} -> {menuObj.actions().__len__()} items")
            for k, c in enumerate(menuObj.actions()[:8]):
                cm = c.menu()
                if cm:
                    print(f"      {k}: SUBSUB {c.text()!r} n={len(cm.actions())}")
                else:
                    print(f"      {k}: ACT {c.text()!r} enabled={c.isEnabled()} checkable={c.isCheckable()}")
                    # show receivers count via shortcut? can't easily
        else:
            print(f"  {j}: ACT {a.text()!r} enabled={a.isEnabled()}")

# Tax Master submenu action count / first action
gs = menus[0]
tm = None
for a in gs.actions():
    if a.text() == "Tax Master":
        tm = a.menu()
        break
if tm:
    acts = tm.actions()
    print(f"\nTax Master submenu has {len(acts)} actions:")
    for k, a in enumerate(acts):
        if a.isSeparator():
            print(f"  {k}: SEP")
        else:
            print(f"  {k}: {a.text()!r} menu={a.menu() is not None}")
