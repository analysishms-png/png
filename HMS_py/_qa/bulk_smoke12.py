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
print("cap:", cap, flush=True)
row = mh.by_caption(non_sa).get(mh._norm_caption(cap))
print("row:", row, flush=True)

# _set_checks line-by-line replicate:
item, user = leaf0, non_sa
try:
    row2 = mh.by_caption(user).get(mh._norm_caption(cap))
    present = row2 is not None
    if present:
        param = row2["param"] or "AEDP"
        flag = row2["flag"]
    else:
        param = "****" if not mh.full_access(user) else "AEDP"
        flag = "V" if not mh.full_access(user) else "-"
    hidden = flag == "V"
    item.setToolTip(0, "x")
    item.setData(0, Qt.ItemDataRole.UserRole, {"cap": cap, "present": present, "hidden": hidden})
    print("setData ok", flush=True)
    marks = {"A": 2, "E": 3, "D": 4, "P": 5}
    for right, col in marks.items():
        c = QCheckBox()
        c.setChecked(right in (param or ""))
        c.setStyleSheet("QCheckBox { margin-left: 12px; }")
        dlg.tree.setItemWidget(item, col, c)
        print(f"  set col {col} -> widget={dlg.tree.itemWidget(item, col) is not None}", flush=True)
    item.setText(1, ("V" if hidden else flag) if present else "absent")
    print("setText ok", flush=True)
except Exception:
    import traceback; traceback.print_exc()
print("BULK_OK", flush=True)
