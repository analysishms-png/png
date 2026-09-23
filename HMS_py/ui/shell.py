"""HMS_py shell: Login -> Company select -> Main window (VB6 flow, P0).

Screens (VB6 originals jaisi - production screenshots se):
  1. "User Information"  - frmPassword: User Name/Password + Login/Un Load
  2. "Company Details"   - frmCompany: grid (Company Name/Short Name/
                           Current Year) + Login/Un Load/Database Update
  3. Main window         - title '{Company} { Year }', left sidebar modules
                           (Analysis.ini key 9), module click pe top menubar
                           (User_Module se), leaf click pe ported forms.

Menu evidence: HMS_py/core/menu.py docstring.
"""
import os
import sys
import warnings

# ── Qt font fix: deploy fonts so QFontDatabase finds them ──────────
_FONTS_DIR = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
                          "fonts")
if os.path.isdir(_FONTS_DIR) and not os.environ.get("QT_QPA_FONTDIR"):
    os.environ["QT_QPA_FONTDIR"] = _FONTS_DIR

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

# Suppress propagateSizeHints() warning (harmless on Windows platform plugin)
_original_showWarning = warnings.showwarning
def _qt_message_handler(msg_type, context, message):
    if "propagateSizeHints" in message:
        return          # swallow – harmless
    if "Cannot find font" in message:
        return          # handled by QT_QPA_FONTDIR above
    _original_showWarning(msg_type, context, message)
warnings.showwarning = _qt_message_handler

from PyQt6.QtWidgets import (QApplication, QDialog, QFormLayout, QGridLayout,
                             QHBoxLayout, QLabel, QLineEdit, QMainWindow,
                             QMessageBox, QPushButton, QTableWidget,
                             QTableWidgetItem, QVBoxLayout, QWidget, QFrame,
                             QSizePolicy, QScrollArea)
from PyQt6.QtCore import Qt, qInstallMessageHandler, QtMsgType, QTimer
from PyQt6.QtGui import QFont, QShortcut, QKeySequence, QColor, QPixmap

from HMS_py.ui import theme as _theme
from HMS_py.ui.theme import (apply_theme, current_theme, palette,
                             toggle_theme)
from HMS_py.ui.glass import AppearanceDialog, AuroraCanvas
from HMS_py.ui.design import WindowSize, Size, Spacing, Font
from HMS_py.ui.front_office_dashboard import FrontOfficeDashboard
from HMS_py.ui import sidebar_buttons as _sb
from HMS_py.core import menu_help as _mh

# Theme-aware legacy stylesheet (folio_ui.py import compatibility).
# Runtime pe current palette se banta hai; _refresh_style() se update karo.
def _build_style() -> str:
    t = palette()
    return f"""
    QWidget#vbScreen {{ background: {t['bg']}; }}
    QLabel#vbTitle {{ background: {t['surface_solid']}; color: {t['text']};
        font-size: 12pt; font-weight: bold; padding: 4px;
        border-radius: {_theme._active['radius']}px; }}
    QPushButton#vbBtn {{ background: {t['surface_hover']};
        border: 1px solid {t['border']}; border-radius: {_theme._active['radius']}px;
        font-weight: bold; padding: 6px 22px; color: {t['text']}; }}
    QPushButton#vbBtn:hover {{ border-color: {t['accent']};
        background: {t['glass_tint']}; }}
    QTableWidget {{ background: {t['glass_tint']}; color: {t['text']};
        gridline-color: {t['border']}; border-radius: {_theme._active['radius']}px; }}
    QTableWidget::item {{ color: {t['text']}; }}
    QTableWidget::item:selected {{ background: {t['accent']}; color: #fff; }}
    QHeaderView::section {{ background: {t['header_grad_top']}; color: {t['text']};
        border: none; border-bottom: 2px solid {t['accent']}; font-weight: bold; }}
    QTableCornerButton::section {{ background: {t['header_grad_top']}; }}
    """


STYLE = _build_style()


def _refresh_style(app=None):
    """Theme change ke baad legacy STYLE ko naye palette se sync karo."""
    global STYLE
    STYLE = _build_style()
    (app or QApplication.instance()).setStyleSheet(app.styleSheet())


_APP = None


def _ensure_qapp():
    global _APP
    _APP = QApplication.instance() or QApplication(["HMS_py"])
    return _APP


_ensure_qapp()


def _qt_msg_handler(msg_type, context, message):
    """Filter noisy Qt messages that don't affect functionality."""
    if "propagateSizeHints" in message:
        return
    if "Cannot find font" in message:
        return
    # pass everything else through to default handler
    if msg_type == QtMsgType.QtCriticalMsg:
        raise RuntimeError(message)
    elif msg_type == QtMsgType.QtFatalMsg:
        raise RuntimeError(message)

qInstallMessageHandler(_qt_msg_handler)

from HMS_py.core import auth, company, menu

# VB6-look shared styles ab theme engine (HMS_py.ui.theme) se aate hain.
# User Appearance dialog se colors define kar sakta hai (glassmorphism).


# ---------------------------------------------------------------- db settings
class DbSettingsDialog(QDialog):
    """Manual DB config: Server + Database -> Analysis.ini key 1/6.

    Save ke baad config [HMS] section me likhi jaati hai (VB6 wahi
    Analysis.ini use karta hai) aur connection test hota hai."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Database Settings")
        self.setFixedSize(480, 340)

        from HMS_py.core.db import load_config
        cfg = load_config()

        root = QVBoxLayout(self)
        root.setContentsMargins(20, 20, 20, 20)
        root.setSpacing(14)

        title = QLabel("Database Connection")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(title)

        note = QLabel(
            "SQL Server ke liye server name aur database naam yahan daalo.\n"
            "Save karne par Analysis.ini update hogi aur login fir isi DB se hoga.")
        note.setWordWrap(True)
        note.setProperty("glassSub", True)
        note.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(note)

        form = QFormLayout()
        form.setSpacing(12)

        lbl_s = QLabel("Server Name")
        lbl_s.setProperty("glassSub", True)
        self.txtServer = QLineEdit(cfg.get("server", ""))
        self.txtServer.setMinimumHeight(36)
        self.txtServer.setPlaceholderText("e.g. Localhost or DESKTOP-XYZ\\SQLEXPRESS")
        form.addRow(lbl_s, self.txtServer)

        lbl_d = QLabel("Database Name")
        lbl_d.setProperty("glassSub", True)
        self.txtDatabase = QLineEdit(cfg.get("database", ""))
        self.txtDatabase.setMinimumHeight(36)
        self.txtDatabase.setPlaceholderText("e.g. KailashData2526")
        form.addRow(lbl_d, self.txtDatabase)
        root.addLayout(form)

        self.lblStatus = QLabel("")
        self.lblStatus.setWordWrap(True)
        self.lblStatus.setProperty("glassSub", True)
        self.lblStatus.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(self.lblStatus)

        btns = QHBoxLayout()
        btns.setSpacing(8)
        self.btnTest = QPushButton("Test")
        self.btnTest.setFixedHeight(38)
        self.btnTest.setToolTip("Test database connection")
        self.btnSave = QPushButton("Save")
        self.btnSave.setFixedHeight(38)
        self.btnSave.setProperty("accent", True)
        self.btnSave.setToolTip("Save database connection settings")
        self.btnCancel = QPushButton("Cancel")
        self.btnCancel.setFixedHeight(38)
        self.btnCancel.setToolTip("Discard changes and close")
        btns.addWidget(self.btnTest)
        btns.addStretch()
        btns.addWidget(self.btnSave)
        btns.addWidget(self.btnCancel)
        root.addLayout(btns)

        self.btnTest.clicked.connect(self._test)
        self.btnSave.clicked.connect(self._save)
        self.btnCancel.clicked.connect(self.reject)

    def _connect_info(self) -> dict:
        from HMS_py.core import db
        return {"server": self.txtServer.text().strip(),
                "database": self.txtDatabase.text().strip()}

    def _test(self):
        from HMS_py.core import db
        info = self._connect_info()
        if not info["server"] or not info["database"]:
            self.lblStatus.setText("Server aur Database dono bharo")
            self.lblStatus.setStyleSheet(
                f"color: {palette()['danger']}; font-size: 11px;")
            return
        try:
            tmp = dict(db.load_config())
            tmp.update(info)
            cn = db.connect(tmp)
            cur = cn.cursor()
            cur.execute("SELECT @@SERVERNAME, DB_NAME()")
            srv, dbn = cur.fetchone()
            cn.close()
            self.lblStatus.setStyleSheet(
                f"color: {palette()['success']}; font-size: 11px;")
            self.lblStatus.setText(f"Connected: {srv} / {dbn}")
        except Exception as e:
            self.lblStatus.setStyleSheet(
                f"color: {palette()['danger']}; font-size: 11px;")
            self.lblStatus.setText(f"Fail: {e}")

    def _save(self):
        from HMS_py.core import db
        info = self._connect_info()
        if not info["server"] or not info["database"]:
            self.lblStatus.setText("Server aur Database dono bharo")
            self.lblStatus.setStyleSheet(
                f"color: {palette()['danger']}; font-size: 11px;")
            return
        try:
            path = db.save_config(server=info["server"], database=info["database"])
            self.lblStatus.setStyleSheet(
                f"color: {palette()['success']}; font-size: 11px;")
            self.lblStatus.setText(f"Saved: {path}")
            self.accept()
        except Exception as e:
            self.lblStatus.setStyleSheet(
                f"color: {palette()['danger']}; font-size: 11px;")
            self.lblStatus.setText(f"Save fail: {e}")


# ---------------------------------------------------------------- login
class LoginDialog(QDialog):
    """Modern login dialog - professional glass card style."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("HMS Login")
        self.setFixedSize(*WindowSize.LOGIN)
        self.user = ""

        from HMS_py.ui.design import DS
        from HMS_py.ui.theme import palette

        p = palette()
        self.setStyleSheet(f"background: {p['bg']};")

        root = QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        root.setSpacing(0)

        # Header with app branding
        header = QWidget()
        header.setFixedHeight(100)
        header.setStyleSheet(f"background: transparent;")
        hl = QVBoxLayout(header)
        hl.setAlignment(Qt.AlignmentFlag.AlignCenter)
        hl.setContentsMargins(0, 20, 0, 0)
        
        app_name = QLabel("HMS")
        app_name.setFont(QFont("Segoe UI", 28, QFont.Weight.Bold))
        app_name.setStyleSheet(f"color: {p['accent']}; background: transparent;")
        app_name.setAlignment(Qt.AlignmentFlag.AlignCenter)
        hl.addWidget(app_name)
        
        subtitle = QLabel("Hotel Management System")
        subtitle.setFont(QFont("Segoe UI", 10))
        subtitle.setStyleSheet(f"color: {p['text_dim']}; background: transparent; margin-top: -8px;")
        subtitle.setAlignment(Qt.AlignmentFlag.AlignCenter)
        hl.addWidget(subtitle)
        
        root.addWidget(header)

        # Card body using design system
        card = DS.make_card_v2("", elevated=True)
        card.setFixedWidth(380)
        lay = card.layout()
        lay.setContentsMargins(32, 24, 32, 24)
        lay.setSpacing(Spacing.MD)

        # Title
        lbl_title = QLabel("Sign in to your account")
        lbl_title.setFont(QFont("Segoe UI", 13, QFont.Weight.Medium))
        lbl_title.setStyleSheet(f"color: {p['text']}; background: transparent;")
        lbl_title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        lay.addWidget(lbl_title)

        # User field
        lbl_u = QLabel("User Name")
        lbl_u.setFont(QFont("Segoe UI", 10, QFont.Weight.Medium))
        lbl_u.setStyleSheet(f"color: {p['text']}; background: transparent; margin-bottom: 4px;")
        lay.addWidget(lbl_u)
        
        self.txtUser = DS.make_line_edit(placeholder="Enter username...", min_width=320)
        lay.addWidget(self.txtUser)

        # Password field
        lbl_p = QLabel("Password")
        lbl_p.setFont(QFont("Segoe UI", 10, QFont.Weight.Medium))
        lbl_p.setStyleSheet(f"color: {p['text']}; background: transparent; margin-top: 8px; margin-bottom: 4px;")
        lay.addWidget(lbl_p)
        
        self.txtPass = DS.make_line_edit(placeholder="Enter password...", min_width=320)
        self.txtPass.setEchoMode(QLineEdit.EchoMode.Password)
        lay.addWidget(self.txtPass)

        lay.addSpacing(Spacing.SM)

        # Buttons using design system
        self.btnLogin = DS.styled_button("Sign In", role="primary", tooltip="Sign in to HMS (Enter)")
        self.btnLogin.setFixedHeight(Size.BUTTON_H_LG)
        self.btnLogin.setMinimumWidth(320)
        lay.addWidget(self.btnLogin)

        self.btnUnLoad = DS.styled_button("Exit", role="default", tooltip="Close application")
        self.btnUnLoad.setFixedHeight(Size.BUTTON_H)
        self.btnUnLoad.setMinimumWidth(320)
        lay.addWidget(self.btnUnLoad)

        # Message label
        self.lblMsg = QLabel("")
        self.lblMsg.setWordWrap(True)
        self.lblMsg.setAlignment(Qt.AlignmentFlag.AlignCenter)
        self.lblMsg.setStyleSheet(f"color: {p['danger']}; font-weight: 600; font-size: {Font.SM}px; background: transparent; min-height: 20px;")
        lay.addWidget(self.lblMsg)

        root.addWidget(card, alignment=Qt.AlignmentFlag.AlignHCenter)
        root.addStretch()

        # DB status + settings button
        self.lblDb = QLabel("")
        self.lblDb.setFont(QFont("Segoe UI", 9))
        self.lblDb.setStyleSheet(f"color: {p['text_dim']}; background: transparent;")
        self.lblDb.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(self.lblDb)

        self.btnDb = DS.styled_button("Database Settings", role="default", tooltip="Configure database connection")
        self.btnDb.setFixedHeight(Size.BUTTON_H_SM)
        self.btnDb.setCursor(Qt.CursorShape.PointingHandCursor)
        root.addWidget(self.btnDb, alignment=Qt.AlignmentFlag.AlignHCenter)
        root.addSpacing(Spacing.LG)

        self.btnLogin.clicked.connect(self._do_login)
        self.btnUnLoad.clicked.connect(self.reject)
        self.btnDb.clicked.connect(self._open_db_settings)
        self.txtPass.returnPressed.connect(self._do_login)

        self._refresh_db_status()

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
        dlg = DbSettingsDialog(self)
        if dlg.exec() == QDialog.DialogCode.Accepted:
            self._refresh_db_status()

    def _do_login(self):
        ok, msg = auth.check_login(self.txtUser.text(),
                                   self.txtPass.text())
        if ok:
            self.user = self.txtUser.text().strip()
            self.accept()
        else:
            self.lblMsg.setText(msg)


# ------------------------------------------------------------- company
class CompanyDialog(QDialog):
    """Modern company selection dialog - professional style."""

    def __init__(self, user: str, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Select Company")
        self.setFixedSize(*WindowSize.COMPANY)
        self.user = user
        self.selected = None

        from HMS_py.ui.design import DS
        from HMS_py.ui.theme import palette

        p = palette()
        self.setStyleSheet(f"background: {p['bg']};")

        root = QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        root.setSpacing(0)

        # Header
        header = QWidget()
        header.setFixedHeight(80)
        header.setStyleSheet(f"background: transparent;")
        hl = QVBoxLayout(header)
        hl.setAlignment(Qt.AlignmentFlag.AlignCenter)
        hl.setContentsMargins(0, 16, 0, 0)
        
        lbl = QLabel("Select Company")
        lbl.setFont(QFont("Segoe UI", 18, QFont.Weight.Bold))
        lbl.setStyleSheet(f"color: {p['accent']}; background: transparent;")
        lbl.setAlignment(Qt.AlignmentFlag.AlignCenter)
        hl.addWidget(lbl)
        
        subtitle = QLabel(f"Logged in as: {user}")
        subtitle.setFont(QFont("Segoe UI", 9))
        subtitle.setStyleSheet(f"color: {p['text_dim']}; background: transparent; margin-top: -4px;")
        subtitle.setAlignment(Qt.AlignmentFlag.AlignCenter)
        hl.addWidget(subtitle)
        
        root.addWidget(header)

        # Card body using design system
        card = DS.make_card_v2("", elevated=True)
        lay = card.layout()
        lay.setContentsMargins(24, 16, 24, 20)
        lay.setSpacing(Spacing.MD)

        # Table with design system
        self.tbl = QTableWidget(0, 3)
        DS.setup_table(self.tbl, ["Company Name", "Short Name", "Current Year"])
        self.tbl.setMinimumHeight(160)
        self.tbl.cellDoubleClicked.connect(lambda *_: self._do_login())
        lay.addWidget(self.tbl)

        # Buttons using design system
        btn_lay = QHBoxLayout()
        btn_lay.setSpacing(Spacing.SM)
        self.btnLogin = DS.styled_button("Login", role="primary", tooltip="Select company and continue")
        self.btnLogin.setFixedHeight(Size.BUTTON_H_LG)
        self.btnUnLoad = DS.styled_button("Exit", role="default", tooltip="Cancel and return to login")
        self.btnUnLoad.setFixedHeight(Size.BUTTON_H)
        self.btnDbUpd = DS.styled_button("DB Update", role="default", tooltip="Update database schema")
        self.btnDbUpd.setFixedHeight(Size.BUTTON_H)
        btn_lay.addWidget(self.btnLogin)
        btn_lay.addWidget(self.btnUnLoad)
        btn_lay.addWidget(self.btnDbUpd)
        lay.addLayout(btn_lay)

        root.addWidget(card)
        root.addSpacing(Spacing.LG)

        self.btnLogin.clicked.connect(self._do_login)
        self.btnUnLoad.clicked.connect(self.reject)
        self.btnDbUpd.clicked.connect(self._db_update)
        self.reload()

    def reload(self):
        rows = company.list_companies()
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            for c, val in enumerate((rec["name"], rec["short"] or "-",
                                     rec["year"])):
                it = QTableWidgetItem(str(val))
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                it.setForeground(QColor(palette()["text"]))
                self.tbl.setItem(r, c, it)
        if rows:
            self.tbl.selectRow(0)

    def _db_update(self):
        QMessageBox.information(
            self, "Database Update",
            "Database Update: year-start maintenance.")

    def _do_login(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Login",
                                    "Pehle company select karo")
            return
        self.selected = {
            "name": self.tbl.item(r, 0).text() if self.tbl.item(r, 0) else "",
            "short": self.tbl.item(r, 1).text() if self.tbl.item(r, 1) else "",
            "year": self.tbl.item(r, 2).text() if self.tbl.item(r, 2) else "",
        }
        self.accept()


class MainSetupWorkbench(QDialog):
    """VB6-style Main Setup workbench. It groups the setup masters into
    categories and opens the actual implemented forms from the registry."""

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Main Setup")
        self.resize(1100, 700)
        self.setModal(True)

        root = QVBoxLayout(self)
        title = QLabel("Main Setup")
        title.setProperty("glassTitle", True)
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(title)

        registry = _form_registry()
        groups = [
            ("Front Office", [
                "Country Master", "State Master", "Area Master",
                "Room Category", "Room Master", "Package Master",
                "Season Master", "Company Master", "Guest Parameters Setting",
            ]),
            ("General Setup", [
                "Charge Master", "Unit Master", "Item Master",
                "Sundry Master", "Narration Master", "Department/Outlet",
                "Room Features", "Godown Master", "Voucher Environment",
                "FA Environment", "Parameter", "Printing Setup",
                "Voucher Category", "Voucher Type", "eInvoice Config",
            ]),
            ("Finance & Reports", [
                "Tax Master", "Tax Structure", "Payment Type", "Market Segment",
                "Business Source", "Guest Status", "Forex Master",
                "Ledger Accounts", "Group Accounts",
            ]),
            ("POS & Banquet", [
                "Session Master", "Scheme Master", "Delivery Boy",
                "Menu Category", "Venue Master", "Venue Features",
                "Catalog Master", "Group Profile",
                "NC Type", "Server / Waiter", "Shift Master",
                "Combo Pack", "Smart Card", "Function Type",
                "Call Type", "Call Code", "Extension",
            ]),
            ("HR & Members", [
                "Category  Master", "Holiday Master", "Employee Master",
                "Category Master", "Facility Master",
                "Revenue Master",
            ]),
            ("Inventory & Reports", [
                "Indent", "Stock Summary", "Stock Register",
                "Stock Register Detailed", "GIN / Purchase Receipt",
                "Kitchen Stock Report", "Kitchen Stock Summary",
                "eInvoice Config",
            ]),
        ]

        body = QVBoxLayout()
        for name, items in groups:
            group = QWidget(self)
            box = QVBoxLayout(group)
            label = QLabel(name)
            label.setProperty("glassSub", True)
            box.addWidget(label)

            grid = QGridLayout()
            row = 0
            col = 0
            for item in items:
                opener = registry.get(item)
                if opener is None:
                    continue
                btn = QPushButton(item)
                btn.setObjectName("vbBtn")
                btn.setMinimumHeight(32)
                btn.setToolTip(f"Open {item} form")
                btn.clicked.connect(lambda _, fn=opener: fn(self))
                grid.addWidget(btn, row, col)
                col += 1
                if col >= 4:
                    col = 0
                    row += 1
            box.addLayout(grid)
            body.addWidget(group)

        scroll = QWidget()
        scroll.setLayout(body)
        root.addWidget(scroll)

        btns = QHBoxLayout()
        btn_close = QPushButton("Close")
        btn_close.setToolTip("Close the Main Setup window")
        btn_close.clicked.connect(self.reject)
        btns.addStretch()
        btns.addWidget(btn_close)
        root.addLayout(btns)


# ---------------------------------------------------------- form registry
# Ported masters (P1/P2/P2-complete) - menu leaf-name -> opener
def _form_registry() -> dict[str, callable]:
    from HMS_py.ui import p2_masters as p2
    from HMS_py.ui.plan_master import PlanMasterForm
    from HMS_py.ui.reservation_browser import ReservationBrowser
    from HMS_py.ui import frontoffice as fo
    # Wave 2 imports (try/except: crash-safe agar module missing ho)
    try:
        from HMS_py.ui import checkout_ui as fo2
        from HMS_py.ui import roomstatus_ui as rs_ui
        from HMS_py.ui import expense_ui as exp_ui
        from HMS_py.ui import finance_masters_ui as fm
    except ImportError:
        fo2 = rs_ui = exp_ui = fm = None
    # Wave 3 (Main Setup complete) imports
    try:
        from HMS_py.ui import pos_masters_ui as pm
        from HMS_py.ui import banquet_masters_ui as bm
        from HMS_py.ui import hr_members_ui as hr
        from HMS_py.ui import general_setup_ui as gs
        from HMS_py.ui import taxstru_ui as tsu
        from HMS_py.ui import guest_history_ui as ghu
        from HMS_py.ui import epabx_ui as epabx
    except ImportError:
        pm = bm = hr = gs = tsu = ghu = epabx = None
    try:
        from HMS_py.ui import pos_na as pna
        _pos = lambda w: pna.open_pos(w)
        _na  = lambda w: pna.open_na(w)
    except ImportError:
        _pos = _na = None
    try:
        from HMS_py.ui import inventory as _inv
    except ImportError:
        _inv = None
    try:
        from HMS_py.ui import folio_ui as folui
    except ImportError:
        folui = None
    try:
        from HMS_py.ui import kot_entry as kot
    except ImportError:
        kot = None
    # Reports Center (REPORTS_TXT collection ka port — read-only engine)
    try:
        from HMS_py.ui import reports_ui as _rpt
        from HMS_py.core import reports as _rpmod
    except ImportError:
        _rpt = _rpmod = None
    # Scheme/HappyHours/TDS (VB6 POSMAST idx-9/10/11 + FaTDSCat port)
    try:
        from HMS_py.ui import scheme_tds_ui as stu
    except ImportError:
        stu = None
    # FA Voucher/Recon/Display (VB6 FaVrEnt + FaChqClear + FaRepView port)
    try:
        from HMS_py.ui import fa_voucher_ui as fvu
    except ImportError:
        fvu = None
    # Wave 4 imports (new UI forms for 26+ core modules)
    try:
        from HMS_py.ui import booking_ops_ui as book_ui
    except ImportError:
        book_ui = None
    try:
        from HMS_py.ui import hall_booking_ui as hall_ui
    except ImportError:
        hall_ui = None
    try:
        from HMS_py.ui import hr_payroll_ui as payroll_ui
    except ImportError:
        payroll_ui = None
    try:
        from HMS_py.ui import member_billing_ui as memb_ui
    except ImportError:
        memb_ui = None
    try:
        from HMS_py.ui import guest_services_ui as gsvc_ui
    except ImportError:
        gsvc_ui = None
    try:
        from HMS_py.ui import facility_billing_ui as facb_ui
    except ImportError:
        facb_ui = None
    try:
        from HMS_py.ui import pos_sales_ui as psale_ui
    except ImportError:
        psale_ui = None
    try:
        from HMS_py.ui import pos_stock_ui as pstock_ui
    except ImportError:
        pstock_ui = None
    try:
        from HMS_py.ui import pos_delivery_ui as pdel_ui
    except ImportError:
        pdel_ui = None
    try:
        from HMS_py.ui import pos_happy_ui as phappy_ui
    except ImportError:
        phappy_ui = None
    try:
        from HMS_py.ui import pos_table_ui as ptable_ui
    except ImportError:
        ptable_ui = None
    try:
        from HMS_py.ui import pos_packing_ui as ppack_ui
    except ImportError:
        ppack_ui = None
    try:
        from HMS_py.ui import fa_ledger_ui as faledg_ui
    except ImportError:
        faledg_ui = None
    try:
        from HMS_py.ui import sys_config_ui as syscfg_ui
    except ImportError:
        syscfg_ui = None
    try:
        from HMS_py.ui import fa_voucher_ui as favchr_ui
    except ImportError:
        favchr_ui = None
    try:
        from HMS_py.ui import db_backup_ui as dbbak_ui
    except ImportError:
        dbbak_ui = None
    try:
        from HMS_py.ui import purchase_order_ui as purord_ui
    except ImportError:
        purord_ui = None
    try:
        from HMS_py.ui import purchase_bill_ui as purbill_ui
    except ImportError:
        purbill_ui = None
    try:
        from HMS_py.ui import stock_issue_ui as stiss_ui
    except ImportError:
        stiss_ui = None
    try:
        from HMS_py.ui import stock_receive_ui as strec_ui
    except ImportError:
        strec_ui = None
    try:
        from HMS_py.ui import stock_adjust_ui as stadj_ui
    except ImportError:
        stadj_ui = None
    try:
        from HMS_py.ui import db_maintenance_ui as dbmaint_ui
    except ImportError:
        dbmaint_ui = None
    try:
        from HMS_py.ui import account_merge_ui as acmerge_ui
    except ImportError:
        acmerge_ui = None
    try:
        from HMS_py.ui import revenue_budget_ui as revbud_ui
    except ImportError:
        revbud_ui = None
    try:
        from HMS_py.ui import nightaudit_reports_ui as narep_ui
    except ImportError:
        narep_ui = None
    try:
        from HMS_py.ui import fa_sub_forms_ui as fasub_ui
    except ImportError:
        fasub_ui = None
    try:
        from HMS_py.ui import fo_sub_forms_ui as fosub_ui
    except ImportError:
        fosub_ui = None
    try:
        from HMS_py.ui import pos_sub_forms_ui as psub_ui
    except ImportError:
        psub_ui = None
    try:
        from HMS_py.ui import kot_transfer_ui as kt_ui
    except ImportError:
        kt_ui = None
    try:
        from HMS_py.ui import guest_lookup_ui as gl_ui
    except ImportError:
        gl_ui = None
    try:
        from HMS_py.ui import registration_entry_ui as reg_ui
    except ImportError:
        reg_ui = None
    try:
        from HMS_py.ui import tally_export_ui as tally_ui
    except ImportError:
        tally_ui = None
    try:
        from HMS_py.ui import misc_sub_forms_ui as misc_ui
    except ImportError:
        misc_ui = None
    try:
        from HMS_py.ui import kitchen_clstk_ui as kclstk_ui
    except ImportError:
        kclstk_ui = None
    try:
        from HMS_py.ui import requisition_slip_ui as reqslip_ui
    except ImportError:
        reqslip_ui = None

    def _open_report(cap: str):
        """mdi leaf caption -> reports engine key (exact-match map)."""
        key = _rpmod.menu_caption_map().get(cap) if _rpmod else None
        if not key:
            key = (_rpmod.VB6_CAPTION_ALIASES.get(cap) if _rpmod else None)
        if not key:
            return _coming_soon(cap)

        def go(w=None):
            _rpt.open_reports(w, report_key=key)
        return go

    def _open_sms_log(w, box: str):
        """InBox/OutBox: DBSendSMS live log viewer (VB6 MsgCenter)."""
        try:
            from HMS_py.core import db as _db
            if box == "outbox":
                rows = _db.query("SELECT TOP 200 CONVERT(varchar(19), SentDate, 120) AS dt, MobileNo, Message FROM DBSendSMS WHERE ISNULL(SendTF,'') <> 'Y' ORDER BY SentDate DESC")
            else:
                rows = _db.query("SELECT TOP 200 CONVERT(varchar(19), SentDate, 120) AS dt, MobileNo, Message FROM DBSendSMS WHERE SendTF = 'Y' ORDER BY SentDate DESC")
        except Exception as e:
            QMessageBox.information(w, "InBox", f"SMS log unavailable: {e}")
            return
        dlg = QDialog(w)
        dlg.setWindowTitle("SMS InBox (Sent)" if box == "inbox" else "SMS OutBox (Pending)")
        dlg.resize(640, 480)
        lay = QVBoxLayout(dlg)
        tw = QTableWidget(len(rows), 3, dlg)
        tw.setHorizontalHeaderLabels(["Date", "Mobile", "Message"])
        for r, row in enumerate(rows):
            for c, val in enumerate(row):
                tw.setItem(r, c, QTableWidgetItem(str(val or "")))
        tw.setColumnWidth(0, 130)
        tw.setColumnWidth(1, 110)
        tw.horizontalHeader().setStretchLastSection(True)
        lay.addWidget(tw)
        btn = QPushButton("Close")
        btn.clicked.connect(dlg.accept)
        lay.addWidget(btn)
        dlg.exec()

    # FA cheque-register + interest wrappers (fa_voucher_ui ReportViewer)
    def fv_cheque_cleared(f=None, t=None):
        from HMS_py.core import fa_voucher as _fv
        return _fv.cheque_cleared()

    def fv_cheque_pending(f=None, t=None):
        from HMS_py.core import fa_voucher as _fv
        return _fv.cheque_pending()

    def fv_ledger_by_sub(f=None, t=None):
        from HMS_py.core import fa_voucher as _fv
        rows = _fv.trial_balance()
        return [{"groupcode": g["groupcode"], "groupname": g["groupname"],
                 "amount": g["bal"]} for g in rows]

    def _open_fv_list(parent, title, fn):
        return fvu.ReportViewer(parent, title=title, fn=fn,
                                needs_dates=False)

    def _coming_soon(leaf: str):
        def go(w=None):
            QMessageBox.information(
                w, leaf,
                f"'{leaf}' ki tables is database me nahi hain "
                "(VB6 me bhi inactive tha) - documented skip. "
                "Dekho _rebuild/ALL_MODULES_PLAN.md")
        return go

    def _open_res_report(mode: str = "arrival"):
        def go(w=None):
            from HMS_py.core import reports
            rows = reports.res_status(mode)
            try:
                pdf = reports.res_status_pdf(rows, mode)
            except Exception:
                pdf = "(PDF preview unavailable)"
            QMessageBox.information(
                w, f"Reservation Status ({mode})",
                f"{len(rows)} rows | PDF: {pdf}")
        return go

    def _open_tally():
        def go(w=None):
            try:
                from HMS_py.ui import tally_ui
            except ImportError:
                QMessageBox.warning(w, "Tally Export",
                                    "tally_ui module load nahi hua")
                return
            tally_ui.open_tally(w)
        return go

    def _open_enviro(w=None):
        try:
            from HMS_py.ui import enviro_ui
        except ImportError:
            QMessageBox.warning(w, "Parameter",
                                "enviro_ui module load nahi hua")
            return
        enviro_ui.open_enviro(w)
    def _open_main_setup(w=None):
        MainSetupWorkbench(parent=w, user=getattr(w, "user", "SA")).exec()

    return {
        "Main Setup": _open_main_setup,
        # P4-a Front Office:
        "Guest Profile": lambda w: fo.open_guestprof(w),
        "Check In": lambda w: fo.open_checkin(w, user=getattr(w, 'user', 'PYADMIN')),
        "Check-In": lambda w: fo.open_checkin(w, user=getattr(w, 'user', 'PYADMIN')),
        "Checkin": lambda w: fo.open_checkin(w, user=getattr(w, 'user', 'PYADMIN')),
        # P5 POS + Night Audit:
        "KOT Entry": (lambda w: kot.open_kot_entry(w, user=getattr(w, 'user', 'PYADMIN'))) if kot else None,
        "POS Status": _pos,
        "Sales Register": _pos,
        "Item wise Sale": _pos,
        "Log": _na,
        "Night Audit Log": _na,
        "Daily Report": _na,
        "Occupancy Analysis": _na,
        "Guest Audit Ledger": _na,
        "Plan Master": lambda w: PlanMasterForm(w).exec(),
        # Main Setup - Front Office masters (P2-complete):
        "City Master": lambda w: p2.open_city(w),
        "Country Master": lambda w: p2.open_country(w),
        "State Master": lambda w: p2.open_state(w),
        "Area Master": lambda w: p2.open_area(w),          # BUG FIX #4
        "Room Category": lambda w: p2.open_roomcategory(w),
        "Room Master": lambda w: p2.open_roommaster(w),
        "Package Master": lambda w: p2.open_packagemaster(w),
        "Season Master": lambda w: p2.open_seasonmaster(w),
        "Company Master": lambda w: p2.open_companymaster(w),
        # Main Setup - General / Charge:
        "Charge Master": lambda w: p2.open_fixcharge(w),
        "Fixed Charge": lambda w: p2.open_fixcharge(w),
        "Unit Master": lambda w: p2.open_unit(w),
        "Item Master": lambda w: p2.open_item(w),
        # Main Setup - F&B / Banquet:
        "Sundry Master": lambda w: p2.open_sundry(w),
        "Narration Master": lambda w: p2.open_narr(w),
        "Venue Master": lambda w: p2.open_venue(w),
        "Department": lambda w: p2.open_depart(w),
        "Department/Outlet": lambda w: p2.open_depart(w),
        # Reservation:
        "Reservation/Cancellation": lambda w: ReservationBrowser(w).exec(),
        # Utility / User Master:
        "User Master": lambda w: p2.open_usermaster(w, current_user=getattr(w, 'user', 'PYADMIN')),
        "Permissions": lambda w: p2.open_usermaster(w, current_user=getattr(w, 'user', 'PYADMIN')),
        # Wave 2: FO operational screens
        "Check Out": (lambda w: fo2.open_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if fo2 else None,
        "Check-Out": (lambda w: fo2.open_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if fo2 else None,
        "Checkout": (lambda w: fo2.open_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if fo2 else None,
        "WalkIn CheckIn": lambda w: fo.open_checkin(w, user=getattr(w, 'user', 'PYADMIN')),
        "Reverse Check Out": (lambda w: fo2.open_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if fo2 else None,
        "Room Status": (lambda w: rs_ui.open_roomstatus(w, user=getattr(w, 'user', 'PYADMIN'))) if rs_ui else None,
        "House Keeping Screen": (lambda w: rs_ui.open_roomstatus(w, user=getattr(w, 'user', 'PYADMIN'))) if rs_ui else None,
        "Expense Entry": (lambda w: exp_ui.open_expense(w, user=getattr(w, 'user', 'PYADMIN'))) if exp_ui else None,
        # Wave 2: Finance/FO masters (now live)
        "Tax Master": (lambda w: fm.open_taxmaster(w)) if fm else None,
        "Payment Type": (lambda w: fm.open_paymenttype(w)) if fm else None,
        "Market Segment": (lambda w: fm.open_marketsegment(w)) if fm else None,
        "Business Source": (lambda w: fm.open_businesssource(w)) if fm else None,
        "Guest Status": (lambda w: fm.open_gueststatus(w)) if fm else None,
        "Forex Master": (lambda w: fm.open_forexmaster(w)) if fm else None,
        "Ledger Accounts": (lambda w: fm.open_ledger(w)) if fm else None,
        "Group Accounts": lambda w: p2.open_acgroup(w),
        # Wave 3 (Main Setup complete): POS Setup masters
        "Session Master": (lambda w: pm.open_session(w, user=getattr(w, "user", "SA"))) if pm else None,
        "Scheme Master":  (lambda w: pm.open_scheme(w, user=getattr(w, "user", "SA"))) if pm else None,
        "Delivery Boy":   (lambda w: pm.open_delboy(w, user=getattr(w, "user", "SA"))) if pm else None,
        "Item List":      (lambda w: pm.open_itemcat(w, user=getattr(w, "user", "SA"))) if pm else None,
        "Menu Category":  (lambda w: pm.open_itemcat(w, user=getattr(w, "user", "SA"))) if pm else None,
        # Wave 3: Banquet masters
        "Venue Features":    (lambda w: bm.open_venfeature(w)) if bm else None,
        "Catalog Master":    (lambda w: bm.open_catalog(w)) if bm else None,
        "Group Profile":     (lambda w: bm.open_groupprof(w)) if bm else None,
        # Wave 3: HR/Payroll masters
        "Category  Master":  (lambda w: hr.open_empcat(w)) if hr else None,
        "Holiday Master":    (lambda w: hr.open_holiday(w)) if hr else None,
        "Employee Master":   (lambda w: hr.open_employee(w)) if hr else None,
        "Designation":       (lambda w: hr.open_desig(w)) if hr else None,
        # Wave 3: Members Mgmt masters
        "Category Master":   (lambda w: hr.open_memcat(w)) if hr else None,
        "Facility Master":   (lambda w: hr.open_facility(w)) if hr else None,
        "Revenue Master":    (lambda w: hr.open_memrev(w)) if hr else None,
        # Wave 3: General Setup masters
        "Room Features":     (lambda w: gs.open_roomfeature(w)) if gs else None,
        "Godown Master":     (lambda w: gs.open_godown(w)) if gs else None,
        "Voucher Environment": (lambda w: gs.open_vouchertype(w)) if gs else None,
        "FA Environment":    (lambda w: gs.open_enviro(w)) if gs else None,
        "Guest Parameters Setting": (lambda w: gs.open_guestparam(w)) if gs else None,
        "Voucher Category":  (lambda w: gs.open_vouchcat(w)) if gs else None,
        # Wave 3: POS new masters (NCType, Waiter, Shift, Combo, SmartCard)
        "NC Type":           (lambda w: pm.open_nctype(w)) if pm else None,
        "Server / Waiter":   (lambda w: pm.open_waiter(w)) if pm else None,
        "Waiter Master":     (lambda w: pm.open_waiter(w)) if pm else None,
        "Shift Master":      (lambda w: pm.open_shift(w)) if pm else None,
        "Combo Pack":        (lambda w: pm.open_combo(w)) if pm else None,
        "Smart Card":        (lambda w: pm.open_smartcard(w)) if pm else None,
        # Wave 3: Banquet new master (Function Type)
        "Function Type":     (lambda w: bm.open_func_type(w)) if bm else None,
        # Wave 3: EPABX masters
        "Call Type":         (lambda w: epabx.open_calltype(w)) if epabx else None,
        "Call Code":         (lambda w: epabx.open_callcode(w)) if epabx else None,
        "Extension":         (lambda w: epabx.open_extension(w)) if epabx else None,
        # Wave 3: Item masters
        "Item Group":        (lambda w: pm.open_itemcat(w)) if pm else None,
        # P5 Inventory:
        "Indent": (lambda w: _inv.open_indent_ui(w)) if _inv else None,
        "Indent Entry": (lambda w: _inv.open_indent_ui(w)) if _inv else None,
        "Pending Indent": (lambda w: _inv.open_inv(w)) if _inv else None,
        "Purchase Register": (lambda w: _inv.open_inv(w)) if _inv else None,
        "Stock Summary": (lambda w: _inv.open_inv(w)) if _inv else None,
        "Stock Register": (lambda w: _inv.open_inv(w)) if _inv else None,
        "Stock Register Detailed": (lambda w: _inv.open_inv(w)) if _inv else None,
        "Purchase Register Detailed": (lambda w: _inv.open_inv(w)) if _inv else None,
        "GIN / Purchase Receipt": (lambda w: _inv.open_gin(w)) if _inv else None,
        "Purchase Order": (lambda w: purord_ui.open_purchase_order(w)) if purord_ui else _coming_soon("Purchase Order"),
        "Purchase Bill": (lambda w: purbill_ui.open_purchase_bill(w)) if purbill_ui else _coming_soon("Purchase Bill"),
        "Stock Transfer": (lambda w: _inv.open_stock_transfer(w)) if _inv else None,
        "eInvoice Config": (lambda w: _inv.open_einvoice_config(w)) if _inv else None,
        "Kitchen Stock Report": (lambda w: _inv.open_kitchen_stock_report(w)) if _inv else None,
        "Stock Issue": (lambda w: stiss_ui.open_stock_issue(w)) if stiss_ui else _coming_soon("Stock Issue"),
        "Stock Receive": (lambda w: strec_ui.open_stock_receive(w)) if strec_ui else _coming_soon("Stock Receive"),
        "Stock Adjustment": (lambda w: stadj_ui.open_stock_adjust(w)) if stadj_ui else _coming_soon("Stock Adjustment"),
        # P5-b Reports (PDF):
        "Reservation Status Report": _open_res_report("arrival"),
        "Reservation Status": _open_res_report("arrival"),
        "Reservation Status Arrival": _open_res_report("arrival"),
        "Reservation Status In-House": _open_res_report("inhouse"),
        # P4-b Folio/Check-Out (folio_ui - FolioLog + Amend views):
        "Folio Log": (lambda w: folui.open_folio(w)) if folui else None,
        "Amend Departure": (lambda w: folui.open_folio(w)) if folui else None,
        "Payment Receive Entry": (lambda w: folui.open_folio(w)) if folui else None,
        "Receive Payment": (lambda w: folui.open_folio(w)) if folui else None,
        # Pending (minimal - only truly missing tables):
        "Tax Structure": (lambda w: tsu.open_taxstru(w)) if tsu else None,
        "Parameter": _open_enviro,
        "Revenue Group Setting": (lambda w: revbud_ui.open_revenue_budget(w)) if revbud_ui else _coming_soon("Revenue Group Setting"),
        "Printing Parameters": (lambda w: gs.open_printing(w)) if gs else None,
        "Printing Setup": (lambda w: gs.open_printing(w)) if gs else None,
        "Revenue Wise Budget Entry": (lambda w: revbud_ui.open_revenue_budget(w)) if revbud_ui else _coming_soon("Revenue Wise Budget Entry"),
        "Guest History": (lambda w: ghu.open_guest_history(w, user=getattr(w, 'user', 'PYADMIN'))) if ghu else None,
        "Room Display": (lambda w: rs_ui.open_roomstatus(w, user=getattr(w, 'user', 'PYADMIN'))) if rs_ui else None,
        "Update Database Nulls": (lambda w: dbmaint_ui.open_db_maintenance(w)) if dbmaint_ui else _coming_soon("Update Database Nulls"),
        "Account Merging": (lambda w: acmerge_ui.open_account_merge(w)) if acmerge_ui else None,
        # Tally export (frmTallyExport port — read-only XML files)
        "Tally Export": _open_tally(),
        # VB6 caption aliases — screens pehle se the, VB6 naam se wire kiye
        "Server Master": (lambda w: pm.open_waiter(w)) if pm else None,
        "Menu Group": (lambda w: pm.open_itemcat(w)) if pm else None,
        "Menu Item": (lambda w: pm.open_item(w)) if pm else None,
        "Item Category": (lambda w: pm.open_itemcat(w)) if pm else None,
        "Item  List": (lambda w: pm.open_itemcat(w)) if pm else None,
        "Location Master": (lambda w: gs.open_godown(w)) if gs else None,
        "Extension Master": (lambda w: epabx.open_extension(w)) if epabx else None,
        "Call Type Master": (lambda w: epabx.open_calltype(w)) if epabx else None,
        "Call Codes Master": (lambda w: epabx.open_callcode(w)) if epabx else None,
        "Designation Master": (lambda w: hr.open_desig(w)) if hr else None,
        # Naye modules (Scheme/HappyHours/TDS)
        "Happy Hours": (lambda w: stu.open_happyhours(w)) if stu else None,
        "Happy Hours [ Free Items ]": (lambda w: stu.open_happyhours(w)) if stu else None,
        "T.D.S. Category": (lambda w: stu.open_tdscat(w)) if stu else None,
        # --- S1 wire-only wave (live opener/report alias, VB6 captions) ---
        # Finance ops (cores already exist: fa_ledger_ops/fa_tds_ops/fa_voucher)
        "Adjustment Entry": lambda w: fvu.open_voucher_entry(w),
        "Delete Adjustment Entry": lambda w: fvu.open_voucher_entry(w),
        "Bank Reconciliation": lambda w: fvu.open_bank_recon(w),
        "T.D.S. Challan Entry": lambda w: fvu.open_voucher_entry(w),
        "T.D.S. Certificate Entry": lambda w: _open_fv_list(
            w, "T.D.S. Certificate",
            lambda f=None, t=None: __import__("HMS_py.core.tdscerti", fromlist=["x"]).list_all()),
        "Expense Voucher": (lambda w: exp_ui.open_expense(w, user=getattr(w, 'user', 'PYADMIN'))) if exp_ui else None,
        "Opening Balance Updation": lambda w: fvu.open_trial_balance(w),
        "Year End Updation": lambda w: fvu.open_trial_balance(w),
        "Current Balance Updation": lambda w: fvu.open_trial_balance(w),
        # Finance Display (fa_voucher_ui openers)
        "Balance Sheet": lambda w: fvu.open_balance_sheet(w),
        "Profit And Loss Account": lambda w: fvu.open_pnl(w),
        "Trial Balance (Group)": lambda w: fvu.open_trial_balance(w),
        "Trial Ledger": lambda w: fvu.open_trial_balance(w),
        "Cash Flow": lambda w: fvu.open_cash_bank_books(w),
        "Fund Flow": lambda w: fvu.open_cash_bank_books(w),
        "Cash And Bank Books": lambda w: fvu.open_cash_bank_books(w),
        # Finance Reports (fa_voucher_ui openers)
        "Trial Balance": lambda w: fvu.open_trial_balance(w),
        "Interest Ledger": lambda w: fvu.open_led_int(w) if hasattr(fvu, "open_led_int") else fvu.open_trial_balance(w),
        "Journal Books": lambda w: fvu.open_journal_book(w),
        "Bank Register": lambda w: fvu.open_bank_register(w),
        "Cheque Cleared Register": lambda w: _open_fv_list(w, "Cheque Cleared", fv_cheque_cleared),
        "Cheque Not Cleared Register": lambda w: _open_fv_list(w, "Cheque Not Cleared", fv_cheque_pending),
        "Daily Transaction Summary": lambda w: fvu.open_daily_txn_summary(w),
        "Control Ledger": lambda w: fvu.open_trial_balance(w),
        # House Keeping (live tables se verify: ComplaintDetail/LostFoundDetail)
        "Complaint Master": lambda w: _open_fv_list(
            w, "Complaint Master",
            lambda f=None, t=None: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, CDate, Category, Description, Depart, Status, ClearingDate FROM ComplaintDetail ORDER BY Code DESC")),
        "Complaint Clearance": lambda w: _open_fv_list(
            w, "Complaint Clearance",
            lambda f=None, t=None: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, CDate, Category, Status, ClearingDate, ClearingPerson FROM ComplaintDetail ORDER BY ClearingDate DESC")),
        "Lost / Found Entry": lambda w: _open_fv_list(
            w, "Lost & Found",
            lambda f=None, t=None: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, FDate, FArea, FindBy, Description, Status, ClaimedBy FROM LostFoundDetail ORDER BY Code DESC")),
        "Claim Entry": lambda w: _open_fv_list(
            w, "Claims (Lost & Found)",
            lambda f=None, t=None: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, FDate, ClaimedBy, ContactNo, DeliveredBy, DDate, Status FROM LostFoundDetail WHERE ClaimedBy <> '' ORDER BY Code DESC")),
        "Room Block": lambda w: _open_fv_list(
            w, "Room Block",
            lambda f=None, t=None: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT * FROM RoomBlockOut WHERE 1=0")),
        # Reservation (BookingInquiry live hai)
        "Booking Inquiry": lambda w: _open_fv_list(
            w, "Booking Inquiry",
            lambda f=None, t=None: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT TOP 200 Code, PartyName, City, MobileNo, FuncType, FuncDate FROM BookingInquiry ORDER BY Code DESC")),
        "Booking Inquiry Detail": lambda w: _open_fv_list(
            w, "Booking Inquiry Detail",
            lambda f=None, t=None: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT TOP 200 Code, PartyName, City, MobileNo, FuncType, FuncDate FROM BookingInquiry ORDER BY Code DESC")),
        # Mall/Outdoor (LocationFacility live)
        "Location Facilities": lambda w: _open_fv_list(
            w, "Location Facilities",
            lambda f=None, t=None: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT LcCode, AppDate, FcCode, UnitRate, DueOn, StartMonth FROM LocationFacility ORDER BY LcCode")),
        # Reports Center aliases (VB6 caption -> existing report engine key)
        **({cap: _open_report(cap) for cap in (
            "Checkout Analysis", "Company Analysis", "Food Costing Report",
            "Ageing Analysis (Debtors)", "GSTR-1", "GSTR-2(3)", "GSTR-2(4A)",
            "GSTR-2(4B)", "Stewardwise Sale", "Table wise Sale",
            "Settlement Summary", "Deleted Unsettled Bill", "NC KOT Detail",
            "Daily DIET Report", "Not Delivered Order", "Group Wise Sale",
            "Denomination Detail", "Payment Receive Entry (POS)",
            "Collection Summary", "Open Item Sales", "KOT Change Report",
            "Monthwise Sales", "ABC  Analysis", "Sale Summary",
            "Taxwise Details", "Group Pickup Report", "Group Arrival Report",
            "Arrival List", "23 Day Room Availability Forecast",
            "23 Day Room Type Availability Forecast", "Cover Analysis Report",
            "OutStanding Report", "Party wise OutStanding",
            "Bill Wise Outstanding Report For Debtors",
            "Excess Consumption Report", "Restaurant Issue Report",
            "Stock Summary P/S Basis", "ABC Analysis",
            "Production Report I/R Basis", "Issue CheckList",
            "Stock Summary ", "Stock Register ", "Stock In Hand ",
            "Kitchen Stock Report I/R Basis", "Change Kitchen/Store",
            "Form24 Annexure-A", "UPVAT XXIV", "Room Status Report",
            "Settlement  Report", "Banquet Taxwise Details", "Taxwise Details (Banquet)",
            "Charge Payment Detail", "Room Wise Plan Detail",
            "Bill Change Report", "Guest Extra Charges", "Sales Report",
            "Guest Payments", "FOM Tax Detail", "Tax Wise Charge Detail",
            "Tourism Form 1", "Tourism Form 2", "Tourism Form 5",
            "Tourism Form 6", "Tourism Form 4", "Monthly Return",
            "L.T. FORM II", "L.T. FORM IV", "Room Occupancy",
            "Attendance Report", "Form C",
        ) if _rpmod}),
        # Blocked-table leaves -> some now have real UIs
        "Night Audit Process": (lambda w: narep_ui.open_nightaudit_reports(w)) if narep_ui else _coming_soon("Night Audit Process"),
        "Night Audit Control Panel": (lambda w: narep_ui.open_nightaudit_reports(w)) if narep_ui else _coming_soon("Night Audit Control Panel"),
        "Reverse Night Audit": (lambda w: narep_ui.open_nightaudit_reports(w)) if narep_ui else _coming_soon("Reverse Night Audit"),
        "Charges Posting": (lambda w: narep_ui.open_nightaudit_reports(w)) if narep_ui else _coming_soon("Charges Posting"),
        "Account Posting": (lambda w: narep_ui.open_nightaudit_reports(w)) if narep_ui else _coming_soon("Account Posting"),
        "Bill Reprint": (lambda w: psub_ui.open_bill_reprint(w)) if psub_ui else _coming_soon("Bill Reprint"),
        "Merge Room": (lambda w: fosub_ui.open_merge_charge(w)) if fosub_ui else _coming_soon("Merge Room"),
        "Bill Re-Settlement": (lambda w: fosub_ui.open_re_settlement(w)) if fosub_ui else _coming_soon("Bill Re-Settlement"),
        "Look Up Rooms": (lambda w: fosub_ui.open_room_lookup(w)) if fosub_ui else _coming_soon("Look Up Rooms"),
        "Look Up Room types": (lambda w: fosub_ui.open_room_lookup(w)) if fosub_ui else _coming_soon("Look Up Room types"),
        "POS Bill Reprint": (lambda w: psub_ui.open_bill_reprint(w)) if psub_ui else _coming_soon("POS Bill Reprint"),
        "Split Sale Bill": (lambda w: psub_ui.open_split_bill(w)) if psub_ui else _coming_soon("Split Sale Bill"),
        "Table Change Entry": (lambda w: kt_ui.open_table_change(w)) if kt_ui else _coming_soon("Table Change Entry"),
        "KOT Transfer": (lambda w: kt_ui.open_kot_transfer(w)) if kt_ui else _coming_soon("KOT Transfer"),
        "Room Change": (lambda w: fosub_ui.open_room_change(w)) if fosub_ui else _coming_soon("Room Change"),
        # Truly blocked (no DB tables)
        **({cap: _coming_soon(cap) for cap in (
            "Forex Receive Entry", "Display Rack", "Travel Agency Posting",
            "Reverse Room Merge", "Blank GRC", "Add/Edit/Delete Group With Reservation ",
            "Reservation With History",
            "Advance Deposit", "Confirmation Letters", "Cancellation Letters",
            "Reservation Status Screen", "Block Master", "Item Issued On Cleaning",
            "Check Out Clearance Screen", "Changes Department",
            "Sale Bill Entry", "Settlement Entry",
            "Display Table",
            "Order Booking", "Bill Lookup", "Order Booking Advance",
            "Token Entry", "Assign Delivery", "Payment Receive",
            "Events", "Banquet Bill Sundry Setting", "Banquet Booking",
            "Catalog Selection", "Chef Pre-Costing", "Banquet Billing",
            "Banquet Settlement", "Venue Availability", "Guest Comments",
            "Banquet Estimate Billing", "Banquet Booking Advance",
            "Leave", "Attendance", "Loan/Advance", "Over Time",
            "Leave Encashment", "Salary Creation", "Member Master",
            "Corporate Member Master", "Category wise Revenue",
            "Category wise Facility", "Member Bill Sundry Setting",
            "Environment Settings", "Member Age Wise Revenue",
            "Member Select Category", "Outlet Bill Sundry Setting",
            "Table Master", "Menu Item Rate", "Rate Group Master",
            "Open Item Consumption", "Customer History", "Setup Outlet",
            "Card Initialization", "Card Registration", "Card Recharge",
            "Card Refund", "Card Re-Issue", "User Collection",
            "SMS (API)", "SMS (Scheduled)", "SMS (Conditional)",
            "Transfer (Offline)", "Transfer (Online)", "Door Locks",
            "Godrej Locks", "Cascade", "Tile Horizontal", "Tile Vertical",
            "Manage MDI", "Restaurant Change ",
        )}),
        # --- S1 tail: last live-schema leaves ---
        "Menu Item Rate": lambda w: _open_fv_list(
            w, "Menu Item Rate",
            lambda f=None, t=None: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT TOP 300 ir.ItemCode, im.Name, ir.RestCode, ir.Rate, ir.MRP "
                "FROM ItemRate ir LEFT JOIN ItemMast im ON im.Code = ir.ItemCode "
                "ORDER BY ir.ItemCode")),        "Telephone Call Entry": lambda w: _open_fv_list(
            w, "Telephone Call Entry",
            lambda f=None, t=None: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT TOP 200 ID, V_TYPE, PNT_NO, Extension, RoomNo, "
                "CALL_START_DATE, CALL_DURATION, DIALED_NO FROM EPABX_Data ORDER BY ID DESC")),
        "Call Control Master": lambda w: _open_fv_list(
            w, "Call Control Master",
            lambda f=None, t=None: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, Name FROM TelCallType ORDER BY Code")),
        "Location-Master": lambda w: _open_fv_list(
            w, "Location Master",
            lambda f=None, t=None: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, Name, ShortName FROM GodownMast ORDER BY Code")),
        "Party Locations": lambda w: _open_fv_list(
            w, "Party Locations",
            lambda f=None, t=None: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT LcCode, AppDate, FcCode, UnitRate, DueOn FROM LocationFacility ORDER BY LcCode")),
        # Finance sub-forms (VB6 fate_Click)
        "Ledger Adjustment": (lambda w: fasub_ui.open_fa_adjust(w)) if fasub_ui else _coming_soon("Ledger Adjustment"),
        "Adjustment Deletion": (lambda w: fasub_ui.open_fa_adjust(w)) if fasub_ui else _coming_soon("Adjustment Deletion"),
        "Cheque Clearing": (lambda w: fasub_ui.open_fa_chq_clear(w)) if fasub_ui else _coming_soon("Cheque Clearing"),
        "TDS Certificate": (lambda w: fasub_ui.open_fa_tds_cert(w)) if fasub_ui else _coming_soon("TDS Certificate"),
        # Guest & Registration forms (GuestProf/GuestFolio tables exist)
        "Guest LookUp": (lambda w: gl_ui.open_guest_lookup(w)) if gl_ui else _coming_soon("Guest LookUp"),
        "Registration Entry": (lambda w: reg_ui.open_registration_entry(w)) if reg_ui else _coming_soon("Registration Entry"),
        "Guest Registration": (lambda w: reg_ui.open_registration_entry(w)) if reg_ui else _coming_soon("Guest Registration"),
        # M.R. Entry (VB6 pMREntry port — stock_create MRE via stock_receive_ui pattern)
        "M.R. Entry": (lambda w: strec_ui.open_stock_receive(w)) if strec_ui else _coming_soon("M.R. Entry"),
        # Tally Export
        "Tally Export(XML)": (lambda w: tally_ui.open_tally_export(w)) if tally_ui else _coming_soon("Tally Export(XML)"),
        # Misc sub-forms (Opening Stock, Sundry Master, Restaurant Master)
        "Opening Stock": (lambda w: misc_ui.open_opening_stock(w)) if misc_ui else _coming_soon("Opening Stock"),
        "Restaurant Master": (lambda w: misc_ui.open_restaurant_master(w)) if misc_ui else _coming_soon("Restaurant Master"),
        # Kitchen Closing Stock (VB6 kClStk port — KClStk table live hai)
        "Kitchen Closing Stock": (lambda w: kclstk_ui.open_kitchen_closing_stock(w)) if kclstk_ui else _coming_soon("Kitchen Closing Stock"),
        # Requisition Slip (VB6 pReqSlip port — pending indent lines -> RQI issue)
        "Requisition Slip": (lambda w: reqslip_ui.open_requisition_slip(w)) if reqslip_ui else _coming_soon("Requisition Slip"),
        "Stock Issue on Requisition": (lambda w: reqslip_ui.open_requisition_slip(w)) if reqslip_ui else _coming_soon("Stock Issue on Requisition"),
        "Pending M.R.": (lambda w: reqslip_ui.open_requisition_slip(w)) if reqslip_ui else _coming_soon("Pending M.R."),
        # --- S1 tail: blocked tables (click par documented VB6-style message) ---
        **({cap: _coming_soon(cap) for cap in (
            "Party Master", "Item Entry ", "Consumption Master",
            "Purchase Sundry Setting", "Enviro Inventry",
            "Gravy Item Entry",
            "Finish Material Receive Entry", "Excise Invoice Cum Gate Pass",
            "Pending Purchase Order",
            "Voucher Wise Sundry Entry", "Sale MIS Customized",
            "Inconsistency Check", "Menu Item Copy", "POS Bill Deletion",
            "Data Transfer", "Data Recieving",
            "Data Transfer (POS)", "PLU File (W.Scale)", "POS Recycle",
            "Task Scheduler", "Voucher Serialisation", "Delete Message",
            "Voucher Wise Sundry Entry", "Expected Plan/Package FB Details",
            "Cashier  Report", "Attendence Report", "Item Wise Sales Report",
            "Member Bill Missing Report",
            "Recharge/Refund Entry", "Cash Card Transaction Report",
            "Cash Card Collection Summary", "Card Transaction Report",
            "Card Statement (MINI)", "Card Statement (FULL)",
            "Card Collection Summary", "Member Visit Entry",
            "Member Used Facility Entry", "Member Renewal Entry",
            "Member Facility Billing", "Member Category Change Entry",
            "Member Category Change (Conditional)", "Member Bill Printing",
            "Member Assistant", "Outstation Member Entry",
            "Auto Settle Card Balance", "Revenue Change Entry",
            "Payment Due Letter Entry", "Issue/Recd. Entry",
            "House Keeping Op.Stock Entry", "Facility Sundry Setting",
            "Meter Reading", "Com Port Properties",
            "SMS Center Settings", "SMS Environment Settings",
            "Multiple SMS Type", "InBox", "OutBox",
            "Reward Points Parameter I",
            "Guest Registration", "-", "User Permissions (Advanced)",
        )}),
        # PlanPopup (VB6 me bhi blank-caption popup leaves the — documented skip)
        "": _coming_soon("(Plan Popup)"),
        # Wave 4: Operations UIs (booking, hall, HR, members, services, POS, finance)
        "Booking Operations": (lambda w: book_ui.open_booking_ops(w)) if book_ui else None,
        "Hall Booking": (lambda w: hall_ui.open_hall_booking(w)) if hall_ui else None,
        "HR Payroll": (lambda w: payroll_ui.open_hr_payroll(w)) if payroll_ui else None,
        "Member Billing": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Guest Services": (lambda w: gsvc_ui.open_guest_services(w)) if gsvc_ui else None,
        "Facility Billing": (lambda w: facb_ui.open_facility_billing(w)) if facb_ui else None,
        "POS Sales": (lambda w: psale_ui.open_pos_sales(w)) if psale_ui else None,
        "POS Stock": (lambda w: pstock_ui.open_pos_stock(w)) if pstock_ui else None,
        "POS Delivery": (lambda w: pdel_ui.open_pos_delivery(w)) if pdel_ui else None,
        "POS Happy Hours": (lambda w: phappy_ui.open_pos_happy(w)) if phappy_ui else None,
        "POS Table": (lambda w: ptable_ui.open_pos_table(w)) if ptable_ui else None,
        "POS Packing": (lambda w: ppack_ui.open_pos_packing(w)) if ppack_ui else None,
        "Finance Ledger": (lambda w: faledg_ui.open_fa_ledger(w)) if faledg_ui else None,
        "Voucher Entry": (lambda w: favchr_ui.open_voucher_entry(w)) if favchr_ui else None,
        "System Config": (lambda w: syscfg_ui.open_sys_config(w)) if syscfg_ui else None,
        "Backup Data": (lambda w: dbbak_ui.open_db_backup(w)) if dbbak_ui else _coming_soon("Backup Data"),
        # Reports Center (REPORTS_TXT / mdi leaves — read-only engine)
        **({cap: _open_report(cap)
            for cap in (_rpmod.menu_caption_map() if _rpmod else {})}),
        # ── menuHelp missing-opener wires (VB6 ports; 2026-09-23 audit) ──
        "Table Master": (lambda w: ptable_ui.open_pos_table(w)) if ptable_ui else _coming_soon("Table Master"),
        "Member Master": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else _coming_soon("Member Master"),
        "Member Select Category": (lambda w: hr.open_memcat(w)) if hr else _coming_soon("Member Select Category"),
        "Purchase Sundry Setting": (lambda w: p2.open_sundry(w)) if p2 else _coming_soon("Purchase Sundry Setting"),
        "Enviro Inventry": (lambda w: gs.open_enviro(w)) if gs else _coming_soon("Enviro Inventry"),
        "Auto Settle Card Balance": (lambda w: pm.open_auto_settle_card_balance(w)) if pm else _coming_soon("Auto Settle Card Balance"),
        "InBox": (lambda w: _open_sms_log(w, "inbox")),
        "OutBox": (lambda w: _open_sms_log(w, "outbox")),
    }


class MainWindow(QMainWindow):
    """VB6 MDIForm1 jaisa: centered blue company title, teal sidebar
    (menuHelp L1 nodes), Hotel.bmp canvas, world-clocks float panel,
    VB6 status bar. Menubar = menuHelp tree (mh.menubar_for)."""

    # Modules that show the FO Dashboard as their home view
    _DASHBOARD_MODULES = {"dashboard", "front office"}

    # Modules that auto-open their primary form + load menu (CI keys)
    _AUTO_OPEN = dict(_sb.AUTO_OPEN)

    # Direct-opener sidebar targets
    _DIRECT_OPENERS = {
        "__action_checkin":       "Check In",
        "__action_checkout":      "Check Out",
        "__action_room_status":   "Room Status",
        "__action_guest_profile": "Guest Profile",
        "__action_folio":         "Folio Log",
    }

    def __init__(self, user: str, comp: dict):
        super().__init__()
        self.user = user
        self.comp = comp
        self.setWindowTitle(f"{comp['name']} {{ {comp['year']} }}")
        self.resize(1400, 800)
        self.registry = _form_registry()
        # CI index (first-wins): menuHelp lowercase captions ke liye
        self._reg_ci = {str(k).strip().lower(): v
                        for k, v in self.registry.items()}
        # menuHelp-driven dynamic menu (VB6 MDIForm1 Opt-tree);
        # menuHelp me na ho to User_Module fallback + gap-merge
        self._menus = _mh.menubar_for

        central = QWidget()
        root = QVBoxLayout(central)
        root.setSpacing(0)
        root.setContentsMargins(0, 0, 0, 0)

        # Aurora glass backdrop (behind all layers)
        self.aurora = AuroraCanvas(central)
        self.aurora.lower()

        # ==============================================================
        # 1. VB6 HEADER: white band, centered blue company title
        # ==============================================================
        header = QFrame()
        header.setStyleSheet("QFrame { background: #ffffff; border: none; }")
        header_lay = QHBoxLayout(header)
        header_lay.setContentsMargins(8, 4, 8, 0)
        self.lblTitle = QLabel(f"{comp['name']} {{ {comp['year']} }}")
        self.lblTitle.setAlignment(Qt.AlignmentFlag.AlignCenter)
        self.lblTitle.setStyleSheet(
            "color: #0020c0; font-family: 'Arial'; font-size: 17pt;"
            "font-weight: bold; background: transparent; border: none;")
        header_lay.addWidget(self.lblTitle)
        root.addWidget(header)

        # ==============================================================
        # 2. BODY: teal sidebar | workspace (dashboard OR tree canvas)
        # ==============================================================
        body = QHBoxLayout()
        body.setSpacing(0)
        body.setContentsMargins(0, 0, 0, 0)

        # --- VB6 Sidebar: teal gradient module buttons ---
        self.sidebar = QFrame()
        self._sidebar_collapsed = False
        self.sidebar.setFixedWidth(150)
        self.sidebar.setStyleSheet("QFrame { background: #ffffff; border: none; }")
        side_lay = QVBoxLayout(self.sidebar)
        side_lay.setContentsMargins(0, 6, 0, 0)
        side_lay.setSpacing(3)

        side_scroll = QScrollArea()
        side_scroll.setWidgetResizable(True)
        side_scroll.setStyleSheet("QScrollArea { border: none; background: #ffffff; }")
        side_scroll_content = QWidget()
        side_scroll_content.setStyleSheet("background: #ffffff;")
        self.side_menu_lay = QVBoxLayout(side_scroll_content)
        self.side_menu_lay.setContentsMargins(1, 1, 1, 1)
        self.side_menu_lay.setSpacing(1)

        self._side_buttons = []
        self._side_section_labels = []

        all_buttons = _sb.build_all_buttons(self.user or "SA")

        # VB6 sidebar order (live VB6 app / Analysis.ini key 9)
        _vb6_order = ["utility", "finance", "members mgmt", "main setup",
                      "reservation", "front office", "house keeping",
                      "inventory", "point of sale", "banquet", "night audit",
                      "hr/payroll", "extras", "epabx", "messaging"]
        for _sec, _items in all_buttons.items():
            if _items and not str(_items[0].get("mod_target", "")).startswith("__action_"):
                _items.sort(key=lambda it: (
                    _vb6_order.index(str(it["label"]).strip().lower())
                    if str(it["label"]).strip().lower() in _vb6_order else 99,
                    str(it["label"]).strip().lower()))

        _p0 = palette()
        for sec_title, items in all_buttons.items():
            sec_lbl = QLabel(sec_title.upper())
            sec_lbl.setStyleSheet(f"""
                QLabel {{
                    background: {_p0['sidebar_bottom']};
                    color: {_p0['sidebar_hover']};
                    font-size: 7pt;
                    font-weight: bold;
                    letter-spacing: 2px;
                    padding: 1px 6px;
                    border: none;
                }}
            """)
            sec_lbl.setFixedHeight(14)
            self.side_menu_lay.addWidget(sec_lbl)
            self._side_section_labels.append(sec_lbl)

            for item in items:
                # VB6 teal gradient button (bold italic, token colors)
                label_text = item["label"]
                b = QPushButton(label_text)
                b.setProperty("sidebar-btn", True)
                b.setObjectName("vb6SidebarBtn")
                b.setCheckable(True)
                b.setCursor(Qt.CursorShape.PointingHandCursor)
                b.setStyleSheet(self._sidebar_btn_qss())
                b.setToolTip(label_text)
                b.setMinimumHeight(40)
                b.setSizePolicy(QSizePolicy.Policy.Expanding,
                                QSizePolicy.Policy.Fixed)
                b.setProperty("mod_target", item["mod_target"])
                b.setAccessibleName(item["mod_target"])

                if item["mod_target"].startswith("__action_"):
                    b.clicked.connect(
                        lambda _, ac=item.get("action", ""): self._handle_dashboard_action(ac))
                else:
                    b.clicked.connect(
                        lambda _, m_name=item["mod_target"], btn=b: self._on_sidebar_click(m_name, btn))
                self.side_menu_lay.addWidget(b)
                self._side_buttons.append(b)

        self.side_menu_lay.addStretch()
        side_scroll.setWidget(side_scroll_content)
        side_lay.addWidget(side_scroll)
        body.addWidget(self.sidebar)

        # --- Central Workspace (Dashboard OR Canvas) ---
        self.central_workspace = QWidget()
        self.central_ws_lay = QVBoxLayout(self.central_workspace)
        self.central_ws_lay.setContentsMargins(0, 0, 0, 0)
        self.central_ws_lay.setSpacing(0)

        # 1. Front Office Dashboard
        self.fo_dashboard = FrontOfficeDashboard(self.central_workspace, user=self.user)
        self.fo_dashboard.openModule.connect(self._handle_dashboard_action)
        self.central_ws_lay.addWidget(self.fo_dashboard)

        # 2. Module Canvas: VB6 MDI background (Hotel.bmp tree) + hint strip
        self.canvas = QLabel()
        self.canvas.setAlignment(Qt.AlignmentFlag.AlignCenter)
        self.canvas.setStyleSheet("QLabel { background: #ffffff; border: none; }")
        self._tree_pix = QPixmap(os.path.join(
            os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
            "pic", "Hotel.bmp"))
        if not self._tree_pix.isNull():
            self.canvas.setPixmap(self._tree_pix)
        self.canvas.setVisible(False)
        self.central_ws_lay.addWidget(self.canvas, stretch=1)

        self.canvas_hint = QLabel("")
        self.canvas_hint.setAlignment(Qt.AlignmentFlag.AlignCenter)
        self.canvas_hint.setStyleSheet(
            "QLabel { color: #444444; font-size: 10pt;"
            " background: #ffffff; border: none; padding: 2px; }")
        self.canvas_hint.setVisible(False)
        self.central_ws_lay.addWidget(self.canvas_hint)

        body.addWidget(self.central_workspace, stretch=1)

        # --- VB6 World-Clock panel: workspace ke UPAR float (right edge),
        #     green date box + per-zone colored time labels (live VB6 jaisa).
        #     Sirf canvas (module) view pe — dashboard overlap na ho.
        self.right_sidebar = QFrame(self.central_workspace)
        self.right_sidebar.setFixedWidth(150)
        self.right_sidebar.setStyleSheet("QFrame { background: transparent; border: none; }")
        right_lay = QVBoxLayout(self.right_sidebar)
        right_lay.setContentsMargins(4, 4, 4, 4)
        right_lay.setSpacing(3)

        self.lbl_date = QLabel()
        self.lbl_date.setAlignment(Qt.AlignmentFlag.AlignCenter)
        self.lbl_date.setStyleSheet("""
            QLabel {
                background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
                    stop:0 #00b400, stop:1 #007000);
                color: #ffffff; font-family: 'Arial'; font-size: 12pt;
                font-weight: bold; border: 1px solid #005500; padding: 4px 0;
            }
        """)
        right_lay.addWidget(self.lbl_date)

        self.clocks = {}
        zones = [
            ("India",     "#00e000"),
            ("Canada",    "#ff4040"),
            ("Italy",     "#ff4040"),
            ("London",    "#4040ff"),
            ("Japan",     "#00e000"),
            ("Australia", "#ff4040"),
        ]

        for tz_name, tcol in zones:
            lbl_name = QLabel(tz_name)
            lbl_name.setStyleSheet("""
                QLabel {
                    background: #ffffff; color: #111111;
                    font-family: 'Arial'; font-size: 10pt; font-weight: bold;
                    border: 1px solid #888888; padding: 0 4px;
                }
            """)
            right_lay.addWidget(lbl_name)

            lbl_time = QLabel()
            lbl_time.setAlignment(Qt.AlignmentFlag.AlignCenter)
            lbl_time.setStyleSheet(f"""
                QLabel {{
                    background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
                        stop:0 #00a000, stop:1 #006000);
                    color: {tcol}; font-family: 'Arial'; font-size: 11pt;
                    font-weight: bold; border: 1px solid #005500; padding: 2px 0;
                }}
            """)
            self.clocks[tz_name] = lbl_time
            right_lay.addWidget(lbl_time)

        right_lay.addStretch()
        self._clocks_user_hidden = False
        self.right_sidebar.setVisible(False)

        # VB6 corner buttons: Reload + Exit (workspace bottom-right)
        corner = QWidget(self.central_workspace)
        corner_lay = QHBoxLayout(corner)
        corner_lay.setContentsMargins(0, 0, 0, 0)
        corner_lay.setSpacing(2)
        btn_reload = QPushButton("Reload")
        btn_reload.setCursor(Qt.CursorShape.PointingHandCursor)
        btn_reload.setStyleSheet("""
            QPushButton {
                background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
                    stop:0 #f0e040, stop:1 #c0a800);
                color: #000000; font-size: 8pt; font-weight: bold;
                border: 1px solid #807000; padding: 2px 8px;
            }
            QPushButton:hover { background: #f0e870; }
        """)
        btn_reload.clicked.connect(self._reload_workspace)
        corner_lay.addWidget(btn_reload)
        btn_exit = QPushButton("Exit \u2307")
        btn_exit.setCursor(Qt.CursorShape.PointingHandCursor)
        btn_exit.setStyleSheet("""
            QPushButton {
                background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
                    stop:0 #e04040, stop:1 #a00000);
                color: #ffffff; font-size: 8pt; font-weight: bold;
                border: 1px solid #700000; padding: 2px 8px;
            }
            QPushButton:hover { background: #c03030; }
        """)
        btn_exit.clicked.connect(self.close)
        corner_lay.addWidget(btn_exit)
        self.corner_buttons = corner

        root.addLayout(body)
        self.setCentralWidget(central)

        # ==============================================================
        # 3. VB6 STATUS BAR: gray band — user, property, S/w Dt.,
        #    CAPS/NUM + Hide Left/Right Menu + Full Screen
        # ==============================================================
        sb = self.statusBar()
        sb.setSizeGripEnabled(False)
        sb.setStyleSheet("""
            QStatusBar {
                background: #d4d0c8; color: #000000;
                border-top: 1px solid #808080;
                font-size: 9pt; font-family: 'Segoe UI';
            }
            QStatusBar QLabel {
                background: #d4d0c8; color: #000000;
                padding: 2px 8px; border: none;
            }
            QStatusBar QPushButton {
                background: #d4d0c8; color: #000000;
                border: 1px solid #808080; font-size: 8pt;
                padding: 1px 8px;
            }
            QStatusBar QPushButton:hover { background: #e4e0d8; }
            QStatusBar QPushButton:checked { background: #b8b4ac; font-weight: bold; }
        """)
        sb.addWidget(QLabel(f" \U0001F464 {user}"))
        sb.addWidget(QLabel(f" Property Site : {comp['short'] or comp['name']} "))

        import datetime as _dt
        self._clock = QLabel()
        sb.addWidget(self._clock)
        self._clock_timer = QTimer(self)
        self._clock_timer.timeout.connect(self._tick_clock)
        self._clock_timer.start(1000)
        self._tick_clock()  # pehla tick turant (labels blank na dikhen)

        # DB Connection Indicator
        self.lblDb = QLabel(" DB: ... ")
        sb.addPermanentWidget(self.lblDb)
        self._refresh_db_status_label()

        btn_caps = QPushButton("CAPS")
        btn_caps.setCheckable(True)
        btn_caps.setFlat(True)
        sb.addPermanentWidget(btn_caps)

        btn_num = QPushButton("NUM")
        btn_num.setCheckable(True)
        btn_num.setFlat(True)
        sb.addPermanentWidget(btn_num)

        btn_toggle_side = QPushButton("Hide Left Menu")
        btn_toggle_side.setCursor(Qt.CursorShape.PointingHandCursor)
        btn_toggle_side.clicked.connect(self._toggle_sidebar)
        sb.addPermanentWidget(btn_toggle_side)

        btn_toggle_clock = QPushButton("Hide Right Menu")
        btn_toggle_clock.setCursor(Qt.CursorShape.PointingHandCursor)
        btn_toggle_clock.clicked.connect(self._toggle_clocks)
        sb.addPermanentWidget(btn_toggle_clock)

        btn_fullscreen = QPushButton("Full Screen")
        btn_fullscreen.setCursor(Qt.CursorShape.PointingHandCursor)
        btn_fullscreen.clicked.connect(self._toggle_fullscreen)
        sb.addPermanentWidget(btn_fullscreen)

        QTimer.singleShot(0, self._place_overlays)
        QTimer.singleShot(0, self._fit_tree)

        # ==============================================================
        # 4. KEYBOARD SHORTCUTS
        # ==============================================================
        for i, b in enumerate(self._side_buttons[:9]):
            QShortcut(QKeySequence(f"Alt+{i+1}"), self, activated=lambda bb=b: bb.click())

        QShortcut(QKeySequence("Ctrl+N"), self, activated=lambda: self._handle_dashboard_action("Reservation"))
        QShortcut(QKeySequence("Ctrl+F"), self, activated=lambda: self._safe_open("Guest Profile"))
        QShortcut(QKeySequence("Ctrl+I"), self, activated=lambda: self._safe_open("Check In"))
        QShortcut(QKeySequence("Ctrl+O"), self, activated=lambda: self._safe_open("Check Out"))
        QShortcut(QKeySequence("Ctrl+R"), self, activated=lambda: self._safe_open("Room Status"))
        QShortcut(QKeySequence("Ctrl+P"), self, activated=lambda: self._safe_open("Plan Master"))
        QShortcut(QKeySequence("F5"), self, activated=self.fo_dashboard.refresh)

        for key, leaf in (("Ctrl+C", "Country Master"),
                          ("Ctrl+B", "State Master"),
                          ("Ctrl+H", "Charge Master"),
                          ("Ctrl+U", "Unit Master")):
            if leaf in self.registry:
                QShortcut(QKeySequence(key), self, activated=lambda lf=leaf: self.registry[lf](self))

        if self.registry.get("KOT Entry"):
            QShortcut(QKeySequence("Ctrl+T"), self, activated=lambda: self.registry["KOT Entry"](self))
        if self.registry.get("Night Audit Log"):
            QShortcut(QKeySequence("Ctrl+Shift+N"), self, activated=lambda: self.registry["Night Audit Log"](self))

        # Default Active State: Front Office / Dashboard
        if self._side_buttons:
            for b in self._side_buttons:
                if str(b.property("mod_target") or "").strip().lower() in self._DASHBOARD_MODULES:
                    b.setChecked(True)
                    break
            self._load_module_menu("Front Office")

    # ── helpers ──────────────────────────────────────────────────────
    def _sidebar_btn_qss(self) -> str:
        """Sidebar button QSS current palette tokens se (Appearance-
        customizable: sidebar_top/bottom/text/border + derived hover/
        checked). Refresh ke liye refresh_sidebar_style() use karo."""
        p = palette()
        top, mid, bot = (p["sidebar_top"],
                         _theme._mix(p["sidebar_top"], p["sidebar_bottom"], 0.5),
                         p["sidebar_bottom"])
        return f"""
            QPushButton[sidebar-btn="true"] {{
                background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
                    stop:0 {top}, stop:0.5 {mid}, stop:1 {bot});
                color: {p['sidebar_text']};
                border: 1px solid {p['sidebar_border']};
                border-radius: 0px;
                font-size: 10pt;
                font-weight: bold;
                font-style: italic;
                text-align: center;
                padding: 6px 4px;
            }}
            QPushButton[sidebar-btn="true"]:hover {{
                background: {p['sidebar_hover']};
            }}
            QPushButton[sidebar-btn="true"]:checked {{
                background: {p['sidebar_checked']};
                border: 2px solid {p['sidebar_border']};
            }}
        """

    def refresh_sidebar_style(self):
        """Appearance change ke baad sidebar QSS + section labels refresh.
        (AppearanceDialog.appearanceChanged isse connect hota hai.)"""
        p = palette()
        qss = self._sidebar_btn_qss()
        for b in self._side_buttons:
            b.setStyleSheet(qss)
        for lbl in self._side_section_labels:
            lbl.setStyleSheet(f"""
                QLabel {{
                    background: {p['sidebar_bottom']};
                    color: {p['sidebar_hover']};
                    font-size: 7pt;
                    font-weight: bold;
                    letter-spacing: 2px;
                    padding: 1px 6px;
                    border: none;
                }}
            """)
        self.sidebar.setStyleSheet("QFrame { background: #ffffff; border: none; }")

    def _safe_open(self, leaf: str):
        fn = self._reg_ci.get(leaf.strip().lower()) or self.registry.get(leaf)
        if fn:
            fn(self)

    def _tick_clock(self):
        import datetime as _dt
        now = _dt.datetime.now()
        self._clock.setText(
            f"S/w Dt.:{now:%d/%b/%Y %I:%M:%S %p}  ")

        if hasattr(self, "lbl_date"):
            self.lbl_date.setText(f"{now:%d/%b/%Y}")

        if hasattr(self, "clocks"):
            utc_now = _dt.datetime.utcnow()
            offsets = {
                "India": _dt.timedelta(hours=5, minutes=30),
                "Canada": _dt.timedelta(hours=-4),
                "Italy": _dt.timedelta(hours=2),
                "London": _dt.timedelta(hours=1),
                "Japan": _dt.timedelta(hours=9),
                "Australia": _dt.timedelta(hours=10),
            }
            for tz, lbl in self.clocks.items():
                tz_time = utc_now + offsets.get(tz, _dt.timedelta(0))
                lbl.setText(tz_time.strftime("%I:%M:%S %p"))

    def _toggle_fullscreen(self):
        if self.isFullScreen():
            self.showNormal()
        else:
            self.showFullScreen()

    def _refresh_db_status_label(self):
        from HMS_py.core.db import load_config, connect
        try:
            cfg = load_config()
            cn = connect(cfg)
            cur = cn.cursor()
            cur.execute("SELECT @@SERVERNAME, DB_NAME()")
            srv, dbn = cur.fetchone()
            cn.close()
            self.lblDb.setText(f" DB: Connected ({srv} / {dbn}) ")
            self.lblDb.setStyleSheet("color: #10b981; font-weight: bold;")
        except Exception:
            self.lblDb.setText(" DB: Disconnected ")
            self.lblDb.setStyleSheet("color: #ef4444; font-weight: bold;")

    def _toggle_sidebar(self):
        # VB6 "Hide Left Menu": sidebar poora hide/show
        self._sidebar_collapsed = not self._sidebar_collapsed
        self.sidebar.setVisible(not self._sidebar_collapsed)

    def _toggle_clocks(self):
        self._clocks_user_hidden = not self._clocks_user_hidden
        self._apply_clock_visibility()

    def _apply_clock_visibility(self):
        """Clocks panel sirf canvas view pe (dashboard overlap na ho)."""
        self.right_sidebar.setVisible(
            (not self._clocks_user_hidden) and self.canvas.isVisible())
        self._place_overlays()

    def _reload_workspace(self):
        self._tick_clock()
        self.fo_dashboard.refresh()

    def _fit_tree(self):
        """Hotel.bmp ko canvas size pe fit karo (VB6 MDI background)."""
        if (not hasattr(self, "_tree_pix") or self._tree_pix.isNull()
                or not hasattr(self, "canvas") or self.canvas.width() < 50):
            return
        pm = self._tree_pix.scaled(
            self.canvas.size(),
            Qt.AspectRatioMode.KeepAspectRatio,
            Qt.TransformationMode.SmoothTransformation)
        self.canvas.setPixmap(pm)

    def _place_overlays(self):
        """World-clock panel + Reload/Exit workspace pe float (VB6 jaisa)."""
        ws = self.central_workspace
        if hasattr(self, "right_sidebar") and self.right_sidebar.isVisible():
            self.right_sidebar.adjustSize()
            self.right_sidebar.move(
                max(0, ws.width() - self.right_sidebar.width() - 8), 140)
        if hasattr(self, "corner_buttons"):
            self.corner_buttons.adjustSize()
            self.corner_buttons.move(
                max(0, ws.width() - self.corner_buttons.width() - 6),
                max(0, ws.height() - self.corner_buttons.height() - 6))

    def _on_sidebar_click(self, mod_target: str, btn: QPushButton):
        """Generic sidebar dispatcher driven by MenuHelp data."""
        for other in self._side_buttons:
            if other is not btn:
                other.setChecked(False)
        btn.setChecked(True)

        # 1. Pure action shortcuts (no menu rebuild)
        if mod_target in self._DIRECT_OPENERS:
            self._safe_open(self._DIRECT_OPENERS[mod_target])
            return

        low = str(mod_target).strip().lower()

        # 2. Dashboard / Front Office home view
        if low in self._DASHBOARD_MODULES:
            self.fo_dashboard.setVisible(True)
            self.canvas.setVisible(False)
            self.canvas_hint.setVisible(False)
            self._apply_clock_visibility()
            self.fo_dashboard.refresh()
            self._load_module_menu("Front Office")
            return

        # 3. Modules that auto-open their primary form + load menu
        _auto_key = next((k for k in self._AUTO_OPEN
                          if str(k).lower() == low), None)
        if _auto_key is not None:
            primary = self._AUTO_OPEN[_auto_key]
            self._safe_open(primary)
            self._load_module_menu(mod_target)
            return

        # 4. Generic module: load its menu from menuHelp, show canvas
        self._load_module_menu(mod_target)

    def _load_module_menu(self, mod_name: str):
        mb = self.menuBar()
        mb.clear()
        p = palette()
        sb_bot = p["sidebar_bottom"]  # VB6 menubar hover = sidebar teal
        mb.setStyleSheet(f"""
            QMenuBar {{
                background: #d4d0c8; color: #000000;
                font-size: 9pt; font-weight: normal; padding: 1px;
                border-bottom: 1px solid #808080;
            }}
            QMenuBar::item {{
                background: transparent; padding: 3px 10px; color: #000000;
            }}
            QMenuBar::item:selected {{ background: {sb_bot}; color: {p['sidebar_text']}; }}
            QMenu {{
                background: #d4d0c8; color: #000000;
                border: 1px solid #808080; padding: 1px;
            }}
            QMenu::item {{ padding: 3px 24px; }}
            QMenu::item:selected {{ background: {sb_bot}; color: {p['sidebar_text']}; }}
            QMenu::item:disabled {{ color: #808080; }}
            QMenu::separator {{
                height: 1px; background: #808080; margin: 2px 4px;
            }}
        """)

        groups = self._menus(mod_name, self.user)
        for grp in groups:
            mm = mb.addMenu(grp["name"])
            for it in grp["items"]:
                self._add_item(mm, it)

        if str(mod_name).strip().lower() in self._DASHBOARD_MODULES:
            self.fo_dashboard.setVisible(True)
            self.canvas.setVisible(False)
            self.canvas_hint.setVisible(False)
        else:
            self.fo_dashboard.setVisible(False)
            self.canvas.setVisible(True)
            self.canvas_hint.setVisible(True)
            QTimer.singleShot(0, self._fit_tree)
        self._apply_clock_visibility()

        # Display original-case module name (sidebar button text se)
        _pretty = next((b.text() for b in getattr(self, "_side_buttons", [])
                        if str(b.property("mod_target") or "").strip().lower()
                        == str(mod_name).strip().lower()), mod_name)
        self.canvas_hint.setText(
            f"{_pretty}  —  Select a form from the top menu bar")
        self.setWindowTitle(
            f"{self.comp['name']} {{ {self.comp['year']} }} - {_pretty}")
        self._place_overlays()

    def _handle_dashboard_action(self, mod_name: str):
        if mod_name == "Reservation":
            self._safe_open("Reservation/Cancellation")
        else:
            self._safe_open(mod_name)

    def resizeEvent(self, ev):
        super().resizeEvent(ev)
        if hasattr(self, "aurora"):
            self.aurora.setGeometry(0, 0, self.centralWidget().width(),
                                    self.centralWidget().height())
        if hasattr(self, "canvas"):
            self._fit_tree()
        self._place_overlays()

    def _toggle_theme(self):
        app = QApplication.instance()
        new_theme = toggle_theme(app)
        if hasattr(self, "theme_btn"):
            self.theme_btn.setText("Light" if new_theme == "dark" else "Dark")
            self.theme_btn.setChecked(new_theme == "dark")
        self.aurora.refresh()

    def _open_appearance(self):
        """User-defined colors dialog (live preview + persist)."""
        dlg = AppearanceDialog(self)
        dlg.appearanceChanged.connect(self.aurora.refresh)
        # Sidebar colors live-preview: har change pe teal QSS refresh
        dlg.appearanceChanged.connect(self.refresh_sidebar_style)
        dlg.exec()
        self.refresh_sidebar_style()  # cancel/restore ke baad bhi sync
        if hasattr(self, "theme_btn"):
            self.theme_btn.setText("Light" if current_theme() == "dark"
                                   else "Dark")
            self.theme_btn.setChecked(current_theme() == "dark")
        self.aurora.refresh()

    def _on_module(self, m: dict, btn: QPushButton):
        # Compatibility wrapper for tests and external callers
        self._on_sidebar_click(m["name"], btn)

    def _add_item(self, parent_menu, it: dict):
        # Case-insensitive lookup: menuHelp captions normalized (lowercase)
        # aate hain, registry keys original-case me — plain dict get() fail
        # hota tha aur menuHelp-sourced leaves SAB disabled ho rahe the.
        _cap = it["caption"] if "caption" in it else it["name"]
        opener = self._reg_ci.get(str(_cap).strip().lower()) or self.registry.get(_cap)
        if it.get("children"):
            sub = parent_menu.addMenu(_cap)
            if opener:
                act = sub.addAction(_cap)
                act.triggered.connect(lambda _, fn=opener: fn(self))
                sub.addSeparator()
            for ch in it["children"]:
                self._add_item(sub, ch)
            return
        act = parent_menu.addAction(_cap)
        if opener:
            act.triggered.connect(lambda _, fn=opener: fn(self))
        else:
            act.setEnabled(False)   # phase-wise judenga

    def set_canvas_text(self, text: str):
        self.canvas_hint.setText(text)


# ---------------------------------------------------------------- flow
def run_flow() -> int:
    app = QApplication.instance() or QApplication(sys.argv)
    apply_theme(app)   # saved user tokens load hote hain (force dark nahi)
    app.setApplicationName("HMS_py")

    login = LoginDialog()
    if login.exec() != QDialog.DialogCode.Accepted:
        return 0

    comp_dlg = CompanyDialog(login.user)
    if comp_dlg.exec() != QDialog.DialogCode.Accepted:
        return 0

    win = MainWindow(login.user, comp_dlg.selected)
    win.show()
    return app.exec()


def main() -> int:
    # offscreen screenshot mode (testing ke liye)
    shot = os.environ.get("HMS_POC_SHOT")
    if shot:
        from PyQt6.QtTest import QTest
        app = QApplication.instance() or QApplication(sys.argv)
        apply_theme(app)   # saved theme reflect karo
        login = LoginDialog()
        login.show()
        QTest.qWait(500)
        login.grab().save(shot)
        comp = CompanyDialog("SA")
        comp.show()
        QTest.qWait(500)
        comp.grab().save(os.path.splitext(shot)[0] + "_company.png")
        win = MainWindow("SA", {"name": "Moon and Mars Resorts",
                                "short": "MMR",
                                "year": company.current_year()})
        win.show()
        QTest.qWait(500)
        win.grab().save(os.path.splitext(shot)[0] + "_main.png")
        QTest.qWait(200)
        # BUG FIX: pehle findChildren(QPushButton)[1] tha — naye buttons
        # (Appearance) add hone pe index shift ho jaata. Ab direct sidebar btn.
        win._on_module({"name": "Main Setup", "srno": 41},
                       win._side_buttons[0])
        QTest.qWait(300)
        win.grab().save(os.path.splitext(shot)[0] + "_module.png")
        print("screenshots saved:", shot)
        return 0
    return run_flow()


if __name__ == "__main__":
    raise SystemExit(main())
