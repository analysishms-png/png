import os, sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ["QT_QPA_PLATFORM"] = "offscreen"
from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import QApplication
from HMS_py.ui.user_permissions_ui import UserPermissionsDialog

app = QApplication.instance() or QApplication(sys.argv)
print("1 dialog", flush=True)
dlg = UserPermissionsDialog(user="SA")
dlg.show()
print("2 shown", flush=True)
users = [dlg.cmb_user.itemText(i) for i in range(dlg.cmb_user.count())]
print("3 users:", users[:5], flush=True)
non_sa = next(u for u in users if u.upper() != "SA")
print("4 select", non_sa, flush=True)
dlg.cmb_user.setCurrentText(non_sa)
print("5 selected, tree rows:", dlg.tree.topLevelItemCount(), flush=True)
mod_row = dlg.tree.topLevelItem(0)
dlg.tree.setCurrentItem(mod_row)
print("6 current set", flush=True)
dlg.cmb_preset.setCurrentIndex(2)
dlg._on_bulk_selected()
print("7 bulk applied", flush=True)

def leaf_items(root):
    out = []
    def walk(it):
        for i in range(it.childCount()):
            ch = it.child(i)
            if dlg.tree.itemWidget(ch, 2):
                out.append(ch)
            walk(ch)
    walk(root)
    return out

leaves = leaf_items(mod_row)
print("8 leaves:", len(leaves), flush=True)
for it in leaves[:3]:
    data = it.data(0, Qt.ItemDataRole.UserRole) or {}
    checks = [dlg.tree.itemWidget(it, c).isChecked() for c in (2, 3, 4, 5)]
    print(f"  {data.get('cap', '?')[:26]!r:30} flag={it.text(1):3} AEDP={checks}", flush=True)
dlg.cmb_preset.setCurrentIndex(5)
dlg._on_bulk_selected()
print("9 REPORTS-ONLY applied", flush=True)
for it in leaves[:4]:
    data = it.data(0, Qt.ItemDataRole.UserRole) or {}
    checks = [dlg.tree.itemWidget(it, c).isChecked() for c in (2, 3, 4, 5)]
    print(f"  {data.get('cap', '?')[:26]!r:30} flag={it.text(1):3} AEDP={checks}", flush=True)
print("BULK_OK", flush=True)
