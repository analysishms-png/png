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
mod_row = dlg.tree.topLevelItem(0)
dlg.tree.setCurrentItem(mod_row)
dlg.cmb_preset.setCurrentIndex(2)

# _bulk_apply directly (QMessageBox ko stub karke)
from unittest.mock import patch
from PyQt6.QtWidgets import QMessageBox
with patch.object(QMessageBox, "information", lambda *a, **k: None):
    dlg._bulk_apply("selected")
print("bulk applied, status:", dlg.lbl_status.text()[-60:], flush=True)

# checks verify
stats = {"n": 0, "samples": []}
def walk(it):
    for i in range(it.childCount()):
        ch = it.child(i)
        if dlg.tree.itemWidget(ch, 2):
            data = ch.data(0, Qt.ItemDataRole.UserRole) or {}
            if data.get("present") and len(stats["samples"]) < 3:
                checks = [dlg.tree.itemWidget(ch, c).isChecked() for c in (2, 3, 4, 5)]
                stats["samples"].append((data.get("cap", "?"), it.text(1) if False else ch.text(1), checks))
            stats["n"] += 1
        walk(ch)
walk(mod_row)
print("leaves:", stats["n"])
for cap, flag, checks in stats["samples"]:
    print(f"  {cap[:26]!r:30} flag={flag:3} AEDP={checks}")
print("BULK_OK", flush=True)
