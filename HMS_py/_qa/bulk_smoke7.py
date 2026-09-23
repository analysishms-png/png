import os, sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ["QT_QPA_PLATFORM"] = "offscreen"
from PyQt6.QtWidgets import QApplication, QMessageBox
from unittest.mock import patch
from PyQt6.QtCore import Qt
from HMS_py.ui.user_permissions_ui import UserPermissionsDialog
from HMS_py.core import menu_help as mh

app = QApplication.instance() or QApplication(sys.argv)
dlg = UserPermissionsDialog(user="SA")
dlg.show()
users = [dlg.cmb_user.itemText(i) for i in range(dlg.cmb_user.count())]
non_sa = next(u for u in users if u.upper() != "SA")
dlg.cmb_user.setCurrentText(non_sa)

mod0 = dlg.tree.topLevelItem(0)
grp0 = mod0.child(0)
leaf0 = grp0.child(0)
data = leaf0.data(0, Qt.ItemDataRole.UserRole) or {}
print("leaf0:", leaf0.text(0), "data:", data, flush=True)
print("by_caption has:", mh.by_caption(non_sa).get(mh._norm_caption(leaf0.text(0))), flush=True)
# _set_checks manually re-run
dlg._set_checks(leaf0, leaf0.text(0), non_sa)
print("after re-run widget:", dlg.tree.itemWidget(leaf0, 2), flush=True)
print("BULK_OK", flush=True)
