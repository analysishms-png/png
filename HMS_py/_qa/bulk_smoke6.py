import os, sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ["QT_QPA_PLATFORM"] = "offscreen"
from PyQt6.QtWidgets import QApplication, QMessageBox
from unittest.mock import patch
from HMS_py.ui.user_permissions_ui import UserPermissionsDialog

app = QApplication.instance() or QApplication(sys.argv)
dlg = UserPermissionsDialog(user="SA")
dlg.show()
users = [dlg.cmb_user.itemText(i) for i in range(dlg.cmb_user.count())]
non_sa = next(u for u in users if u.upper() != "SA")
dlg.cmb_user.setCurrentText(non_sa)

def dump(item, depth=0):
    print("  " * depth + f"{item.text(0)} [{item.text(1)}] widget={dlg.tree.itemWidget(item, 2) is not None}", flush=True)
    for i in range(item.childCount()):
        dump(item.child(i), depth + 1)

mod0 = dlg.tree.topLevelItem(0)
print("MODULE:", mod0.text(0))
dump(mod0, 1)
print("BULK_OK", flush=True)
