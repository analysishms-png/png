import os, sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ["QT_QPA_PLATFORM"] = "offscreen"
from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import QApplication
from HMS_py.ui.user_permissions_ui import UserPermissionsDialog

app = QApplication.instance() or QApplication(sys.argv)
dlg = UserPermissionsDialog(user="SA")
dlg.show()
users = [dlg.cmb_user.itemText(i) for i in range(dlg.cmb_user.count())]
non_sa = next(u for u in users if u.upper() != "SA")
dlg.cmb_user.setCurrentText(non_sa)

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

mod_row = dlg.tree.topLevelItem(0)
dlg.tree.setCurrentItem(mod_row)
dlg.cmb_preset.setCurrentIndex(2)  # A**P
dlg._on_bulk_selected()
leaves = leaf_items(mod_row)
for it in leaves[:3]:
    data = it.data(0, Qt.ItemDataRole.UserRole) or {}
    checks = [dlg.tree.itemWidget(it, c).isChecked() for c in (2, 3, 4, 5)]
    print(f"  {data.get('cap', '?')[:26]!r:30} flag={it.text(1):3} A/E/D/P={checks}")

dlg.cmb_preset.setCurrentIndex(5)  # REPORTS-ONLY
dlg._on_bulk_selected()
print("--- REPORTS-ONLY ---")
for it in leaves[:4]:
    data = it.data(0, Qt.ItemDataRole.UserRole) or {}
    checks = [dlg.tree.itemWidget(it, c).isChecked() for c in (2, 3, 4, 5)]
    print(f"  {data.get('cap', '?')[:26]!r:30} flag={it.text(1):3} A/E/D/P={checks}")
print("BULK_OK")
dlg.close()
app.processEvents()
