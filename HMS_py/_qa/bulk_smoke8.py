import os, sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ["QT_QPA_PLATFORM"] = "offscreen"
from PyQt6.QtWidgets import QApplication, QMessageBox
from unittest.mock import patch
from PyQt6.QtCore import Qt
from HMS_py.ui.user_permissions_ui import UserPermissionsDialog

app = QApplication.instance() or QApplication(sys.argv)
dlg = UserPermissionsDialog(user="SA")
dlg.show()
users = [dlg.cmb_user.itemText(i) for i in range(dlg.cmb_user.count())]
non_sa = next(u for u in users if u.upper() != "SA")
dlg.cmb_user.setCurrentText(non_sa)

mod0 = dlg.tree.topLevelItem(0)
grp0 = mod0.child(0)
leaf0 = grp0.child(0)
print("tree has widget BEFORE:", dlg.tree.itemWidget(leaf0, 2) is not None, flush=True)

# ab manually _reload_tree ko phir se chala ke dekho
dlg._reload_tree()
mod0 = dlg.tree.topLevelItem(0)
grp0 = mod0.child(0)
leaf0 = grp0.child(0)
print("after 2nd reload, widget:", dlg.tree.itemWidget(leaf0, 2) is not None, flush=True)
print("BULK_OK", flush=True)
