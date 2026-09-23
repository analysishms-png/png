import os, sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ["QT_QPA_PLATFORM"] = "offscreen"
from PyQt6.QtWidgets import QApplication
from HMS_py.ui.user_permissions_ui import UserPermissionsDialog

app = QApplication.instance() or QApplication(sys.argv)
dlg = UserPermissionsDialog(user="SA")
dlg.show()
users = [dlg.cmb_user.itemText(i) for i in range(dlg.cmb_user.count())]
non_sa = next(u for u in users if u.upper() != "SA")
dlg.cmb_user.setCurrentText(non_sa)
mod_row = dlg.tree.topLevelItem(0)
dlg.tree.setCurrentItem(mod_row)
print("before preset", flush=True)
dlg.cmb_preset.setCurrentIndex(2)
print("preset set", flush=True)

# Direct _bulk_walk test (no QMessageBox path)
stats = {"n": 0}
dlg._bulk_walk(mod_row, dlg._preset_param_for, stats)
print("direct walk n =", stats["n"], flush=True)
print("BULK_OK", flush=True)
