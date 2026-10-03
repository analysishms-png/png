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
import re
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
# BUG FIX: yahan warnings.showwarning ka PROPER 6-arg signature chahiye —
# pehle 3-arg qInstallMessageHandler-style fn assign tha, jo kisi bhi
# runtime Python warning (DeprecationWarning etc.) par TypeError deta tha.
_original_showWarning = warnings.showwarning
def _showwarning(message, category, filename, lineno,
                 file=None, line=None):
    text = str(message)
    if "propagateSizeHints" in text:
        return          # swallow – harmless
    if "Cannot find font" in text:
        return          # handled by QT_QPA_FONTDIR above
    _original_showWarning(message, category, filename, lineno, file, line)
warnings.showwarning = _showwarning

from PyQt6.QtWidgets import (QApplication, QDialog, QFormLayout, QGridLayout,
                             QHBoxLayout, QLabel, QLineEdit, QMainWindow,
                             QMenu, QMessageBox, QPushButton, QTableWidget,
                             QTableWidgetItem, QVBoxLayout, QWidget, QFrame,
                             QSizePolicy, QScrollArea)
from PyQt6.QtCore import Qt, qInstallMessageHandler, QtMsgType, QEvent, QObject
from PyQt6.QtGui import (QFont, QShortcut, QKeySequence, QColor, QAction,
                         QKeyEvent)

from HMS_py.ui.theme import apply_theme, toggle_theme, current_theme
from HMS_py.ui.glass import AuroraCanvas
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


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
from HMS_py.core import menu_help as mh
# v0.1.2 workflow cores (Room Change / KOT Transfer / Salary Create)
from HMS_py.core import checkin as checkin_mod
from HMS_py.core import pos as _pos_core
from HMS_py.core import hr_payroll as _payroll_core

# VB6-look shared styles (production screenshots: blue gradient, cream title)
VB_BLUE = "#2f7fc1"
STYLE = """
QWidget#vbScreen { background: qlineargradient(x1:0,y1:0,x2:0,y2:1,
    stop:0 #7db9e8, stop:1 #2f7fc1); }
QLabel#vbTitle { color: #fffbe6; font-size: 12pt; font-weight: bold;
    background: #fdfdd0; color: #444; padding: 4px; }
QPushButton#vbBtn { background: #e8f4ff; border: 2px outset #b0d0e8;
    font-weight: bold; padding: 6px 22px; color: #14406b; }
QPushButton#vbBtn:hover { background: #d0e8ff; }
QTableWidget { background: white; color: #111; gridline-color: #c8c8c8; }
QTableWidget::item { color: #111; }
QHeaderView::section { background: #dcdcdc; color: #111; font-weight: bold; }
QTableCornerButton::section { background: #dcdcdc; }
"""


# ---------------------------------------------------- VB6 global key map
# MS-030: VB6 har form par KeyPreview=True + Form_KeyDown chalta tha —
# Enter=Tab, F2=Edit, F3=Delete, F4=Find, F5=Refresh, F6=First,
# F7=Prev, F8=Next, F9=Last, F10=Print, F11=Preview, F12=Exit,
# Ctrl+N=New, Ctrl+S=Save, Ctrl+E=Edit, Ctrl+D=Delete, Esc=Cancel.
# Yahan ek hi QApplication-level event filter yahi dispatch karta hai,
# jo run_flow()/main() (shell startup) me install hota hai.
#
# Safe-guard design rules:
#   * Existing QShortcuts kabhi override nahi hote — Qt shortcut-map
#     KeyPress ko application filter se PEHLE consume kar leta hai; plus
#     _yield_existing_shortcut() explicit scan bhi karta hai (QShortcut
#     + QAction shortcut, active window scope).
#   * Dispatch sirf focus-widget ke apne top-level window par: pehle
#     well-known handler (_on_new/_on_edit/_on_delete/_on_save/
#     _on_cancel/_on_refresh/... = per-form convention), phir matching
#     toolbar/menu caption; kuch na mile to silent pass-through.
#   * Enter=Tab sirf QLineEdit (jiska returnPressed kisi ne connect
#     nahi kiya) aur read-only QTextEdit/QPlainTextEdit par; buttons/
#     combos/combos ke andar ke line edits/editable multiline editors
#     apna default Enter rakhte hain (search/login/newline nahi toota).
#   * Esc/F12 kabhi MainWindow (shell) par act nahi karte; Esc sirf
#     `_on_cancel` wale dialogs par, F12 `_on_exit` ya QDialog close.
#   * Poora dispatch try/except me — kabhi popup/crash nahi, kabhi
#     log-popup nahi.
_VB6_FKEY_HANDLES: dict = {
    # key: ((handler attr names, in priority order), (toolbar captions))
    int(Qt.Key.Key_F2): (("_on_edit",), ("Edit",)),
    int(Qt.Key.Key_F3): (("_on_delete",), ("Delete", "Del")),
    int(Qt.Key.Key_F4): (("_on_find",), ("Find", "Search")),
    int(Qt.Key.Key_F5): (("_on_refresh", "reload", "refresh"),
                         ("Refresh", "Reload")),
    int(Qt.Key.Key_F6): (("_on_first", "first"), ("First", "<<", "|<")),
    int(Qt.Key.Key_F7): (("_on_prev", "_on_previous", "prev", "previous"),
                         ("Prev", "Previous", "<")),
    int(Qt.Key.Key_F8): (("_on_next", "next"), ("Next", ">")),
    int(Qt.Key.Key_F9): (("_on_last", "last"), ("Last", ">>", ">|")),
    int(Qt.Key.Key_F10): (("_on_print",), ("Print",)),
    int(Qt.Key.Key_F11): (("_on_preview", "_on_print_preview"),
                          ("Preview", "Print Preview")),
}
_VB6_CTRL_HANDLES: dict = {
    int(Qt.Key.Key_N): (("_on_new",), ("New", "Add")),
    int(Qt.Key.Key_S): (("_on_save",), ("Save",)),
    int(Qt.Key.Key_E): (("_on_edit",), ("Edit",)),
    int(Qt.Key.Key_D): (("_on_delete",), ("Delete", "Del")),
}
_VB6_MOD_MASK = (Qt.KeyboardModifier.ControlModifier |
                 Qt.KeyboardModifier.AltModifier |
                 Qt.KeyboardModifier.ShiftModifier)


def _norm_caption(text) -> str:
    return str(text).replace("&", "").strip().lower()


class _Vb6KeyMapFilter(QObject):
    """QApplication-level event filter = VB6 Form_KeyDown port (MS-030)."""

    def __init__(self):
        super().__init__()
        self._busy = False       # Enter->Tab synthesis re-entrancy guard
        self._installed = False

    # ---------------------------------------------------------- helpers
    @staticmethod
    def _seq_exact(a, b) -> bool:
        try:
            return a.matches(b) == QKeySequence.SequenceMatch.ExactMatch
        except Exception:
            return False

    def _yield_existing_shortcut(self, top, seq) -> bool:
        """True = is key ka koi QShortcut/QAction shortcut already bound
        hai is window par -> filter ko yield karna chahiye."""
        try:
            for sc in top.findChildren(QShortcut):
                try:
                    if self._seq_exact(sc.key(), seq):
                        return True
                except Exception:
                    continue
            for act in top.findChildren(QAction):
                try:
                    sq = act.shortcut()
                    if sq is not None and not sq.isEmpty() and \
                            self._seq_exact(sq, seq):
                        return True
                except Exception:
                    continue
        except Exception:
            return False
        return False

    def _enter_as_tab(self, fw) -> bool:
        """VB6 Enter=Tab: sirf single-line inputs par (rules dekho upar)."""
        if fw.inherits("QTextEdit") or fw.inherits("QPlainTextEdit"):
            # editable multiline = Enter newline (VB6 AcceptsReturn parity);
            # read-only viewer me Tab se focus aage badhe
            return bool(fw.isReadOnly())
        if not fw.inherits("QLineEdit"):
            return False                     # buttons/combos: default Enter
        w = fw
        while w is not None:                 # combo ke andar ka edit skip
            if w.inherits("QComboBox"):
                return False
            w = w.parentWidget()
        if fw.isReadOnly():
            return False
        try:
            if fw.receivers(fw.returnPressed) > 0:
                return False                 # form ka apna Enter=submit/search
        except Exception:
            return False
        try:
            comp = fw.completer()
            if comp is not None and comp.popup() is not None and \
                    comp.popup().isVisible():
                return False                 # completer popup Enter=accept
        except Exception:
            pass
        self._busy = True                    # synthesis me wapas intercept na ho
        try:
            QApplication.sendEvent(fw, QKeyEvent(
                QEvent.Type.KeyPress, Qt.Key.Key_Tab,
                Qt.KeyboardModifier.NoModifier))
            QApplication.sendEvent(fw, QKeyEvent(
                QEvent.Type.KeyRelease, Qt.Key.Key_Tab,
                Qt.KeyboardModifier.NoModifier))
        finally:
            self._busy = False
        return True

    def _dispatch(self, top, fw, names, captions) -> bool:
        """Handler method (focus widget -> top) ya toolbar caption click.
        Kuch na mile to False (silent pass-through)."""
        w = fw
        while w is not None:
            for nm in names:
                fn = getattr(w, nm, None)
                if callable(fn):
                    fn()
                    return True
            if w is top:
                break
            w = w.parentWidget()
        if captions:
            want = {_norm_caption(c) for c in captions}
            try:
                for act in top.findChildren(QAction):
                    if (act.isEnabled() and act.isVisible()
                            and _norm_caption(act.text()) in want):
                        act.trigger()
                        return True
            except Exception:
                pass
            try:
                for btn in top.findChildren(QPushButton):
                    if (btn.isEnabled() and btn.isVisible()
                            and _norm_caption(btn.text()) in want):
                        btn.click()
                        return True
            except Exception:
                pass
        return False

    # ------------------------------------------------------- event filter
    def eventFilter(self, obj, ev) -> bool:
        try:
            if self._busy or ev.type() != QEvent.Type.KeyPress:
                return False
            fw = QApplication.focusWidget()
            if fw is None or obj is not fw:
                return False                 # sirf original target par
            if fw.inherits("QMenu") or fw.inherits("QMenuBar"):
                return False                 # menu navigation apne paas
            if ev.isAutoRepeat():
                return False
            top = fw.window()
            if top is None:
                return False
            k = int(ev.key())
            mods = ev.modifiers() & _VB6_MOD_MASK
            seq = QKeySequence(mods.value | k)
            # 1) existing shortcut ko kabhi mat todo (belt + braces —
            #    shortcut-map aksar event yahan aane se pehle kha chuka
            #    hota hai, ye scan override-accepted cases bachata hai)
            if self._yield_existing_shortcut(top, seq):
                return False
            # 2) Enter = Tab (rules: _enter_as_tab)
            if k in (int(Qt.Key.Key_Return), int(Qt.Key.Key_Enter)):
                if mods == Qt.KeyboardModifier.NoModifier:
                    return self._enter_as_tab(fw)
                return False
            is_shell = isinstance(top, MainWindow)
            # 3) Esc = Cancel — sirf handler wale dialogs; shell kabhi nahi
            if k == int(Qt.Key.Key_Escape):
                if is_shell:
                    return False
                return self._dispatch(top, fw, ("_on_cancel",), ())
            # 4) F12 = Exit — shell kabhi nahi; handler, warna QDialog close
            if k == int(Qt.Key.Key_F12):
                if is_shell:
                    return False
                if self._dispatch(top, fw, ("_on_exit",), ()):
                    return True
                if isinstance(top, QDialog):
                    top.reject()
                    return True
                return False
            # 5) F2..F11 + Ctrl+N/S/E/D
            entry = _VB6_FKEY_HANDLES.get(k)
            if entry is None and \
                    mods == Qt.KeyboardModifier.ControlModifier:
                entry = _VB6_CTRL_HANDLES.get(k)
            if entry is None:
                return False
            names, captions = entry
            return self._dispatch(top, fw, names, captions)
        except Exception:
            return False                     # never crash, never popup


_VB6_KEYMAP: _Vb6KeyMapFilter | None = None


def install_vb6_keymap(app=None) -> bool:
    """MS-030 key-map filter app-level par install karo (idempotent)."""
    global _VB6_KEYMAP
    try:
        app = app or QApplication.instance()
        if app is None:
            return False
        if _VB6_KEYMAP is None:
            _VB6_KEYMAP = _Vb6KeyMapFilter()
        if not _VB6_KEYMAP._installed:
            app.installEventFilter(_VB6_KEYMAP)
            _VB6_KEYMAP._installed = True
        return True
    except Exception:
        return False



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
        note.setStyleSheet("color: #8888aa; font-size: 11px;")
        note.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(note)

        form = QFormLayout()
        form.setSpacing(12)

        lbl_s = QLabel("Server Name")
        lbl_s.setStyleSheet("color: #b0b0cc; font-size: 12px; font-weight: bold;")
        self.txtServer = QLineEdit(cfg.get("server", ""))
        self.txtServer.setMinimumHeight(36)
        self.txtServer.setPlaceholderText("e.g. Localhost or DESKTOP-XYZ\\SQLEXPRESS")
        form.addRow(lbl_s, self.txtServer)

        lbl_d = QLabel("Database Name")
        lbl_d.setStyleSheet("color: #b0b0cc; font-size: 12px; font-weight: bold;")
        self.txtDatabase = QLineEdit(cfg.get("database", ""))
        self.txtDatabase.setMinimumHeight(36)
        self.txtDatabase.setPlaceholderText("e.g. KailashData2526")
        form.addRow(lbl_d, self.txtDatabase)
        root.addLayout(form)

        self.lblStatus = QLabel("")
        self.lblStatus.setWordWrap(True)
        self.lblStatus.setStyleSheet("color: #8888aa; font-size: 11px;")
        self.lblStatus.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(self.lblStatus)

        btns = QHBoxLayout()
        btns.setSpacing(8)
        self.btnTest = QPushButton("Test")
        self.btnTest.setFixedHeight(38)
        self.btnTest.setStyleSheet("""
            QPushButton { background: transparent; color: #f59e0b;
                border: 1px solid #f59e0b; border-radius: 6px; font-size: 12px; }
            QPushButton:hover { background: rgba(245,158,11,0.1); }
        """)
        self.btnSave = QPushButton("Save")
        self.btnSave.setFixedHeight(38)
        self.btnSave.setStyleSheet("""
            QPushButton { background: qlineargradient(x1:0,y1:0,x2:1,y2:0,
                stop:0 #7c3aed, stop:1 #a855f7); color: white;
                font-weight: bold; font-size: 13px; border: none; border-radius: 6px; }
            QPushButton:hover { background: #6d28d9; }
        """)
        self.btnCancel = QPushButton("Cancel")
        self.btnCancel.setFixedHeight(38)
        self.btnCancel.setStyleSheet("""
            QPushButton { background: transparent; color: #8888aa;
                border: 1px solid #3a3a52; border-radius: 6px; font-size: 12px; }
            QPushButton:hover { border-color: #7c3aed; color: #b0b0cc; }
        """)
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
            self.lblStatus.setStyleSheet("color: #ef4444; font-size: 11px;")
            return
        try:
            tmp = dict(db.load_config())
            tmp.update(info)
            cn = db.connect(tmp)
            cur = cn.cursor()
            cur.execute("SELECT @@SERVERNAME, DB_NAME()")
            srv, dbn = cur.fetchone()
            cn.close()
            self.lblStatus.setStyleSheet("color: #22c55e; font-size: 11px;")
            self.lblStatus.setText(f"Connected: {srv} / {dbn}")
        except Exception as e:
            self.lblStatus.setStyleSheet("color: #ef4444; font-size: 11px;")
            self.lblStatus.setText(f"Fail: {e}")

    def _save(self):
        from HMS_py.core import db
        info = self._connect_info()
        if not info["server"] or not info["database"]:
            self.lblStatus.setText("Server aur Database dono bharo")
            self.lblStatus.setStyleSheet("color: #ef4444; font-size: 11px;")
            return
        try:
            path = db.save_config(server=info["server"], database=info["database"])
            self.lblStatus.setStyleSheet("color: #22c55e; font-size: 11px;")
            self.lblStatus.setText(f"Saved: {path}")
            self.accept()
        except Exception as e:
            self.lblStatus.setStyleSheet("color: #ef4444; font-size: 11px;")
            self.lblStatus.setText(f"Save fail: {e}")


# ---------------------------------------------------------------- login
class LoginDialog(QDialog):
    """VB6 'User Information' login — hybrid: VB6 layout parity (blue
    gradient header, User Name/Password labels, Login/Un Load buttons)
    + modern polish (radius, hover)."""

    def __init__(self, parent=None):
        super().__init__(parent)
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
        header = QLabel("{  Company Name  }")
        header.setProperty("vbHeader", True)
        header.setAlignment(Qt.AlignmentFlag.AlignCenter)
        header.setFixedHeight(52)
        root.addWidget(header)

        # White app surface (VB6 white client area)
        white = QFrame()
        white.setStyleSheet("background: #ffffff;")
        wlay = QVBoxLayout(white)
        wlay.setContentsMargins(28, 24, 28, 16)
        wlay.setSpacing(12)
        root.addWidget(white, 1)

        # VB6 blue panel (embedded card: title + fields + Login btn)
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
        self.lblDb = QLabel("")
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
    """VB6 'Company Details' company select — hybrid: VB6 blue header +
    grid layout, modern polish."""

    def __init__(self, user: str, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Company Details")
        self.setFixedSize(580, 420)
        self.user = user
        self.selected = None
        # VB6 full-desktop parity: gray MDI desktop + floating white grid
        # (screenshot 010_CompanyDetails_Grid.png: bg #636363)
        self.setProperty("vbDesktop", True)

        root = QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        root.setSpacing(0)

        # VB6 header (screenshot: blue gradient bar + cream 'Company
        # Details' title) — modern gradient, same semantics
        header = QLabel("Company Details")
        header.setProperty("vbHeader", True)
        header.setAlignment(Qt.AlignmentFlag.AlignCenter)
        header.setFixedHeight(52)
        root.addWidget(header)

        # Gray desktop gap (VB6 MDI client area vibe)
        root.addSpacing(18)

        # VB6: floating white grid window on gray desktop — modern:
        # surface card + subtle border
        body = QFrame()
        body.setProperty("vbCard", True)
        lay = QVBoxLayout(body)
        lay.setContentsMargins(24, 16, 24, 20)
        lay.setSpacing(12)

        lbl_hint = QLabel("Company select karke Login dabao")
        lbl_hint.setProperty("vbHeaderSub", True)
        lbl_hint.setAlignment(Qt.AlignmentFlag.AlignCenter)
        lay.addWidget(lbl_hint)

        # Table
        self.tbl = QTableWidget(0, 3)
        self.tbl.setHorizontalHeaderLabels(
            ["Company Name", "Short Name", "Current Year"])
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.setMinimumHeight(120)
        self.tbl.verticalHeader().setVisible(False)
        self.tbl.setShowGrid(False)
        self.tbl.setAlternatingRowColors(True)
        # VB6 frmCompany: DBGrid1 double-click = Login (inline edit mode me
        # cell-edit ke liye chhod do — _on_cell_double guard karta hai)
        self.tbl.cellDoubleClicked.connect(self._on_cell_double)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        # VB6 frmCompany DBGrid1 right-click popup (ListView_UnknownEvent_13
        # + Panelgrid_MouseDown): Add/Edit/Delete/Save/Cancel/Exit
        self.tbl.setContextMenuPolicy(Qt.ContextMenuPolicy.CustomContextMenu)
        self.tbl.customContextMenuRequested.connect(self._grid_menu)
        lay.addWidget(self.tbl)

        # Grid CRUD state (VB6 grid edit mode): None ya (mode, row, rec)
        self._edit_state = None
        self._rows: list[dict] = []

        # Buttons — VB6 captions: Login / Un Load / Database Update
        btn_lay = QHBoxLayout()
        btn_lay.setSpacing(8)
        self.btnLogin = QPushButton("Login")
        self.btnLogin.setProperty("vbPrimary", True)
        self.btnLogin.setFixedHeight(40)
        self.btnUnLoad = QPushButton("Un Load")
        self.btnUnLoad.setProperty("vbGhost", True)
        self.btnUnLoad.setFixedHeight(40)
        self.btnDbUpd = QPushButton("Database Update")
        self.btnDbUpd.setProperty("vbWarn", True)
        self.btnDbUpd.setFixedHeight(40)
        btn_lay.addWidget(self.btnLogin)
        btn_lay.addWidget(self.btnUnLoad)
        btn_lay.addWidget(self.btnDbUpd)
        lay.addLayout(btn_lay)

        root.addWidget(body, 1)

        self.btnLogin.clicked.connect(self._do_login)
        self.btnUnLoad.clicked.connect(self.reject)
        self.btnDbUpd.clicked.connect(self._db_update)
        self.reload()

    def reload(self):
        # Grid wapas read-only: edit mode ka har cancel/save yahi se
        # resolve hota hai (VB6 Refresh/Cancel parity)
        self._edit_state = None
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        rows = company.list_companies()
        self._rows = list(rows)
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            for c, val in enumerate((rec["name"], rec["short"] or "-",
                                     rec["year"])):
                it = QTableWidgetItem(str(val))
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                it.setForeground(QColor("#e0e0e0"))
                self.tbl.setItem(r, c, it)
        if rows:
            self.tbl.selectRow(0)

    # -------------------------------------------- grid CRUD (VB6 popup)
    # VB6 frmCompany.frm DBGrid1 right-click popup: Add/Edit/Delete/
    # Save/Cancel/Exit -> core/company.py save_company/delete_company
    # (pehle NO UI caller tha — MS-009/MS-011).
    def _on_cell_double(self, row, col):
        if self._edit_state:
            return                    # inline edit: double-click = cell edit
        self._do_login()              # VB6: grid double-click = Login

    def _grid_menu(self, pos):
        idx = self.tbl.indexAt(pos)
        if idx.isValid():
            self.tbl.selectRow(idx.row())     # VB6 right-click = row select
        editing = self._edit_state is not None
        r = self.tbl.currentRow()
        has_rec = 0 <= r < len(self._rows)
        menu = QMenu(self)
        act_add = menu.addAction("Add")
        act_edit = menu.addAction("Edit")
        act_del = menu.addAction("Delete")
        menu.addSeparator()
        act_save = menu.addAction("Save")
        act_cancel = menu.addAction("Cancel")
        menu.addSeparator()
        act_exit = menu.addAction("Exit")
        act_add.setEnabled(not editing)
        act_edit.setEnabled(not editing and has_rec)
        act_del.setEnabled(not editing and has_rec)
        act_save.setEnabled(editing)
        act_cancel.setEnabled(editing)
        act_add.triggered.connect(self._on_new)
        act_edit.triggered.connect(self._on_edit)
        act_del.triggered.connect(self._on_delete)
        act_save.triggered.connect(self._on_save)
        act_cancel.triggered.connect(self._on_cancel)
        act_exit.triggered.connect(self._on_exit)
        menu.exec(self.tbl.mapToGlobal(pos))

    def _begin_inline_edit(self, mode: str, row: int, rec: dict | None):
        self._edit_state = (mode, row, rec)
        self.tbl.setEditTriggers(
            QTableWidget.EditTrigger.DoubleClicked |
            QTableWidget.EditTrigger.EditKeyPressed |
            QTableWidget.EditTrigger.AnyKeyPressed)
        for c in range(3):
            it = self.tbl.item(row, c)
            if it is not None:
                it.setFlags(it.flags() | Qt.ItemFlag.ItemIsEditable)

    def _on_new(self):
        if self._edit_state is not None:
            QMessageBox.information(self, "Company",
                                    "Pehle Save/Cancel karo")
            return
        r = self.tbl.rowCount()
        self.tbl.insertRow(r)
        for c, val in enumerate(("", "", company.current_year())):
            it = QTableWidgetItem(val)
            it.setFlags(it.flags() | Qt.ItemFlag.ItemIsEditable)
            it.setForeground(QColor("#e0e0e0"))
            self.tbl.setItem(r, c, it)
        self.tbl.setCurrentCell(r, 0)
        self._begin_inline_edit("add", r, None)
        self.tbl.editItem(self.tbl.item(r, 0))

    def _on_edit(self):
        if self._edit_state is not None:
            QMessageBox.information(self, "Company",
                                    "Pehle Save/Cancel karo")
            return
        r = self.tbl.currentRow()
        if r < 0 or r >= len(self._rows):
            QMessageBox.information(self, "Edit",
                                    "Pehle company select karo")
            return
        rec = self._rows[r]
        if not str(rec.get("code") or "").strip():
            QMessageBox.information(
                self, "Edit",
                "Ye INI fallback row hai - DB me record nahi (Add se banao)")
            return
        self._begin_inline_edit("edit", r, rec)
        self.tbl.editItem(self.tbl.item(r, 0))

    def _grid_row_values(self, row: int) -> tuple:
        vals = []
        for c in range(3):
            it = self.tbl.item(row, c)
            vals.append((it.text() if it else "").strip())
        return vals[0], vals[1], vals[2]

    def _on_save(self):
        if self._edit_state is None:
            QMessageBox.information(self, "Save",
                                    "Pehle Add/Edit start karo")
            return
        mode, row, rec = self._edit_state
        name, short, year = self._grid_row_values(row)
        if not name:
            QMessageBox.warning(self, "Save", "Company Name is required")
            return
        data = {"Comp_Name": name, "SName": short, "cyear": year}
        if mode == "edit" and rec:
            data["Comp_Code"] = str(rec.get("code") or "")
        try:
            company.save_company(data, user=self.user)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Save", f"Company '{name}' saved")

    def _on_cancel(self):
        if self._edit_state is not None:
            self.reload()            # VB6 Cancel: inline edit discard
        else:
            self.reject()            # VB6 Esc/Cancel: form band (Un Load)

    def _on_refresh(self):
        if self._edit_state is not None:
            QMessageBox.information(
                self, "Refresh", "Edit mode me refresh nahi (Save/Cancel karo)")
            return
        self.reload()

    def _on_delete(self):
        if self._edit_state is not None:
            QMessageBox.information(self, "Delete",
                                    "Pehle Save/Cancel karo")
            return
        r = self.tbl.currentRow()
        if r < 0 or r >= len(self._rows):
            QMessageBox.information(self, "Delete",
                                    "Pehle company select karo")
            return
        rec = self._rows[r]
        code = str(rec.get("code") or "").strip()
        if not code:
            QMessageBox.information(
                self, "Delete",
                "Ye INI fallback row hai - DB record delete nahi hoga")
            return
        reply = QMessageBox.question(
            self, "Confirm Delete",
            f"Company '{rec['name']}' delete karein?\n\n"
            "This action cannot be undone.",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
            QMessageBox.StandardButton.No
        )
        if reply != QMessageBox.StandardButton.Yes:
            return
        try:
            company.delete_company(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete Error",
                                 f"Unable to delete: {e}")
            return
        self.reload()

    def _on_exit(self):
        if self._edit_state is not None:
            reply = QMessageBox.question(
                self, "Exit",
                "Edit discard karke company window band karein?",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
                QMessageBox.StandardButton.No
            )
            if reply != QMessageBox.StandardButton.Yes:
                return
        self.reject()

    def _db_update(self):
        # VB6 frmCompany btnStruUpdNew ("Structure Update", Alt+D) — safe
        # subset port: admin-gated idempotent schema upgrade (MS-008).
        try:
            from HMS_py.ui import schema_upgrade_ui as _sch
        except ImportError:
            QMessageBox.information(
                self, "Database Update",
                "schema_upgrade_ui module missing.")
            return
        _sch.open_schema_upgrade(self, user=str(getattr(self, "user", "SA")))

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
        apply_desktop_surface(self, "mainSetupWorkbench")
        self.user = user
        self.setWindowTitle("Main Setup")
        self.resize(1100, 700)
        self.setModal(True)

        root = QVBoxLayout(self)
        title = QLabel("Main Setup")
        title.setObjectName("mainSetupTitle")
        title.setStyleSheet("font-size: 18px; font-weight: bold; color: #1d3d5d;")
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(title)
        user_label = QLabel(f"User: {self.user}")
        user_label.setObjectName("mainSetupUserLabel")
        user_label.setAlignment(Qt.AlignmentFlag.AlignRight)
        root.addWidget(user_label)

        registry = _form_registry()
        groups = [
            ("Front Office", [
                "Country Master", "State Master", "Area Master",
                "Room Category", "Room Master", "Package Master",
                "Season Master", "Company Master", "Guest Parameters Setting",
                "Guest History",
            ]),
            ("General Setup", [
                "General Setup (Tabs)",
                "Charge Master", "Unit Master", "Item Master", "Item Group",
                "Sundry Master", "Narration Master", "Department/Outlet",
                "Room Features", "Godown Master", "Voucher Environment",
                "FA Environment", "Parameter", "Printing Setup",
                "Voucher Category", "Voucher Type", "eInvoice Config",
                "Revenue Group Setting", "Revenue Wise Budget Entry",
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
                 "Call Type", "Call Code", "Extension", "Com Port Properties", "Happy Hours",
            ]),
            ("HR & Members", [
                "Category  Master", "Holiday Master", "Employee Master",
                "Category Master", "Facility Master",
                "Revenue Master",
            ]),
             ("Utility & Admin", [
                 "User Master", "Permissions", "User Permissions (Advanced)",
                 "Guest LookUp",
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
            label.setObjectName("desktopSectionLabel")
            label.setStyleSheet("font-size: 12px; font-weight: bold; color: #2d4a64;")
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
                mark_desktop_action(btn)
                btn.setMinimumHeight(32)
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
        mark_desktop_action(btn_close)
        btn_close.clicked.connect(self.reject)
        btns.addStretch()
        btns.addWidget(btn_close)
        root.addLayout(btns)


# ---------------------------------------------------------- form registry
# RBAC guard (additive): wires core/permission.py into destructive CRUD
# openers. DENY only when the role genuinely lacks the single-letter right;
# SA (harness login) passes every check, so all gates stay green. Fail-open
# (allow) only if the permission module isn't importable.
def _rbac_guard(right: str, leaf: str):
    """Return a wrapper that makes opener require `right` for current user.
    Real call-sites jo VB6-mein Guards_SA/ADMIN denials enforce karte the."""
    try:
        from HMS_py.core import permission as _perm
    except ImportError:
        _perm = None

    def _wrap(opener):
        def _go(w=None, *a, **kw):
            who = getattr(w, "user", None) or (kw.get("user") if "user" in kw else None)
            if _perm is not None:
                if not _perm.operation(right, username=who):
                    # VB6-SA style: low-role user ko delete/update form deny
                    raise PermissionError(
                        f"{leaf}: role '{_perm.role_of(who)}' ('{who}')\n"
                        f"ke paas '{right}' right nahi - RBAC guard ne deny kiya")
            return opener(w, *a, **kw) if opener else None
        return _go
    return _wrap


def _form_registry() -> dict[str, callable]:
    from HMS_py.ui import p2_masters as p2
    from HMS_py.ui import item_rate_ui as item_rate
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
        from HMS_py.ui import comport_ui as cport
    except ImportError:
        pm = bm = hr = gs = tsu = ghu = epabx = cport = None
    # Screenshot-parity VB6 FDGENMAS tabbed General Setup window
    try:
        from HMS_py.ui import general_setup_tabs_ui as gst
    except ImportError:
        gst = None
    # Parity batch: FacilitySundry/MemRevChg/SaleBillMod/Messaging + CardOps
    try:
        from HMS_py.ui import misc_parity_ui as mpu
    except ImportError:
        mpu = None
    # Item Issued On Cleaning (D2 batch): UI file ban chuki hai par import
    # missing tha -> _form_registry() NameError se poori registry crash.
    try:
        from HMS_py.ui import frm_item_issued_on_cleaning_ui
    except ImportError:
        frm_item_issued_on_cleaning_ui = None
    try:
        from HMS_py.ui import frm_lock_godrej_settings_ui
    except ImportError:
        frm_lock_godrej_settings_ui = None
    try:
        from HMS_py.ui import pos_na as pna
        _pos = lambda w: pna.open_pos(w)
        _na  = lambda w: pna.open_na(w)
    except ImportError:
        _pos = _na = None
    try:
        from HMS_py.ui import fd_forms_ui as fdui
    except ImportError:
        fdui = None
    try:
        from HMS_py.ui import smartcard_txn_ui as sct
    except ImportError:
        sct = None
    # Wave 6 imports (posting/settlement — VB6 fdPostChrg/fdPaymentCharge/
    # FdReSetlement/FdRevCheckOut)
    try:
        from HMS_py.ui import posting_forms_ui as postui
    except ImportError:
        postui = None
    # Wave 7 imports (rack/room-lookup/walk-in — VB6 fdRoomDisplay/
    # FdLookUpRoomNo/fdRoomOcc/fdWalkInEntry)
    try:
        from HMS_py.ui import walkin_rack_ui as wrui
    except ImportError:
        wrui = None
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
        from HMS_py.ui import banquet_ops_ui as banq_ui
    except ImportError:
        banq_ui = None
    try:
        from HMS_py.ui import hr_payroll_ui as payroll_ui
    except ImportError:
        payroll_ui = None
    try:
        from HMS_py.ui import member_billing_ui as memb_ui
    except ImportError:
        memb_ui = None
    try:
        from HMS_py.ui import member_master_ui as membmast_ui
    except ImportError:
        membmast_ui = None
    try:
        from HMS_py.ui import member_environment_ui as member_env_ui
    except ImportError:
        member_env_ui = None
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
        from HMS_py.ui import travel_post_ui as tpost_ui
    except ImportError:
        tpost_ui = None
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
        from HMS_py.ui import einvoice_ui as einv_ui
    except ImportError:
        einv_ui = None
    # PARTIAL-bucket ports (FaGlobeNarr/FaTDSCat/FaGrEnt/FaSubGroup/...)
    try:
        from HMS_py.ui import partial_forms_ui as pfui
    except ImportError:
        pfui = None
    # VB6 EmptyInbox (Finance > "Delete Message") - Messaging table port
    try:
        from HMS_py.ui import messaging_ui as msgui
    except ImportError:
        msgui = None
    # VB6 fdNDAcPostChrg (Night Audit > "Account Posting" = Posting Utility)
    try:
        from HMS_py.ui import posting_utility_ui as npu_ui
    except ImportError:
        npu_ui = None
    # Guest Charges Summary (VB6 fdPrintScreen port)
    try:
        from HMS_py.ui import guest_charges_ui as gchrg_ui
    except ImportError:
        gchrg_ui = None
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
        from HMS_py.ui import user_permissions_ui as perm_ui
    except ImportError:
        perm_ui = None
    try:
        from HMS_py.ui import fa_enviro_ui as fa_envui
    except ImportError:
        fa_envui = None
    try:
        from HMS_py.ui import year_end_ui
    except ImportError:
        year_end_ui = None
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
    # VB6 MISSING-batch: frmBlockMast + RewardPointParam1 + FAFind +
    # FrmChangeSite (tables BlockMast/RWParameter LIVE hain)
    try:
        from HMS_py.ui import block_master_ui as bmst_ui
    except ImportError:
        bmst_ui = None
    # PARTIAL-batch wiring: SMS/Inbox + KOT/Token + table display
    try:
        from HMS_py.ui import sms_ui as smsui
    except ImportError:
        smsui = None
    try:
        from HMS_py.ui import kot_transfer_ui as kotui
    except ImportError:
        kotui = None
    # PARTIAL-batch: complaint/guest-services tabs + enviro screen
    try:
        from HMS_py.ui import enviro_ui as envui
    except ImportError:
        envui = None
    try:
        from HMS_py.ui import company_profile_ui as prof_ui
    except ImportError:
        prof_ui = None
    try:
        from HMS_py.ui import guest_history_ui as ghist_ui
    except ImportError:
        ghist_ui = None
    try:
        from HMS_py.ui import channel_ui as ch_ui
    except ImportError:
        ch_ui = None
    try:
        from HMS_py.ui import folio_ui as folui2
    except ImportError:
        folui2 = None
    try:
        from HMS_py.ui import user_permissions_ui as perm2_ui
    except ImportError:
        perm2_ui = None
    try:
        from HMS_py.ui import kot_entry as kot2
    except ImportError:
        kot2 = None
    # VB6 UI-ONLY batch: Calender/Image/KeyMassage/repTouchDate/
    # TouchKeyBoard/LockForm runtime utility popups
    try:
        from HMS_py.ui import utility_forms_ui as util_ui
    except ImportError:
        util_ui = None
    # ── Main Setup compare-loop 2026-10-02: 7 naye VB6 ports ──
    try:
        from HMS_py.ui import voucher_serialisation_ui as vser_ui
    except ImportError:
        vser_ui = None
    try:
        from HMS_py.ui import pos_recycle_ui as precyc_ui
    except ImportError:
        precyc_ui = None
    try:
        from HMS_py.ui import purchase_enviro_ui as pur_env_ui
    except ImportError:
        pur_env_ui = None
    try:
        from HMS_py.ui import task_scheduler_ui as task_ui
    except ImportError:
        task_ui = None
    try:
        from HMS_py.ui import voucher_sundry_ui as vsund_ui
    except ImportError:
        vsund_ui = None
    try:
        from HMS_py.ui import open_item_consumption_ui as oic_ui
    except ImportError:
        oic_ui = None
    try:
        from HMS_py.ui import pos_bill_deletion_ui as pbdel_ui
    except ImportError:
        pbdel_ui = None
    # ── COMING_SOON -> real UI batch (VB6 parity report SECTION A) ──
    try:
        from HMS_py.ui import depart_change_ui as dchg_ui
    except ImportError:
        dchg_ui = None
    try:
        from HMS_py.ui import forex_receive_ui as fxui
    except ImportError:
        fxui = None
    try:
        from HMS_py.ui import pos_display_ui as pdisp_ui
    except ImportError:
        pdisp_ui = None
    try:
        from HMS_py.ui import advance_deposit_ui as advdep_ui
    except ImportError:
        advdep_ui = None
    try:
        from HMS_py.ui import pos_settlement_ui as psetl_ui
    except ImportError:
        psetl_ui = None
    try:
        from HMS_py.ui import order_advance_ui as oradv_ui
    except ImportError:
        oradv_ui = None
    try:
        from HMS_py.ui import excise_gate_pass_ui as egp_ui
    except ImportError:
        egp_ui = None
    # VB6 dispatcher: "Company Master" -> New CompMast (ModuleAdd
    # loc_1E42FF1) — full 42-field detail form; fallback = legacy p2 form
    try:
        from HMS_py.ui import comp_mast_form_ui as compmast_ui
    except ImportError:
        compmast_ui = None
    try:
        from HMS_py.ui import denomination_ui as denom_ui
    except ImportError:
        denom_ui = None

    def _open_report(cap: str):
        """mdi leaf caption -> reports engine key (exact-match map)."""
        if not _rpmod:
            key = None
        else:
            _m = _rpmod.menu_caption_map()
            key = _m.get(cap)
            if not key:
                _nc = re.sub(r"\s+", " ", cap).strip()
                for _k, _v in _m.items():
                    if re.sub(r"\s+", " ", _k).strip() == _nc:
                        key = _v
                        break
        if not key:
            return _coming_soon(cap)

        def go(w=None):
            _rpt.open_reports(w, report_key=key)
        return go

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
        # BUG-MS-02 (Main Setup screenshot audit 2026-10-03): viewer ban kar
        # return hota tha, lekin registry lambdas return value ignore karte
        # hain -> window kabhi dikhti hi nahi (dead click, jaise
        # 'Call Control Master'). VB6 forms modal the -> exec().
        v = fvu.ReportViewer(parent, title=title, fn=fn,
                             needs_dates=False)
        v.exec()
        return v

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
            pdf = reports.res_status_pdf(rows, mode)
            QMessageBox.information(
                w, f"Reservation Status ({mode})",
                f"{len(rows)} rows | PDF bana: {pdf}")
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

    def _open_room_change(w=None):
        """Room Change dialog (fdRoomChange): folio -> new room."""
        from PyQt6.QtWidgets import (QDialog, QFormLayout, QLineEdit,
                                     QDialogButtonBox)
        dlg = QDialog(w)
        dlg.setWindowTitle("Room Change (VB6 fdRoomChange)")
        dlg.setModal(True)
        form = QFormLayout(dlg)
        ed_folio = QLineEdit(); ed_folio.setPlaceholderText("Folio No")
        ed_room = QLineEdit(); ed_room.setPlaceholderText("New Room No")
        ed_reason = QLineEdit(); ed_reason.setPlaceholderText("Reason (optional)")
        form.addRow("Folio No *", ed_folio)
        form.addRow("New Room No *", ed_room)
        form.addRow("Reason", ed_reason)
        bb = QDialogButtonBox(QDialogButtonBox.StandardButton.Ok |
                              QDialogButtonBox.StandardButton.Cancel)
        bb.accepted.connect(dlg.accept)
        bb.rejected.connect(dlg.reject)
        form.addRow(bb)
        if dlg.exec() != QDialog.DialogCode.Accepted:
            return
        try:
            folio = int(ed_folio.text().strip())
        except ValueError:
            QMessageBox.warning(w, "Room Change", "Folio No numeric hona chahiye")
            return
        try:
            result = checkin_mod.room_change(
                folio, ed_room.text().strip(), ed_reason.text().strip(),
                user=getattr(w, "user", "SA"))
            QMessageBox.information(
                w, "Room Change",
                f"Folio #{folio}: {result['old_room']} -> "
                f"{result['new_room']} (FolioLog audit written)")
        except ValueError as e:
            QMessageBox.warning(w, "Room Change", str(e))
        except Exception as e:
            QMessageBox.critical(w, "Room Change", f"DB error: {e}")

    def _open_salary_create(w=None):
        """Salary Creation dialog (prSalCreate): attendance -> salary."""
        from PyQt6.QtWidgets import (QDialog, QFormLayout, QLineEdit,
                                     QDoubleSpinBox, QDialogButtonBox)
        dlg = QDialog(w)
        dlg.setWindowTitle("Salary Creation (VB6 prSalCreate)")
        dlg.setModal(True)
        form = QFormLayout(dlg)
        ed_month = QLineEdit(); ed_month.setPlaceholderText("e.g. APR2026 (ya 2026-04)")
        ed_emp = QLineEdit(); ed_emp.setPlaceholderText("e.g. KK000213")
        sp_da = QDoubleSpinBox(); sp_da.setRange(0, 100); sp_da.setSuffix(" %")
        sp_hra = QDoubleSpinBox(); sp_hra.setRange(0, 100); sp_hra.setSuffix(" %")
        sp_ot = QDoubleSpinBox(); sp_ot.setRange(0, 31)
        sp_otrate = QDoubleSpinBox(); sp_otrate.setRange(0, 10000)
        form.addRow("Month/Year *", ed_month)
        form.addRow("Employee Code *", ed_emp)
        form.addRow("DA %", sp_da)
        form.addRow("HRA %", sp_hra)
        form.addRow("OT Days", sp_ot)
        form.addRow("OT Rate/Day", sp_otrate)
        bb = QDialogButtonBox(QDialogButtonBox.StandardButton.Ok |
                              QDialogButtonBox.StandardButton.Cancel)
        bb.accepted.connect(dlg.accept)
        bb.rejected.connect(dlg.reject)
        form.addRow(bb)
        if dlg.exec() != QDialog.DialogCode.Accepted:
            return
        try:
            result = _payroll_core.create_salary_from_attendance(
                ed_month.text().strip(), ed_emp.text().strip(),
                da_per=sp_da.value(), hra_per=sp_hra.value(),
                ot_days=sp_ot.value(), ot_rate=sp_otrate.value(),
                user=getattr(w, "user", "SA"))
            QMessageBox.information(
                w, "Salary Creation",
                f"Salary saved: {result['emp_code']} / {result['mth_year']}\n"
                f"Work Days: {result['work_day']} | Basic Earned: "
                f"{result['basic_earned']}\n"
                f"Net Salary: {result['net_salary']}")
        except ValueError as e:
            QMessageBox.warning(w, "Salary Creation", str(e))
        except Exception as e:
            QMessageBox.critical(w, "Salary Creation", f"DB error: {e}")

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
        # VB6: "Customer History" menu leaf opens frmGuestInfo (HMS.bas loc_1E32DAE)
        # — same guest info form as Guest Profile, alias wire for POSMas leaf.
        "Customer History": lambda w: fo.open_guestprof(w),
        "Check In": (lambda w: wrui.open_walkin_entry(
            w, user=getattr(w, 'user', 'PYADMIN'))) if wrui else _coming_soon("Check In"),
        "Check-In": lambda w: fo.open_checkin(w, user=w.user),
        "Checkin": lambda w: fo.open_checkin(w, user=w.user),
        # P5 POS + Night Audit:
        "KOT Entry": (lambda w: kot.open_kot_entry(w, user=w.user)) if kot else None,
        "POS Status": _pos,
        "Sales Register": _pos,
        "Item wise Sale": _pos,
        "Log": _na,
        "Night Audit Log": _na,
        "Daily Report": _na,
        "Occupancy Analysis": _na,
        "Guest Audit Ledger": _na,
        "Plan Master": lambda w: p2.open_planmaster(w),
        # Main Setup - Front Office masters (P2-complete):
        "City Master": lambda w: p2.open_city(w),
        "Country Master": lambda w: p2.open_country(w),
        "State Master": lambda w: p2.open_state(w),
        "Area Master": lambda w: p2.open_area(w),          # BUG FIX #4
        "Room Category": lambda w: p2.open_roomcategory(w),
        "Room Master": lambda w: p2.open_roommaster(w),
        "Package Master": lambda w: p2.open_packagemaster(w),
        "Season Master": lambda w: p2.open_seasonmaster(
            w, user=getattr(w, "user", "SA")),
        "Company Master": (
            (lambda w: compmast_ui.open_comp_mast_form(
                w, user=getattr(w, "user", "SA")))
            if compmast_ui else lambda w: p2.open_companymaster(w)),
        # Main Setup - General / Charge:
        "Charge Master": lambda w: p2.open_fixcharge(w),
        "Fixed Charge": lambda w: p2.open_fixcharge(w),
        "Unit Master": lambda w: p2.open_unit(w),
        "Item Master": lambda w: p2.open_item(w),
        # Main Setup - F&B / Banquet:
        "Narration Master": lambda w: p2.open_narr(w),
        "Venue Master": lambda w: p2.open_venue(w),
        # VB6 FrmVenueFeat 'VenueFeature' — FeatureMast master (LIVE table)
        "VenueFeature": (lambda w: bmst_ui.open_venue_feature(w)) if bmst_ui else _coming_soon("VenueFeature"),
        "Department": lambda w: p2.open_depart(w),
        "Department/Outlet": lambda w: p2.open_depart(w),
        # Reservation:
        "Reservation/Cancellation": lambda w: ReservationBrowser(w).exec(),
        # Utility / User Master:
        "User Master": (lambda w: _rbac_guard("u", "User Master")(p2.open_usermaster)(w, current_user=w.user)),
        "Permissions": (lambda w: perm_ui.open_user_permissions(
            w, user=getattr(w, "user", "SA"))) if perm_ui else None,
        "User Permissions (Advanced)": (lambda w: perm_ui.open_user_permissions(
            w, user=getattr(w, "user", "SA"))) if perm_ui else None,
        # Wave 2: FO operational screens
        "Check Out": (lambda w: _rbac_guard("d", "Check Out")(fo2.open_checkout)(w, user=w.user)) if fo2 else None,
        "Check-Out": (lambda w: _rbac_guard("d", "Check-Out")(fo2.open_checkout)(w, user=w.user)) if fo2 else None,
        "Checkout": (lambda w: _rbac_guard("d", "Checkout")(fo2.open_checkout)(w, user=w.user)) if fo2 else None,            "WalkIn CheckIn": (lambda w: wrui.open_walkin_entry(
                w, user=getattr(w, 'user', 'PYADMIN'))) if wrui else _coming_soon("WalkIn CheckIn"),
        # P9: VB6 FdRevCheckOut — reverse flow (Checked-Out tab + btnReverse)
        "Reverse Check Out": (lambda w: fo2.open_checkout(w, user=w.user, reverse=True)) if fo2 else None,
        "Room Status": (lambda w: rs_ui.open_roomstatus(w, user=w.user)) if rs_ui else None,
        "House Keeping Screen": (lambda w: rs_ui.open_roomstatus(w, user=w.user)) if rs_ui else None,
        # VB6 resRoomType: "Room Category Wise Reservation Look Up".
        "Room Category Wise": (lambda w: rs_ui.open_roomtype_lookup(w)) if rs_ui else None,
        "Expense Entry": (lambda w: exp_ui.open_expense(w, user=w.user)) if exp_ui else None,
        # Wave 2: Finance/FO masters (now live)
        "Tax Master": (lambda w: fm.open_taxmaster(w)) if fm else None,
        "Payment Type": (lambda w: fm.open_paymenttype(w)) if fm else None,
        # Outlet Paycodes (VB6 FrmPayTypeMast DepartPay grid — per-paycode
        # outlet allow-list; re-settlement/charge combos isi se filter)
        "Outlet Paycodes": (lambda w: fm.open_outlet_paycodes(w, user=getattr(w, "user", "SA"))) if fm else None,
        # Plan Defination Master (VB6 FrmPlanPackMast — Standard-mode
        # plan definition; Advanced mode p2.open_planmaster already REAL)
        "Plan Defination Master": (lambda w: fm.open_plan_definition(w, user=getattr(w, "user", "SA"))) if fm else None,
        "Market Segment": (lambda w: fm.open_marketsegment(w)) if fm else None,
        "Business Source": (lambda w: fm.open_businesssource(w)) if fm else None,
        "Guest Status": (lambda w: fm.open_gueststatus(w)) if fm else None,
        "Forex Master": (lambda w: fm.open_forexmaster(w)) if fm else None,
        "Ledger Accounts": (lambda w: fm.open_ledger(w)) if fm else None,
        "Group Accounts": lambda w: p2.open_acgroup(w),
        # Wave 3 (Main Setup complete): POS Setup masters
        "Session Master": (lambda w: pm.open_session(w, user=getattr(w, "user", "SA"))) if pm else None,
        "Delivery Boy":   (lambda w: pm.open_delboy(w, user=getattr(w, "user", "SA"))) if pm else None,
        "Item List":      (lambda w: pm.open_itemcat(w, user=getattr(w, "user", "SA"))) if pm else None,
        "Menu Category":  (lambda w: pm.open_itemcat(w, user=getattr(w, "user", "SA"))) if pm else None,
        # Wave 3: Banquet masters
        "Venue Features":    (lambda w: bm.open_venfeature(w)) if bm else None,
        "Venue Capacity":    (lambda w: bm.open_venue_capacity(w, user=getattr(w, "user", "SA"))) if bm else None,
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
        "Revenue Master":    (lambda w: hr.open_memrev(w, user=getattr(w, "user", "SA"))) if hr else None,
        # Wave 3: General Setup masters
        "Room Features":     (lambda w: gs.open_roomfeature(w)) if gs else None,
        "Voucher Environment": (lambda w: gs.open_vouchertype(w)) if gs else None,
        "Voucher Type": (lambda w: gs.open_vouchertype(w)) if gs else None,
        "FA Environment":    (lambda w: fa_envui.open_fa_environment(w)) if fa_envui else None,
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
        "Events":            (lambda w: bm.open_func_type(w)) if bm else None,
        "Setup Outlet":      (lambda w: p2.open_depart(w)) if p2 else None,
        "Outlet Bill Sundry Setting": ((lambda w: fdui.open_depart_sundry(w))
                                       if fdui else None),
        # VB6 MDIForm1 CCenterMas_Click(6) -> DepartSundry.frm, jiska
        # V_Type = site+'PURC' (purchase sundry) hai — 22-col INSERT evidence
        # HMS_py/core/sundry_type.py docstring (DepartSundry.frm:1810-1825).
        "Purchase Sundry Setting": ((lambda w: fdui.open_depart_sundry(w))
                                    if fdui else _coming_soon(
                                        "Purchase Sundry Setting")),
        # Wave 3: EPABX masters
        "Call Type":         (lambda w: epabx.open_calltype(w)) if epabx else None,
        "Call Code":         (lambda w: epabx.open_callcode(w)) if epabx else None,
        "Extension":         (lambda w: epabx.open_extension(w)) if epabx else None,
        # Wave 3: Item masters
        "Item Group":        (lambda w: p2.open_item_group(w)) if p2 else None,
        # P5 Inventory:
        "Indent": (lambda w: _inv.open_indent_ui(w)) if _inv else None,
        "Indent Entry": (lambda w: _inv.open_indent_ui(w)) if _inv else None,
        "Pending Indent": (lambda w: _inv.open_inv(w)) if _inv else None,
        "Stock Register Detailed": (lambda w: _inv.open_inv(w)) if _inv else None,
        "Purchase Register Detailed": (lambda w: _inv.open_inv(w)) if _inv else None,
        "GIN / Purchase Receipt": (lambda w: _inv.open_gin(w)) if _inv else None,
        "Purchase Order": (lambda w: purord_ui.open_purchase_order(w)) if purord_ui else _coming_soon("Purchase Order"),
        "Purchase Bill": (lambda w: purbill_ui.open_purchase_bill(w)) if purbill_ui else _coming_soon("Purchase Bill"),
        "Stock Transfer": (lambda w: _inv.open_stock_transfer(w)) if _inv else None,
        "eInvoice Config": (lambda w: _inv.open_einvoice_config(w)) if _inv else None,
        # NA menubar leaf (test_wave_c_gstr2) — browser surface report ke liye
        "EInvoice Report": (lambda w: einv_ui.open_einvoice_browser(w)) if einv_ui else _coming_soon("EInvoice Report"),
        "Kitchen Stock Report": (lambda w: _inv.open_kitchen_stock_report(w)) if _inv else None,
        "Stock Issue": (lambda w: stiss_ui.open_stock_issue(w)) if stiss_ui else _coming_soon("Stock Issue"),
        "Stock Receive": (lambda w: strec_ui.open_stock_receive(w)) if strec_ui else _coming_soon("Stock Receive"),
        "Stock Adjustment": (lambda w: stadj_ui.open_stock_adjust(w)) if stadj_ui else _coming_soon("Stock Adjustment"),
        "Purchase Register": (lambda w: _inv.open_inv(w)) if _inv else None,
        "Stock Summary": (lambda w: _inv.open_inv(w)) if _inv else None,
        "Stock Register": (lambda w: _inv.open_inv(w)) if _inv else None,
        # P5-b Reports (PDF):
        "Reservation Status Report": _open_res_report("arrival"),
        "Reservation Status": _open_res_report("arrival"),
        "Reservation Status Arrival": _open_res_report("arrival"),
        "Reservation Status In-House": _open_res_report("inhouse"),
        # Godown master (Inventory master):
        "Godown Master": (lambda w: _inv.open_godown(w)) if _inv else None,
        # P4-b Folio/Check-Out (folio_ui - FolioLog + Amend views):
        "Folio Log": (lambda w: folui.open_folio(w)) if folui else None,
        "Amend Departure": (lambda w: folui.open_folio(w)) if folui else None,
        "Payment Receive Entry": (lambda w: folui.open_folio(w)) if folui else None,
        "Receive Payment": (lambda w: folui.open_folio(w)) if folui else None,
        # Pending (minimal - only truly missing tables):
        "Tax Structure": (lambda w: tsu.open_taxstru(w)) if tsu else None,
        "Parameter": _open_enviro,
        # Screenshot-parity: VB6 FDGENMAS 6-tab General Setup window
        "General Setup (Tabs)": (lambda w: gst.open_general_setup(
            w, user=getattr(w, "user", "SA"))) if gst else None,
        "Revenue Group Setting": (lambda w: revbud_ui.open_revenue_group(w)) if revbud_ui else _coming_soon("Revenue Group Setting"),
        "Printing Parameters": (lambda w: gs.open_printing(w)) if gs else None,
        "Printing Setup": (lambda w: gs.open_printing(w)) if gs else None,
        "Revenue Wise Budget Entry": (lambda w: revbud_ui.open_revenue_budget_entry(w)) if revbud_ui else _coming_soon("Revenue Wise Budget Entry"),
        "Guest History": (lambda w: ghu.open_guest_history(w, user=w.user)) if ghu else None,
        "Room Display": (lambda w: rs_ui.open_roomstatus(w, user=w.user)) if rs_ui else None,
        "Update Database Nulls": (lambda w: dbmaint_ui.open_db_maintenance(w)) if dbmaint_ui else _coming_soon("Update Database Nulls"),
        "Inconsistency Check": (lambda w: dbmaint_ui.open_inconsistency_check(w)) if dbmaint_ui else _coming_soon("Inconsistency Check"),
        "Account Merging": (lambda w: acmerge_ui.open_account_merge(w)) if acmerge_ui else None,
        # Tally export (frmTallyExport port — read-only XML files)
        "Tally Export": _open_tally(),
        # VB6 caption aliases — screens pehle se the, VB6 naam se wire kiye
        "Server Master": (lambda w: pm.open_waiter(w)) if pm else None,
        "Menu Group": (lambda w: pm.open_itemcat(w)) if pm else None,
        "Menu Item": (lambda w: p2.open_item(w)) if p2 else None,
        # Parity batch: amp-caption VB6 aliases (menuHelp captions '&' ke
        # saath aate hain — registry lookup lowercase-normalized hai)
        "&Voucher Entry": (lambda w: favchr_ui.open_voucher_entry(w)) if favchr_ui else None,
        "&Expense Voucher": (lambda w: exp_ui.open_expense(w, user=w.user)) if exp_ui else None,
        "Balanc&e Sheet": lambda w: fvu.open_balance_sheet(w),
        "&Profit And Loss Account": lambda w: fvu.open_pnl(w),
        "&Trial Balance (Group)": lambda w: fvu.open_trial_balance(w),
        "&Trial Ledger": lambda w: fvu.open_trial_balance(w),
        "Cash &Flow": lambda w: fvu.open_cash_bank_books(w),
        "Fund Flo&w": lambda w: fvu.open_cash_bank_books(w),
        "&Annexure": lambda w: fvu.open_trial_balance(w),  # VB6 Annexure ledger-view parity
        "A&geing Analysis for Debtors": lambda w: fvu.open_trial_balance(w),
        "Ageing A&nalysis for Creditors": lambda w: fvu.open_trial_balance(w),
        # Messaging (VB6 InBox/OutBox)
        "&InBox": (lambda w: mpu.open_inbox(
            w, user=getattr(w, "user", "SA"))) if mpu else None,
        "&OutBox": (lambda w: mpu.open_outbox(
            w, user=getattr(w, "user", "SA"))) if mpu else None,
        # Members Mgmt > Operations
        "Revenue Change Entry": (lambda w: mpu.open_revenue_change(
            w, user=getattr(w, "user", "SA"))) if mpu else None,
        # Mall Mgmt > Operations
        "Facility Sundry Setting": (lambda w: mpu.open_facility_sundry(
            w, user=getattr(w, "user", "SA"))) if mpu else None,
        # Top-level leaf
        "Sale Bill Modification": (lambda w: mpu.open_sale_bill_modification(
            w, user=getattr(w, "user", "SA"))) if mpu else None,
        # VB6 MDI window-management leaves (Qt built-ins — no-op parity)
        "&Cascade": lambda w: None,
        "Tile &Horizontal": lambda w: None,
        "Tile &Vertical": lambda w: None,
        # VB6 File > Exit (Qt close — shell modal context me reject)
        "&Exit": lambda w: (w.close() if hasattr(w, "close") else None),
        "Item Category": (lambda w: pm.open_itemcat(w)) if pm else None,
        "Item  List": (lambda w: p2.open_item(w)) if p2 else None,
        "Item Entry ": (lambda w: p2.open_item(w)) if p2 else None,
        "Location Master": (lambda w: gs.open_godown(w)) if gs else None,
        "Extension Master": (lambda w: epabx.open_extension(w)) if epabx else None,
        "Call Type Master": (lambda w: epabx.open_calltype(w)) if epabx else None,
        "Call Codes Master": (lambda w: epabx.open_callcode(w)) if epabx else None,
        # VB6 TelMaast#1 (user_module_tree.txt:130) — MSComm settings quadruple,
        # machine-local Analysis.ini persistence (core/comport_config.py)
        "Com Port Properties": (lambda w: cport.open_com_port_properties(w)) if cport else None,
        "Designation Master": (lambda w: hr.open_desig(w)) if hr else None,
        # Naye modules (Scheme/HappyHours/TDS)
        "Scheme Master": (lambda w: stu.open_scheme(w)) if stu else None,
        "Happy Hours": (lambda w: stu.open_happyhours(w)) if stu else None,
        "Happy Hours [ Free Items ]": (lambda w: stu.open_happyhours(w)) if stu else None,
        "T.D.S. Category": (lambda w: stu.open_tdscat(w)) if stu else None,
        # --- S1 wire-only wave (live opener/report alias, VB6 captions) ---
        # Finance ops (cores already exist: fa_ledger_ops/fa_tds_ops/fa_voucher)
        "Adjustment Entry": lambda w: fvu.open_voucher_entry(w),
        "Delete Adjustment Entry": lambda w: fvu.open_voucher_entry(w),
        "Bank Reconciliation": lambda w: fvu.open_bank_recon(w),
        # P9: VB6 FaTDSChal — dedicated challan UI (TDSChal/TDSChal1 + LEDGERTDS mark)
        # VB6 fate_Click idx5 -> FaTDSChal (idx0 FaVrEnt, idx6 FaTDSCertificate)
        "T.D.S. Challan Entry": (lambda w: fasub_ui.open_fa_tds_challan(w)) if fasub_ui else _coming_soon("T.D.S. Challan Entry"),
        "T.D.S. Certificate Entry": lambda w: _open_fv_list(
            w, "T.D.S. Certificate",
            lambda: __import__("HMS_py.core.tdscerti", fromlist=["x"]).list_all()),
        "Expense Voucher": (lambda w: exp_ui.open_expense(w, user=w.user)) if exp_ui else None,
        "Opening Balance Updation": lambda w: fvu.open_trial_balance(w),
        "Year End Updation": (lambda w: year_end_ui.open_year_end_preflight(w)) if year_end_ui else None,
        # P9: VB6 FaCurrBalUpdate — currbal rebuild UI (SubGroupCurrBal)
        "Current Balance Updation": lambda w: fvu.open_currbal_update(w),
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
        "Interest Ledger": _open_report("&Interest Ledger"),  # LedInt report; open_led_int nahi bana
        "Journal Books": lambda w: fvu.open_journal_book(w),
        "Bank Register": lambda w: fvu.open_bank_register(w),
        "Cheque Cleared Register": lambda w: _open_fv_list(w, "Cheque Cleared", fv_cheque_cleared),
        "Cheque Not Cleared Register": lambda w: _open_fv_list(w, "Cheque Not Cleared", fv_cheque_pending),
        "Daily Transaction Summary": lambda w: fvu.open_daily_txn_summary(w),
        "Control Ledger": lambda w: fvu.open_trial_balance(w),
        # House Keeping (live tables se verify: ComplaintDetail/LostFoundDetail)
        "Complaint Master": lambda w: _open_fv_list(
            w, "Complaint Master",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, CDate, Category, Description, Depart, Status, ClearingDate FROM ComplaintDetail ORDER BY Code DESC")),
        "Complaint Clearance": lambda w: _open_fv_list(
            w, "Complaint Clearance",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, CDate, Category, Status, ClearingDate, ClearingPerson FROM ComplaintDetail ORDER BY ClearingDate DESC")),
        "Lost / Found Entry": lambda w: _open_fv_list(
            w, "Lost & Found",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, FDate, FArea, FindBy, Description, Status, ClaimedBy FROM LostFoundDetail ORDER BY Code DESC")),
        "Claim Entry": lambda w: _open_fv_list(
            w, "Claims (Lost & Found)",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, FDate, ClaimedBy, ContactNo, DeliveredBy, DDate, Status FROM LostFoundDetail WHERE ClaimedBy <> '' ORDER BY Code DESC")),
        "Room Block": lambda w: _open_fv_list(
            w, "Room Block",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT * FROM RoomBlockOut WHERE 1=0")),
        # Reservation (BookingInquiry live hai)
        "Booking Inquiry": lambda w: _open_fv_list(
            w, "Booking Inquiry",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT TOP 200 Code, PartyName, City, MobileNo, FuncType, FuncDate FROM BookingInquiry ORDER BY Code DESC")),
        "Booking Inquiry Detail": lambda w: _open_fv_list(
            w, "Booking Inquiry Detail",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT TOP 200 Code, PartyName, City, MobileNo, FuncType, FuncDate FROM BookingInquiry ORDER BY Code DESC")),
        # Mall/Outdoor (LocationFacility live)
        "Location Facilities": lambda w: _open_fv_list(
            w, "Location Facilities",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT LcCode, AppDate, FcCode, UnitRate, DueOn, StartMonth FROM LocationFacility ORDER BY LcCode")),
        # VB6 loc_1E47899: New FrmDenomination -> DenominationDetail CRUD
        "Denomination Detail": (lambda w: denom_ui.open_denomination_detail(w, user=getattr(w, "user", "SA"))) if denom_ui else _coming_soon("Denomination Detail"),
        # Reports Center aliases (VB6 caption -> existing report engine key)
        **({cap: _open_report(cap) for cap in (
            "Checkout Analysis", "Company Analysis", "Food Costing Report",
            "Ageing Analysis (Debtors)", "GSTR-1", "GSTR-2(3)", "GSTR-2(4A)",
            "GSTR-2(4B)", "Stewardwise Sale", "Table wise Sale",
            "Settlement Summary", "Deleted Unsettled Bill", "NC KOT Detail",
            "Daily DIET Report", "Not Delivered Order", "Group Wise Sale",
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
            "Confirmation Letters", "Cancellation Letters",
        ) if _rpmod}),
        # Blocked-table leaves -> some now have real UIs
        # VB6 MDIForm1 NightAuditoR_Click: idx1 Charges Posting -> fdPostChrg,
        # idx2 Night Audit Process -> fdAcPostChrg, idx5 Reverse -> frmReNightAudit
        "Night Audit Process": (lambda w: npu_ui.open_night_audit_process(w, user=getattr(w, 'user', None))) if npu_ui else _coming_soon("Night Audit Process"),
        "Night Audit Control Panel": (lambda w: narep_ui.open_nightaudit_reports(w)) if narep_ui else _coming_soon("Night Audit Control Panel"),
        # P9: VB6 frmReNightAudit — reverse_night_audit core, reports browser NAHI
        # P9: VB6 fdAcPostChrg family — A/C posting runner (PostingUtility),
        # reports browser NAHI
        "Reverse Night Audit": (lambda w: npu_ui.open_reverse_night_audit(w, user=getattr(w, 'user', None))) if npu_ui else _coming_soon("Reverse Night Audit"),
        "Charges Posting": (lambda w: npu_ui.open_posting_utility(w, user=getattr(w, 'user', None))) if npu_ui else _coming_soon("Charges Posting"),
# VB6 fdNDAcPostChrg = Posting Utility (NightAuditoR index 3)
        "Account Posting": (lambda w: npu_ui.open_posting_utility(w, user=getattr(w, 'user', None))) if npu_ui else _coming_soon("Account Posting"),
        # VB6 frmFomB — FOM Bill Reprint (Front Office)
        "Bill Reprint": (lambda w: fosub_ui.open_fom_bill_reprint(w)) if fosub_ui else _coming_soon("Bill Reprint"),
        "Merge Room": (lambda w: fosub_ui.open_merge_charge(w)) if fosub_ui else _coming_soon("Merge Room"),
        "Reverse Room Merge": (lambda w: fosub_ui.open_reverse_room_merge(w)) if fosub_ui else _coming_soon("Reverse Room Merge"),
        "Bill Re-Settlement": (lambda w: fosub_ui.open_re_settlement(w)) if fosub_ui else _coming_soon("Bill Re-Settlement"),
        "Look Up Rooms": (lambda w: fosub_ui.open_room_lookup(w)) if fosub_ui else _coming_soon("Look Up Rooms"),
        "Look Up Room types": (lambda w: fosub_ui.open_room_lookup(w)) if fosub_ui else _coming_soon("Look Up Room types"),
        "POS Bill Reprint": (lambda w: psub_ui.open_bill_reprint(w)) if psub_ui else _coming_soon("POS Bill Reprint"),
        "Gravy Item Entry": (lambda w: psub_ui.open_gravy_item_entry(w, user=getattr(w, "user", "SA"))) if psub_ui else _coming_soon("Gravy Item Entry"),
        "Consumption Master": (lambda w: psub_ui.open_consumption_master(w, user=getattr(w, "user", "SA"))) if psub_ui else _coming_soon("Consumption Master"),
        "Split Sale Bill": (lambda w: psub_ui.open_split_bill(w)) if psub_ui else _coming_soon("Split Sale Bill"),
        # Truly blocked (no DB tables)
        # NOTE: "Member Bill Sundry Setting" alag case hai — SundryTypeFix table
        # live hai, par decompiled VB6 dispatch chain (EXTRAS.text loc_1E397E3-1E398DD)
        # me is caption ka koi case nahi — menu registration (loc_1EE8F78, kind=2)
        # ke baad click handler fall-through karta tha. VB6 me bhi inactive.
         **({cap: _coming_soon(cap) for cap in (
             "Member Bill Sundry Setting",
             "Display Rack",
             "Blank GRC", "Add/Edit/Delete Group With Reservation ",
             "Reservation With History",
             "Reservation Status Screen",
             # BLOCKED: FrmItemIssuedOnCleaning.frm ka primary table
             # DepartWiseItemIssueList live DB me hai hi nahi (absent),
             # ItemMast/GodownMast sirf lookup hain -> documented skip.
             "Check Out Clearance Screen",
             "Table Change Entry",
             "Order Booking", "Bill Lookup",
             "KOT Transfer", "Token Entry", "Payment Receive",
             "Payment Receive Entry (POS)",
             "Salary Creation",
             "Rate Group Master",
             "Transfer (Offline)", "Transfer (Online)", "Door Locks",
             # BLOCKED (HW/DLL): frmLockGodrejSettings.frm +
             # frmGodrejLockSettings.frm sirf DoorLockEnviro table
             # read/write karte hain - wo table live DB me absent hai aur
             # asli lock physical Godrej hardware (DLL) se attach hota hai.
             "Cascade", "Tile Horizontal", "Tile Vertical",
             "Manage MDI",
         )}),
         "Item Issued On Cleaning": (lambda w: frm_item_issued_on_cleaning_ui.open_frm_item_issued_on_cleaning(w)) if frm_item_issued_on_cleaning_ui else _coming_soon("Item Issued On Cleaning"),
         "Godrej Locks": (lambda w: frm_lock_godrej_settings_ui.open_frm_lock_godrej_settings(w)) if frm_lock_godrej_settings_ui else _coming_soon("Godrej Locks"),
         # VB6 ModuleAdd loc_1E43E77: New SmartCardMast -> POS masters smartcard
        "Card Initialization": (lambda w: pm.open_smartcard(w)) if pm else _coming_soon("Card Initialization"),
        # ── pehle _coming_soon par the (VB6 parity SECTION A) ──
        # FrmChangeDepart/FrmChangeRest -> chhote department selectors.
        "Changes Department": (lambda w: dchg_ui.open_changes_department(w)) if dchg_ui else _coming_soon("Changes Department"),
        "Restaurant Change ": (lambda w: dchg_ui.open_restaurant_change(w)) if dchg_ui else _coming_soon("Restaurant Change "),
        # FrmForExRec -> ForExTrans voucher entry (VType HTFEX).
        "Forex Receive Entry": (lambda w: fxui.open_forex_receive(w)) if fxui else _coming_soon("Forex Receive Entry"),
        # RsPOSDisplay/RsTouchDisplayTB -> read-only display board.
        "Display Table": (lambda w: pdisp_ui.open_display_table(w)) if pdisp_ui else _coming_soon("Display Table"),
        # frmAdvanceDepDialog -> PayCharge ADRES + Booking.Guarantee='Y'.
        "Advance Deposit": (lambda w: advdep_ui.open_advance_deposit(w)) if advdep_ui else _coming_soon("Advance Deposit"),
        # rsTouchScreenAdvanceDepDialog -> POS bill settlement (PayCharge).
        "Settlement Entry": (lambda w: psetl_ui.open_pos_settlement(w)) if psetl_ui else _coming_soon("Settlement Entry"),
        # POSAdvanceDepDialog -> PayChargeH AD + PackingOrder/HallBook advance.
        "Order Booking Advance": (lambda w: oradv_ui.open_order_advance(w)) if oradv_ui else _coming_soon("Order Booking Advance"),
        # RSSaleBill (50k lines) ka shared screen: POS Sales register.
        "Sale Bill Entry": (lambda w: psale_ui.open_pos_sales(w)) if psale_ui else _coming_soon("Sale Bill Entry"),
        # Banquet operations (VB6 Banquet > Operation; tables LIVE)
        "Banquet Booking": (lambda w: hall_ui.open_hall_booking(w)) if hall_ui else _coming_soon("Banquet Booking"),
        "Banquet Billing": (lambda w: banq_ui.open_banquet_billing(w)) if banq_ui else _coming_soon("Banquet Billing"),
        "Banquet Estimate Billing": (lambda w: banq_ui.open_banquet_estimate(w)) if banq_ui else _coming_soon("Banquet Estimate Billing"),
        "Banquet Booking Advance": (lambda w: banq_ui.open_banquet_advance(w)) if banq_ui else _coming_soon("Banquet Booking Advance"),
        "Banquet Settlement": (lambda w: banq_ui.open_banquet_settlement(w)) if banq_ui else _coming_soon("Banquet Settlement"),
        "Venue Availability": (lambda w: banq_ui.open_venue_availability(w)) if banq_ui else _coming_soon("Venue Availability"),
        "Chef Pre-Costing": (lambda w: banq_ui.open_chef_precosting(w)) if banq_ui else _coming_soon("Chef Pre-Costing"),
        "Catalog Selection": (lambda w: banq_ui.open_catalog_selection(w)) if banq_ui else _coming_soon("Catalog Selection"),
        "Banquet Bill Sundry Setting": (lambda w: banq_ui.open_banquet_sundry_setting(w)) if banq_ui else _coming_soon("Banquet Bill Sundry Setting"),
        "Guest Comments": (lambda w: banq_ui.open_guest_comments(w)) if banq_ui else _coming_soon("Guest Comments"),
        # --- S1 tail: last live-schema leaves ---
        "Menu Item Rate": lambda w: item_rate.open_item_rate(
            w, user=getattr(w, "user", "SA")),
        "Telephone Call Entry": lambda w: _open_fv_list(
            w, "Telephone Call Entry",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT TOP 200 ID, V_TYPE, PNT_NO, Extension, RoomNo, "
                "CALL_START_DATE, CALL_DURATION, DIALED_NO FROM EPABX_Data ORDER BY ID DESC")),
        "Call Control Master": lambda w: _open_fv_list(
            w, "Call Control Master",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, Name FROM TelCallType ORDER BY Code")),
        "Location-Master": lambda w: _open_fv_list(
            w, "Location Master",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, Name, ShortName FROM GodownMast ORDER BY Code")),
        "Party Locations": lambda w: _open_fv_list(
            w, "Party Locations",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT LcCode, AppDate, FcCode, UnitRate, DueOn FROM LocationFacility ORDER BY LcCode")),
        # Finance sub-forms (VB6 fate_Click)
        "Ledger Adjustment": (lambda w: fasub_ui.open_fa_adjust(w)) if fasub_ui else _coming_soon("Ledger Adjustment"),
        # P9: VB6 FaAdjustDel — dedicated delete screen (delete=True route)
        "Adjustment Deletion": (lambda w: fasub_ui.open_fa_adjust(w, delete=True)) if fasub_ui else _coming_soon("Adjustment Deletion"),
        "Cheque Clearing": (lambda w: fasub_ui.open_fa_chq_clear(w)) if fasub_ui else _coming_soon("Cheque Clearing"),
        "TDS Certificate": (lambda w: fasub_ui.open_fa_tds_cert(w)) if fasub_ui else _coming_soon("TDS Certificate"),
        # Guest & Registration forms (GuestProf/GuestFolio tables exist)
        "Guest LookUp": (lambda w: gl_ui.open_guest_lookup(w)) if gl_ui else _coming_soon("Guest LookUp"),
        "Registration Entry": (lambda w: reg_ui.open_registration_entry(w)) if reg_ui else _coming_soon("Registration Entry"),
        "Guest Registration": (lambda w: reg_ui.open_registration_entry(w)) if reg_ui else _coming_soon("Guest Registration"),
        # M.R. Entry (VB6 pMREntry port — stock_create MRE via stock_receive_ui pattern)
        "M.R. Entry": (lambda w: strec_ui.open_stock_receive(w)) if strec_ui else _coming_soon("M.R. Entry"),
# Room Change (VB6 fdRoomChange port — v0.1.2)
        "Room Change": (lambda w: fosub_ui.open_room_change(w)) if fosub_ui else _coming_soon("Room Change"),
        # KOT Transfer / Table Change (VB6 RsKOTTransfer/RsTbChange port)
        "KOT Transfer": (lambda w: kotui.open_kot_transfer(w)) if kotui else None,
        "Table Change Entry": (lambda w: kotui.open_table_change(w)) if kotui else None,
        # Salary Creation (VB6 prSalCreate port)
        "Salary Creation": lambda w: _open_salary_create(w),
        # Tally Export
        "Tally Export(XML)": (lambda w: tally_ui.open_tally(w)) if tally_ui else _coming_soon("Tally Export(XML)"),
        # Misc sub-forms (Opening Stock, Sundry Master, Restaurant Master)
        "Opening Stock": (lambda w: misc_ui.open_opening_stock(w)) if misc_ui else _coming_soon("Opening Stock"),
        "Party Master": (lambda w: misc_ui.open_party_master(w, user=getattr(w, "user", "SA"))) if misc_ui else _coming_soon("Party Master"),
        # Comp Master (VB6 CompMast — RoomDiscount + Comp_PlanDet +
        # Comp_Inclusive delete-then-reinsert pack)
        "Comp Master": (lambda w: misc_ui.open_comp_master(w, user=getattr(w, "user", "SA"))) if misc_ui else _coming_soon("Comp Master"),
        "Sundry Master": (lambda w: misc_ui.open_sundry_master(w)) if misc_ui else _coming_soon("Sundry Master"),
        "Menu Item Copy": (lambda w: pm.open_menu_item_copy(w, user=getattr(w, "user", "SA"))) if pm else _coming_soon("Menu Item Copy"),
        "Restaurant Master": (lambda w: misc_ui.open_restaurant_master(w)) if misc_ui else _coming_soon("Restaurant Master"),
        # Kitchen Closing Stock (VB6 kClStk port — KClStk table live hai)
        "Kitchen Closing Stock": (lambda w: kclstk_ui.open_kitchen_closing_stock(w)) if kclstk_ui else _coming_soon("Kitchen Closing Stock"),
        # Requisition Slip (VB6 pReqSlip port — pending indent lines -> RQI issue)
        "Requisition Slip": (lambda w: reqslip_ui.open_requisition_slip(w)) if reqslip_ui else _coming_soon("Requisition Slip"),
        "Stock Issue on Requisition": (lambda w: reqslip_ui.open_requisition_slip(w)) if reqslip_ui else _coming_soon("Stock Issue on Requisition"),
        "Pending M.R.": (lambda w: reqslip_ui.open_requisition_slip(w)) if reqslip_ui else _coming_soon("Pending M.R."),
        # --- S1 tail: blocked tables (click par documented VB6-style message) ---
        # NOTE: dead leaves (Sale MIS Customized, Data Recieving) bhi isi
        # tuple me _coming_soon hain — VB6 evidence ke saath
        # tests/unit/test_mainsetup_registry_parity.py ALLOWED_INACTIVE me
        # documented hain.
         **({cap: _coming_soon(cap) for cap in (
             "Pending Purchase Order",
             "Sale MIS Customized",
             "Data Transfer", "Data Recieving",
             "Data Transfer (POS)",
             "Godrej Lock Settings",
         )}),
        "Expected Plan/Package FB Details": _open_report("Expected Plan/Package FB Details"),
        "Cashier  Report": _open_report("Cashier  Report"),
        "Attendence Report": _open_report("Attendence Report"),
        "Item Wise Sales Report": _open_report("Item Wise Sales Report"),
        "Member Bill Missing Report": _open_report("Member Bill Missing Report"),
        "Card Transaction Report": _open_report("Card Transaction Report"),
        "Card Collection Summary": _open_report("Card Collection Summary"),
        # RsStoreRecEntry (stock receive) + pMREntry (GIN) -> shared screen.
        "Finish Material Receive Entry": (lambda w: strec_ui.open_stock_receive(w)) if strec_ui else _coming_soon("Finish Material Receive Entry"),
        # RsKitchenMaterial -> KMISS/KMREC stock voucher (Inventory).
        "Excise Invoice Cum Gate Pass": (lambda w: egp_ui.open_excise_gate_pass(w)) if egp_ui else _coming_soon("Excise Invoice Cum Gate Pass"),
        # ── PARTIAL-batch wiring: VB6 forms -> existing tested openers ──
        # (HR tabs: VB6 alag forms the, HrPayrollDialog tabs ka port)
        "Leave": (lambda w: payroll_ui.open_hr_payroll(w)) if payroll_ui else None,
        "Attendance": (lambda w: payroll_ui.open_hr_payroll(w)) if payroll_ui else None,
        "Loan/Advance": (lambda w: payroll_ui.open_hr_payroll(w)) if payroll_ui else None,
        "Over Time": (lambda w: payroll_ui.open_hr_payroll(w)) if payroll_ui else None,
        "Leave Encashment": (lambda w: payroll_ui.open_hr_payroll(w)) if payroll_ui else None,
        # VB6 MemMas idx1 -> MembershipMast (member master CRUD), billing nahi
        "Member Master": (lambda w: membmast_ui.open_member_master(w, user=getattr(w, 'user', 'SA'))) if membmast_ui else _coming_soon("Member Master"),
        "Corporate Member Master": (lambda w: membmast_ui.open_corporate_member_master(w, user=getattr(w, 'user', 'SA'))) if membmast_ui else _coming_soon("Corporate Member Master"),
        "Category wise Revenue": (lambda w: membmast_ui.open_member_master(w, user=getattr(w, 'user', 'SA'))) if membmast_ui else None,
        "Category wise Facility": (lambda w: membmast_ui.open_member_master(w, user=getattr(w, 'user', 'SA'))) if membmast_ui else None,
        "Member Age Wise Revenue": (lambda w: membmast_ui.open_member_master(w, user=getattr(w, 'user', 'SA'))) if membmast_ui else None,
        "Member Select Category": (lambda w: membmast_ui.open_member_master(w, user=getattr(w, 'user', 'SA'))) if membmast_ui else None,
        "Member Bill Printing": (lambda w: membmast_ui.open_member_master(w, user=getattr(w, 'user', 'SA'))) if membmast_ui else None,
        "Member Assistant": (lambda w: membmast_ui.open_member_master(w, user=getattr(w, 'user', 'SA'))) if membmast_ui else None,
        "Outstation Member Entry": (lambda w: membmast_ui.open_member_master(w, user=getattr(w, 'user', 'SA'))) if membmast_ui else None,
        "Member Category Change Entry": (lambda w: membmast_ui.open_member_master(w, user=getattr(w, 'user', 'SA'))) if membmast_ui else None,
        "Member Category Change (Conditional)": (lambda w: membmast_ui.open_member_master(w, user=getattr(w, 'user', 'SA'))) if membmast_ui else None,
        "Member Visit Entry": (lambda w: membmast_ui.open_member_master(w, user=getattr(w, 'user', 'SA'))) if membmast_ui else None,
        "Member Used Facility Entry": (lambda w: membmast_ui.open_member_master(w, user=getattr(w, 'user', 'SA'))) if membmast_ui else None,
        "Member Renewal Entry": (lambda w: membmast_ui.open_member_master(w, user=getattr(w, 'user', 'SA'))) if membmast_ui else None,
        "Member Facility Billing": (lambda w: membmast_ui.open_member_master(w, user=getattr(w, 'user', 'SA'))) if membmast_ui else None,
        "Auto Settle Card Balance": ((lambda w: pm.open_auto_settle_card_balance(
            w, user=getattr(w, "user", "SA"))) if pm else None),
        # SmartCard ops (VB6: Registration/Recharge/Refund/ReIssue forms)
        # P9: VB6 SmartCardRegistration — registration entry (SmartCardRegistration
        # table CRUD), card master nahi
        # EXTRAs > Smart Card > Operations (VB6 3 forms — tabbed dialog)
        "Card Registration": ((lambda w: pm.open_card_registration(w, user=getattr(w, "user", "SA"))) if pm else None),
        # VB6 MDIForm1.EXTSCOP Index 3/4/5 -> SmartCardRecharge/Refund/LostReIssue
        "Card Recharge": ((lambda w: sct.open_card_recharge(w, user=getattr(w, "user", "SA"))) if sct else None),
        "Card Refund": ((lambda w: sct.open_card_refund(w, user=getattr(w, "user", "SA"))) if sct else None),
        "Card Re-Issue": ((lambda w: sct.open_card_re_issue(w, user=getattr(w, "user", "SA"))) if sct else None),
    # Card statements: VB6 ModuleAdd.bas:2493/2497 -> Proc_275_18/22.
    # (pehle _coming_soon list me the - SmartCardLedger live hai to port kiya)
    "Card Statement (MINI)": ((lambda w: sct.open_card_statement_mini(w, user=getattr(w, "user", "SA"))) if sct else None),
    "Card Statement (FULL)": ((lambda w: sct.open_card_statement_full(w, user=getattr(w, "user", "SA"))) if sct else None),
        # VB6 FrmGuestWakeUp -> guest services Wake Up tab
        "Register Wake up Calls": ((lambda w: gsvc_ui.open_guest_services(w)) if gsvc_ui else None),
        # VB6 HRoomCheckOutClearance -> check-out screen
        "Check Out Clearance Screen": ((lambda w: fo2.open_checkout(w, user=w.user)) if fo2 else None),
        # Messaging/SMS (VB6: Inbox/Outbox/Common SMS/SMS Center Settings)
        "InBox": (lambda w: msgui.open_delete_message(w, user=getattr(w, 'user', None))) if msgui else None,
        "OutBox": (lambda w: msgui.open_delete_message(w, user=getattr(w, 'user', None))) if msgui else None,
        "Multiple SMS Type": (lambda w: smsui.open_sms_send(w)) if smsui else None,
        "SMS (API)": (lambda w: smsui.open_sms_send(w)) if smsui else None,
        "SMS (Scheduled)": (lambda w: smsui.open_sms_send(w)) if smsui else None,
        "SMS (Conditional)": (lambda w: smsui.open_sms_send(w)) if smsui else None,
        "SMS Center Settings": (lambda w: smsui.open_sms_send(w)) if smsui else None,
        # VB6 FrmSMSEnviro 'Parameter Setting' -> SMSEnviroSettings dialog
        "SMS Environment Settings": ((lambda w: smsui.SMSEnviroSettings(w).exec())
                                     if smsui else None),
        "Meter Reading": (lambda w: facb_ui.open_facility_billing(w)) if facb_ui else None,
        "User Collection": (lambda w: exp_ui.open_expense(w, user=w.user)) if exp_ui else None,
        # POS/KOT/stock tails (VB6 variants of wired forms)
        "Token Entry": (lambda w: kotui.open_kot_transfer(w)) if kotui else None,
        "Issue/Recd. Entry": (lambda w: stiss_ui.open_stock_issue(w)) if stiss_ui else _coming_soon("Issue/Recd. Entry"),
        "House Keeping Op.Stock Entry": ((lambda w: misc_ui.open_opening_stock(w))
                                         if misc_ui else _coming_soon("House Keeping Op.Stock Entry")),
        "Payment Due Letter Entry": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        # ── PARTIAL-batch 2: VB6 form -> core-module-mapped opener ──
        # (core module ka table LIVE hai; dialog opers tested hain)
        "Complain Master": ((lambda w: gsvc_ui.open_guest_services(w))
                            if gsvc_ui else None),
        "Parameter Settings": (lambda w: envui.open_enviro(w)) if envui else None,
        "Purchase Parameter": (lambda w: envui.open_enviro(w)) if envui else None,
        "Parameter Setting": (lambda w: envui.open_enviro(w)) if envui else None,
        "Company Profile": (lambda w: prof_ui.open_company_profile(w)) if prof_ui else None,
        "Guest Information": (lambda w: ghist_ui.open_guest_history(w, user=getattr(w, 'user', 'SA'))) if ghist_ui else None,
        "Group Reservation": ((lambda w: ch_ui.open_channel_manager(w, user=getattr(w, 'user', 'SA')))
                              if ch_ui else None),
        "Inhouse Guest Folio": (lambda w: folui2.open_folio(w)) if folui2 else None,
        "User Permissions": ((lambda w: perm2_ui.open_user_permissions(w, user=getattr(w, 'user', 'SA')))
                             if perm2_ui else None),
        "KOT": (lambda w: kot2.open_kot_entry(w, user=getattr(w, 'user', 'SA'))) if kot2 else None,
        # VB6 frmBlockMast (House Keeping > Block Master) — BlockMast LIVE
        "Block Master": (lambda w: bmst_ui.open_block_master(w)) if bmst_ui else _coming_soon("Block Master"),
        # VB6 RewardPointParam1 (Members Mgmt) — RWParameter LIVE
        "Reward Points Parameter I": (lambda w: bmst_ui.open_reward_points(w)) if bmst_ui else _coming_soon("Reward Points Parameter I"),
        # VB6 FAFind ('Help.?') — SubGroup search dialog
        "FA Find": (lambda w: bmst_ui.open_fa_find(w)) if bmst_ui else _coming_soon("FA Find"),
        # VB6 FrmChangeSite — login site picker
        "Login Site": (lambda w: bmst_ui.open_change_site(w)) if bmst_ui else _coming_soon("Login Site"),
        # --- VB6 UI-ONLY batch (runtime utility popups) ---
        "Calender": (lambda w: util_ui.open_calender(w)) if util_ui else _coming_soon("Calender"),
        "Image": (lambda w: util_ui.open_image_preview(w)) if util_ui else _coming_soon("Image"),
        "Key Massage": (lambda w: util_ui.open_key_message(w)) if util_ui else _coming_soon("Key Massage"),
        "Select Report Date": (lambda w: util_ui.open_select_report_date(w)) if util_ui else _coming_soon("Select Report Date"),
        "Touch Screen KeyBoard": (lambda w: util_ui.open_touch_keyboard(w)) if util_ui else _coming_soon("Touch Screen KeyBoard"),
        # PlanPopup (VB6 me bhi blank-caption popup leaves the — documented skip)
        "": _coming_soon("(Plan Popup)"),
        # Wave 4: Operations UIs (booking, hall, HR, members, services, POS, finance)
        "Booking Operations": (lambda w: book_ui.open_booking_ops(w)) if book_ui else None,
        "Hall Booking": (lambda w: hall_ui.open_hall_booking(w)) if hall_ui else None,
        "HR Payroll": (lambda w: payroll_ui.open_hr_payroll(w)) if payroll_ui else None,
        "Member Billing": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Environment Settings": (lambda w: member_env_ui.open_member_environment(w)) if member_env_ui else None,
        "Guest Services": (lambda w: gsvc_ui.open_guest_services(w)) if gsvc_ui else None,
        "Facility Billing": (lambda w: facb_ui.open_facility_billing(w)) if facb_ui else None,
        "POS Sales": (lambda w: psale_ui.open_pos_sales(w)) if psale_ui else None,
        "POS Stock": (lambda w: pstock_ui.open_pos_stock(w)) if pstock_ui else None,
        "POS Delivery": (lambda w: pdel_ui.open_pos_delivery(w)) if pdel_ui else None,
        # VB6 RsAssignDelivery (ModuleAdd.bas:3854) - alag form, alag caption;
        # POS Delivery se shared UI.
        "Assign Delivery": (lambda w: pdel_ui.open_pos_delivery(w)) if pdel_ui else _coming_soon("Assign Delivery"),
        # VB6 TravelAgencyPost (ModuleAdd.bas:3186) - Travel1/Travel2 + 2 LEDGER rows.
        "Travel Agency Posting": (lambda w: tpost_ui.open_travel_agency_posting(w, user=getattr(w, "user", None))) if tpost_ui else _coming_soon("Travel Agency Posting"),
        "POS Happy Hours": (lambda w: phappy_ui.open_pos_happy(w)) if phappy_ui else None,
        "POS Table": (lambda w: ptable_ui.open_pos_table(w)) if ptable_ui else None,
        "Table Master": (lambda w: ptable_ui.open_pos_table(w)) if ptable_ui else None,
        "POS Packing": (lambda w: ppack_ui.open_pos_packing(w)) if ppack_ui else None,
        "Finance Ledger": (lambda w: faledg_ui.open_fa_ledger(w)) if faledg_ui else None,
        "Voucher Entry": (lambda w: favchr_ui.open_voucher_entry(w)) if favchr_ui else None,
        # VB6 FaGlobeNarr — Global Narration picker window (partial_forms_ui)
        "Global Narration": (lambda w: pfui.open_global_narration(w)) if pfui else _coming_soon("Global Narration"),
        # ACTION QUEUE batch: partial_forms_ui ke baaki ports (VB6 form
        # captions EXACT — parity matrix caption-match isi par hota hai)
        "Group Accounts Entry": (lambda w: pfui.open_group_accounts(w)) if pfui else _coming_soon("Group Accounts Entry"),
        "Ledger Accounts Entry": (lambda w: pfui.open_ledger_accounts(w)) if pfui else _coming_soon("Ledger Accounts Entry"),
        "Magic": (lambda w: pfui.open_magic(w)) if pfui else _coming_soon("Magic"),
        "Finance Reports": (lambda w: pfui.open_fa_reports(w)) if pfui else _coming_soon("Finance Reports"),
        "Cheque/DD Clearing Entry": (lambda w: pfui.open_cheque_dd_clearing(w)) if pfui else _coming_soon("Cheque/DD Clearing Entry"),
        "Adjustment Delete": (lambda w: pfui.open_adjustment_delete(w)) if pfui else _coming_soon("Adjustment Delete"),
        "Location wise Opening Stock Entry": (lambda w: pfui.open_location_opening_stock(w)) if pfui else _coming_soon("Location wise Opening Stock Entry"),
        # VB6 EmptyInbox.frm (form caption "InBox", Finance menu caption
        # "Delete Message" override karta hai - HMS.bas fame index 12)
        "Delete Message": (lambda w: msgui.open_delete_message(w, user=getattr(w, 'user', None))) if msgui else _coming_soon("Delete Message"),
        "T.D.S.Category Entry": (lambda w: pfui.open_tds_category(w)) if pfui else _coming_soon("T.D.S.Category Entry"),
        # Guest Charges Summary (VB6 fdPrintScreen)
        "Guest Charges Summary": (lambda w: gchrg_ui.open_guest_charges(w)) if gchrg_ui else _coming_soon("Guest Charges Summary"),
        "System Config": (lambda w: syscfg_ui.open_sys_config(w)) if syscfg_ui else None,
        "Backup Data": (lambda w: dbbak_ui.open_db_backup(w)) if dbbak_ui else _coming_soon("Backup Data"),
        # Wave 5: Fd*/CheckOut batch (VB6 FdCheckOut/fdAmendEntry/...)
        "Amend Stay": (lambda w: fdui.open_amend_stay(w)) if fdui else _coming_soon("Amend Stay"),
        "Look Up Reservation By Guest Name": (lambda w: fdui.open_lookup_reservation(w)) if fdui else _coming_soon("Look Up Reservation By Guest Name"),
        "Room Check Out": (lambda w: fdui.open_room_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if fdui else _coming_soon("Room Check Out"),
        "Guest Ledger": (lambda w: fdui.open_guest_ledger(w)) if fdui else _coming_soon("Guest Ledger"),
        "Summerized Guest Ledger": (lambda w: fdui.open_guest_ledger_summ(w)) if fdui else _coming_soon("Summerized Guest Ledger"),
        "Room Check Out Entry": (lambda w: fdui.open_group_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if fdui else _coming_soon("Room Check Out Entry"),
        "Room Check Out Entry (Detail)": (lambda w: fdui.open_group_detail_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if fdui else _coming_soon("Room Check Out Entry (Detail)"),
        "Look Up Room": (lambda w: fdui.open_lookup_room(w)) if fdui else _coming_soon("Look Up Room"),
        "Depart Sundry Setting": (lambda w: fdui.open_depart_sundry(w)) if fdui else _coming_soon("Depart Sundry Setting"),
        # Wave 6: posting/settlement batch
        "Post Charges /Payments": (lambda w: postui.open_post_chrg(w, user=getattr(w, 'user', 'PYADMIN'))) if postui else _coming_soon("Post Charges /Payments"),
        "Post Charges & Payment": (lambda w: postui.open_payment_charge(w, user=getattr(w, 'user', 'PYADMIN'))) if postui else _coming_soon("Post Charges & Payment"),
        "Post Charges/Payment": (lambda w: postui.open_re_settlement(w, user=getattr(w, 'user', 'PYADMIN'))) if postui else _coming_soon("Post Charges/Payment"),
        "Check Out Cancel": (lambda w: postui.open_rev_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if postui else _coming_soon("Check Out Cancel"),
        # Wave 7: rack/room-lookup/walk-in batch
        "Room View": (lambda w: wrui.open_room_view(w)) if wrui else _coming_soon("Room View"),
        "Display Rack": (lambda w: wrui.open_display_rack(w)) if wrui else _coming_soon("Display Rack"),
        "Reservation Look Up Room Wise": (lambda w: wrui.open_roomocc_lookup(w)) if wrui else _coming_soon("Reservation Look Up Room Wise"),
        "Walk In / Check In Entry": (lambda w: wrui.open_walkin_entry(w, user=getattr(w, 'user', 'PYADMIN'))) if wrui else _coming_soon("Walk In / Check In Entry"),
        # Reports Center (REPORTS_TXT / mdi leaves — read-only engine)
        **({cap: _open_report(cap)
            for cap in (_rpmod.menu_caption_map() if _rpmod else {})}),
        # ── Main Setup VB6-evidence re-wires (2026-10-02 compare-loop) ──
        # reports-spread KE baad = override (Guest BirthDates map me hai par
        # VB6 dispatch target frmWelcome hai, report nahi).
        # VB6 loc_1E44517 -> New frmWelcome ('Special Occasions' popup;
        # GuestProf browser, prev/next) — report BirthMarrRep alag cheez.
        "Guest BirthDates/Anniversary": (
            (lambda w: util_ui.open_special_occasions(w))
            if util_ui else _coming_soon("Guest BirthDates/Anniversary")),
        # VB6 loc_1E43DB4 -> New rPOSRepView, GRepFormName="PLUFile"
        # (reports catalog key PLUFile; caption 'PLU File (W.Scale)')
        "PLU File (W.Scale)": _open_report("PLU File"),
        # VB6 report catalog keys CashCardTransRep/CashCardCollectSumm
        # (menu caption 'Cash/Card ...' — smart-card leaf caption-space
        #  ke saath map kiya; VB6 dispatch dead tha, report data parity)
        "Cash Card Transaction Report": _open_report(
            "Cash/Card Transaction Report"),
        "Cash Card Collection Summary": _open_report(
            "Cash/Card Collection Summary"),
        # VB6 SCRD dispatch dead (MDIForm1 SCRD_Click = Exit Sub,
        # loc_DFCDD8); round-5 ported EXTRAS dialogs hi asli target —
        # recharge+refund dono isi dialog me (VB6 caption bhi merged hai)
        "Recharge/Refund Entry": (
            (lambda w: sct.open_card_recharge(w, user=getattr(w, "user", "SA")))
            if sct else None),
        # ── 2026-10-02 loop: 7 naye VB6 ports (agent-verified) ──
        # VB6 loc_1E43224 -> New FrmConsumMast9999 (undated BOM key,
        # sibling 'Consumption Master' = dated FrmConsumMast)
        "Open Item Consumption": (
            (lambda w: oic_ui.open_open_item_consumption(
                w, user=getattr(w, "user", "SA")))
            if oic_ui else _coming_soon("Open Item Consumption")),
        # VB6 loc_1E4A177 -> New FrmJobScheduler (JobSchedule CRUD)
        "Task Scheduler": (
            (lambda w: task_ui.open_task_scheduler(w))
            if task_ui else _coming_soon("Task Scheduler")),
        # VB6 loc_1E4A1B4 -> New FrmPOSBillDeletion (destructive;
        # port me confirm + row-count preview add kiya)
        "POS Bill Deletion": (
            (lambda w: pbdel_ui.open_pos_bill_deletion(
                w, user=getattr(w, "user", "SA")))
            if pbdel_ui else _coming_soon("POS Bill Deletion")),
        # VB6 loc_1E444EC -> New VoucherSundrySetting (SundryType CRUD)
        "Voucher Wise Sundry Entry": (
            (lambda w: vsund_ui.open_voucher_sundry_entry(
                w, user=getattr(w, "user", "SA")))
            if vsund_ui else _coming_soon("Voucher Wise Sundry Entry")),
        # VB6 loc_1E43AEF -> New frmPurEnviro (purchase env, Enviro row)
        "Enviro Inventry": (
            (lambda w: pur_env_ui.open_purchase_enviro(
                w, user=getattr(w, "user", "SA")))
            if pur_env_ui else _coming_soon("Enviro Inventry")),
        # VB6 loc_1E44389 -> New FrmSerialiseVr (Ledger swap serialization)
        "Voucher Serialisation": (
            (lambda w: vser_ui.open_voucher_serialisation(
                w, user=getattr(w, "user", "SA")))
            if vser_ui else _coming_soon("Voucher Serialisation")),
        # VB6 loc_1E43E03 -> New FrmPOSRecycleData (supervisor-gated
        # outlet purge; MemVar_1F920B8=1 = UserMast.Label gate)
        "POS Recycle": (
            (lambda w: precyc_ui.open_pos_recycle(
                w, user=getattr(w, "user", "SA")))
            if precyc_ui else _coming_soon("POS Recycle")),
    }


class MainWindow(QMainWindow):
    """VB6 MDIForm1 jaisa: title '{Company} { Year }', narrow left module
    strip (VB6 x 0-107 teal buttons), module click se menubar."""

    def __init__(self, user: str, comp: dict):
        super().__init__()
        self.user = user
        self.comp = comp
        self.setWindowTitle(f"{comp['name']} {{ {comp['year']} }}")
        self.resize(1150, 720)
        self.registry = _form_registry()
        # CI registry alias (VB6 captions case-insensitive the — tests +
        # menuHelp leaves jaise 'eInvoice Config' vs 'EInvoice Report' ko
        # safe lookup deta hai). Pre-commit hook guard bhi isko check karta hai.
        self._reg_ci = {str(k).strip().lower(): v
                        for k, v in self.registry.items()}
        self._menus = mh.menubar_for  # menuHelp dynamic menubar (VB6 parity)

        central = QWidget()
        self._central = central
        self.aurora = AuroraCanvas(central)
        self.aurora.setAttribute(Qt.WidgetAttribute.WA_TransparentForMouseEvents)
        self.aurora.setGeometry(central.rect())
        self.aurora.lower()
        root = QVBoxLayout(central)
        root.setSpacing(0)
        root.setContentsMargins(0, 0, 0, 0)

        # Top bar: VB6 header (blue gradient + cream title) + theme toggle
        # (screenshots/02_Main_Setup/014_Main_Menu_AfterLogin.png)
        topbar = QHBoxLayout()
        topbar.setContentsMargins(0, 0, 0, 0)
        topbar.setSpacing(8)
        self.lblTitle = QLabel(
            f"  {comp['name']}  {{ {comp['year']} }}")
        f = QFont("Segoe UI", 14, QFont.Weight.Bold)
        self.lblTitle.setFont(f)
        self.lblTitle.setProperty("vbHeader", True)
        self.lblTitle.setMinimumHeight(44)
        topbar.addWidget(self.lblTitle, 1)

        # Theme toggle button
        self.theme_btn = QPushButton("Dark Mode")
        self.theme_btn.setCheckable(True)
        self.theme_btn.setChecked(True)
        self.theme_btn.setFixedWidth(110)
        self.theme_btn.setFixedHeight(32)
        self.theme_btn.setObjectName("themeToggle")
        self.theme_btn.clicked.connect(self._toggle_theme)
        topbar.addWidget(self.theme_btn)
        topbar.addSpacing(12)
        root.addLayout(topbar)

        # VB6 purple module-row + sub-row bars (live evidence: B032 module
        # menus, B033 Operations sub-row, B058 Reservation row). QMenuBar
        # upar wali tests/accessibility ke liye aise hi rehti hai; ye bars
        # VB6 jaisi navigation deti hain. Active button = yellow text.
        self._crumb = {"module": None, "group": None, "leaf": None}
        self._groups = []
        self.mod_row = QFrame()
        self.mod_row.setObjectName("vbModRow")
        self._mod_lay = QHBoxLayout(self.mod_row)
        self._mod_lay.setContentsMargins(4, 2, 4, 2)
        self._mod_lay.setSpacing(2)
        self._mod_buttons: list = []
        root.addWidget(self.mod_row)
        self.sub_row = QFrame()
        self.sub_row.setObjectName("vbSubRow")
        self._sub_lay = QHBoxLayout(self.sub_row)
        self._sub_lay.setContentsMargins(4, 0, 4, 2)
        self._sub_lay.setSpacing(2)
        self._sub_buttons: list = []
        root.addWidget(self.sub_row)
        self.mod_row.setStyleSheet(
            "QFrame#vbModRow { background: transparent; }"
            "QPushButton[vbBar='mod'] { background: #6d28d9; color: white;"
            " border: 1px solid #4c1d95; padding: 6px 14px; font-weight: 700; }"
            "QPushButton[vbBar='mod']:hover { background: #7c3aed; }"
            "QPushButton[vbBar='mod'][active='true'] { color: yellow; }")
        self.sub_row.setStyleSheet(
            "QFrame#vbSubRow { background: transparent; }"
            "QPushButton[vbBar='sub'] { background: #7c3aed; color: white;"
            " border: 1px solid #4c1d95; padding: 5px 12px; font-weight: 600; }"
            "QPushButton[vbBar='sub']:hover { background: #8b5cf6; }"
            "QPushButton[vbBar='sub'][active='true'] { color: yellow; }"
            "QPushButton[vbBar='sub']:disabled { background: #4c1d95;"
            " color: #c4b5fd; }")

        body = QHBoxLayout()
        body.setSpacing(0)
        body.setContentsMargins(0, 0, 0, 0)

        # VB6 module strip: ~116px white strip, teal 3D module buttons
        # (screenshots: left strip x 0-107, buttons teal #54a0a0)
        strip = QFrame()
        strip.setProperty("moduleStrip", True)
        strip.setFixedWidth(116)
        side_lay = QVBoxLayout(strip)
        side_lay.setContentsMargins(4, 8, 4, 8)
        side_lay.setSpacing(6)

        self._side_buttons = []
        # menuHelp L1 sources pehle (VB6 menubar parity), phir legacy roots —
        # buttons pe mod_target property (tests + _on_sidebar_click use karte hain)
        # Filter by user permissions (VB6: only modules user has Opt1=View access)
        try:
            _side_sources = mh.sidebar_sources(user)
        except Exception:
            _side_sources = menu.sidebar_modules()
        
        # Filter sidebar by user permissions (Opt1=View)
        _filtered_sources = []
        for m in _side_sources:
            if mh.can_open(user, m["name"]):
                _filtered_sources.append(m)
        
        for m in _filtered_sources:
            b = QPushButton(m["name"])
            b.setProperty("strip-btn", True)
            b.setProperty("mod_target", m["name"])
            b.setMinimumHeight(44)
            b.setCheckable(True)
            b.setAccessibleName(m["name"])
            b.setAccessibleDescription(f"Module {m['name']}")
            b.clicked.connect(lambda _, mm=m, bb=b: self._on_module(mm, bb))
            self._side_buttons.append(b)
            side_lay.addWidget(b)
        side_lay.addStretch()
        body.addWidget(strip)

        self.canvas = QLabel("Module select karo (left strip)")
        self.canvas.setAlignment(Qt.AlignmentFlag.AlignCenter)
        self.canvas.setProperty("subtitle", True)
        body.addWidget(self.canvas, stretch=1)
        root.addLayout(body)
        self.setCentralWidget(central)

        sb = self.statusBar()
        sb.addWidget(QLabel(f"  {user}  "))
        sb.addWidget(QLabel(
            f"Property Site : {comp['short'] or comp['name']}  "))
        import datetime
        sb.addWidget(QLabel(
            f"S/w Dt.: {datetime.datetime.now():%d/%b/%Y %H:%M:%S}  "))
        from HMS_py.core.db import load_config, connect
        try:
            cfg = load_config()
            _cn = connect(cfg)
            from PyQt6.QtWidgets import QLabel as _L
            _cur = _cn.cursor()
            _cur.execute("SELECT @@SERVERNAME, DB_NAME()")
            _srv, _dbn = _cur.fetchone()
            _cn.close()
            sb.addPermanentWidget(_L(f"DB: {_srv} / {_dbn}  "))
        except Exception as e:
            from PyQt6.QtWidgets import QLabel as _L
            sb.addPermanentWidget(_L(f"DB: OFFLINE ({e})  "))

        # Keyboard navigation
        for i, b in enumerate(self._side_buttons[:9]):
            QShortcut(QKeySequence(f"Alt+{i+1}"), self,
                      activated=lambda bb=b: bb.click())
        QShortcut(QKeySequence("Ctrl+R"), self,
                  activated=lambda: self.registry["Reservation/Cancellation"](self))
        QShortcut(QKeySequence("Ctrl+P"), self,
                  activated=lambda: self.registry["Plan Master"](self))
        for key, leaf in (("Ctrl+C", "Country Master"),
                          ("Ctrl+B", "State Master"),
                          ("Ctrl+H", "Charge Master"),
                          ("Ctrl+U", "Unit Master"),
                          ("Ctrl+I", "Item Master")):
            QShortcut(QKeySequence(key), self,
                      activated=lambda lf=leaf: self.registry[lf](self))
        QShortcut(QKeySequence("Ctrl+F"), self,
                  activated=lambda: self.registry["Guest Profile"](self))
        QShortcut(QKeySequence("Ctrl+K"), self,
                  activated=lambda: self.registry["Check In"](self))
        if self.registry.get("KOT Entry"):
            QShortcut(QKeySequence("Ctrl+T"), self,
                      activated=lambda: self.registry["KOT Entry"](self))
        if self.registry.get("Night Audit Log"):
            QShortcut(QKeySequence("Ctrl+N"), self,
                      activated=lambda: self.registry["Night Audit Log"](self))
        if self.registry.get("Indent"):
            QShortcut(QKeySequence("Ctrl+Y"), self,
                      activated=lambda: self.registry["Indent"](self))
        if self.registry.get("Folio Log"):
            QShortcut(QKeySequence("Ctrl+G"), self,
                      activated=lambda: self.registry["Folio Log"](self))
        if self.registry.get("Reservation Status Arrival"):
            QShortcut(QKeySequence("Ctrl+J"), self,
                      activated=lambda: self.registry["Reservation Status Arrival"](self))
        QShortcut(QKeySequence("Ctrl+Shift+R"), self,
                  activated=lambda: self.registry["Room Category"](self))
        QShortcut(QKeySequence("Ctrl+Shift+M"), self,
                  activated=lambda: self.registry["Room Master"](self))
        QShortcut(QKeySequence("Ctrl+Shift+P"), self,
                  activated=lambda: self.registry["Package Master"](self))
        QShortcut(QKeySequence("Ctrl+Shift+S"), self,
                  activated=lambda: self.registry["Season Master"](self))
        QShortcut(QKeySequence("Ctrl+Shift+C"), self,
                  activated=lambda: self.registry["Company Master"](self))
        QShortcut(QKeySequence("Ctrl+Shift+U"), self,
                  activated=lambda: self.registry["User Master"](self))
        _safe = lambda key: (self.registry.get(key) or (lambda w: None))
        QShortcut(QKeySequence("Ctrl+Shift+O"), self,
                  activated=lambda: _safe("Check Out")(self))
        QShortcut(QKeySequence("Ctrl+Shift+W"), self,
                  activated=lambda: _safe("Room Status")(self))
        QShortcut(QKeySequence("Ctrl+Shift+E"), self,
                  activated=lambda: _safe("Expense Entry")(self))
        QShortcut(QKeySequence("Ctrl+Shift+T"), self,
                  activated=lambda: _safe("Tax Master")(self))
        QShortcut(QKeySequence("Ctrl+Shift+L"), self,
                  activated=lambda: _safe("Ledger Accounts")(self))
        QShortcut(QKeySequence("Ctrl+Alt+T"), self,
                  activated=lambda: _safe("Tally Export")(self))
        # UI_UPDATE_PLAN Phase-1 shortcuts (Ctrl+Alt: koi conflict nahi):
        QShortcut(QKeySequence("Ctrl+Alt+H"), self,
                  activated=lambda: _safe("HR Payroll")(self))
        QShortcut(QKeySequence("Ctrl+Alt+M"), self,
                  activated=lambda: _safe("Member Billing")(self))
        QShortcut(QKeySequence("Ctrl+Alt+B"), self,
                  activated=lambda: _safe("Booking Operations")(self))
        QShortcut(QKeySequence("Ctrl+Alt+F"), self,
                  activated=lambda: _safe("Facility Billing")(self))
        QShortcut(QKeySequence("Ctrl+Alt+G"), self,
                  activated=lambda: _safe("Guest Services")(self))
        QShortcut(QKeySequence("Ctrl+Alt+D"), self,
                  activated=lambda: _safe("Hall Booking")(self))
        QShortcut(QKeySequence("Ctrl+Alt+S"), self,
                  activated=lambda: _safe("POS Sales")(self))
        QShortcut(QKeySequence("Ctrl+Alt+K"), self,
                  activated=lambda: _safe("POS Stock")(self))
        QShortcut(QKeySequence("Ctrl+Alt+E"), self,
                  activated=lambda: _safe("Call Type")(self))

    def resizeEvent(self, event):
        super().resizeEvent(event)
        if hasattr(self, "aurora") and hasattr(self, "_central"):
            self.aurora.setGeometry(self._central.rect())

    def _toggle_theme(self):
        app = QApplication.instance()
        new_theme = toggle_theme(app)
        self.theme_btn.setText("Dark Mode" if new_theme == "dark" else "Light Mode")
        self.theme_btn.setChecked(new_theme == "dark")

    def _on_sidebar_click(self, mod_target: str, btn=None):
        """mod_target (module name) se sidebar module open karo.

        Tests + shortcuts ke liye stable API — button property se ya direct
        module name se call ho sakta hai.
        """
        target = (mod_target or "").strip().lower()
        btn = btn or next(
            (b for b in self._side_buttons
             if str(b.property("mod_target") or "").strip().lower() == target),
            None)
        if btn is not None:
            btn.click()
            return
        # fallback: direct menu build (button list me na ho to bhi)
        self._on_module({"name": mod_target}, btn)

    def _on_module(self, m: dict, btn: QPushButton):
        # sidebar exclusive-check (VB6 jaisa highlight)
        for other in self._side_buttons:
            if other is not btn:
                other.setChecked(False)
        if btn is not None:
            btn.setChecked(True)

        mb = self.menuBar()
        mb.clear()
        for grp in self._menus(m["name"], self.user):
            mm = mb.addMenu(grp["name"])
            for it in grp["items"]:
                self._add_item(mm, it)

        # VB6 purple module row (B032/B059 evidence): module click ke baad
        # sirf module row dikhti hai; sub-row group click par aati hai.
        groups = self._menus(m["name"], self.user)
        self._groups = groups
        self._crumb = {"module": m["name"], "group": None, "leaf": None}
        self._clear_lay(self._mod_lay)
        self._clear_lay(self._sub_lay)
        self._mod_buttons = []
        self._sub_buttons = []
        for grp in groups:
            gb = QPushButton(grp["name"])
            gb.setProperty("vbBar", "mod")
            gb.setProperty("active", False)
            gb.clicked.connect(
                lambda _, gg=grp: self._on_group(m["name"], gg))
            self._mod_buttons.append(gb)
            self._mod_lay.addWidget(gb)
        self._mod_lay.addStretch(1)

        self.canvas.setText(
            f"{m['name']}\n\nTop menubar se form kholo")
        self.setWindowTitle(
            f"{self.comp['name']} {{ {self.comp['year']} }} - {m['name']}")

    @staticmethod
    def _clear_lay(lay):
        while lay.count():
            item = lay.takeAt(0)
            w = item.widget()
            if w is not None:
                w.setParent(None)
                w.deleteLater()

    def _opener(self, caption):
        """menu caption -> opener.

        `_reg_ci` = registry keys ko strip+lower (MainWindow.__init__).
        VB6 caption me trailing/extra space aa jaati hai
        ('Cashier Report ', 'Instant House Count ') jo canonical key se
        alag hota tha -> item disabled ho jaata tha.
        """
        return self._reg_ci.get(str(caption).strip().lower())

    def _on_group(self, module: str, grp: dict):
        """VB6 module-row click: sub-row bharo (B033 evidence)."""
        for b in self._mod_buttons:
            is_active = (b.text() == grp["name"])
            b.setProperty("active", is_active)
            b.style().unpolish(b)
            b.style().polish(b)
        self._crumb["group"] = grp["name"]
        self._crumb["leaf"] = None
        self._clear_lay(self._sub_lay)
        self._sub_buttons = []
        for it in grp.get("items", []):
            lb = QPushButton(it["name"])
            lb.setProperty("vbBar", "sub")
            lb.setProperty("active", False)
            opener = self._opener(it["name"])
            if it.get("children"):
                menu = QMenu(it["name"], self)
                if opener:
                    act = menu.addAction(it["name"])
                    act.triggered.connect(
                        lambda _, fn=opener: self.open_leaf(
                            module, grp["name"], it["name"], fn))
                    menu.addSeparator()
                for ch in it["children"]:
                    self._add_leaf_action(menu, module, grp["name"], ch)
                lb.clicked.connect(
                    lambda _, mm=menu, bb=lb: mm.popup(
                        bb.mapToGlobal(bb.rect().bottomLeft())))
            elif opener:
                leaf = it["name"]
                lb.clicked.connect(
                    lambda _, fn=opener, lf=leaf: self.open_leaf(
                        module, grp["name"], lf, fn))
            else:
                lb.setEnabled(False)   # phase-wise judenga (menubar jaisa)
                lb.setToolTip("phase-wise judenga")
            self._sub_buttons.append(lb)
            self._sub_lay.addWidget(lb)
        self._sub_lay.addStretch(1)
        self.canvas.setText(f"[{module} > {grp['name']}]")

    def _add_leaf_action(self, menu, module: str, group: str, it: dict):
        if it.get("children"):
            sub = menu.addMenu(it["name"])
            for ch in it["children"]:
                self._add_leaf_action(sub, module, group, ch)
            return
        act = menu.addAction(it["name"])
        opener = self._opener(it["name"])
        if opener:
            leaf = it["name"]
            act.triggered.connect(
                lambda _, fn=opener, lf=leaf: self.open_leaf(
                    module, group, lf, fn))
        else:
            act.setEnabled(False)

    def open_leaf(self, module: str, group: str, leaf: str, opener):
        """Purple sub-row / menu leaf kholo + breadcrumb track karo.

        VB6 live evidence: child caption `[Module > Group > Screen]`
        (B034/B036/B062). Dialogs apna title khud rakhte hain; ye crumb
        canvas + MainWindow.crumb_title() ke liye source of truth hai —
        naye/edited opener isse apna title banayein.
        """
        self._crumb = {"module": module, "group": group, "leaf": leaf}
        for b in self._sub_buttons:
            is_active = (b.text() == leaf)
            b.setProperty("active", is_active)
            b.style().unpolish(b)
            b.style().polish(b)
        self.canvas.setText(f"[{module} > {group} > {leaf}]")
        opener(self)

    def crumb_title(self, leaf: str | None = None) -> str:
        """`[Module > Group > Leaf]` breadcrumb (VB6 child-caption parity)."""
        c = self._crumb
        leaf = leaf or c.get("leaf") or ""
        parts = [c.get("module") or "", c.get("group") or "", leaf]
        return "[" + " > ".join(p for p in parts if p) + "]"

    def _add_item(self, parent_menu, it: dict):
        opener = self._opener(it["name"])
        if it["children"]:
            sub = parent_menu.addMenu(it["name"])
            if opener:
                # VB6 header bhi form tha (evidence: Utility -> 'Sundry
                # Master' submenu-title; form SundryMast pe jaata tha).
                # Qt me submenu-title clickable nahi, isliye form-open
                # action submenu ke TOP pe (documented, minimal).
                act = sub.addAction(it["name"])
                act.triggered.connect(lambda _, fn=opener: fn(self))
                sub.addSeparator()
            for ch in it["children"]:
                self._add_item(sub, ch)
            return
        act = parent_menu.addAction(it["name"])
        if opener:
            act.triggered.connect(lambda _, fn=opener: fn(self))
        else:
            act.setEnabled(False)   # phase-wise judenga

    def set_canvas_text(self, text: str):
        self.canvas.setText(text)


# ---------------------------------------------------------------- flow
def run_flow() -> int:
    app = QApplication.instance() or QApplication(sys.argv)
    apply_theme(app, "dark")
    app.setApplicationName("HMS_py")
    install_vb6_keymap(app)          # MS-030 VB6 global key map

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
        apply_theme(app, "dark")
        install_vb6_keymap(app)      # MS-030 (shot mode bhi same shell)
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
        win._on_module({"name": "Main Setup", "srno": 41},
                       win.findChildren(QPushButton)[1])
        QTest.qWait(300)
        win.grab().save(os.path.splitext(shot)[0] + "_module.png")
        print("screenshots saved:", shot)
        return 0
    return run_flow()


if __name__ == "__main__":
    raise SystemExit(main())
