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

def leaves_under(item):
    out = []
    def walk(it):
        for i in range(it.childCount()):
            ch = it.child(i)
            if dlg.tree.itemWidget(ch, 2):
                out.append(ch)
            walk(ch)
    walk(item)
    return out

# Inventory module poora select karke REPORTS-ONLY
mod0 = dlg.tree.topLevelItem(0)  # Inventory
dlg.tree.setCurrentItem(mod0)
dlg.cmb_preset.setCurrentIndex(5)  # REPORTS-ONLY
with patch.object(QMessageBox, "information", lambda *a, **k: None):
    dlg._bulk_apply("selected")
leaves = leaves_under(mod0)
r_sample = next(it for it in leaves if it.text(1) == "R")
e_sample = next(it for it in leaves if it.text(1) == "E")
for it, kind in ((r_sample, "R-leaf"), (e_sample, "E-leaf")):
    checks = [dlg.tree.itemWidget(it, c).isChecked() for c in (2, 3, 4, 5)]
    print(f"  {kind} {it.text(0)[:24]!r:28} A/E/D/P={checks}", flush=True)
print("BULK_OK", flush=True)
