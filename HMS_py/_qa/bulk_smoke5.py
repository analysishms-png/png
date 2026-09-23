import os, sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ["QT_QPA_PLATFORM"] = "offscreen"
from PyQt6.QtWidgets import QApplication, QMessageBox
from PyQt6.QtCore import Qt
from unittest.mock import patch
from HMS_py.ui.user_permissions_ui import UserPermissionsDialog

app = QApplication.instance() or QApplication(sys.argv)
dlg = UserPermissionsDialog(user="SA")
dlg.show()
users = [dlg.cmb_user.itemText(i) for i in range(dlg.cmb_user.count())]
non_sa = next(u for u in users if u.upper() != "SA")
dlg.cmb_user.setCurrentText(non_sa)

def leaf_items(item, out):
    for i in range(item.childCount()):
        ch = item.child(i)
        if dlg.tree.itemWidget(ch, 2):
            out.append(ch)
        leaf_items(ch, out)
    return out

# module-0 ke andar pehla GROUP row select karo (module nahi)
mod0 = dlg.tree.topLevelItem(0)
grp0 = mod0.child(0)
print("mod0:", mod0.text(0), "grp0:", grp0.text(0) if grp0 else None, flush=True)
target = grp0 if grp0 is not None else mod0
dlg.tree.setCurrentItem(target)
dlg.cmb_preset.setCurrentIndex(2)  # A**P

with patch.object(QMessageBox, "information", lambda *a, **k: None):
    dlg._bulk_apply("selected")

leaves = leaf_items(target, [])
print(f"leaves under '{target.text(0)}':", len(leaves), flush=True)
for it in leaves[:3]:
    data = it.data(0, Qt.ItemDataRole.UserRole) or {}
    checks = [dlg.tree.itemWidget(it, c).isChecked() for c in (2, 3, 4, 5)]
    print(f"  {data.get('cap', '?')[:26]!r:30} flag={it.text(1):3} A/E/D/P={checks}", flush=True)

# REPORTS-ONLY on same group
dlg.cmb_preset.setCurrentIndex(5)
with patch.object(QMessageBox, "information", lambda *a, **k: None):
    dlg._bulk_apply("selected")
print("--- REPORTS-ONLY ---", flush=True)
for it in leaves[:4]:
    data = it.data(0, Qt.ItemDataRole.UserRole) or {}
    checks = [dlg.tree.itemWidget(it, c).isChecked() for c in (2, 3, 4, 5)]
    print(f"  {data.get('cap', '?')[:26]!r:30} flag={it.text(1):3} A/E/D/P={checks}", flush=True)
print("BULK_OK", flush=True)
