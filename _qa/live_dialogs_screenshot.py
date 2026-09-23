"""Live (visible) screenshots of VB6-style Login + Company dialogs.

Window 2 sec dikhegi, login screenshot, phir company dialog screenshot, band.
Output: _qa/vb6_ui/live_login_vb6.png, live_company_vb6.png
"""
import os
import io
import sys

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8",
                              errors="replace")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ.pop("QT_QPA_PLATFORM", None)  # real Windows platform

from PyQt6.QtWidgets import QApplication  # noqa: E402
from PyQt6.QtCore import QTimer  # noqa: E402

app = QApplication.instance() or QApplication([])

from HMS_py.ui import shell  # noqa: E402

OUT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\_qa\vb6_ui"
os.makedirs(OUT, exist_ok=True)

dlg = shell.LoginDialog()
dlg.show()


def shot_login():
    dlg.grab().save(os.path.join(OUT, "live_login_vb6.png"))
    print("live_login_vb6.png saved")
    dlg.txtUser.setText("SA")
    dlg.txtPass.setText("KANPUR")
    dlg._do_login()
    if dlg.user != "SA":
        print(f"login failed: {dlg.lblMsg.text()!r}")
        app.quit()
        return
    cd = shell.CompanyDialog(dlg.user)
    cd.show()

    def shot_company():
        cd.grab().save(os.path.join(OUT, "live_company_vb6.png"))
        print("live_company_vb6.png saved")
        cd.close()
        dlg.close()
        app.quit()

    QTimer.singleShot(1200, shot_company)


QTimer.singleShot(1500, shot_login)
app.exec()
print("LIVE_DIALOG_SHOTS_DONE")
