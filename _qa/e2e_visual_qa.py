"""Full live E2E visual QA — login se Night Audit tak (real Windows render).

Flow (real user jaisa):
  1. LoginDialog: SA/KANPUR type -> &Accept click
  2. CompanyDialog: row select -> &Accept click
  3. MainWindow: har sidebar module click -> menubar + canvas screenshot
  4. MainSetupWorkbench + DbSettings screenshots
  5. Night Audit menubar expand screenshot
Output: _qa/vb6_ui/e2e/*.png + evidence.txt
"""
import os
import io
import sys

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8",
                              errors="replace")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ.pop("QT_QPA_PLATFORM", None)  # real Windows platform

from PyQt6.QtWidgets import QApplication, QDialog  # noqa: E402
from PyQt6.QtCore import QTimer  # noqa: E402

app = QApplication.instance() or QApplication([])

# Modal auto-open (Reservation master etc.) hang-safe — exec turant reject.
# (Login/Company hum _do_login() se drive karte hain, exec se nahi.)
_orig_exec = QDialog.exec
QDialog.exec = lambda self: QDialog.DialogCode.Rejected

from HMS_py.ui import shell  # noqa: E402

OUT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\_qa\vb6_ui\e2e"
os.makedirs(OUT, exist_ok=True)

log_lines = []


def log(msg):
    print(msg)
    log_lines.append(msg)


# ── Step 1: Login (real dialog, real auth)
login = shell.LoginDialog()
login.show()


def step_login():
    login.txtUser.setText("SA")
    login.txtPass.setText("KANPUR")
    login._do_login()
    if login.user != "SA":
        log(f"LOGIN FAIL: {login.lblMsg.text()!r}")
        app.quit()
        return
    log(f"STEP1 LOGIN OK user={login.user!r}")
    login.grab().save(os.path.join(OUT, "01_login.png"))
    login.close()

    # ── Step 2: Company select
    comp = shell.CompanyDialog("SA")
    comp.show()

    def step_company():
        comp.tbl.selectRow(0)
        comp._do_login()
        if not comp.selected:
            log("COMPANY FAIL")
            app.quit()
            return
        log(f"STEP2 COMPANY OK {comp.selected!r}")
        comp.grab().save(os.path.join(OUT, "02_company.png"))
        comp.close()

        # ── Step 3: MainWindow + har module
        w = shell.MainWindow(login.user, comp.selected)
        w.show()

        def step_modules(i=0):
            mods = [b for b in w._side_buttons
                    if not str(b.property("mod_target") or "").startswith("__action_")]
            if i == 0:
                app.processEvents()
                w.grab().save(os.path.join(OUT, "03_home_dashboard.png"))
                log(f"STEP3 HOME screenshot (sidebar={len(w._side_buttons)} buttons)")

            if i >= len(mods):
                # ── Step 4: MainSetupWorkbench screenshot
                wb = shell.MainSetupWorkbench(w, user="SA")
                wb.show()
                app.processEvents()
                wb.grab().save(os.path.join(OUT, "90_main_setup_workbench.png"))
                log("STEP4 WORKBENCH screenshot")
                wb.close()

                # DbSettings screenshot
                db = shell.DbSettingsDialog(w)
                db.show()
                app.processEvents()
                db.grab().save(os.path.join(OUT, "91_db_settings.png"))
                log("STEP5 DBSETTINGS screenshot")
                db.close()

                w.close()
                with open(os.path.join(OUT, "evidence.txt"), "w",
                          encoding="utf-8") as f:
                    f.write("\n".join(log_lines))
                log("E2E_DONE")
                app.quit()
                return

            btn = mods[i]
            btn.click()
            app.processEvents()

            def shot():
                name = btn.text().replace("/", "-").replace(" ", "_")[:24]
                w.grab().save(os.path.join(OUT, f"{i+4:02d}_mod_{name}.png"))
                mb = w.menuBar().actions()
                log(f"  module {btn.text()!r}: menubar_groups={len(mb)}, "
                    f"canvas={w.canvas.isVisible()}")
                step_modules(i + 1)

            QTimer.singleShot(250, shot)

        step_modules()

    QTimer.singleShot(300, step_company)


QTimer.singleShot(400, step_login)
app.exec()
QDialog.exec = _orig_exec
print("E2E_SCRIPT_EXIT")
