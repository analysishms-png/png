import os, sys
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from PyQt6.QtWidgets import QApplication, QMainWindow
from PyQt6.QtGui import QAction
app = QApplication.instance() or QApplication(sys.argv)

from HMS_py.ui import shell
from HMS_py.core import menu

# Simulate MainWindow menu build for Main Setup
# Use minimal fake window
class W(shell.MainWindow):
    def __init__(self):
        # skip full init - build menus only
        pass

# Build like _on_module does
from PyQt6.QtWidgets import QMenuBar, QMenu
mb = QMenuBar()
groups = menu.menubar_for("Main Setup", "SA")
# need shell helpers
# call _flatten and _inject if accessible
print("groups:", [g["name"] for g in groups])

# Manually build first group menu
g0 = groups[0]
m0 = QMenu(g0["name"])
print(f"\nGROUP {g0['name']}")
for it in g0["items"]:
    if it["children"]:
        sub = QMenu(it["name"])
        # opener top action?
        opener_name = it["name"]
        act = sub.addAction(it["name"])  # simulate opener present
        print(f"  SUB {it['name']!r} first_action={act.text()!r}")
        for ch in it["children"]:
            a = sub.addAction(ch["name"])
            print(f"    child {ch['name']!r}")
    else:
        a = m0.addAction(it["name"])
        print(f"  LEAF {it['name']!r}")

# Check registry openers for key leaves
reg = shell._form_registry()
for c in ["Tax Master", "Tax Structure", "Payment Type", "Parameter",
          "State Master", "Country Master", "Printing Parameters",
          "Revenue Group Setting"]:
    fn = reg.get(c)
    print(f"reg[{c!r}]={'LIVE' if fn and 'coming_soon' not in repr(fn) else ('SOON' if fn else 'NONE')}")
