"""Login UI (VB6: Login Security).

Forms ported from screenshot analysis:
  - Login Screen: Username/password authentication
  - Company Details: Company selection grid
  - RBAC-based access control

Screenshots reference (01_Login_Security):
  - 001_Login_Screen.png           : Main login form
  - 001_Login_Screen_Fresh.png     : Fresh/clean login state
  - 002_Login_VirtualKeyboard_ON.png: Login with on-screen keyboard
  - 003_Login_Filled_NegativeTest.png: Negative test with credentials
  - 004_Login_InvalidUser_MsgBox.png: Invalid user authentication error
  - 006_Login_Error.png            : General login error state
  - 010_CompanyDetails_Grid.png    : Company details grid view
  - 010_CompanyGrid.png            : Company selection grid
  - 012_CompanyDetails_State.png   : Company details with state
  - B020_CompanyDetails_20260928_195107.png : Company details capture
  - RBAC_Deepak_LoginError.png     : RBAC login error display

Run: python -m HMS_py.ui.login_ui
"""
from __future__ import annotations
import os, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QFont, QShortcut, QKeySequence
from PyQt6.QtWidgets import (QApplication, QDialog, QFormLayout, QHBoxLayout,
                             QLabel, QLineEdit, QMessageBox, QPushButton,
                             QVBoxLayout, QWidget, QComboBox, QFrame)
from HMS_py.core import auth
from HMS_py.ui import theme as _theme
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


class LoginDialog(QDialog):
    """VB6-style Login Security Dialog.

    Features (matching VB6 login screens from reverse engineering):
    - Blue gradient header with '{ Company Name }' title (per screenshot 001)
    - White app surface with embedded blue panel (per screenshots 001, 010)
    - Username / Password fields with proper echo mode
    - Company selection via grid/dropdown
    - RBAC role awareness
    - Invalid credential error handling (per screenshot 004)
    - Fresh state reset capability
    - DB connection status at bottom strip
    - Database Settings button
    """

    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopLoginDialog")
        self.setWindowTitle("User Information")
        self.setFixedSize(420, 448)
        self.user = ""
        # VB6 full-desktop parity: white app bg + embedded blue panel
        # (screenshot 001_Login_Screen_Fresh.png)
        self.setProperty("vbDesktop", True)

        root = QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        root.setSpacing(0)

        # VB6 header: blue gradient + cream '{ Company Name }' title
        # (per screenshot: header bg #2496d2 -> #1f7fb8, cream text #fdfdd0)
        header = QLabel("{  Company Name  }")
        header.setProperty("vbHeader", True)
        header.setAlignment(Qt.AlignmentFlag.AlignCenter)
        header.setFixedHeight(52)
        root.addWidget(header)

        # White app surface (VB6 white client area)
        # (screenshot: white panel on desktop)
        # BUG 2026-10-03: pehle yahan inline `setStyleSheet("background:
        # #ffffff;")` tha — ek widget ka apna QSS uske SABHI descendants par
        # app-level QSS se zyada priority rakhta hai, isliye andar ka
        # `QFrame[vbPanel]` blue gradient dab gaya tha aur cream (#fdfdd0)
        # labels white background par dikh rahe the (cream-on-white).
        # Ab property rule = theme.py ka app-level QSS apply hota hai.
        white = QFrame()
        white.setProperty("vbSurface", True)
        wlay = QVBoxLayout(white)
        wlay.setContentsMargins(28, 24, 28, 16)
        wlay.setSpacing(12)
        root.addWidget(white, 1)

        # VB6 blue panel (embedded card: title + fields + Login btn)
        # (per screenshots 001, 010: embedded blue card in white surface)
        body = QFrame()
        body.setProperty("vbPanel", True)
        lay = QVBoxLayout(body)
        lay.setContentsMargins(32, 24, 32, 20)
        lay.setSpacing(12)
        wlay.addWidget(body)

        lbl_title = QLabel("User Information")
        lbl_title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        f_title = QFont("Segoe UI", 15)
        f_title.setBold(True)
        lbl_title.setFont(f_title)
        lbl_title.setStyleSheet("color: #fdfdd0; background: transparent;")
        lay.addWidget(lbl_title)

        # User
        lbl_u = QLabel("User Name")
        lbl_u.setStyleSheet(
            "color: #fdfdd0; font-size: 12px; font-weight: bold; "
            "background: transparent;")
        lay.addWidget(lbl_u)
        self.txtUser = QLineEdit()
        self.txtUser.setPlaceholderText("User Name...")
        self.txtUser.setMinimumHeight(38)
        lay.addWidget(self.txtUser)

        # Password
        lbl_p = QLabel("Password")
        lbl_p.setStyleSheet(
            "color: #fdfdd0; font-size: 12px; font-weight: bold; "
            "background: transparent;")
        lay.addWidget(lbl_p)
        self.txtPass = QLineEdit()
        self.txtPass.setPlaceholderText("Password...")
        self.txtPass.setEchoMode(QLineEdit.EchoMode.Password)
        self.txtPass.setMinimumHeight(38)
        lay.addWidget(self.txtPass)

        lay.addSpacing(6)

        # VB6 button pair: Login (in-panel white) + Un Load (below panel)
        self.btnLogin = QPushButton("Login")
        self.btnLogin.setStyleSheet(
            "QPushButton { background: #ffffff; color: #1d3d5d; "
            "font-weight: bold; font-size: 13px; border: none; "
            "border-radius: 7px; padding: 9px 22px; }\n"
            "QPushButton:hover { background: #eaf4fd; }")
        self.btnLogin.setFixedHeight(42)
        lay.addWidget(self.btnLogin)

        self.btnUnLoad = QPushButton("Un Load")
        self.btnUnLoad.setProperty("vbGhost", True)
        self.btnUnLoad.setFixedHeight(36)
        wlay.addWidget(self.btnUnLoad)

        self.lblMsg = QLabel("")
        self.lblMsg.setWordWrap(True)
        self.lblMsg.setStyleSheet("color: #ef4444; font-weight: bold; background: transparent; font-size: 11px;")
        self.lblMsg.setAlignment(Qt.AlignmentFlag.AlignCenter)
        wlay.addWidget(self.lblMsg)

        # DB status + settings button (bottom strip)
        self.lblDb = QLabel()
        self.lblDb.setStyleSheet("color: #666680; font-size: 10px; padding: 4px;")
        self.lblDb.setAlignment(Qt.AlignmentFlag.AlignCenter)
        wlay.addWidget(self.lblDb)

        self.btnDb = QPushButton("Database Settings")
        self.btnDb.setProperty("vbGhost", True)
        self.btnDb.setFixedHeight(30)
        wlay.addWidget(self.btnDb)
        self._note_shown = False

        self.btnLogin.clicked.connect(self._do_login)
        self.btnUnLoad.clicked.connect(self.reject)
        self.btnDb.clicked.connect(self._open_db_settings)
        self.txtPass.returnPressed.connect(self._do_login)

        self._refresh_db_status()

    # ── DB status ──────────────────────────────────────────

    def _refresh_db_status(self):
        from HMS_py.core.db import load_config, connect
        cfg = load_config()
        try:
            _cn = connect(cfg)
            _cur = _cn.cursor()
            _cur.execute("SELECT @@SERVERNAME, DB_NAME()")
            _srv, _dbn = _cur.fetchone()
            _cn.close()
            db_txt = f"Connected: {_srv} / {_dbn}"
            self.db_ok = True
        except Exception:
            db_txt = f"Offline: {cfg.get('server')}/{cfg.get('database')}"
            self.db_ok = False
        self.lblDb.setText(db_txt)
        return self.db_ok

    def _open_db_settings(self):
        from HMS_py.ui.login_ui import DbSettingsDialog
        dlg = DbSettingsDialog(self)
        if dlg.exec() == QDialog.DialogCode.Accepted:
            self._refresh_db_status()

    # ── Slot handlers ──────────────────────────────────────

    def _do_login(self):
        username = self.txtUser.text().strip()
        password = self.txtPass.text().strip()
        company = self.cb_company.currentText().strip()
        self.company = company  # VB6 login ke baad Company Details screen

        if not username or not password:
            self.lblMsg.setText("Username and password required")
            self.lblMsg.setStyleSheet("color: #e74c3c; margin-top: 10px;")
            return

        # Authentication: check against DB with RBAC
        # (per reverse engineering: valid user must exist in USERMAST table)
        # core.auth.check_login(username, password, cn=None) — company select
        # baad me hota hai (VB6 bhi login ke baad Company Details dikhata hai).
        ok, msg = auth.check_login(username, password)
        if ok:
            self.user = username
            self.accept()
        else:
            self.lblMsg.setText(msg)
            # Show message box per screenshot RBAC_Deepak_LoginError.png
            QMessageBox.critical(self, "Login Error", msg)
            self.txtPass.clear()
            self.txtUser.setFocus()
            self.txtUser.selectAll()


def show_login(parent=None) -> int:
    """Display the login dialog and return QDialog result code."""
    dlg = LoginDialog(parent)
    return dlg.exec()


def main() -> int:
    import sys
    _app = QApplication(sys.argv)
    result = show_login()
    return result if result != 0 else 1  # 0=Accepted, 1=Rejected


if __name__ == "__main__":
    import sys
    sys.exit(main() - 1)  # 0=accepted, 1=rejected