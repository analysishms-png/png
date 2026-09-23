import os, sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ["QT_QPA_PLATFORM"] = "offscreen"
from PyQt6.QtWidgets import QApplication, QCheckBox
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
cap = leaf0.text(0)
row = mh.by_caption(non_sa).get(mh._norm_caption(cap))
print("cap:", cap, "row:", bool(row), flush=True)
print("full_access:", mh.full_access(non_sa), flush=True)
# _set_checks internals step-by-step
p = row["param"] if row else "?"
print("param:", p, flush=True)
c = QCheckBox()
c.setChecked("A" in (p or ""))
print("chk created:", c, flush=True)
try:
    dlg.tree.setItemWidget(leaf0, 2, c)
    print("setItemWidget OK:", dlg.tree.itemWidget(leaf0, 2) is not None, flush=True)
except Exception as e:
    print("setItemWidget FAILED:", e, flush=True)
print("BULK_OK", flush=True)
