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

from PyQt6.QtWidgets import (QApplication, QDialog, QFormLayout, QHBoxLayout,
                             QLabel, QLineEdit, QMainWindow, QMessageBox,
                             QPushButton, QTableWidget, QTableWidgetItem,
                             QVBoxLayout, QWidget)
from PyQt6.QtCore import Qt, qInstallMessageHandler, QtMsgType
from PyQt6.QtGui import QFont


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


# ---------------------------------------------------------------- login
class LoginDialog(QDialog):
    """VB6 frmPassword - 'User Information' screen."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("User Information")
        self.resize(560, 320)
        self.user = None

        root = QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        body = QWidget()
        body.setObjectName("vbScreen")
        lay = QVBoxLayout(body)
        lay.setContentsMargins(40, 30, 40, 24)

        title = QLabel("User Information")
        title.setObjectName("vbTitle")
        title.setAlignment(Qt.AlignmentFlag.AlignLeft)
        lay.addWidget(title)

        form = QFormLayout()
        f = QFont("Segoe UI", 10, QFont.Weight.Bold)
        self.txtUser = QLineEdit()
        self.txtUser.setMinimumHeight(26)
        self.txtPass = QLineEdit()
        self.txtPass.setMinimumHeight(26)
        self.txtPass.setEchoMode(QLineEdit.EchoMode.Password)
        lblU, lblP = QLabel("User Name"), QLabel("Password")
        for l in (lblU, lblP):
            l.setFont(f)
            l.setStyleSheet("color:#123; ")
        form.addRow(lblU, self.txtUser)
        form.addRow(lblP, self.txtPass)
        lay.addLayout(form)
        lay.addStretch()

        btns = QHBoxLayout()
        self.btnLogin = QPushButton("&Login")
        self.btnUnLoad = QPushButton("&Un Load")
        for b in (self.btnLogin, self.btnUnLoad):
            b.setObjectName("vbBtn")
            btns.addWidget(b)
        lay.addLayout(btns)

        self.lblMsg = QLabel("")
        self.lblMsg.setWordWrap(True)
        self.lblMsg.setStyleSheet("color:#ffe0e0; font-weight:bold;")
        lay.addWidget(self.lblMsg)

        # DB-status label (VB6 me nahi tha - diagnostic; INI target +
        # live connect-check dono dikhata hai)
        from HMS_py.core.db import load_config, connect
        cfg = load_config()
        try:
            _cn = connect(cfg)
            _cur = _cn.cursor()
            _cur.execute("SELECT @@SERVERNAME, DB_NAME()")
            _srv, _dbn = _cur.fetchone()
            _cn.close()
            db_txt = f"DB: {_srv} / {_dbn}"
            self.db_ok = True
        except Exception as e:
            db_txt = f"DB: OFFLINE ({cfg.get('server')}/{cfg.get('database')})"
            self.db_ok = False
        self.lblDb = QLabel(db_txt)
        # OCR-contrast fix (P0-tail): white-on-dark - automation-readable
        self.lblDb.setStyleSheet(
            "color:#ffffff; font-weight:bold; background:rgba(0,0,0,150);"
            "padding:3px 8px; border-radius:4px;")
        lay.addWidget(self.lblDb)
        root.addWidget(body)

        self.btnLogin.clicked.connect(self._do_login)
        self.btnUnLoad.clicked.connect(self.reject)
        self.txtPass.returnPressed.connect(self._do_login)

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
    """VB6 frmCompany - 'Company Details' screen (dynamic DB data)."""

    def __init__(self, user: str, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Company Details")
        self.resize(680, 360)
        self.user = user
        self.selected = None

        root = QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        body = QWidget()
        body.setObjectName("vbScreen")
        lay = QVBoxLayout(body)
        lay.setContentsMargins(30, 8, 30, 20)

        title = QLabel("Company Details")
        title.setObjectName("vbTitle")
        lay.addWidget(title)
        lay.addStretch()

        self.tbl = QTableWidget(0, 3)
        self.tbl.setHorizontalHeaderLabels(
            ["Company Name", "Short Name", "Current Year"])
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.setMinimumHeight(90)
        self.tbl.cellDoubleClicked.connect(lambda *_: self._do_login())
        lay.addWidget(self.tbl)

        hint = QLabel("For more information about Company, "
                      "Press Right Mouse Button")
        hint.setStyleSheet("color: #c00000;")
        hint.setAlignment(Qt.AlignmentFlag.AlignCenter)
        lay.addWidget(hint)

        btns = QHBoxLayout()
        btns.addStretch()
        self.btnLogin = QPushButton("&Login")
        self.btnUnLoad = QPushButton("&Un Load")
        self.btnDbUpd = QPushButton("&Database Update")
        for b in (self.btnLogin, self.btnUnLoad, self.btnDbUpd):
            b.setObjectName("vbBtn")
            btns.addWidget(b)
        lay.addLayout(btns)
        root.addWidget(body)

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
                self.tbl.setItem(r, c, it)
        if rows:
            self.tbl.selectRow(0)

    def _db_update(self):
        # VB6 me Database Update = year-start maintenance; abhi info-only
        QMessageBox.information(
            self, "Database Update",
            "Database Update: year-start maintenance (phase P4 me aayega).")

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
        title.setStyleSheet("font-size: 18px; font-weight: bold; color: #1d3d5d;")
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

    def _open_report(cap: str):
        """mdi leaf caption -> reports engine key (exact-match map)."""
        key = _rpmod.menu_caption_map().get(cap) if _rpmod else None
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
        "Check In": lambda w: fo.open_checkin(w, user=w.user),
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
        "User Master": lambda w: p2.open_usermaster(w, current_user=w.user),
        "Permissions": lambda w: p2.open_usermaster(w, current_user=w.user),
        # Wave 2: FO operational screens
        "Check Out": (lambda w: fo2.open_checkout(w, user=w.user)) if fo2 else None,
        "Check-Out": (lambda w: fo2.open_checkout(w, user=w.user)) if fo2 else None,
        "Checkout": (lambda w: fo2.open_checkout(w, user=w.user)) if fo2 else None,
        "WalkIn CheckIn": lambda w: fo.open_checkin(w, user=w.user),
        "Reverse Check Out": (lambda w: fo2.open_checkout(w, user=w.user)) if fo2 else None,
        "Room Status": (lambda w: rs_ui.open_roomstatus(w, user=w.user)) if rs_ui else None,
        "House Keeping Screen": (lambda w: rs_ui.open_roomstatus(w, user=w.user)) if rs_ui else None,
        "Expense Entry": (lambda w: exp_ui.open_expense(w, user=w.user)) if exp_ui else None,
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
        "Purchase Order": _coming_soon("Purchase Order"),
        "Purchase Bill": _coming_soon("Purchase Bill"),
        "Stock Transfer": (lambda w: _inv.open_stock_transfer(w)) if _inv else None,
        "eInvoice Config": (lambda w: _inv.open_einvoice_config(w)) if _inv else None,
        "Kitchen Stock Report": (lambda w: _inv.open_kitchen_stock_report(w)) if _inv else None,
        "Stock Issue": _coming_soon("Stock Issue"),
        "Stock Receive": _coming_soon("Stock Receive"),
        "Stock Adjustment": _coming_soon("Stock Adjustment"),
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
        "Revenue Group Setting": _coming_soon("Revenue Group Setting"),
        "Printing Parameters": (lambda w: gs.open_printing(w)) if gs else None,
        "Printing Setup": (lambda w: gs.open_printing(w)) if gs else None,
        "Revenue Wise Budget Entry": _coming_soon("Revenue Wise Budget Entry"),
        "Guest History": (lambda w: ghu.open_guest_history(w, user=w.user)) if ghu else None,
        "Room Display": (lambda w: rs_ui.open_roomstatus(w, user=w.user)) if rs_ui else None,
        "Update Database Nulls": _coming_soon("Update Database Nulls"),
        "Account Merging": None,
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
        "Scheme Master": (lambda w: stu.open_scheme(w)) if stu else None,
        "Happy Hours": (lambda w: stu.open_happyhours(w)) if stu else None,
        "Happy Hours [ Free Items ]": (lambda w: stu.open_happyhours(w)) if stu else None,
        "T.D.S. Category": (lambda w: stu.open_tdscat(w)) if stu else None,
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
        "Voucher Entry": (lambda w: favchr_ui.open_fa_voucher(w)) if favchr_ui else None,
        "System Config": (lambda w: syscfg_ui.open_sys_config(w)) if syscfg_ui else None,
        "Backup Data": (lambda w: dbbak_ui.open_db_backup(w)) if dbbak_ui else _coming_soon("Backup Data"),
        # Reports Center (REPORTS_TXT / mdi leaves — read-only engine)
        **({cap: _open_report(cap)
            for cap in (_rpmod.menu_caption_map() if _rpmod else {})}),
    }


class MainWindow(QMainWindow):
    """VB6 MDIForm1 jaisa: title '{Company} { Year }', left sidebar
    (ini key 9), module click se User_Module menubar."""

    def __init__(self, user: str, comp: dict):
        super().__init__()
        self.user = user
        self.comp = comp
        self.setWindowTitle(f"{comp['name']} {{ {comp['year']} }}")
        self.resize(1150, 720)
        self.registry = _form_registry()
        self._menus = menu.menubar_for  # shortcut

        central = QWidget()
        root = QVBoxLayout(central)
        root.setSpacing(0)
        root.setContentsMargins(0, 0, 0, 0)

        self.lblTitle = QLabel(
            f"{comp['name']}  {{ {comp['year']} }}")
        f = QFont("Segoe UI", 14, QFont.Weight.Bold)
        self.lblTitle.setFont(f)
        self.lblTitle.setStyleSheet("color: #2222cc; padding: 6px;")
        self.lblTitle.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(self.lblTitle)

        body = QHBoxLayout()
        sidebar = QWidget()
        sidebar.setFixedWidth(150)
        side_lay = QVBoxLayout(sidebar)
        side_lay.setContentsMargins(2, 2, 2, 2)
        side_lay.setSpacing(3)
        self._side_buttons = []   # P0-tail: keyboard shortcuts ke liye
        for m in menu.sidebar_modules():
            b = QPushButton(m["name"])
            b.setMinimumHeight(34)
            b.setCheckable(True)
            # UIA fix (P0-tail): Qt accessibility ko explicit naam do,
            # warna automation (UIA ButtonControl) me name nahi aata
            b.setAccessibleName(m["name"])
            b.setAccessibleDescription(f"Module {m['name']}")
            b.setStyleSheet(
                "QPushButton {background: #1b5e5e; color: white;"
                "font-weight: bold; border: none; text-align: left;"
                "padding-left: 8px;}"
                "QPushButton:hover {background: #2a8686;}"
                "QPushButton:checked {background: #d4a017; color:#222;}")
            b.clicked.connect(lambda _, mm=m: self._on_module(mm, b))
            self._side_buttons.append(b)
            side_lay.addWidget(b)
        side_lay.addStretch()
        body.addWidget(sidebar)

        self.canvas = QLabel("Module select karo (left sidebar)")
        self.canvas.setAlignment(Qt.AlignmentFlag.AlignCenter)
        body.addWidget(self.canvas, stretch=1)
        root.addLayout(body)
        self.setCentralWidget(central)   # QMainWindow: zaroori (warna GC)

        sb = self.statusBar()
        sb.addWidget(QLabel(f"  {user}  "))
        sb.addWidget(QLabel(
            f"Property Site : {comp['short'] or comp['name']}  "))
        import datetime
        sb.addWidget(QLabel(
            f"S/w Dt.: {datetime.datetime.now():%d/%b/%Y %H:%M:%S}  "))
        # DB status (VB6 me Analysis.ini keys 1/6 se aata tha)
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

        # Keyboard navigation (P0-tail, P3-b E2E fix): windowed-EXE ka UIA
        # tree minimal hota hai (Qt accessibility ko buttons expose nahi
        # karta) - VB6 ke &-accelerator pattern jaisa keyboard flow:
        #   Alt+1..9 = Nth sidebar module, Ctrl+R = Reservation browser,
        #   Ctrl+P = Plan Master. (Alt+10+ chord nahi hota - note.)
        from PyQt6.QtGui import QShortcut, QKeySequence
        for i, b in enumerate(self._side_buttons[:9]):
            QShortcut(QKeySequence(f"Alt+{i+1}"), self,
                      activated=lambda bb=b: bb.click())
        QShortcut(QKeySequence("Ctrl+R"), self,
                  activated=lambda: self.registry["Reservation/Cancellation"](self))
        QShortcut(QKeySequence("Ctrl+P"), self,
                  activated=lambda: self.registry["Plan Master"](self))
        # Main Setup completion openers (P2-c) - direct dialog shortcuts
        for key, leaf in (("Ctrl+C", "Country Master"),
                          ("Ctrl+B", "State Master"),
                          ("Ctrl+H", "Charge Master"),
                          ("Ctrl+U", "Unit Master"),
                          ("Ctrl+I", "Item Master")):
            QShortcut(QKeySequence(key), self,
                      activated=lambda lf=leaf: self.registry[lf](self))
        # P4-a Front Office openers
        QShortcut(QKeySequence("Ctrl+F"), self,
                  activated=lambda: self.registry["Guest Profile"](self))
        QShortcut(QKeySequence("Ctrl+K"), self,
                  activated=lambda: self.registry["Check In"](self))
        # P5 POS + NA openers (only if module available)
        if self.registry.get("KOT Entry"):
            QShortcut(QKeySequence("Ctrl+T"), self,
                      activated=lambda: self.registry["KOT Entry"](self))
        if self.registry.get("Night Audit Log"):
            QShortcut(QKeySequence("Ctrl+N"), self,
                      activated=lambda: self.registry["Night Audit Log"](self))
        # P5 Inventory + Reports openers
        if self.registry.get("Indent"):
            QShortcut(QKeySequence("Ctrl+Y"), self,
                      activated=lambda: self.registry["Indent"](self))
        # P4-b Folio openers (FolioLog viewer + Amend)
        if self.registry.get("Folio Log"):
            QShortcut(QKeySequence("Ctrl+G"), self,
                      activated=lambda: self.registry["Folio Log"](self))
        if self.registry.get("Reservation Status Arrival"):
            QShortcut(QKeySequence("Ctrl+J"), self,
                      activated=lambda: self.registry["Reservation Status Arrival"](self))
        # P2-complete: Room / Package / Season / Company / User shortcuts
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
        # Wave 2: operational shortcuts
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

    def _on_module(self, m: dict, btn: QPushButton):
        # sidebar exclusive-check (VB6 jaisa highlight)
        for other in self.findChildren(QPushButton):
            if other is not btn and other.isCheckable():
                other.setChecked(False)
        btn.setChecked(True)

        mb = self.menuBar()
        mb.clear()
        for grp in self._menus(m["name"], self.user):
            mm = mb.addMenu(grp["name"])
            for it in grp["items"]:
                self._add_item(mm, it)

        self.canvas.setText(
            f"{m['name']}\n\nTop menubar se form kholo\n"
            f"(ported: Plan/City/Sundry/Narration/Venue/Department)")
        self.setWindowTitle(
            f"{self.comp['name']} {{ {self.comp['year']} }} - {m['name']}")

    def _add_item(self, parent_menu, it: dict):
        opener = self.registry.get(it["name"])
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
    app.setStyleSheet(STYLE)
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
        app.setStyleSheet(STYLE)
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
