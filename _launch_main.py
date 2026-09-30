"""Launch HMS_py main.py GUI with SA/******** login (password via env HMS_APP_PASSWORD), then open General Setup (Tabs).

Programmatic flow (no mouse automation):
  LoginDialog fields fill -> _do_login (auth.check_login DB check)
  -> CompanyDialog first company pick -> MainWindow.show()
  -> GeneralSetupWindow.show() (screenshot-parity 6-tab window)
Prints GENERAL_SETUP_READY when done. Credentials never logged.
"""
import os
import sys

os.environ.setdefault("HMS_GUI", "1")
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from PyQt6.QtCore import QTimer
from PyQt6.QtWidgets import QApplication

from HMS_py.ui.shell import CompanyDialog, LoginDialog, MainWindow, apply_theme
from HMS_py.ui.general_setup_tabs_ui import GeneralSetupWindow

USER = "SA"
PASSWORD = os.environ.get("HMS_APP_PASSWORD", "")  # session credential: env only, never stored

WIN = None
GST = None


def main() -> int:
    global WIN, GST
    app = QApplication.instance() or QApplication(sys.argv)
    apply_theme(app, "dark")
    app.setApplicationName("HMS_py")

    login = LoginDialog()
    login.txtUser.setText(USER)
    login.txtPass.setText(PASSWORD)

    def stage_login():
        login._do_login()
        if login.user != USER:
            print("LOGIN_FAILED (credentials rejected)", flush=True)
            app.quit()
            return
        stage_company()

    def stage_company():
        comp = CompanyDialog(login.user)
        comp.reload()
        if comp.tbl.rowCount() == 0:
            print("NO_COMPANY_ROWS", flush=True)
            app.quit()
            return
        comp.tbl.selectRow(0)
        comp._do_login()
        if not comp.selected:
            print("COMPANY_SELECT_FAILED", flush=True)
            app.quit()
            return
        stage_main(comp.selected)

    def stage_main(selected):
        global WIN, GST
        WIN = MainWindow(login.user, selected)
        WIN.show()
        print("MAIN_WINDOW_READY", flush=True)
        # Screenshot-parity window: General Setup (Tabs)
        GST = GeneralSetupWindow(parent=WIN, user=login.user)
        GST.show()
        print("GENERAL_SETUP_READY", flush=True)

    QTimer.singleShot(300, stage_login)
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
