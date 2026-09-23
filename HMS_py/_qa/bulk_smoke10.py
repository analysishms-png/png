import os, sys, traceback
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ["QT_QPA_PLATFORM"] = "offscreen"
from PyQt6.QtWidgets import QApplication
from HMS_py.ui.user_permissions_ui import UserPermissionsDialog

app = QApplication.instance() or QApplication(sys.argv)
dlg = UserPermissionsDialog(user="SA")
dlg.show()

# _set_checks ko instrument karo
orig = dlg._set_checks
def traced(item, cap, user):
    try:
        orig(item, cap, user)
        ok = all(dlg.tree.itemWidget(item, c) is not None for c in (2,3,4,5))
        if not ok:
            print(f"  WIDGET-MISS after _set_checks: {cap!r}", flush=True)
    except Exception:
        traceback.print_exc()
        print(f"  EXC in _set_checks: {cap!r}", flush=True)
dlg._set_checks = traced  # instance attr

users = [dlg.cmb_user.itemText(i) for i in range(dlg.cmb_user.count())]
non_sa = next(u for u in users if u.upper() != "SA")
dlg.cmb_user.setCurrentText(non_sa)
print("reload done; count missing:", flush=True)
mod0 = dlg.tree.topLevelItem(0)
print("first leaf widget:", dlg.tree.itemWidget(mod0.child(0).child(0), 2) is not None, flush=True)
print("BULK_OK", flush=True)
