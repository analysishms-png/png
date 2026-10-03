"""Main Setup > General Setup — VB6-hybrid tabbed window (screenshot parity).

VB6 FDGENMAS (Main Setup > General Setup) top tab strip:
  Tax Master | Tax Structure | Payment Type | Parameter |
  Printing Parameters | Printing Setup

Screenshots se VB6 evidence:
  - Blue/purple gradient top tab buttons (active tab = teal/green).
  - Toolbar row: New/Edit/Delete/Save/Browse-first/prev/next/last/Find/
    Post/Refresh/Exit icons + "Browse   1/N" record counter.
  - Cream/yellow title strip: "Main Setup > General Setup > <Screen>".
  - Tax Master: TaxName/ShortName/SundryName/LedgerAC/PayableAC/
    UnregisteredAC + "System Defined" red tag.
  - Tax Structure: name + lines grid (S.No, Tax Name, Rate, Apply On,
    L.Limit, Comparison, U.Limit, Condition).
  - Payment Type: PaymentName/ShortName/LedgerAccount/A-CPosting +
    Detailed/Summarize + Nature + outlet checkbox buttons
    (FRONT OFFICE, Banquet, ...).
  - Parameter: stacked sub-tabs (Instructions F.P./Guest Charges (Split)/
    Display / Order Booking/SMS/Smart Card/Settings/Instructions Res. /
    Posting/Outlet/Banquet/KOT/Round Off / HR-Payroll/Check Out/General/
    Printing Parameters/Rate Types) with Printing Settings card
    (Bill Header / Bill Footer).
  - Printing Parameters: browse-only single row (Module Type FOM/(P)OS,
    Department Name, Module Description).
  - Right dock: world clocks + Reload/Exit, VB6 Analysis sidebar.

Data sources (live core modules — koi invented table nahi):
  - Tax Master      -> core.taxmaster (RevMast FieldType='T')
  - Tax Structure   -> core.taxstru (TaxStru header+lines)
  - Payment Type    -> core.paymenttype (RevMast PAYTYPE<> '')
  - Parameter       -> core.enviro (single-row UPDATE, EDITABLE white-list)
  - Parameter grids -> VB6 frmEnviro DataGrid row-sources (MS-014):
    DGHelp(SubGroup), DGGroup(Acgroup), DGRevenue(RevMast FieldType='C'),
    DGPurchaseGodown(GodownMast), DGPurchItem(ItemMast), DGDepart(Depart)
  - Printing Params -> Analysis.ini paths + Enviro print flags
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt, QDate, QSize
from PyQt6.QtGui import QColor, QFont, QKeySequence, QShortcut
from PyQt6.QtWidgets import (QAbstractItemView, QApplication, QButtonGroup,
                             QCheckBox, QComboBox, QCompleter, QDateEdit,
                             QDialog, QFormLayout, QFrame, QGridLayout,
                             QGroupBox, QHBoxLayout, QHeaderView, QInputDialog,
                             QLabel, QLineEdit, QMessageBox, QPushButton,
                             QRadioButton, QScrollArea, QSpinBox,
                             QDoubleSpinBox, QTableWidget,
                             QTableWidgetItem, QVBoxLayout, QWidget,
                             QStyle)

from HMS_py.core import (db, depart_pay, enviro, general_setup, paymenttype,
                         printformats, printmast, printersetup, taxmaster,
                         taxstru)
from HMS_py.ui import theme as _theme
from HMS_py.ui.desktop_style import mark_desktop_action


# ---------------------------------------------------------------- helpers
def _p() -> dict:
    return _theme.palette()


VB_TAB_STYLES = """
QPushButton#vbGenTab {
    padding: 2px 4px; font-size: 14px; font-weight: bold;
    font-style: italic; border: 1px solid #2d2a55; border-radius: 2px;
    color: white; background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
        stop:0 #7b2d8e, stop:1 #4b1a6e);
}
QPushButton#vbGenTab:hover { background: #8b3da0; }
QPushButton#vbGenTab:checked {
    background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
        stop:0 #0e7a6f, stop:1 #0a5c54);
    color: #ffe95c;
}
"""


def _title_strip(text: str) -> QLabel:
    """VB6 cream/yellow caption strip (child-form title)."""
    lbl = QLabel(text)
    lbl.setAlignment(Qt.AlignmentFlag.AlignCenter)
    lbl.setAutoFillBackground(True)
    pal = lbl.palette()
    from PyQt6.QtGui import QPalette
    pal.setColor(QPalette.ColorRole.Window, QColor("#fdfbd3"))
    lbl.setPalette(pal)
    lbl.setStyleSheet(
        "font-size: 20px; font-weight: bold; color: #1a1a1a;"
        "padding: 8px; border: 1px solid #b8b47a;")
    lbl.setFixedHeight(40)
    return lbl


def _toolbar_row(on_new, on_edit, on_delete, on_save, on_cancel,
                 on_refresh, on_exit, counter: QLabel, on_first=None,
                 on_prev=None, on_next=None, on_last=None, on_find=None) -> QWidget:
    """VB6-style compact icon toolbar with accessible tooltips.

    VB6 TopCtrl order (MS-012): New/Edit/Delete/Save + Browse
    first/prev/next/last/Find + Refresh + counter + Exit.
    Keys (MS-030): F4=Find, F6=First, F7=Prev, F8=Next, F9=Last.
    Missing handler (None) -> button disabled (VB6 enable-state jaisa).
    """
    bar = QWidget()
    lay = QHBoxLayout(bar)
    lay.setContentsMargins(4, 4, 4, 4)
    lay.setSpacing(4)
    style = bar.style()

    def _icon_button(caption, callback, tip, standard_icon):
        button = QPushButton()
        button.setObjectName(f"generalSetupAction{caption.replace(' ', '')}")
        button.setAccessibleName(caption)
        button.setIcon(style.standardIcon(standard_icon))
        button.setIconSize(QSize(22, 22))
        button.setFixedSize(34, 30)
        button.setToolTip(tip)
        if callback is None:
            button.setEnabled(False)
        else:
            button.clicked.connect(callback)
            mark_desktop_action(button)
        lay.addWidget(button)
        return button

    for caption, callback, tip, standard_icon in (
        ("New", on_new, "New (Ctrl+N)",
         QStyle.StandardPixmap.SP_FileDialogNewFolder),
        ("Edit", on_edit, "Edit (Ctrl+E)",
         QStyle.StandardPixmap.SP_FileDialogDetailedView),
        ("Delete", on_delete, "Delete (Ctrl+D)",
         QStyle.StandardPixmap.SP_TrashIcon),
        ("Save", on_save, "Save (Ctrl+S)",
         QStyle.StandardPixmap.SP_DialogSaveButton),
        ("Cancel", on_cancel, "Cancel current changes",
         QStyle.StandardPixmap.SP_DialogCancelButton),
    ):
        _icon_button(caption, callback, tip, standard_icon)
    lay.addSpacing(10)
    for caption, callback, tip, standard_icon in (
        ("First", on_first, "First (F6)",
         QStyle.StandardPixmap.SP_MediaSkipBackward),
        ("Prev", on_prev, "Prev (F7)",
         QStyle.StandardPixmap.SP_MediaSeekBackward),
        ("Next", on_next, "Next (F8)",
         QStyle.StandardPixmap.SP_MediaSeekForward),
        ("Last", on_last, "Last (F9)",
         QStyle.StandardPixmap.SP_MediaSkipForward),
        ("Find", on_find, "Find (F4)",
         QStyle.StandardPixmap.SP_FileDialogContentsView),
    ):
        _icon_button(caption, callback, tip, standard_icon)
    lay.addSpacing(6)
    lay.addWidget(QLabel("Browse"))
    lay.addSpacing(6)
    counter.setMinimumWidth(70)
    lay.addWidget(counter)
    lay.addStretch()
    _icon_button("Refresh", on_refresh, "Refresh (F5)",
                 QStyle.StandardPixmap.SP_BrowserReload)
    _icon_button("Exit", on_exit, "Exit",
                 QStyle.StandardPixmap.SP_DialogCloseButton)
    return bar


def _ro_item(v) -> QTableWidgetItem:
    it = QTableWidgetItem("" if v is None else str(v))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    it.setForeground(QColor(_p()["text"]))
    return it


def _selected_row(tbl: QTableWidget) -> int:
    """Selected row (VB6 Recordset bookmark) — currentRow() kabhi stale
    reh jaata hai (selectRow() currentIndex nahi badalta)."""
    sm = tbl.selectionModel()
    if sm is not None:
        rows = sm.selectedRows()
        if rows:
            return rows[0].row()
    return tbl.currentRow()


def _select_table_row(tbl: QTableWidget, row: int) -> int:
    """Row select karo + current index sync karo (nav/find ke liye)."""
    n = tbl.rowCount()
    if n <= 0:
        return -1
    row = max(0, min(n - 1, row))
    tbl.setCurrentIndex(tbl.model().index(row, 0))
    tbl.selectRow(row)
    return row


def _read_only_line() -> QLineEdit:
    e = QLineEdit()
    e.setReadOnly(True)
    e.setStyleSheet(f"QLineEdit {{ background: #f0f0ee; color: #555; }}")
    return e


def _world_clock_dock(on_reload, on_exit) -> QWidget:
    """VB6 right sidebar: date + world clocks + Reload/Exit."""
    dock = QFrame()
    dock.setObjectName("generalSetupRightDock")
    dock.setFixedWidth(136)
    dock.setStyleSheet("QFrame { background: white; }")
    lay = QVBoxLayout(dock)
    lay.setContentsMargins(6, 8, 6, 8)
    lay.setSpacing(6)

    d = QLabel(QDate.currentDate().toString("dd/MMM/yyyy"))
    d.setAlignment(Qt.AlignmentFlag.AlignCenter)
    d.setStyleSheet(
        "background:#0a5c54; color:white; font-weight:bold;"
        "padding:6px; border-radius:3px;")
    lay.addWidget(d)

    import datetime as _dt
    zones = [("India", 5.5), ("Canada", -5.0), ("Italy", 1.0),
             ("London", 0.0), ("Japan", 9.0), ("Australia", 10.0)]
    utc_now = _dt.datetime.utcnow()
    for name, off in zones:
        t = utc_now + _dt.timedelta(hours=off)
        box = QLabel(f"<span style='color:#666;font-size:9px'>{name}</span>"
                     f"<br><span style='color:#0a5c54;font-weight:bold'>"
                     f"{t.strftime('%H:%M:%S')}</span>")
        box.setAlignment(Qt.AlignmentFlag.AlignCenter)
        box.setStyleSheet("background:#111; color:#eee; padding:4px;"
                          "border-radius:3px;")
        lay.addWidget(box)

    lay.addStretch()
    row = QHBoxLayout()
    b1 = QPushButton("Reload")
    b1.setStyleSheet("background:#b8962e; color:white; font-weight:bold;"
                     "padding:5px; border-radius:3px;")
    b1.clicked.connect(on_reload)
    b2 = QPushButton("Exit")
    b2.setStyleSheet("background:#b8962e; color:white; font-weight:bold;"
                     "padding:5px; border-radius:3px;")
    b2.clicked.connect(on_exit)
    row.addWidget(b1)
    row.addWidget(b2)
    lay.addLayout(row)
    return dock


# =================================================== Lookup picker (MS-014)
def _dedupe_code_name(rows) -> list[dict]:
    """Distinct Code/Name pairs (VB6 'Select Distinct Code,Name From ...')."""
    out, seen = [], set()
    for r in rows:
        c = str(r.get("code") or "")
        if not c or c in seen:
            continue
        seen.add(c)
        out.append({"code": c, "name": str(r.get("name") or "")})
    return out


def lookup_paytypes() -> list[dict]:
    """DGPayType row source (frmEnviro Form_Load):
    RevMast Where PayType in ('Cash','Room') and FieldType='P'."""
    return _dedupe_code_name(
        r for r in paymenttype.list_all()
        if (r.get("paytype") or "") in ("Cash", "Room")
        and (r.get("fieldtype") or "") == "P")


def lookup_taxes() -> list[dict]:
    """DGTAX row source (frmEnviro Form_Load): RevMast Where FieldType='T'."""
    return _dedupe_code_name(taxmaster.list_all())


def lookup_tax_structures() -> list[dict]:
    """DGTaxStru row source (frmEnviro Form_Load):
    Select Distinct Code,Name From TaxStru."""
    return _dedupe_code_name(taxstru.list_all())


def _grid_rows(sql: str, params: tuple = ()) -> list[dict]:
    """VB6 DataGrid SELECT chalao; missing table (42S02) -> khali list."""
    try:
        rows = db.query(sql, params)
    except Exception as e:
        msg = str(e)
        if "Invalid object name" in msg or "42S02" in msg:
            return []  # table DB me nahi - grid khali (UI crash nahi)
        raise
    out = []
    for r in rows:
        code, name = r.Code, r.Name
        out.append({"code": "" if code is None else str(code).strip(),
                    "name": "" if name is None else str(name).strip()})
    return _dedupe_code_name(out)


def lookup_help_accounts() -> list[dict]:
    """DGHelp row source (frmEnviro Form_Load loc_14BA343):
    Select SubCode As Code, Name From SubGroup Where ActiveYN = 1 And
    (LogSite_Code = ? Or LogSite_Code = 'HO') Order By Name."""
    return _grid_rows(
        "SELECT SubCode AS Code, Name FROM SubGroup WHERE ActiveYN = 1 "
        "AND (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Name",
        (db.get_site_code(),))


def lookup_ac_groups() -> list[dict]:
    """DGGroup row source (frmEnviro Form_Load loc_14BABF9):
    Select GroupCode As Code, GroupName As Name From AcGroup Where
    (LogSite_Code = ? Or LogSite_Code = 'HO') Order By GroupName."""
    return _grid_rows(
        "SELECT GroupCode AS Code, GroupName AS Name FROM AcGroup "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "ORDER BY GroupName", (db.get_site_code(),))


def lookup_revenue_heads() -> list[dict]:
    """DGRevenue row source (frmEnviro Form_Load loc_14BAE8A):
    Select Code, Name From RevMast Where FieldType = 'C' And
    (LogSite_Code = ? Or LogSite_Code = 'HO') Order By Name."""
    return _grid_rows(
        "SELECT Code, Name FROM RevMast WHERE FieldType = 'C' "
        "AND (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Name",
        (db.get_site_code(),))


def lookup_godowns() -> list[dict]:
    """DGPurchaseGodown row source (frmEnviro Form_Load loc_14BAC85):
    Select Code, Name From GodownMast Where (LogSite_Code = ? Or
    LogSite_Code = 'HO') Order By Name."""
    return _grid_rows(
        "SELECT Code, Name FROM GodownMast "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Name",
        (db.get_site_code(),))


def lookup_purch_items() -> list[dict]:
    """DGPurchItem row source (frmEnviro Form_Load loc_14BAB6D):
    Select I.Code, I.Name From ItemMast I Where (I.LogSite_Code = ? Or
    I.LogSite_Code = 'HO') And (I.DirectSale = 'Y' Or I.Type =
    'Consumables') And (I.GravyItem <> 'Yes' Or I.GravyItem Is Null)
    And I.DispCode <> 9999 And I.ActiveYN <> 'No' Order By I.Name."""
    return _grid_rows(
        "SELECT I.Code, I.Name FROM ItemMast I "
        "WHERE (I.LogSite_Code = ? OR I.LogSite_Code = 'HO') "
        "AND (I.DirectSale = 'Y' OR I.Type = 'Consumables') "
        "AND (I.GravyItem <> 'Yes' OR I.GravyItem IS NULL) "
        "AND I.DispCode <> 9999 AND I.ActiveYN <> 'No' "
        "ORDER BY I.Name", (db.get_site_code(),))


def lookup_departments() -> list[dict]:
    """DGDepart row source (VB6 department grid: frmPrintModule DGRest /
    FrmComplaintMast): Select Code, Name From Depart Where
    (LogSite_Code = ? Or LogSite_Code = 'HO') Order By Name.

    frmEnviro ka apna DGDepart grid kabhi populate nahi hota (sirf
    .Visible checks, frmEnviro.frm:3305/5770) - yehi row source idhar
    PrintMast RestCode picker ko feed karta hai."""
    return _grid_rows(
        "SELECT Code, Name FROM Depart "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Name",
        (db.get_site_code(),))


class LookupDialog(QDialog):
    """VB6 lookup popup (MS-014): search + Code/Name table + OK/Cancel.

    VB6 frmEnviro me 9 DataGrid (DGHelp, DGGroup, DGTAX, DGRevenue,
    DGPurchaseGodown, DGTaxStru, DGPurchItem, DGDepart, DGPayType) aur
    FrmList ListView popup hote the — GotFocus par dikhkar double-click
    par field bharte the (.Tag = Code, .Text = Name). Yahan ek hi
    reusable dialog sab grids ke liye.

    Deviation: field me **Code** bhara jaata hai (Enviro columns Code
    store karte hain — live CashPayType=KKCASH, RoomPayType=KKROOM),
    VB6 textbox Name dikhata tha.
    """

    def __init__(self, title: str, rows: list[dict], parent=None):
        super().__init__(parent)
        self.setWindowTitle(title)
        self.resize(560, 420)
        self._all = list(rows)
        self._code = None
        lay = QVBoxLayout(self)
        lay.setContentsMargins(8, 8, 8, 8)
        self.ed_find = QLineEdit()
        self.ed_find.setPlaceholderText("Search Code / Name")
        self.ed_find.textChanged.connect(self._refill)
        lay.addWidget(self.ed_find)
        self.tbl = QTableWidget(0, 2)
        self.tbl.setHorizontalHeaderLabels(["Code", "Name"])
        self.tbl.setSelectionBehavior(
            QAbstractItemView.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.itemDoubleClicked.connect(lambda _=False: self._accept_row())
        lay.addWidget(self.tbl, 1)
        btns = QHBoxLayout()
        btns.addStretch()
        b_ok = QPushButton("OK")
        b_ok.clicked.connect(self._accept_row)
        b_cancel = QPushButton("Cancel")
        b_cancel.clicked.connect(self.reject)
        btns.addWidget(b_ok)
        btns.addWidget(b_cancel)
        lay.addLayout(btns)
        self._refill("")

    def _refill(self, text: str):
        needle = (text or "").strip().lower()
        rows = [r for r in self._all
                if not needle or needle in r["code"].lower()
                or needle in r["name"].lower()]
        self.tbl.setRowCount(len(rows))
        for i, r in enumerate(rows):
            self.tbl.setItem(i, 0, _ro_item(r["code"]))
            self.tbl.setItem(i, 1, _ro_item(r["name"]))
        if rows:
            _select_table_row(self.tbl, 0)

    def _accept_row(self):
        r = _selected_row(self.tbl)
        if r < 0:
            return
        self._code = self.tbl.item(r, 0).text()
        self.accept()

    def keyPressEvent(self, e):
        if e.key() in (Qt.Key.Key_Return, Qt.Key.Key_Enter):
            self._accept_row()
            return
        super().keyPressEvent(e)

    def selected_code(self) -> str | None:
        return self._code


def lookup_pick(parent, title: str, rows: list[dict]) -> str | None:
    """Lookup dialog kholo; OK par Code, Cancel par None."""
    dlg = LookupDialog(title, rows, parent)
    if dlg.exec() == QDialog.DialogCode.Accepted:
        return dlg.selected_code()
    return None


# ================================================================ Tax Master
class TaxMasterTab(QWidget):
    """VB6 FrmTaxMast: RevMast FieldType='T' flat master."""

    HEADERS = ["S.No", "Tax Name", "Short Name", "Sundry Name", "Ledger A/C",
               "Payable A/C", "Unregistered A/C", "System"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.edit_code = None
        self._structure_names = {}
        self.state = "Idle"
        self._build()
        self.reload()

    def _build(self):
        lay = QVBoxLayout(self)
        lay.setContentsMargins(12, 8, 12, 8)

        form = QGroupBox()
        form.setStyleSheet("QGroupBox { border: none; margin: 0; }")
        fl = QFormLayout(form)
        fl.setSpacing(8)
        # VB6 Txt(0).MaxLength = 25
        self.ed_name = QLineEdit(); self.ed_name.setMaxLength(25)
        self.ed_short = QLineEdit(); self.ed_short.setMaxLength(
            taxmaster.LIMITS["short"])
        self._sundry_code = ""
        self.ed_sundry = QLineEdit()
        self.ed_sundry.setReadOnly(True)
        self.btn_sundry = QPushButton("...")
        self.btn_sundry.setToolTip("Select Sundry Name")
        self.btn_sundry.clicked.connect(self._choose_sundry)
        mark_desktop_action(self.btn_sundry)
        self._ledger_code = ""
        self._payable_code = ""
        self._unreg_code = ""
        self.ed_ledger = QLineEdit(); self.ed_ledger.setReadOnly(True)
        self.ed_payable = QLineEdit(); self.ed_payable.setReadOnly(True)
        self.ed_unreg = QLineEdit(); self.ed_unreg.setReadOnly(True)
        self.btn_ledger = QPushButton("...")
        self.btn_payable = QPushButton("...")
        self.btn_unreg = QPushButton("...")
        for button, title in (
            (self.btn_ledger, "Ledger A/C"),
            (self.btn_payable, "Payable A/C"),
            (self.btn_unreg, "Unregistered A/C"),
        ):
            button.setToolTip(f"Select {title}")
            mark_desktop_action(button)
        self.btn_ledger.clicked.connect(lambda: self._choose_account("ledger"))
        self.btn_payable.clicked.connect(lambda: self._choose_account("payable"))
        self.btn_unreg.clicked.connect(lambda: self._choose_account("unreg"))
        self.lbl_sysdef = QLabel("")
        self.lbl_sysdef.setStyleSheet("color:#c00000; font-weight:bold;")
        # VB6 red side-notes: 'System Defined' (Tax Name row),
        # '(Purchase)' (Payable/Unregistered rows)
        row_name = QHBoxLayout()
        row_name.addWidget(self.ed_name)
        row_name.addWidget(self.lbl_sysdef)
        row_name.addStretch()
        fl.addRow("Tax Name", row_name)
        fl.addRow("Short Name", self.ed_short)
        sundry_row = QHBoxLayout()
        sundry_row.addWidget(self.ed_sundry)
        sundry_row.addWidget(self.btn_sundry)
        fl.addRow("Sundry Name", sundry_row)
        ledger_row = QHBoxLayout()
        ledger_row.addWidget(self.ed_ledger)
        ledger_row.addWidget(self.btn_ledger)
        # VB6 save: Tax Name + Short Name + Ledger A/C mandatory
        fl.addRow("Ledger A/C <span style=\"color:#dc2626; font-weight:bold;"
                  "\">*</span>", ledger_row)
        note_p = QLabel("(Purchase)")
        note_p.setStyleSheet("color:#c00000; font-weight:bold;")
        row_pay = QHBoxLayout()
        row_pay.addWidget(self.ed_payable)
        row_pay.addWidget(self.btn_payable)
        row_pay.addWidget(note_p)
        row_pay.addStretch()
        fl.addRow("Payable A/C", row_pay)
        note_u = QLabel("(Purchase)")
        note_u.setStyleSheet("color:#c00000; font-weight:bold;")
        row_unr = QHBoxLayout()
        row_unr.addWidget(self.ed_unreg)
        row_unr.addWidget(self.btn_unreg)
        row_unr.addWidget(note_u)
        row_unr.addStretch()
        fl.addRow("Unregistered A/C", row_unr)
        # VB6 FrmTaxMast fields: RoundOff (Yes/No) + SysYN
        self.ed_roundoff = QLineEdit(self)
        self.ed_roundoff.setMaxLength(3)
        self.ed_roundoff.hide()
        self.cmb_sysyn = QComboBox(self)
        self.cmb_sysyn.addItems(["N", "Y"])
        self.cmb_sysyn.hide()
        lay.addWidget(form)

        self.tbl = QTableWidget(0, len(self.HEADERS))
        self.tbl.setHorizontalHeaderLabels(self.HEADERS)
        self.tbl.setSelectionBehavior(
            QAbstractItemView.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.itemSelectionChanged.connect(self._pick)
        lay.addWidget(self.tbl, 1)
        self.tbl.hide()

        self.counter = QLabel("0/0")
        # VB6 LblUser + LblLDt (Form_Load: dono Left=13500, bottom strip)
        self.lbl_audit = QLabel("")
        self.lbl_audit.setStyleSheet("color:#ff0000; font-weight:bold;")
        self.lbl_ldt = QLabel("")
        self.lbl_ldt.setStyleSheet("color:#ff0000; font-weight:bold;")
        ar = QHBoxLayout()
        ar.addStretch()
        ar.addWidget(self.lbl_audit)
        ar.addSpacing(24)
        ar.addWidget(self.lbl_ldt)
        lay.addLayout(ar)

    def _choose_sundry(self):
        try:
            rows = taxmaster.sundry_list()
        except Exception as e:
            QMessageBox.critical(self, "Sundry Name", f"DB error: {e}")
            return
        code = lookup_pick(self, "Sundry Name", rows)
        if not code:
            return
        selected = next((row for row in rows if row["code"] == code), None)
        if selected:
            self._sundry_code = code
            self.ed_sundry.setText(selected["name"])

    def _choose_account(self, field: str):
        try:
            rows = taxmaster.ledger_list()
        except Exception as e:
            QMessageBox.critical(self, "Ledger Account", f"DB error: {e}")
            return
        code = lookup_pick(self, f"{field.title()} A/C", rows)
        if not code:
            return
        selected = next((row for row in rows if row["code"] == code), None)
        if not selected:
            return
        code_attr, edit_attr = {
            "ledger": ("_ledger_code", "ed_ledger"),
            "payable": ("_payable_code", "ed_payable"),
            "unreg": ("_unreg_code", "ed_unreg"),
        }[field]
        setattr(self, code_attr, code)
        getattr(self, edit_attr).setText(selected["name"])

    def _pick(self):
        r = self.tbl.currentRow()
        if r < 0:
            return
        code = self.tbl.item(r, 0).text()
        rec = taxmaster.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_short.setText(rec.get("short", ""))
        self._sundry_code = rec.get("sundry", "")
        self.ed_sundry.setText(rec.get("sundryname") or "")
        self._ledger_code = rec.get("accode", "")
        self._payable_code = rec.get("payableac", "")
        self._unreg_code = rec.get("unregisteredac", "")
        self.ed_ledger.setText(rec.get("ledgername") or self._ledger_code)
        self.ed_payable.setText(rec.get("payableacname") or self._payable_code)
        self.ed_unreg.setText(
            rec.get("unregisteredacname") or self._unreg_code)
        # VB6 FIX: load RoundOff and SysYN fields
        if hasattr(self, 'ed_roundoff'):
            self.ed_roundoff.setText(rec.get("roundoff", "No"))
        if hasattr(self, 'cmb_sysyn'):
            idx = self.cmb_sysyn.findText((rec.get("sysyn") or "N").upper())
            if idx >= 0:
                self.cmb_sysyn.setCurrentIndex(idx)
        # VB6 Proc_15_33: LblSysYN = IIf(SysYN='Y','System Defined',
        # 'User Defined') - blank nahi, hamesha ek caption.
        self.lbl_sysdef.setText(
            "System Defined" if (rec.get("sysyn") or "N").upper() == "Y"
            else "User Defined")
        self._fill_audit(rec)

    def _fill_audit(self, rec: dict):
        """VB6 Proc_15_33 (audit SELECT U_Name,U_AE,U_EntDt):
        LblUser = 'Created By : ' (A) | 'Modified By : ' (E) | 'User : '
        LblLDt  = 'Created By : ' (A) | 'Last Update : ' (E)  | 'entdt : '
        """
        ae = (rec.get("u_ae") or "").strip().upper()
        user_pre = {"A": "Created By : ", "E": "Modified By : "}.get(
            ae, "User : ")
        dt_pre = {"A": "Created By : ", "E": "Last Update : "}.get(
            ae, "entdt : ")
        self.lbl_audit.setText(user_pre + (rec.get("u_name") or ""))
        v = rec.get("u_entdt")
        self.lbl_ldt.setText(dt_pre + (v.strftime("%d/%m/%Y")
                                      if hasattr(v, "strftime") else
                                      (str(v) if v else "")))

    def _clear_audit(self):
        """VB6 Event_A / Event_D: audit caption khali."""
        self.lbl_audit.setText("")
        self.lbl_ldt.setText("")

    def _rec(self) -> dict:
        return {
            "code": self.edit_code or self.ed_short.text().strip().upper()[:6],
            "name": self.ed_name.text().strip(),
            "short": self.ed_short.text().strip(),
            "sundry": self._sundry_code,
            "accode": self._ledger_code,
            "payableac": self._payable_code,
            "unregisteredac": self._unreg_code,
            # VB6 FIX: RoundOff from ed_roundoff field
            "roundoff": self.ed_roundoff.text().strip() if hasattr(self, 'ed_roundoff') else "No",
            "active": "Y",
        }

    def reload(self):
        try:
            rows = taxmaster.list_all()
        except Exception as e:
            QMessageBox.critical(self, "Tax Master", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("short", "")))
            # BUG-FIX: sundryname key, not 'name' (was showing Tax Name in Sundry col)
            self.tbl.setItem(r, 3, _ro_item(rec.get("sundryname") or rec.get("name", "")))
            self.tbl.setItem(r, 4, _ro_item(rec.get("ledgername") or
                                             rec.get("accode", "")))
            self.tbl.setItem(r, 5, _ro_item(rec.get("payableacname") or
                                             rec.get("payableac", "")))
            self.tbl.setItem(r, 6, _ro_item(rec.get("unregisteredacname") or
                                             rec.get("unregisteredac", "")))
            self.tbl.setItem(r, 7, _ro_item(
                "Yes" if (rec.get("sysyn") or "").upper() == "Y" else ""))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            _select_table_row(self.tbl, 0)

    def new(self):
        self.edit_code = None
        self.tbl.clearSelection()
        for e in (self.ed_name, self.ed_short, self.ed_sundry,
                  self.ed_ledger, self.ed_payable, self.ed_unreg):
            e.clear()
        self._sundry_code = ""
        self._ledger_code = ""
        self._payable_code = ""
        self._unreg_code = ""
        self.ed_roundoff.setText("No")
        self.cmb_sysyn.setCurrentText("N")
        # VB6 Event_A (Add): LblSysYN = 'User Defined', audit caption khali
        self.lbl_sysdef.setText("User Defined")
        self._clear_audit()
        self.state = "Add"
        self.ed_name.setFocus()

    def edit(self):
        if self.tbl.rowCount() == 0:
            # VB6 FrmTaxMast Event_E
            QMessageBox.information(self, "Information", "No Record To Edit.")
            return
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Edit", "Pehle row select karein")
            return
        self.state = "Edit"
        self._pick()
        # VB6 Event_D: LblUser/LblLDt khali (SysYN record jaisa rehta hai)
        self._clear_audit()
        self.ed_name.setFocus()

    def save(self):
        # VB6 (Txt_KeyDown / TopCtrl save): MsgBox "Save Record ?", "Save Data"
        if self.state in ("Add", "Edit") and QMessageBox.question(
                self, "Save Data", "Save Record ?",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
                QMessageBox.StandardButton.Yes) != QMessageBox.StandardButton.Yes:
            return
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Tax Name zaroori hai")
            return
        if not self.ed_short.text().strip():
            QMessageBox.warning(self, "Save", "Short Name zaroori hai")
            return
        if not self._ledger_code:
            # VB6: Ledger A/C se ACCode aata hai - khali toh koi ledger hi nahi
            QMessageBox.warning(self, "Save", "Ledger A/C zaroori hai")
            return
        rec = self._rec()
        if not rec["code"]:
            QMessageBox.warning(self, "Save",
                                "Short Name se Code banta hai — bharein")
            return
        try:
            if self.edit_code and taxmaster.exists(self.edit_code):
                taxmaster.update(self.edit_code, rec)
            else:
                if taxmaster.exists(rec["code"]):
                    QMessageBox.warning(self, "Save",
                                        f"{rec['code']} pehle se maujood hai")
                    return
                taxmaster.insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        # VB6: MsgBox "Delete Record ?", vbYesNo+vbQuestion, "Confirmation"
        if QMessageBox.question(self, "Confirmation", "Delete Record ?",
                                QMessageBox.StandardButton.Yes |
                                QMessageBox.StandardButton.No,
                                QMessageBox.StandardButton.Yes) != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            taxmaster.delete(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
        self.edit_code = None
        self.reload()


# ============================================================ Tax Structure
class TaxStructureTab(QWidget):
    """VB6 FrmTaxStruMast: header name + EDITABLE tax lines grid.

    Inline editing (screenshot parity): S.No fixed; Tax Name dropdown
    (RevMast FieldType='T'); Rate/L.Limit/U.Limit numeric editable;
    Apply On/Comparison/Condition VB6 combos. Save = whole structure
    replace (core.taxstru.update_structure transaction).
    """

    HEADERS = ["S.No", "Tax Name", "Rate", "Apply On", "L. Limit",
               "Comparison", "U. Limit", "Condition"]

    NATURES = ["On Base Amt", "On Running Total", "On Prev. Tax Amt"]
    CONDAPPS = ["", "<", "<=", ">", ">=", "=", "Between"]
    COMPOPS = ["", "AND", "OR"]
    nav_owns_counter = True

    def __init__(self, parent=None):
        super().__init__(parent)
        self.edit_code = None
        self.state = "Idle"
        self._build()
        self.reload()

    def _build(self):
        lay = QVBoxLayout(self)
        lay.setContentsMargins(12, 8, 12, 8)

        fh = QHBoxLayout()
        fh.addWidget(QLabel("Tax Structure Name"))
        self.cmb = QComboBox(self)
        self.cmb.currentIndexChanged.connect(self._pick)
        self.cmb.hide()
        self.structure_row = QWidget()
        structure_lay = QHBoxLayout(self.structure_row)
        structure_lay.setContentsMargins(0, 0, 0, 0)
        self.ed_structure_name = _read_only_line()
        self.btn_structure_lookup = QPushButton("...")
        self.btn_structure_lookup.setToolTip("Find Tax Structure")
        self.btn_structure_lookup.clicked.connect(self._choose_structure)
        mark_desktop_action(self.btn_structure_lookup)
        structure_lay.addWidget(self.ed_structure_name, 1)
        structure_lay.addWidget(self.btn_structure_lookup)
        fh.addWidget(self.structure_row, 1)
        # New structure name entry (Add mode)
        self.ed_new_name = QLineEdit()
        self.ed_new_name.setPlaceholderText(
            "New structure name (Add mode) — max 35")
        self.ed_new_name.setMaxLength(taxstru.LIMITS["name"])
        self.ed_new_name.setVisible(False)
        fh.addWidget(self.ed_new_name, 1)
        lay.addLayout(fh)

        self.tbl = QTableWidget(0, len(self.HEADERS))
        self.tbl.setHorizontalHeaderLabels(self.HEADERS)
        self.tbl.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers)  # programmatic
        self.tbl.setAlternatingRowColors(True)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.cellDoubleClicked.connect(self._enable_cell_edit)
        lay.addWidget(self.tbl, 1)

        self.counter = QLabel("0/0")
        self.lbl_audit = QLabel("")
        self.lbl_audit.setStyleSheet("color:#00008b; font-weight:bold;")
        ar = QHBoxLayout()
        ar.addStretch(); ar.addWidget(self.lbl_audit)
        lay.addLayout(ar)

    # ---- inline editing helpers ----
    def _enable_cell_edit(self, row: int, col: int):
        """Double-click par cell editable (VB6 FGrid behaviour) — Idle me
        read-only rehta hai; Add/Edit state me hi edit hota hai."""
        if self.state == "Idle" or col == 0:
            return
        it = self.tbl.item(row, col)
        if it:
            it.setFlags(it.flags() | Qt.ItemFlag.ItemIsEditable)
            self.tbl.editItem(it)

    def _tax_combo(self, current_code: str = "") -> QComboBox:
        combo = QComboBox()
        combo.setEditable(False)
        if current_code:
            # filled row: real tax list
            for t in getattr(self, "_taxes", []):
                combo.addItem(f"{t['name']} ({t['code']})", t["code"])
            idx = combo.findData(current_code)
            if idx >= 0:
                combo.setCurrentIndex(idx)
        else:
            # blank row: placeholder item — collect is skip karta hai
            combo.addItem("— select tax —", "")
            for t in getattr(self, "_taxes", []):
                combo.addItem(f"{t['name']} ({t['code']})", t["code"])
        return combo

    def _flag_combo(self, options: list, current: str = "") -> QComboBox:
        combo = QComboBox()
        combo.addItems(options)
        idx = combo.findText(current or "")
        if idx >= 0:
            combo.setCurrentIndex(idx)
        return combo

    def _lock_grid(self, locked: bool):
        """Idle me grid sirf browse; Add/Edit me double-click edit."""
        self.tbl.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers if locked
            else QAbstractItemView.EditTrigger.DoubleClicked)

    def _fill_grid(self, lines):
        self.tbl.setRowCount(len(lines))
        for r, ln in enumerate(lines):
            self.tbl.setItem(r, 0, _ro_item(ln.get("sno", r + 1)))
            tc = ln.get("taxcode", "")
            name = tc
            for t in self._taxes:
                if t["code"] == tc:
                    name = f"{t['name']} ({t['code']})"
                    break
            self.tbl.setItem(r, 1, _ro_item(name))
            self.tbl.setItem(r, 2, _ro_item(f"{float(ln.get('rate') or 0):.4f}"))
            self.tbl.setItem(r, 3, _ro_item(ln.get("nature", "")))
            self.tbl.setItem(r, 4, _ro_item(f"{float(ln.get('limit') or 0):.2f}"))
            self.tbl.setItem(r, 5, _ro_item(ln.get("condapp", "")))
            self.tbl.setItem(r, 6, _ro_item(f"{float(ln.get('limit1') or 0):.2f}"))
            self.tbl.setItem(r, 7, _ro_item(ln.get("compop", "")))

    def _collect_lines(self) -> list[dict]:
        """Grid -> core line dicts (validation core me hoti hai)."""
        lines = []
        for r in range(self.tbl.rowCount()):
            tax_combo = self.tbl.cellWidget(r, 1)
            if tax_combo is not None:
                taxcode = tax_combo.currentData() or ""
            else:
                it = self.tbl.item(r, 1)
                taxcode = (it.text().rsplit("(", 1)[-1].rstrip(")")
                           if it and "(" in it.text() else
                           (it.text() if it else ""))
            if not taxcode:
                continue  # blank row
            rate_it = self.tbl.item(r, 2)
            limit_it = self.tbl.item(r, 4)
            limit1_it = self.tbl.item(r, 6)
            try:
                rate = float(rate_it.text() if rate_it else 0)
            except (TypeError, ValueError):
                raise ValueError(f"Row {r + 1}: Rate numeric hona chahiye")
            try:
                limit = float(limit_it.text() if limit_it else 0)
            except (TypeError, ValueError):
                raise ValueError(f"Row {r + 1}: L.Limit numeric hona chahiye")
            try:
                limit1 = float(limit1_it.text() if limit1_it else 0)
            except (TypeError, ValueError):
                raise ValueError(f"Row {r + 1}: U.Limit numeric hona chahiye")
            nat_it = self.tbl.item(r, 3)
            cond_it = self.tbl.item(r, 5)
            comp_it = self.tbl.item(r, 7)
            lines.append({
                "taxcode": taxcode,
                "rate": rate,
                "nature": (nat_it.text() if nat_it else "On Base Amt"),
                "limit": limit,
                "condapp": (cond_it.text() if cond_it else ""),
                "limit1": limit1,
                "compop": (comp_it.text() if comp_it else ""),
            })
        if not lines:
            raise ValueError("At least one tax line required")
        return lines

    def reload(self, selected_code=None):
        if selected_code is None:
            selected_code = self.cmb.currentData() or self.edit_code
        try:
            self._taxes = taxstru.get_tax_codes()
            structs = taxstru.get_structures_summary()
        except Exception as e:
            QMessageBox.critical(self, "Tax Structure", f"DB error: {e}")
            self._taxes, structs = [], []
        self.cmb.blockSignals(True)
        self.cmb.clear()
        self._structure_names = {}
        for s in structs:
            self.cmb.addItem(f"{s['code']} - {s['name']}", s["code"])
            self._structure_names[s["code"]] = s["name"]
        index = self.cmb.findData(selected_code)
        if index < 0:
            index = 0
        if structs:
            self.cmb.setCurrentIndex(index)
        self.cmb.blockSignals(False)
        self.counter.setText(f"1/{len(structs)}" if structs else "0/0")
        if structs:
            self._pick(index)
        else:
            self.edit_code = None
            self._structure_name = ""
            self.tbl.setRowCount(0)

    def _pick(self, idx):
        code = self.cmb.itemData(idx)
        if not code:
            return
        try:
            lines = taxstru.list_by_code(code)
        except Exception as e:
            QMessageBox.critical(self, "Tax Structure", f"DB error: {e}")
            return
        self.edit_code = code
        self._structure_name = self._structure_names.get(code, "")
        self.ed_structure_name.setText(self._structure_name)
        self._fill_grid(lines)
        self.counter.setText(f"{idx + 1}/{self.cmb.count()}")
        if lines:
            self.lbl_audit.setText(
                f"Modified By : {lines[0].get('u_name', '') or '-'}")

    def _choose_structure(self):
        try:
            rows = taxstru.get_structures_summary()
        except Exception as e:
            QMessageBox.critical(self, "Tax Structure", f"DB error: {e}")
            return
        code = lookup_pick(self, "Tax Structure", rows)
        index = self.cmb.findData(code) if code else -1
        if index >= 0:
            self.cmb.setCurrentIndex(index)

    def find_record(self):
        self._choose_structure()

    def nav_first(self):
        self._nav_structure(0)

    def nav_prev(self):
        self._nav_structure(self.cmb.currentIndex() - 1)

    def nav_next(self):
        self._nav_structure(self.cmb.currentIndex() + 1)

    def nav_last(self):
        self._nav_structure(self.cmb.count() - 1)

    def _nav_structure(self, index: int):
        count = self.cmb.count()
        if count <= 0:
            return
        index = max(0, min(count - 1, index))
        self.cmb.setCurrentIndex(index)
        self.counter.setText(f"{index + 1}/{count}")

    # ---- TopCtrl pattern (toolbar wires inhe) ----
    def new(self):
        """Add mode: blank grid + naya structure name."""
        self.state = "Add"
        self.edit_code = None
        self._structure_name = ""
        self.structure_row.hide()
        self.ed_new_name.setVisible(True)
        self.ed_new_name.clear()
        self.tbl.setRowCount(0)
        # 1 blank row with tax dropdown
        self.tbl.insertRow(0)
        self.tbl.setItem(0, 0, _ro_item(1))
        self.tbl.setCellWidget(0, 1, self._tax_combo())
        for c, default in ((2, "0.0000"), (3, "On Base Amt"),
                           (4, "0.00"), (5, ""), (6, "0.00"), (7, "")):
            self.tbl.setItem(0, c, _ro_item(default))
        self._add_blank_row()
        self._lock_grid(False)
        self.ed_new_name.setFocus()

    def _add_blank_row(self):
        """Grid ke end me ek blank row (tax dropdown ke saath)."""
        r = self.tbl.rowCount()
        self.tbl.insertRow(r)
        self.tbl.setItem(r, 0, _ro_item(r + 1))
        self.tbl.setCellWidget(r, 1, self._tax_combo())
        for c, default in ((2, "0.0000"), (3, "On Base Amt"),
                           (4, "0.00"), (5, ""), (6, "0.00"), (7, "")):
            self.tbl.setItem(r, c, _ro_item(default))

    def save(self):
        if self.state == "Idle":
            QMessageBox.information(
                self, "Save",
                "New (Ctrl+N) se Add mode me jaayein ya structure "
                "select karke lines double-click edit karein")
            return
        name = self.ed_new_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Structure Name zaroori hai")
            return
        try:
            lines = self._collect_lines()
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        try:
            if self.state == "Add":
                code = taxstru.next_code()
                taxstru.insert_structure(code, name, lines)
            else:
                code = self.edit_code
                if not code:
                    QMessageBox.warning(self, "Save", "Structure select karein")
                    return
                taxstru.update_structure(code, name, lines)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.state = "Idle"
        self.ed_new_name.setVisible(False)
        self.structure_row.show()
        self._lock_grid(True)
        self.reload(selected_code=code)
        QMessageBox.information(self, "Save",
                                f"Tax Structure '{code}' saved ({len(lines)} lines)")

    def edit(self):
        """Edit mode: selected structure ki lines inline edit + replace."""
        if not self.edit_code:
            QMessageBox.information(self, "Edit",
                                    "Pehle structure select karo (dropdown)")
            return
        self.state = "Edit"
        self.structure_row.hide()
        self.ed_new_name.setText(self._structure_name)
        self.ed_new_name.setPlaceholderText(
            f"Editing {self.edit_code}")
        self.ed_new_name.setVisible(True)
        # Last row (already blank) ensure
        if self.tbl.rowCount() and not self._row_has_tax(self.tbl.rowCount() - 1):
            pass
        else:
            self._add_blank_row()
        self._lock_grid(False)

    def _row_has_tax(self, row: int) -> bool:
        combo = self.tbl.cellWidget(row, 1)
        if combo is not None:
            return bool(combo.currentData())
        it = self.tbl.item(row, 1)
        return bool(it and it.text().strip())

    def delete(self):
        if not self.edit_code:
            QMessageBox.information(self, "Delete",
                                    "Pehle structure select karo (dropdown)")
            return
        code = str(self.edit_code)
        if QMessageBox.question(self, "Delete",
                                f"Tax Structure '{code}' (all lines) "
                                "delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            taxstru.delete_structure(code)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.edit_code = None
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ============================================================= Payment Type
class PaymentTypeTab(QWidget):
    """VB6 fdPaymentCharge master: RevMast PAYTYPE<>''."""

    HEADERS = ["S.No", "Payment Name", "Short", "Ledger Account",
               "A/C Posting", "Nature", "System"]

    OUTLETS = ["FRONT OFFICE", "Banquet", "Hight Way point", "Garden Aroma",
               "Hight Way point KOT", "MOON TEA CAFE", "ECOMORSE SALES",
               "LAUNDRY", "ROOM SERVICE"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.edit_code = None
        self.state = "Idle"
        self._build()
        self.reload()

    def _build(self):
        lay = QVBoxLayout(self)
        lay.setContentsMargins(12, 8, 12, 8)

        form = QGroupBox()
        form.setStyleSheet("QGroupBox { border: none; margin: 0; }")
        fl = QFormLayout(form)
        fl.setSpacing(8)
        self.ed_name = QLineEdit(); self.ed_name.setMaxLength(
            paymenttype.LIMITS["name"])
        self.ed_short = QLineEdit(); self.ed_short.setMaxLength(10)
        self._ledger_code = ""
        self.ed_ledger = QLineEdit()
        self.ed_ledger.setReadOnly(True)
        self.btn_ledger = QPushButton("...")
        self.btn_ledger.setToolTip("Select Ledger Account")
        self.btn_ledger.clicked.connect(self._choose_ledger_account)
        mark_desktop_action(self.btn_ledger)
        self.ed_acpost = QLineEdit()
        completer = QCompleter(["Detailed", "Summarize"], self)
        completer.setCaseSensitivity(Qt.CaseSensitivity.CaseInsensitive)
        self.ed_acpost.setCompleter(completer)
        self.ed_nature = QLineEdit(); self.ed_nature.setMaxLength(15)
        row = QHBoxLayout()
        row.addWidget(self.ed_acpost)
        row.addWidget(QLabel("Detailed/Summarize"))
        ledger_row = QHBoxLayout()
        ledger_row.addWidget(self.ed_ledger)
        ledger_row.addWidget(self.btn_ledger)
        fl.addRow("Payment Name", self.ed_name)
        fl.addRow("Short Name", self.ed_short)
        fl.addRow("Ledger Account", ledger_row)
        fl.addRow("A/C Posting", row)
        fl.addRow("Nature", self.ed_nature)
        self.lbl_sysdef = QLabel("")
        self.lbl_sysdef.setStyleSheet("color:#c00000; font-weight:bold;")
        fl.addRow("", self.lbl_sysdef)
        lay.addWidget(form)

        out = QGroupBox()
        out.setStyleSheet("QGroupBox { border: none; margin: 0; }")
        og = QGridLayout(out)
        og.setContentsMargins(0, 0, 0, 0)
        self.chk_outlets = {}
        try:
            depts = depart_pay.list_departments()
        except Exception:
            depts = []
        for i, d in enumerate(depts):
            code = d["code"]
            name = d["name"]
            cb = QCheckBox(f"{name} ({code})")
            cb.setStyleSheet(
                "QCheckBox { color:#ff2020; font-weight:bold; "
                "background:qlineargradient(x1:0,y1:0,x2:0,y2:1,"
                "stop:0 #d6eee8,stop:1 #4c9f95); "
                "border:1px solid #347d75; border-radius:8px; "
                "padding:7px 10px; }"
                "QCheckBox::indicator { width:14px; height:14px; }")
            cb.setFixedHeight(38)
            self.chk_outlets[code] = cb
            og.addWidget(cb, i // 2, i % 2)
        lay.addWidget(out)

        self.tbl = QTableWidget(0, len(self.HEADERS))
        self.tbl.setHorizontalHeaderLabels(self.HEADERS)
        self.tbl.setSelectionBehavior(
            QAbstractItemView.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.itemSelectionChanged.connect(self._pick)
        lay.addWidget(self.tbl, 1)
        self.tbl.hide()

        self.counter = QLabel("0/0")
        self.lbl_audit = QLabel("")
        self.lbl_audit.setStyleSheet("color:#00008b; font-weight:bold;")
        ar = QHBoxLayout()
        ar.addStretch(); ar.addWidget(self.lbl_audit)
        lay.addLayout(ar)

    def _choose_ledger_account(self):
        try:
            rows = taxmaster.ledger_list()
        except Exception as e:
            QMessageBox.critical(self, "Ledger Account", f"DB error: {e}")
            return
        code = lookup_pick(self, "Ledger Account", rows)
        if not code:
            return
        selected = next((row for row in rows if row["code"] == code), None)
        if selected:
            self._ledger_code = code
            self.ed_ledger.setText(selected["name"])

    def _pick(self):
        r = self.tbl.currentRow()
        if r < 0:
            return
        code = self.tbl.item(r, 0).text()
        rec = paymenttype.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_name.setText(rec.get("name", ""))
        self.ed_short.setText(rec.get("short", ""))
        self._ledger_code = rec.get("accode", "")
        try:
            accounts = taxmaster.ledger_list()
            account_name = next((row["name"] for row in accounts
                                 if row["code"] == self._ledger_code), "")
        except Exception:
            account_name = ""
        self.ed_ledger.setText(account_name or self._ledger_code)
        # VB6 FIX: ACPosting field load karo
        self.ed_acpost.setText(rec.get("accposting") or rec.get("acposting", ""))
        self.ed_nature.setText(rec.get("paytype", ""))
        self.lbl_sysdef.setText(
            "System Defined" if (rec.get("u_ae") or "") else "")
        try:
            grid = depart_pay.outlet_grid_for_paycode(code)
            for item in grid:
                c = item["code"]
                if c in self.chk_outlets:
                    self.chk_outlets[c].setChecked(bool(item.get("allowed", 0)))
        except Exception:
            pass

    def reload(self):
        try:
            rows = paymenttype.list_all()
        except Exception as e:
            QMessageBox.critical(self, "Payment Type", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("name", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("short", "")))
            # BUG-FIX: column 3 = Ledger Account (accode), NOT name
            self.tbl.setItem(r, 3, _ro_item(rec.get("accode", "")))
            # BUG-FIX: column 4 = A/C Posting field
            self.tbl.setItem(r, 4, _ro_item(rec.get("acposting") or rec.get("accode", "")))
            self.tbl.setItem(r, 5, _ro_item(rec.get("paytype", "")))
            # BUG-FIX: column 6 = System Defined flag
            self.tbl.setItem(r, 6, _ro_item(
                "Yes" if rec.get("u_ae") else ""))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            _select_table_row(self.tbl, 0)

    def new(self):
        self.edit_code = None
        self.tbl.clearSelection()
        for e in (self.ed_name, self.ed_short, self.ed_ledger,
                  self.ed_acpost, self.ed_nature):
            e.clear()
        self._ledger_code = ""
        for cb in self.chk_outlets.values():
            cb.setChecked(False)
        self.lbl_sysdef.setText("")
        self.state = "Add"
        self.ed_name.setFocus()

    def edit(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Edit", "Pehle row select karein")
            return
        self.state = "Edit"
        self._pick()
        self.ed_name.setFocus()

    def save(self):
        name = self.ed_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Save", "Payment Name zaroori hai")
            return
        code = self.edit_code or self.ed_short.text().strip().upper()[:6] \
            or name.upper()[:6]
        rec = {
            "code": code, "name": name,
            "short": self.ed_short.text().strip(),
            # VB6 FrmPayTypeMast: Ledger A/C save hota hai (non-exempt
            # paytypes par required - backend _validate enforce karta hai).
            "accode": self._ledger_code,
            "paytype": self.ed_nature.text().strip() or "Cash",
            # VB6 FIX: ACPosting field include karo
            "accposting": self.ed_acpost.text().strip(),
            "fieldtype": "P", "type": "Dr", "active": "Y",
        }
        try:
            if self.edit_code and paymenttype.exists(self.edit_code):
                paymenttype.update(self.edit_code, rec)
            else:
                if paymenttype.exists(code):
                    QMessageBox.warning(self, "Save",
                                        f"{code} pehle se maujood hai")
                    return
                paymenttype.insert(rec)
            # Save allowed outlets to DepartPay
            allowed = [c for c, cb in self.chk_outlets.items() if cb.isChecked()]
            depart_pay.set_for_paycode(code, allowed)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete",
                                f"Payment Type '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            paymenttype.delete(code)
        except ValueError as e:
            QMessageBox.warning(self, "Delete", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.edit_code = None
        self.reload()


# ================================================================= Parameter
class ParameterTab(QWidget):
    """VB6 frmEnviro 'Parameter' — stacked sub-tabs + Printing Settings.

    Screenshot evidence: 4 stacked rows of sub-tab buttons; active page
    'Printing Parameters' shows Bill Header / Bill Footer boxes.
    Editable: enviro EDITABLE white-list (Bill_Header/Bill_Footer etc.).
    """

    SUB_ROWS = [
        ["Instructions (F.P.)", "Guest Charges (Split)", "Display"],
        ["Order Booking Parameter", "SMS Parameters", "Smart Card",
         "Settings", "Instructions (Res.)"],
        ["Posting Parameters", "Purchase Parameters",
         "Outlet Parameters", "Banquet Parameters", "KOT Parameters",
         "Round Off Setting"],
        ["HR/Payroll", "Check Out", "General Parameters",
         "Printing Parameters", "Rate Types"],
    ]

    FIELD_LABELS = {
        "Postingtype": "Posting Type",
        "RoomChrgDueAc": "Room Charge Due Account",
        "CommissionAc": "Commission Account",
        "RoomTaxDueAc": "Room Charge Account",
        "DummyTravelAc": "Travel Agent Account",
        "RoomChrgPostingType": "Room Charge Posting",
        "PostComplimentaryBills": "Post Complimentary Bills",
        "PostRoomDiscSeparately": "Post Room Disc. Separat",
        "POSSaleRevenueBifercation": "POS Sale Revenue Bifurcation",
        "PlanTariffNarration": "Plan Tariff Narration",
        "CashPayType": "Cash Payment Type",
        "RoomPayType": "Room Payment Type",
        "OutletDiscAc": "Discount Account",
        "OutletRoundAc": "Round Off Account",
        "SaleTaxVAT": "Sale Tax (VAT)",
        "PostPOSDiscSeparately": "Post POS Disc. Separat",
        "CoversMandatory": "Covers Mandatory",
        "MobileNoMandatory": "Mobile No. Mandatory",
        "ServiceTaxOnServiceChargeYN": "Ser.Tax On Ser.Charge",
        "OutDoorCatering": "OutDoor Catering",
        "CatalogLimit": "Catalog with Item Limit",
        "HallDiscAC": "Discount Account",
        "HallRoundOff": "Round Off Account",
        "IndoorSaleAC": "InDoor Sale Account",
        "IndoorPartyAC": "InDoor Party Account",
        "OutdoorSaleAC": "OutDoor Sale Account",
        "OutdoorPartyAC": "OutDoor Party Account",
        "AllowRoomSettlement": "Allow Room Settlement",
    }

    # MS-014: VB6 frmEnviro jo field kis DataGrid se bharta hai
    # (Txt_GotFocus index-chain + Form_Load name-queries se confirm):
    #   ExciseInvoiceTaxStru -> TaxStru, PurchaseTaxVAT/SaleTaxVAT -> RevMast
    #   FieldType='T', CashPayType/RoomPayType -> RevMast PayType Cash/Room,
    #   DGHelp(SubGroup, Txt idx 33-38) -> Outdoor*/Indoor* + HallDisc/HallRound,
    #   DGPurchaseGodown(GodownMast, idx 73) -> PurchaseGodown/StockRecGodown,
    #   DGPurchItem(ItemMast, idx 139) -> SmartCardItem,
    #   DGGroup(Acgroup, idx 17) -> DefCompGroup,
    #   DGRevenue(RevMast 'C', idx 56) -> AmendRevenue.
    # DGDepart: frmEnviro me kabhi populate nahi hota (sirf .Visible checks,
    # frmEnviro.frm:3305/5770) -> uska row source (Depart) idhar
    # PrintingParametersTab ke RestCode picker par bind hai.
    LOOKUPS = {
        ("Purchase Parameters", "ExciseInvoiceTaxStru"):
            lookup_tax_structures,
        ("Purchase Parameters", "PurchaseTaxVAT"): lookup_taxes,
        ("Outlet Parameters", "SaleTaxVAT"): lookup_taxes,
        ("Outlet Parameters", "CashPayType"): lookup_paytypes,
        ("Outlet Parameters", "RoomPayType"): lookup_paytypes,
        # DGHelp -> SubGroup (VB6 Txt_GotFocus idx 33-38)
        ("Outlet Parameters", "OutdoorSaleAC"): lookup_help_accounts,
        ("Outlet Parameters", "IndoorSaleAC"): lookup_help_accounts,
        ("Outlet Parameters", "OutdoorPartyAC"): lookup_help_accounts,
        ("Outlet Parameters", "IndoorPartyAC"): lookup_help_accounts,
        ("Posting Parameters", "RoomChrgDueAc"): lookup_help_accounts,
        ("Posting Parameters", "CommissionAc"): lookup_help_accounts,
        ("Posting Parameters", "RoomTaxDueAc"): lookup_help_accounts,
        ("Posting Parameters", "DummyTravelAc"): lookup_help_accounts,
        ("Outlet Parameters", "OutletDiscAc"): lookup_help_accounts,
        ("Outlet Parameters", "OutletRoundAc"): lookup_help_accounts,
        ("Banquet Parameters", "HallDiscAC"): lookup_help_accounts,
        ("Banquet Parameters", "HallRoundOff"): lookup_help_accounts,
        # DGPurchaseGodown -> GodownMast (VB6 idx 73 PurchaseGodown)
        ("Purchase Parameters", "PurchaseGodown"): lookup_godowns,
        ("Purchase Parameters", "StockRecGodown"): lookup_godowns,
        # DGPurchItem -> ItemMast (VB6 idx 139 SmartCardItem)
        ("General Parameters", "SmartCardItem"): lookup_purch_items,
        # DGGroup -> Acgroup (VB6 idx 17 DefCompGroup)
        ("General Parameters", "DefCompGroup"): lookup_ac_groups,
        # DGRevenue -> RevMast FieldType='C' (VB6 idx 56 AmendRevenue)
        ("Outlet Parameters", "AmendRevenue"): lookup_revenue_heads,
    }

    def __init__(self, parent=None):
        super().__init__(parent)
        self._current_page = "Printing Parameters"
        self._ro_type = ""
        self._build()
        self.reload()
        # VB6 frmEnviro: Printing Parameters page default dikhta hai
        self._show_page("Printing Parameters")

    def _build(self):
        lay = QVBoxLayout(self)
        lay.setContentsMargins(8, 6, 8, 6)

        # Stacked sub-tab buttons (VB6 visual)
        self._sub_btn_group = []  # track all sub-tab buttons
        for row_names in self.SUB_ROWS:
            row = QHBoxLayout()
            row.setSpacing(6)
            for name in row_names:
                b = QPushButton(name)
                b.setCheckable(True)
                b.setStyleSheet(
                    "QPushButton { padding: 8px 16px; border: 1px solid "
                    "#9a9a8a; border-radius: 10px 10px 0 0; background: "
                    "qlineargradient(x1:0,y1:0,x2:0,y2:1, stop:0 #fdfdf5, "
                    "stop:1 #e8e8d8); color:#1a1a5e; font-weight:bold; }"
                    "QPushButton:checked { background:#5a5a4a; color:white; }")
                b.clicked.connect(
                    lambda _=False, n=name: self._show_page(n))
                row.addWidget(b)
                self._sub_btn_group.append((name, b))
            row.addStretch()
            lay.addLayout(row)

        self.stack_area = QFrame()
        self.stack_area.setFrameShape(QFrame.Shape.StyledPanel)
        self.stack_area.setStyleSheet("QFrame { background: #d4d0c8; }")
        self.stack_lay = QVBoxLayout(self.stack_area)
        self.stack_lay.setContentsMargins(10, 10, 10, 10)

        # ---- Printing Parameters page (default, screenshot page) ----
        page = QWidget()
        pl = QVBoxLayout(page)
        hdr = QLabel("Printing Settings")
        hdr.setAlignment(Qt.AlignmentFlag.AlignCenter)
        hdr.setStyleSheet(
            "background:#3a3a00; color:#ffe95c; font-weight:bold;"
            "padding:6px; font-size:14px;")
        pl.addWidget(hdr)

        card = QFrame()
        card.setStyleSheet("QFrame { background: #efefe9; border: 1px "
                           "solid #6a6a5a; }")
        cl = QVBoxLayout(card)
        cl.setContentsMargins(24, 24, 24, 24)
        cl.setSpacing(12)
        t1 = QLabel("Bill Header")
        t1.setAlignment(Qt.AlignmentFlag.AlignCenter)
        t1.setStyleSheet("color:#6a5a00; font-weight:bold; font-size:15px;")
        cl.addWidget(t1)
        self.ed_bill_header = QLineEdit()
        self.ed_bill_header.setPlaceholderText("Bill Header line "
                                               "(Enviro.Bill_Header)")
        cl.addWidget(self.ed_bill_header)
        t2 = QLabel("Bill Footer")
        t2.setAlignment(Qt.AlignmentFlag.AlignCenter)
        t2.setStyleSheet("color:#6a5a00; font-weight:bold; font-size:15px;")
        cl.addWidget(t2)
        self.ed_bill_footer = QLineEdit()
        self.ed_bill_footer.setPlaceholderText("Bill Footer line "
                                               "(Enviro.Bill_Footer)")
        cl.addWidget(self.ed_bill_footer)
        pl.addWidget(card)

        btns = QHBoxLayout()
        btns.addStretch()
        self.btn_save = QPushButton("Save & Exit")
        self.btn_save.setStyleSheet(
            "background:#fdfbd3; color:#1a1a1a; font-weight:bold;"
            "padding:8px 22px; border:1px solid #6a6a5a;")
        self.btn_save.clicked.connect(self._save)
        self.btn_cancel = QPushButton("Cancel & Exit")
        self.btn_cancel.setStyleSheet(
            "background:#d9f0f7; color:#1a1a1a; font-weight:bold;"
            "padding:8px 22px; border:1px solid #6a6a5a;")
        self.btn_cancel.clicked.connect(self.reload)
        btns.addWidget(self.btn_save)
        btns.addWidget(self.btn_cancel)
        btns.addStretch()
        pl.addLayout(btns)
        pl.addStretch()
        self.stack_lay.addWidget(page)
        self._pages = {"Printing Parameters": page}
        lay.addWidget(self.stack_area, 1)
        # BUG-FIX: hide Printing Parameters page initially (shown via _show_page)
        page.hide()

        # placeholder pages for other sub-tabs (VB6 bhi yahi stack hai)
        self._other_pages = {}

        # ---- Round Off Setting page (VB6 frmEnviro, MS-015/028/029) ----
        # Evidence: HMS.exe frmEnviro design blob me
        #   Frame1 caption "Round Off Type" +
        #   OptRoundOff = Standard / Upper / Lower + Txt(41) = ModuleName
        #   + FGrid (MSHFlexGrid) RoundOffSetting browse.
        ro_page = QWidget()
        rl = QVBoxLayout(ro_page)
        rl.setContentsMargins(0, 0, 0, 0)
        rl.setSpacing(8)
        rlab = QLabel("Round Off Setting — settings (Enviro operational flags)")
        rlab.setAlignment(Qt.AlignmentFlag.AlignCenter)
        rlab.setStyleSheet("color:#333; font-weight:bold;")
        rl.addWidget(rlab)

        fr = QGroupBox("Round Off Type")
        fr_lay = QHBoxLayout(fr)
        self.ro_group = QButtonGroup(self)
        self.ro_group.setExclusive(False)
        self.ro_radios = []
        for cap in ("Standard", "Upper", "Lower"):
            rb = QRadioButton(cap)
            rb.toggled.connect(lambda on, c=cap: self._ro_toggled(c, on))
            fr_lay.addWidget(rb)
            self.ro_group.addButton(rb)
            self.ro_radios.append((cap, rb))
        fr_lay.addStretch()
        rl.addWidget(fr)

        ro_form = QFormLayout()
        self.ed_ro_module = QLineEdit()
        self.ed_ro_module.setPlaceholderText(
            "Guest Bill / Purchase Bill / Sale Bill / ...")
        comp = QCompleter(list(general_setup.ROUNDOFF_MODULES),
                          self.ed_ro_module)
        comp.setCompletionMode(QCompleter.CompletionMode.PopupCompletion)
        comp.setCaseSensitivity(Qt.CaseSensitivity.CaseInsensitive)
        self.ed_ro_module.setCompleter(comp)
        ro_form.addRow("Module Name", self.ed_ro_module)
        rl.addLayout(ro_form)

        self.tbl = QTableWidget(0, 2)
        self.tbl.setHorizontalHeaderLabels(
            ["Module Name", "Round Off Type"])
        self.tbl.setSelectionBehavior(
            QAbstractItemView.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.itemSelectionChanged.connect(self._pick_roundoff)
        rl.addWidget(self.tbl, 1)

        ro_bot = QHBoxLayout()
        ro_bot.addStretch()
        self.counter = QLabel("0/0")
        ro_bot.addWidget(self.counter)
        rl.addLayout(ro_bot)

        ro_flags = QFormLayout()
        rl.addLayout(ro_flags)
        rl.addStretch()

        self.stack_lay.addWidget(ro_page)
        self._pages["Round Off Setting"] = ro_page
        self._other_pages["Round Off Setting"] = (ro_page, ro_flags, [])
        ro_page.hide()

        for names in self.SUB_ROWS:
            for name in names:
                if name in self._pages:
                    continue
                pw = QWidget()
                pl2 = QVBoxLayout(pw)
                lab = QLabel(f"{name} — settings (Enviro operational flags)")
                lab.setAlignment(Qt.AlignmentFlag.AlignCenter)
                lab.setStyleSheet("color:#333; font-weight:bold;")
                pl2.addWidget(lab)
                grid = QFormLayout()
                self._other_pages[name] = (pw, grid, [])
                pl2.addLayout(grid)
                pl2.addStretch()
                self.stack_lay.addWidget(pw)
                self._pages[name] = pw

# Enviro operational flags field type registry (VB6 frmEnviro Txt_Validate port)
        # Types: yn3=Yes/No, yn1=Y/N, time=HH:MM, int, float, str, lookup
        FIELD_TYPES = {
            # Instructions (F.P.)
            "FPInstruction1": "str", "FPInstruction2": "str", "FPInstruction3": "str",
            "FPInstruction4": "str", "FPInstruction5": "str",
            "FPInstruction6": "str", "FPInstruction7": "str", "FPInstruction8": "str",
            "FPInstruction9": "str", "FPInstruction10": "str",
            "FPInstruction11": "str", "FPInstruction12": "str",

            # Guest Charges (Split)
            "SplitYN": "yn3",

            # Display
            "DisplayRackRow": "int", "DisplayRackCol": "int", "DisplayRackFontSize": "int",
            "DisplayPort": "str", "DisplayMode": "str", "menuX": "int", "menuY": "int", "menuDISP": "str",
            "ShowTitleBar": "yn1", "ShowMenuBar": "yn1", "ShowSubMenuBar": "yn1", "ShowShortCutsBar": "yn1",

            # Order Booking Parameter
            "BookingSlipFooter1": "str", "BookingSlipFooter2": "str",
            "ReservationExpandOnSaveYN": "yn3", "IncReservationInBlankGRC": "yn3",
            "SeperateReservationLetterAsPerStatusYN": "yn3",
            "NewTarrifForOldGuest": "yn3", "BlockInvalidTarrifIncTaxYN": "yn3",
            "ResInstruction1": "str", "ResInstruction2": "str", "ResInstruction3": "str",
            "ResInstruction4": "str", "ResInstruction5": "str", "ResInstruction6": "str",
            "ResInstruction7": "str", "ResInstruction8": "str",
            "ResInstruction9": "str", "ResInstruction10": "str",
            "ResInstruction11": "str", "ResInstruction12": "str",

            # SMS Parameters
            "SMSMessaging": "yn3", "SMSOption": "str", "MobileNo": "str",
            "MobileSet": "str", "SMSMessage": "str",
            "MobileInfoMandatoryYN": "yn3", "CoversMandatory": "yn3",
            "MobileNoMandatory": "yn3", "PANNOMandatoryYN": "yn3",

            # Smart Card
            "SMARTCARDRECIEPTPrintingDW": "yn3",

            # Settings
            "Editopen": "yn3", "AddModifyEntryInBackDate": "yn3",
            "PlanSelectionBasedOn": "str", "PlanTariffNarration": "str",
            "GuestChargesDeleteLog": "yn3", "FOMBillReprintAutoRefresh": "yn3",
            "UserWiseShowOutletYN": "yn3",

            # Instructions (Res.) - already covered above

            # Posting Parameters
            "Postingtype": "str", "RoomChrgDueAc": "lookup",
            "CommissionAc": "lookup", "RoomTaxDueAc": "lookup",
            "DummyTravelAc": "lookup", "RoomChrgPostingType": "lookup",
            "PostComplimentaryBills": "yn3",
            "PostRoomDiscSeparately": "yn3",
            "POSSaleRevenueBifercation": "yn3",

            # Purchase Parameters
            "ExciseInvoiceTaxStru": "lookup", "PurchaseTaxVAT": "lookup",
            "ImportOptionInPurchase": "str", "ReqCompWise": "yn3",
            "BarCodeFeatureInPurchase": "yn3", "SmartPurchaseOrder": "yn3",
            "NegativeStockAllowYN": "yn3", "PurchaseGodown": "lookup",
            "StockRecGodown": "lookup",

            # Outlet Parameters
            "KOTOutletSelection": "yn3", "SaleTaxVAT": "lookup",
            "CashPayType": "lookup", "RoomPayType": "lookup",
            "AmendRevenue": "lookup", "OutletDiscAc": "lookup",
            "OutletRoundAc": "lookup", "PostPOSDiscSeparately": "yn3",
            "CoversMandatory": "yn3", "MobileNoMandatory": "yn3",
            "ServiceTaxOnServiceChargeYN": "yn3",

            # Banquet Parameters
            "OutDoorCatering": "yn3", "BanquetKitchen": "yn3",
            "CatalogLimit": "yn3", "HallDiscAC": "lookup",
            "HallRoundOff": "lookup", "IndoorSaleAC": "lookup",
            "IndoorPartyAC": "lookup", "OutdoorSaleAC": "lookup",
            "OutdoorPartyAC": "lookup", "AllowRoomSettlement": "yn3",

            # KOT Parameters
            "KOTPrinting": "str", "KOTPrintEdited": "str", "KOTHeader1": "str",
            "KOTHeader2": "str", "KOTHeader3": "str", "KOTHeader4": "str",
            "TaxSummary": "yn3", "TOKENPrint": "yn3",
            "AutoPrintKOTYN": "yn3", "FreeItemInKOT": "yn3",
            "POSSaleBillModification": "yn3", "POSSaleBillEditLog": "yn3",
            "BillPrintingSummerised": "yn3", "ReprintingOnSaleBillYN": "yn3",
            "HideSettledBillsOnSaleBillYN": "yn3",

            # Round Off Setting - handled separately in Round Off Setting page
            "FomBillCopies": "int", "NCKOTPercentage": "int",

            # HR/Payroll (READ-ONLY per design)
            "GAppCompYear": "int", "GMonthConsidered": "int",
            "GWorkingDaysInAMonth": "int", "GDaysSalary": "int",
            "AttendType": "str",
            "PF_LIMIT": "float", "PF_EMPLOYEE": "float", "PF_EMPLOYER": "float",
            "ESI_LIMIT": "float", "esi_employee": "float",
            "ESIBasic": "float", "ESIDA": "float", "ESIHRA": "float",
            "ESIConvey": "float", "ESIOther": "float", "ESILTA": "float",

            # Check Out
            "Checkout": "str", "CheckoutVar": "time", "Variation": "time",
            "VariationBefore": "str", "RoomCheckOutClearanceYN": "yn3",
            "RoomCheckInClearanceYN": "yn3", "AllowRoomSettlement": "yn3",
            "SplitYN": "yn3", "PostComplimentaryBills": "yn3",
            "PostNilLT": "yn3", "AllowBillOnHoldSettlement": "yn3",
            "PostRoomDiscSeparately": "yn3", "IncCashPurchInFOCC": "yn3",
            "RoomRentBefChkOut": "yn3", "RoomRentChkOutPost": "yn3",

            # General Parameters
            "GRCMandatory": "yn1", "RoomRateEditable": "yn1",
            "RoomIncTaxEditable": "yn1", "RoomServiceChargeEditable": "yn1",
            "CreditCardInfoMandatoryYN": "yn1",
            "AddModifyEntryInBackDate": "yn3",
            "AcFieldAlterable": "yn3", "ExpMfdDateInMR": "yn3",
            "RateEditableInPO": "yn3", "RateEditableInStockIssue": "yn3",
            "BarCodeFeatureInPurchase": "yn3",
            "ReprintingOnSaleBillYN": "yn3", "HideSettledBillsOnSaleBillYN": "yn3",
            "ExciseInvoiceTaxStru": "lookup", "PurchaseTaxVAT": "lookup",
            "SaleTaxVAT": "lookup", "AddModifyEntryInBackDate": "yn3",
            "ResInstruction1": "str", "ResInstruction2": "str", "ResInstruction3": "str",
            "ResInstruction4": "str", "ResInstruction5": "str", "ResInstruction6": "str",
            "ResInstruction7": "str", "ResInstruction8": "str",
            "ResInstruction9": "str", "ResInstruction9": "str",
            "ResInstruction10": "str", "ResInstruction11": "str", "ResInstruction12": "str",
            "FPInstruction1": "str", "FPInstruction2": "str", "FPInstruction3": "str",
            "FPInstruction4": "str", "FPInstruction5": "str", "FPInstruction6": "str",
            "FPInstruction7": "str", "FPInstruction8": "str",
            "FPInstruction9": "str", "FPInstruction10": "str",
            "FPInstruction11": "str", "FPInstruction12": "str",
            "PlanTariffNarration": "str",
            "ESIBasic": "float", "ESIDA": "float", "ESIHRA": "float",
            "ESIConvey": "float", "ESIOther": "float", "ESILTA": "float",
            "KitchenStockReport": "str", "ItemRateInMRBasedOn": "str",
            "ItemRateInPurchaseBillBasedOn": "str", "SmartCardItem": "lookup",
            "DefCompGroup": "lookup",

            # Rate Types
            "RcptPrinting": "str", "ReservationPrinting": "str",

            # Check Out (additional)
            "AllowRoomSettlement": "yn3", "CheckoutVar": "time",
            "Variation": "time", "VariationBefore": "str",
            "RoomRateEditable": "yn1", "RoomIncTaxEditable": "yn1",
            "RoomServiceChargeEditable": "yn1", "CreditCardInfoMandatoryYN": "yn1",
            "NCKOTPercentage": "int", "KOTHeader1": "str", "KOTHeader2": "str",
            "KOTHeader3": "str", "KOTHeader4": "str",
            "Postingtype": "str", "PostPOSDiscSeparately": "yn3",
        }

        # Field maxLength from VB6 Txt controls (MS-030)
        FIELD_MAXLEN = {
            "Bill_Header": 250, "Bill_Footer": 250,
            "FPInstruction1": 250, "FPInstruction2": 250, "FPInstruction3": 250,
            "FPInstruction4": 250, "FPInstruction5": 250, "FPInstruction6": 250,
            "FPInstruction7": 250, "FPInstruction8": 250, "FPInstruction9": 250,
            "FPInstruction10": 250, "FPInstruction11": 250, "FPInstruction12": 250,
            "BookingSlipFooter1": 250, "BookingSlipFooter2": 250,
            "ResInstruction1": 250, "ResInstruction2": 250, "ResInstruction3": 250,
            "ResInstruction4": 250, "ResInstruction5": 250, "ResInstruction6": 250,
            "ResInstruction7": 250, "ResInstruction7": 250, "ResInstruction8": 250,
            "ResInstruction9": 250, "ResInstruction10": 250,
            "ResInstruction11": 250, "ResInstruction12": 250,
            "SMSMessage": 250, "SMSOption": 50,
            "SMSMessaging": 3, "SMSOption": 50, "MobileNo": 20, "MobileSet": 50,
            "SMSMessage": 250, "PANNOMandatoryYN": 3,
            "SMARTCARDRECIEPTPrintingDW": 50,
            "PlanTariffNarration": 50, "GuestChargesDeleteLog": 3,
            "Postingtype": 50, "CalcMethod": 50, "NCUR": 50,
            "RoomChrgDueAc": 8, "CommissionAc": 8, "RoomTaxDueAc": 8,
            "DummyTravelAc": 8, "RoomChrgPostingType": 50,
            "POSSaleRevenueBifercation": 3,
            "ExciseInvoiceTaxStru": 50, "PurchaseTaxVAT": 50,
            "SaleTaxVAT": 50, "CashPayType": 50, "RoomPayType": 50,
            "OutletDiscAc": 8, "OutletRoundAc": 8,
            "CoversMandatory": 3, "MobileNoMandatory": 3,
            "ServiceTaxOnServiceChargeYN": 3,
            "OutDoorCatering": 3, "BanquetKitchen": 3,
            "KOTPrinting": 50, "KOTPrintEdited": 50,
            "KOTHeader1": 50, "KOTHeader2": 50, "KOTHeader3": 50, "KOTHeader4": 50,
            "TaxSummary": 3, "TOKENPrint": 3,
            "AutoPrintKOTYN": 3, "FreeItemInKOT": 3,
            "POSSaleBillModification": 3, "POSSaleBillEditLog": 3,
            "BillPrintingSummerised": 3, "ReprintingOnSaleBillYN": 3,
            "HideSettledBillsOnSaleBillYN": 3,
            "Checkout": 50, "CheckoutVar": 5, "Variation": 5, "VariationBefore": 5,
            "NCKOTPercentage": 6, "KOTHeader1": 50, "KOTHeader2": 50,
            "KOTHeader3": 50, "KOTHeader4": 50,
            "Postingtype": 50, "PostPOSDiscSeparately": 3,
            "GRCMandatory": 1, "RoomRateEditable": 1, "RoomIncTaxEditable": 1,
            "RoomServiceChargeEditable": 1, "CreditCardInfoMandatoryYN": 1,
            "RcptPrinting": 50, "ReservationPrinting": 50,
        }

        # VB6 conditional visibility rules (MS-030)
        # CompanyType: Travel Agency -> Commission on, Corporate/Mesh -> Discount on
        # BlackListed: Yes -> Reason/By visible
        CONDITIONAL_RULES = {
            "commission": {"show_when": {"companytype": "Travel Agency"}},
            "discount": {"show_when": {"companytype": ["Corporate", "Mesh"]}},
            "discounttype": {"show_when": {"companytype": ["Corporate", "Mesh"]}},
            "reasonblacklist": {"show_when": {"blacklisted": "Yes"}},
            "blacklistedby": {"show_when": {"blacklisted": "Yes"}},
        }

        # Store references to conditional widgets for visibility toggling
        self._conditional_widgets = {}

        # Track RoundOffSetting modifications
        self._roundoff_modified = False

        # Enviro operational flags har page me dalo (white-listed only)
        flag_map = {
            "Instructions (F.P.)": ["FPInstruction1", "FPInstruction2", "FPInstruction3",
                                    "FPInstruction4", "FPInstruction5", "FPInstruction6",
                                    "FPInstruction7", "FPInstruction8", "FPInstruction9",
                                    "FPInstruction10", "FPInstruction11", "FPInstruction12"],
            "Guest Charges (Split)": ["SplitYN"],
            "Display": ["DisplayRackRow", "DisplayRackCol",
                        "DisplayRackFontSize", "DisplayPort", "DisplayMode",
                        "menuX", "menuY", "menuDISP",
                        "ShowTitleBar", "ShowMenuBar", "ShowSubMenuBar", "ShowShortCutsBar"],
            "Order Booking Parameter": ["BookingSlipFooter1",
                                        "BookingSlipFooter2",
                                        "ReservationExpandOnSaveYN",
                                        "IncReservationInBlankGRC",
                                        "SeperateReservationLetterAsPerStatusYN",
                                        "NewTarrifForOldGuest",
                                        "BlockInvalidTarrifIncTaxYN",
                                        "ResInstruction1", "ResInstruction2",
                                        "ResInstruction3", "ResInstruction4",
                                        "ResInstruction5", "ResInstruction6",
                                        "ResInstruction7", "ResInstruction8",
                                        "ResInstruction9", "ResInstruction10",
                                        "ResInstruction11", "ResInstruction12"],
            "SMS Parameters": ["SMSMessaging", "SMSOption", "MobileNo",
                               "MobileSet", "SMSMessage",
                               "MobileInfoMandatoryYN", "PANNOMandatoryYN"],
            "Smart Card": ["SMARTCARDRECIEPTPrintingDW"],
            "Settings": ["Editopen", "AddModifyEntryInBackDate",
                         "PlanSelectionBasedOn",
                         "GuestChargesDeleteLog", "FOMBillReprintAutoRefresh",
                         "UserWiseShowOutletYN"],
            "Instructions (Res.)": ["ResInstruction1", "ResInstruction2",
                                    "ResInstruction3", "ResInstruction4",
                                    "ResInstruction5", "ResInstruction6",
                                    "ResInstruction7", "ResInstruction8",
                                    "ResInstruction9", "ResInstruction10",
                                    "ResInstruction11", "ResInstruction12"],
            "Posting Parameters": ["Postingtype", "RoomChrgDueAc",
                                   "CommissionAc", "RoomTaxDueAc",
                                   "DummyTravelAc", "RoomChrgPostingType",
                                   "PostComplimentaryBills",
                                   "PostRoomDiscSeparately",
                                   "POSSaleRevenueBifercation",
                                   "PlanTariffNarration"],
            "Purchase Parameters": ["ExciseInvoiceTaxStru", "PurchaseTaxVAT",
                                    "ImportOptionInPurchase", "ReqCompWise",
                                    "BarCodeFeatureInPurchase", "SmartPurchaseOrder",
                                    "NegativeStockAllowYN", "PurchaseGodown",
                                    "StockRecGodown"],
            "Outlet Parameters": ["KOTOutletSelection", "SaleTaxVAT",
                                  "CashPayType", "AmendRevenue",
                                  "RoomPayType", "OutletDiscAc",
                                  "OutletRoundAc", "PostPOSDiscSeparately",
                                  "CoversMandatory", "MobileNoMandatory",
                                  "ServiceTaxOnServiceChargeYN"],
            "Banquet Parameters": ["OutDoorCatering", "BanquetKitchen",
                                   "CatalogLimit", "HallDiscAC", "HallRoundOff",
                                   "IndoorSaleAC", "IndoorPartyAC",
                                   "OutdoorSaleAC", "OutdoorPartyAC",
                                   "AllowRoomSettlement"],
            "KOT Parameters": ["KOTPrinting", "KOTPrintEdited", "KOTHeader1",
                               "KOTHeader2", "KOTHeader3", "KOTHeader4",
                               "TaxSummary", "TOKENPrint", "AutoPrintKOTYN",
                               "FreeItemInKOT", "POSSaleBillModification",
                               "POSSaleBillEditLog", "BillPrintingSummerised",
                               "ReprintingOnSaleBillYN", "HideSettledBillsOnSaleBillYN"],
            "Round Off Setting": ["FomBillCopies", "NCKOTPercentage"],
            "HR/Payroll": ["GAppCompYear", "GMonthConsidered",
                           "GWorkingDaysInAMonth", "GDaysSalary",
                           "AttendType", "PF_LIMIT", "PF_EMPLOYEE", "PF_EMPLOYER",
                           "ESI_LIMIT", "esi_employee", "ESIBasic", "ESIDA",
                           "ESIHRA", "ESIConvey", "ESIOther", "ESILTA",
                           "AttendType", "PlanMastType", "PlanCalc",
                           "PlanSelectionBasedOn"],
            "Check Out": ["Checkout", "CheckoutVar", "Variation",
                          "VariationBefore", "RoomCheckOutClearanceYN",
                          "RoomCheckInClearanceYN",
                          "SplitYN", "PostNilLT",
                          "AllowBillOnHoldSettlement",
                          "IncCashPurchInFOCC", "RoomRentBefChkOut",
                          "RoomRentChkOutPost"],
            "General Parameters": ["GRCMandatory", "RoomRateEditable",
                                    "RoomIncTaxEditable", "RoomServiceChargeEditable",
                                    "CreditCardInfoMandatoryYN",
                                    "AddModifyEntryInBackDate", "AcFieldAlterable",
                                    "ExpMfdDateInMR", "RateEditableInPO",
                                    "RateEditableInStockIssue", "BarCodeFeatureInPurchase",
                                    "ReprintingOnSaleBillYN", "HideSettledBillsOnSaleBillYN",
                                    "ExciseInvoiceTaxStru", "PurchaseTaxVAT",
                                    "SaleTaxVAT", "AddModifyEntryInBackDate",
                                    "ResInstruction1", "ResInstruction2", "ResInstruction3",
                                    "ResInstruction4", "ResInstruction5", "ResInstruction6",
                                    "ResInstruction7", "ResInstruction8", "ResInstruction9",
                                    "ResInstruction10", "ResInstruction11", "ResInstruction12",
                                    "FPInstruction1", "FPInstruction2", "FPInstruction3",
                                    "FPInstruction4", "FPInstruction5", "FPInstruction6",
                                    "FPInstruction7", "FPInstruction8", "FPInstruction8",
                                    "FPInstruction9", "FPInstruction10", "FPInstruction11",
                                    "FPInstruction12",
                                    "ESIBasic", "ESIDA", "ESIHRA", "ESIConvey",
                                    "ESIOther", "ESILTA", "KitchenStockReport",
                                     "ItemRateInMRBasedOn", "ItemRateInPurchaseBillBasedOn",
                                     "SmartCardItem", "DefCompGroup"],
            "Printing Parameters": [],
            "Rate Types": ["RcptPrinting", "ReservationPrinting"],
        }

        for page_name, keys in flag_map.items():
            entry = self._other_pages.get(page_name)
            if not entry:
                continue
            _, grid, made = entry
            for k in keys:
                ftype = FIELD_TYPES.get(k, "str")
                maxlen = FIELD_MAXLEN.get(k, 255)
                label = self.FIELD_LABELS.get(k, k)

                if ftype == "lookup":
                    # Lookup field: QLineEdit + "..." button
                    e = QLineEdit()
                    # maxlen = CODE column width (e.g. RoomChrgDueAc=8);
                    # widget picked NAME dikhata hai ("Room Charge Account")
                    # — isliye code-maxlen yahan apply NAHI (VB6 browse cell
                    # full name dikhata tha).
                    e.setMaxLength(255)
                    e.setReadOnly(True)
                    if k not in enviro.EDITABLE:
                        # READ-ONLY Enviro col (AC/godown code - GL integrity):
                        # sirf picker se badlega, save me skip hota hai
                        e.setReadOnly(True)
                    fetch = self.LOOKUPS.get((page_name, k))
                    if fetch is None:
                        grid.addRow(label, e)
                    else:
                        box = QHBoxLayout()
                        box.setSpacing(4)
                        box.addWidget(e, 1)
                        b = QPushButton("…")
                        b.setFixedWidth(30)
                        b.setToolTip(f"{k} lookup (VB6 DataGrid popup)")
                        b.setEnabled(k in enviro.EDITABLE)
                        b.clicked.connect(
                            lambda _=False, p=page_name, key=k, ed=e:
                                self._open_lookup(p, key, ed))
                        box.addWidget(b)
                        grid.addRow(label, box)
                    made.append((k, e, "lookup"))
                elif ftype == "yn3":
                    # Yes/No combobox
                    cb = QComboBox()
                    cb.addItems(["Yes", "No"])
                    grid.addRow(label, cb)
                    made.append((k, cb, "yn3"))
                    # Track conditional widgets
                    if k in ("companytype", "blacklisted"):
                        self._conditional_widgets[k] = cb
                        cb.currentTextChanged.connect(self._update_conditional_visibility)
                elif ftype == "yn1":
                    # Y/N combobox
                    cb = QComboBox()
                    cb.addItems(["Y", "N"])
                    grid.addRow(label, cb)
                    made.append((k, cb, "yn1"))
                    if k in ("companytype", "blacklisted"):
                        self._conditional_widgets[k] = cb
                        cb.currentTextChanged.connect(self._update_conditional_visibility)
                elif ftype == "time":
                    # HH:MM time input
                    e = QLineEdit()
                    e.setMaxLength(5)
                    e.setPlaceholderText("HH:MM")
                    e.setInputMask("99:99")
                    grid.addRow(label, e)
                    made.append((k, e, "time"))
                elif ftype == "int":
                    sp = QSpinBox()
                    sp.setRange(0, 999999)
                    sp.setGroupSeparatorShown(False)
                    grid.addRow(label, sp)
                    # Track RoundOffSetting modifications
                    if page_name == "Round Off Setting" and k in ("FomBillCopies", "NCKOTPercentage"):
                        sp.valueChanged.connect(lambda: setattr(self, "_roundoff_modified", True))
                    made.append((k, sp, "int"))
                elif ftype == "float":
                    sp = QDoubleSpinBox()
                    sp.setRange(0.0, 999999.99)
                    sp.setDecimals(2)
                    sp.setGroupSeparatorShown(False)
                    grid.addRow(label, sp)
                    made.append((k, sp, "float"))
                else:
                    # String field
                    e = QLineEdit()
                    e.setMaxLength(maxlen)
                    grid.addRow(label, e)
                    made.append((k, e, "str"))

                if k not in enviro.EDITABLE:
                    field_widget = made[-1][1]
                    if isinstance(field_widget, QLineEdit):
                        field_widget.setReadOnly(True)
                    elif isinstance(field_widget, QComboBox):
                        field_widget.setEnabled(False)
                    elif isinstance(field_widget, (QSpinBox, QDoubleSpinBox)):
                        field_widget.setReadOnly(True)

    def _open_lookup(self, page: str, key: str, ed: QLineEdit):
        """VB6 DataGrid pick: show Name, retain Code for the save."""
        fetch = self.LOOKUPS.get((page, key))
        if fetch is None:
            return
        try:
            rows = fetch()
        except Exception as e:
            QMessageBox.critical(self, key, f"Lookup error: {e}")
            return
        code = lookup_pick(self, f"{key} — lookup", rows)
        if code is not None:
            selected = next((row for row in rows if row["code"] == code), None)
            ed.setProperty("lookupCode", code)
            ed.setText(selected["name"] if selected else code)

    def _show_page(self, name: str):
        """Show only the named sub-tab page; hide all others. Update button states."""
        self._current_page = name
        for n, w in self._pages.items():
            w.setVisible(n == name)
        # Update button checked states
        for btn_name, btn in getattr(self, '_sub_btn_group', []):
            btn.setChecked(btn_name == name)

    # ------------------------------------------------ Round Off Setting
    def _ro_toggled(self, cap: str, on: bool):
        """VB6 OptRoundOff_Click: global_88 = Trim(Caption)."""
        if not on:
            return
        self._ro_type = cap
        for other_cap, rb in self.ro_radios:
            if other_cap != cap:
                rb.setChecked(False)

    def _set_ro_type(self, rtype: str):
        """VB6 Proc_56_50_103469C: RoundOffType se option match karo."""
        want = (rtype or "").strip()
        self._ro_type = want
        for cap, rb in self.ro_radios:
            rb.setAutoExclusive(False)
            rb.setChecked(cap == want)
            rb.setAutoExclusive(True)

    def _pick_roundoff(self):
        """FGrid row select -> Txt(41) ModuleName + OptRoundOff fill."""
        r = _selected_row(self.tbl)
        if r < 0:
            return
        m_it, t_it = self.tbl.item(r, 0), self.tbl.item(r, 1)
        self.ed_ro_module.setText(m_it.text() if m_it else "")
        self._set_ro_type(t_it.text() if t_it else "")
        self.counter.setText(f"{r + 1}/{self.tbl.rowCount()}")

    def nav_first(self):
        self._ro_nav(0)

    def nav_last(self):
        self._ro_nav(self.tbl.rowCount() - 1)

    def nav_prev(self):
        self._ro_nav(_selected_row(self.tbl) - 1)

    def nav_next(self):
        self._ro_nav(_selected_row(self.tbl) + 1)

    def _ro_nav(self, row: int):
        n = self.tbl.rowCount()
        if n <= 0:
            return
        # setCurrentIndex + selectRow -> itemSelectionChanged (module/radio
        # fill) + currentRow() stale nahi rehta
        _select_table_row(self.tbl, row)

    def reload(self):
        try:
            env = enviro.get()
        except Exception as e:
            QMessageBox.critical(self, "Parameter", f"Enviro error: {e}")
            return
        self.ed_bill_header.setText(str(env.get("Bill_Header") or ""))
        self.ed_bill_footer.setText(str(env.get("Bill_Footer") or ""))
        for page_name, (_, _, made) in self._other_pages.items():
            for item in made:
                k = item[0]
                w = item[1]
                v = env.get(k)
                if v is None:
                    val = ""
                else:
                    val = str(v)
                if item[2] == "lookup":
                    w.setProperty("lookupCode", val)
                    fetch = self.LOOKUPS.get((page_name, k))
                    display = val
                    if val and fetch is not None:
                        try:
                            matches = fetch()
                            display = next(
                                (row["name"] for row in matches
                                 if row["code"] == val), val)
                        except Exception:
                            display = val
                    w.setText(display)
                elif isinstance(w, QLineEdit):
                    w.setText(val)
                elif isinstance(w, QComboBox):
                    idx = w.findText(val)
                    if idx >= 0:
                        w.setCurrentIndex(idx)
                    elif val:
                        w.addItem(val)
                        w.setCurrentIndex(w.count() - 1)
                    else:
                        # DB me value khali — default index(0) mt rakho,
                        # warna save par invented 'Yes' chala jayega.
                        w.setCurrentIndex(-1)
                elif isinstance(w, QSpinBox):
                    try:
                        w.setValue(int(float(val or 0)))
                    except (TypeError, ValueError):
                        w.setValue(0)
                elif isinstance(w, QDoubleSpinBox):
                    try:
                        w.setValue(float(val or 0))
                    except (TypeError, ValueError):
                        w.setValue(0.0)
        # RoundOffSetting browse (VB6 frmEnviro Form_Load recordset)
        try:
            rows = general_setup.roundoff_list()
        except Exception:
            rows = []
        self.tbl.setRowCount(len(rows))
        for i, rec in enumerate(rows):
            self.tbl.setItem(i, 0, _ro_item(rec.get("module_name", "")))
            self.tbl.setItem(i, 1, _ro_item(rec.get("roundoff_type", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows and _selected_row(self.tbl) < 0:
            _select_table_row(self.tbl, 0)

    def _save(self):
        if self._current_page == "Round Off Setting":
            self._save_roundoff()
            return
        self._save_enviro()

    def _save_enviro(self):
        changes = {}
        if self.ed_bill_header.text().strip() != "":
            changes["Bill_Header"] = self.ed_bill_header.text().strip()
        if self.ed_bill_footer.text().strip() != "":
            changes["Bill_Footer"] = self.ed_bill_footer.text().strip()
        for _, (_, _, made) in self._other_pages.items():
            for item in made:
                k = item[0]
                w = item[1]
                if item[2] == "lookup":
                    val = w.property("lookupCode") or ""
                    if val:
                        changes[k] = str(val)
                elif isinstance(w, QLineEdit):
                    val = w.text().strip()
                    if val != "":
                        changes[k] = val
                elif isinstance(w, QComboBox):
                    val = w.currentText()
                    if val != "":
                        changes[k] = val
                elif isinstance(w, QSpinBox):
                    changes[k] = str(w.value())
                elif isinstance(w, QDoubleSpinBox):
                    changes[k] = str(w.value())
        # MS-014 (grid bind): READ-ONLY Enviro cols picker se bhari ja sakti
        # hain - save me skip karo, warna ek read-only field poori save rok deti
        ro = [k for k in changes if k not in enviro.EDITABLE]
        for k in ro:
            changes.pop(k)
        if not changes:
            QMessageBox.information(
                self, "Save",
                f"{len(ro)} setting(s) READ-ONLY hain - save nahi hui"
                if ro else "Koi change nahi")
            return
        try:
            enviro.update_settings(changes, user="SA")
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        # Also save RoundOffSetting if modified (VB6 saves all on Save)
        if self._roundoff_modified:
            self._save_roundoff_flags_only()
        QMessageBox.information(
            self, "Save",
            f"{len(changes)} setting(s) saved"
            + (f" ({len(ro)} READ-ONLY skip)" if ro else ""))

    def _save_roundoff_flags_only(self):
        """Save only RoundOffSetting Enviro flags (FomBillCopies, NCKOTPercentage)
        without doing the full RoundOffSetting table save. Called from _save_enviro
        when _roundoff_modified is True (VB6 saves all on Save)."""
        _, _, made = self._other_pages.get(
            "Round Off Setting", (None, None, []))
        changes = {}
        for item in made:
            k = item[0]
            w = item[1]
            if isinstance(w, QLineEdit):
                val = w.text().strip()
                if val != "":
                    changes[k] = val
            elif isinstance(w, QComboBox):
                val = w.currentText()
                if val != "":
                    changes[k] = val
            elif isinstance(w, QSpinBox):
                changes[k] = str(w.value())
            elif isinstance(w, QDoubleSpinBox):
                changes[k] = str(w.value())
        if changes:
            try:
                enviro.update_settings(changes, user="SA")
                self._roundoff_modified = False
            except Exception as e:
                QMessageBox.critical(self, "Save", f"DB error saving RoundOff flags: {e}")

    def _save_roundoff(self):
        """VB6 frmEnviro TopCtrl Save (event 16).

        Validate (type + ModuleName ' Bill') -> Enviro flags is page ke
        -> RoundOffSetting DELETE module + INSERT (MS-015).
        """
        module = self.ed_ro_module.text().strip()
        rtype = (self._ro_type or "").strip()
        if not rtype:
            QMessageBox.warning(self, "Save",
                                "Please choose any type of RoundOff!")
            return
        if " Bill" not in module:
            QMessageBox.warning(self, "Save",
                                "Please Check Module Name!")
            return
        # Save Enviro flags for Round Off Setting page
        changes = {}
        _, _, made = self._other_pages.get(
            "Round Off Setting", (None, None, []))
        for item in made:
            k = item[0]
            w = item[1]
            if isinstance(w, QLineEdit):
                val = w.text().strip()
                if val != "":
                    changes[k] = val
            elif isinstance(w, QComboBox):
                val = w.currentText()
                if val != "":
                    changes[k] = val
            elif isinstance(w, QSpinBox):
                changes[k] = str(w.value())
            elif isinstance(w, QDoubleSpinBox):
                changes[k] = str(w.value())
        if changes:
            try:
                enviro.update_settings(changes, user="SA")
            except ValueError as e:
                QMessageBox.warning(self, "Save", str(e))
                return
            except Exception as e:
                QMessageBox.critical(self, "Save", f"DB error: {e}")
                return
        try:
            general_setup.roundoff_save(module, rtype)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self._roundoff_modified = False
        self.reload()
        QMessageBox.information(
            self, "Save", f"{module} — round off saved ({rtype})")

    def delete(self):
        """VB6 Delete event C: module ki RoundOffSetting rows delete."""
        if self._current_page != "Round Off Setting":
            QMessageBox.information(
                self, "Delete", "Round Off Setting page par delete hoga")
            return
        module = self.ed_ro_module.text().strip()
        if not module:
            QMessageBox.information(self, "Delete",
                                    "Pehle grid me row select karein")
            return
        ans = QMessageBox.question(
            self, "Delete",
            f"'{module}' ki round off rows delete karein?",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No)
        if ans != QMessageBox.StandardButton.Yes:
            return
        try:
            n = general_setup.roundoff_delete_module(module)
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.ed_ro_module.clear()
        self._set_ro_type("")
        self.reload()
        QMessageBox.information(self, "Delete", f"{n} row(s) deleted")

    def save(self):
        self._save()

    def edit(self):
        if self._current_page == "Round Off Setting":
            self.ed_ro_module.setFocus()
            return
        self.ed_bill_header.setFocus()


# ======================================================= Printing Parameters (PrintMast)
class PrintingParametersTab(QWidget):
    """VB6 frmPrintModule: PrintMast master (Main Setup -> General Setup -> Printing Parameters).

    Schema: PrintMast (Code, ModuleDescription, RestCode, ModType, Site_Code, U_EntDt, U_AE)
    VB6: ModType FOM/POS validated, RestCode from Depart, duplicate check RestCode+ModuleDescription.
    """

    HEADERS = ["Code", "Module Description", "RestCode", "ModType"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.edit_code = None
        self.state = "Idle"
        self._build()
        self.reload()

    def _build(self):
        lay = QVBoxLayout(self)
        lay.setContentsMargins(12, 8, 12, 8)

        form = QGroupBox()
        fl = QFormLayout(form)
        fl.setSpacing(8)
        self.ed_desc = QLineEdit()
        self.ed_desc.setMaxLength(printmast.LIMITS["desc"])
        self.cmb_modtype = QComboBox()
        self.cmb_modtype.addItems(["FOM", "POS"])
        self.cmb_restcode = QComboBox()
        self.lbl_restname = QLabel("")
        self.lbl_restname.setStyleSheet("color:#c00000; font-weight:bold;")
        rc_row = QHBoxLayout()
        rc_row.addWidget(self.cmb_restcode)
        b_dep = QPushButton("…")
        b_dep.setFixedWidth(30)
        b_dep.setToolTip("Depart lookup (VB6 DGRest/DGDepart grid popup)")
        b_dep.clicked.connect(self._open_rest_lookup)
        rc_row.addWidget(b_dep)
        rc_row.addWidget(self.lbl_restname)
        rc_row.addStretch()
        fl.addRow("Module Description", self.ed_desc)
        fl.addRow("Module Type", self.cmb_modtype)
        fl.addRow("RestCode (Department)", rc_row)
        lay.addWidget(form)

        self.tbl = QTableWidget(0, len(self.HEADERS))
        self.tbl.setHorizontalHeaderLabels(self.HEADERS)
        self.tbl.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.itemSelectionChanged.connect(self._pick)
        lay.addWidget(self.tbl, 1)

        self.counter = QLabel("0/0")
        self.lbl_audit = QLabel("")
        self.lbl_audit.setStyleSheet("color:#00008b; font-weight:bold;")
        ar = QHBoxLayout()
        ar.addStretch(); ar.addWidget(self.lbl_audit)
        lay.addLayout(ar)

        # Connect ModType and RestCode combo change
        self.cmb_modtype.currentIndexChanged.connect(self._load_restcodes)
        self.cmb_restcode.currentIndexChanged.connect(self._on_restcode_change)
        self._load_restcodes()

    def _on_restcode_change(self):
        idx = self.cmb_restcode.currentIndex()
        if idx >= 0:
            data = self.cmb_restcode.itemData(idx)
            if data:
                self.lbl_restname.setText(data.get("name", ""))

    def _load_restcodes(self):
        """Load RestCodes based on selected ModType."""
        modtype = self.cmb_modtype.currentText()
        self.cmb_restcode.blockSignals(True)
        self.cmb_restcode.clear()
        try:
            rest_codes = printmast.get_rest_codes(modtype)
            for rc in rest_codes:
                self.cmb_restcode.addItem(f"{rc['code']} - {rc['name']}", rc)
            if rest_codes:
                self.cmb_restcode.setCurrentIndex(0)
                self._on_restcode_change()
        except Exception as e:
            QMessageBox.warning(self, "RestCode", f"Load error: {e}")
        self.cmb_restcode.blockSignals(False)

    def _open_rest_lookup(self):
        """MS-014 (grid bind): VB6 department grid popup -> RestCode combo."""
        try:
            rows = lookup_departments()
        except Exception as e:
            QMessageBox.critical(self, "RestCode", f"Lookup error: {e}")
            return
        code = lookup_pick(self, "RestCode (Department) — lookup", rows)
        if code is None:
            return
        for i in range(self.cmb_restcode.count()):
            data = self.cmb_restcode.itemData(i)
            if data and str(data.get("code") or "").strip() == code:
                self.cmb_restcode.setCurrentIndex(i)
                return
        QMessageBox.warning(
            self, "RestCode",
            f"{code} current ModType ki department list me nahi hai")

    def _pick(self):
        r = self.tbl.currentRow()
        if r < 0:
            return
        code = self.tbl.item(r, 0).text()
        rec = printmast.get(code)
        if not rec:
            return
        self.edit_code = code
        self.ed_desc.setText(rec.get("desc", ""))
        self.cmb_modtype.setCurrentText(rec.get("modtype", "FOM"))
        self._load_restcodes()
        # Set RestCode combo to match
        restcode = rec.get("restcode", "")
        for i in range(self.cmb_restcode.count()):
            data = self.cmb_restcode.itemData(i)
            if data and data.get("code") == restcode:
                self.cmb_restcode.setCurrentIndex(i)
                break
        self.lbl_audit.setText(f"Modified By: {rec.get('u_name', '') or '-'}")

    def reload(self):
        try:
            rows = printmast.list_all()
        except Exception as e:
            QMessageBox.critical(self, "Printing Parameters", f"DB error: {e}")
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            self.tbl.setItem(r, 0, _ro_item(rec.get("code", "")))
            self.tbl.setItem(r, 1, _ro_item(rec.get("desc", "")))
            self.tbl.setItem(r, 2, _ro_item(rec.get("restcode", "")))
            self.tbl.setItem(r, 3, _ro_item(rec.get("modtype", "")))
        self.counter.setText(f"1/{len(rows)}" if rows else "0/0")
        if rows:
            self.tbl.selectRow(0)

    def new(self):
        self.edit_code = None
        self.tbl.clearSelection()
        self.ed_desc.clear()
        self.cmb_modtype.setCurrentText("FOM")
        self.lbl_restname.setText("")
        self.state = "Add"
        self._load_restcodes()
        self.ed_desc.setFocus()

    def edit(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Edit", "Pehle row select karein")
            return
        self.state = "Edit"
        self._pick()
        self.ed_desc.setFocus()

    def save(self):
        desc = self.ed_desc.text().strip()
        if not desc:
            QMessageBox.warning(self, "Save", "Module Description zaroori hai")
            return
        rest_data = self.cmb_restcode.currentData()
        if not rest_data:
            QMessageBox.warning(self, "Save", "RestCode select karo")
            return
        rec = {
            "code": self.edit_code or printmast.next_code(),
            "desc": desc,
            "restcode": rest_data["code"],
            "modtype": self.cmb_modtype.currentText(),
        }
        try:
            if self.edit_code and printmast.exists(self.edit_code):
                printmast.update(self.edit_code, rec)
            else:
                if printmast.exists(rec["code"]):
                    QMessageBox.warning(self, "Save", f"{rec['code']} pehle se maujood hai")
                    return
                printmast.insert(rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_code = None
        self.state = "Idle"
        self.reload()
        QMessageBox.information(self, "Save", "Printing Parameter saved")

    def delete(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        code = self.tbl.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Printing Parameter '{code}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            printmast.delete(code)
        except ValueError as e:
            QMessageBox.warning(self, "Delete", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
            return
        self.reload()
        QMessageBox.information(self, "Delete", "Deleted")


# ============================================================ Printing Setup (PrinterSetup)
class PrintingSetupTab(QWidget):
    """VB6 frmMod_Print: PrinterSetup master (Main Setup -> General Setup -> Printing Setup).

    Two grids: KOT Printing (ModType IN KOT,ORD,TKN) and Bill Printing (others).
    Save: DELETE all then bulk INSERT (transaction).
    """

    KOT_HEADERS = ["ModType", "ModDescription", "ModCode", "Printer", "AutoPrint", "RestCode"]
    BILL_HEADERS = ["ModType", "ModDescription", "ModCode", "Printer", "AutoPrint", "RestCode"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self._build()
        self.reload()

    def _build(self):
        lay = QVBoxLayout(self)
        lay.setContentsMargins(12, 8, 12, 8)

        # KOT Printing section
        kot_box = QGroupBox("KOT Printing (ModType: KOT, ORD, TKN)")
        kot_lay = QVBoxLayout(kot_box)
        self.tbl_kot = QTableWidget(0, len(self.KOT_HEADERS))
        self.tbl_kot.setHorizontalHeaderLabels(self.KOT_HEADERS)
        self.tbl_kot.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
        # self.tbl alias: test_general_setup_tabs expects ps.tbl (browse-only check)
        self.tbl = self.tbl_kot
        self.tbl_kot.setAlternatingRowColors(True)
        self.tbl_kot.horizontalHeader().setStretchLastSection(True)
        self.tbl_kot.cellDoubleClicked.connect(
            lambda r, c: self._enable_cell_edit(self.tbl_kot, r, c))
        kot_lay.addWidget(self.tbl_kot)
        lay.addWidget(kot_box)

        # Bill Printing section
        bill_box = QGroupBox("Bill Printing (Other ModTypes)")
        bill_lay = QVBoxLayout(bill_box)
        self.tbl_bill = QTableWidget(0, len(self.BILL_HEADERS))
        self.tbl_bill.setHorizontalHeaderLabels(self.BILL_HEADERS)
        self.tbl_bill.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
        self.tbl_bill.setAlternatingRowColors(True)
        self.tbl_bill.horizontalHeader().setStretchLastSection(True)
        self.tbl_bill.cellDoubleClicked.connect(
            lambda r, c: self._enable_cell_edit(self.tbl_bill, r, c))
        bill_lay.addWidget(self.tbl_bill)
        lay.addWidget(bill_box)

        # Save/Exit buttons
        btns = QHBoxLayout()
        btns.addStretch()
        self.btn_save = QPushButton("Save & Exit")
        self.btn_save.setStyleSheet(
            "background:#fdfbd3; color:#1a1a1a; font-weight:bold;"
            "padding:8px 22px; border:1px solid #6a6a5a;")
        self.btn_save.clicked.connect(self._save)
        self.btn_exit = QPushButton("Cancel & Exit")
        self.btn_exit.setStyleSheet(
            "background:#d9f0f7; color:#1a1a1a; font-weight:bold;"
            "padding:8px 22px; border:1px solid #6a6a5a;")
        self.btn_exit.clicked.connect(self.reload)
        btns.addWidget(self.btn_save)
        btns.addWidget(self.btn_exit)
        lay.addLayout(btns)

        # Load combo data for inline editing
        self._load_combo_data()

    def _load_combo_data(self):
        """Load PrintMast codes and RestCodes for inline editing."""
        try:
            self._printmast_codes = printersetup.get_printmast_codes()
            self._modtype_map = {}
            for pm in self._printmast_codes:
                mt = pm.get("modtype", "")
                if mt not in self._modtype_map:
                    self._modtype_map[mt] = []
                self._modtype_map[mt].append(pm)
        except Exception:
            self._printmast_codes = []
            self._modtype_map = {}

    def _make_modtype_combo(self, current: str = "") -> QComboBox:
        combo = QComboBox()
        for mt in ["FOM", "POS", "KOT", "ORD", "TKN"]:
            combo.addItem(mt)
        if current:
            idx = combo.findText(current)
            if idx >= 0:
                combo.setCurrentIndex(idx)
        return combo

    def _make_modcode_combo(self, modtype: str, current: str = "") -> QComboBox:
        combo = QComboBox()
        combo.addItem("-- select --", "")
        for pm in self._modtype_map.get(modtype, []):
            combo.addItem(f"{pm['code']} - {pm['desc']}", pm["code"])
        if current:
            idx = combo.findData(current)
            if idx >= 0:
                combo.setCurrentIndex(idx)
        return combo

    def _make_autoprint_combo(self, current: str = "") -> QComboBox:
        combo = QComboBox()
        combo.addItems(["Y", "N"])
        if current:
            idx = combo.findText(current)
            if idx >= 0:
                combo.setCurrentIndex(idx)
        return combo

    def _make_restcode_combo(self, modtype: str, current: str = "") -> QComboBox:
        combo = QComboBox()
        combo.addItem("-- select --", "")
        try:
            rest_codes = printersetup.get_rest_codes(modtype)
            for rc in rest_codes:
                combo.addItem(f"{rc['code']} - {rc['name']}", rc["code"])
        except Exception:
            pass
        if current:
            idx = combo.findData(current)
            if idx >= 0:
                combo.setCurrentIndex(idx)
        return combo

    def _fill_grid(self, tbl: QTableWidget, rows: list[dict]):
        tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            tbl.setItem(r, 0, _ro_item(rec.get("modtype", "")))
            tbl.setItem(r, 1, _ro_item(rec.get("moddesc", "")))
            tbl.setItem(r, 2, _ro_item(rec.get("modcode", "")))
            tbl.setItem(r, 3, _ro_item(rec.get("printer", "")))
            tbl.setItem(r, 4, _ro_item(rec.get("autoprint", "N")))
            tbl.setItem(r, 5, _ro_item(rec.get("restcode", "")))

    def _enable_cell_edit(self, tbl: QTableWidget, row: int, col: int):
        cur_it = tbl.item(row, col)
        cur_text = cur_it.text() if cur_it else ""
        if col == 0:
            combo = self._make_modtype_combo(cur_text)
            def on_mt(idx):
                mt = combo.currentText()
                tbl.setItem(row, 0, _ro_item(mt))
                self._load_combo_data()
            combo.currentIndexChanged.connect(on_mt)
            tbl.setCellWidget(row, 0, combo)
        elif col == 1:
            mt = tbl.item(row, 0).text() if tbl.item(row, 0) else "FOM"
            combo = self._make_modcode_combo(mt, cur_text)
            def on_md(idx):
                code = combo.currentData() or ""
                desc = combo.currentText().split(" - ", 1)[-1] if " - " in combo.currentText() else combo.currentText()
                tbl.setItem(row, 1, _ro_item(desc))
                tbl.setItem(row, 2, _ro_item(code))
            combo.currentIndexChanged.connect(on_md)
            tbl.setCellWidget(row, 1, combo)
        elif col in (2, 3):
            it = tbl.item(row, col)
            if it:
                it.setFlags(it.flags() | Qt.ItemFlag.ItemIsEditable)
                tbl.editItem(it)
        elif col == 4:
            combo = self._make_autoprint_combo(cur_text)
            combo.currentIndexChanged.connect(lambda idx: tbl.setItem(row, 4, _ro_item(combo.currentText())))
            tbl.setCellWidget(row, 4, combo)
        elif col == 5:
            mt = tbl.item(row, 0).text() if tbl.item(row, 0) else "FOM"
            combo = self._make_restcode_combo(mt, cur_text)
            combo.currentIndexChanged.connect(lambda idx: tbl.setItem(row, 5, _ro_item(combo.currentData() or combo.currentText())))
            tbl.setCellWidget(row, 5, combo)

    def _collect_grid(self, tbl: QTableWidget) -> list[dict]:
        """Collect editable grid data."""
        result = []
        for r in range(tbl.rowCount()):
            rec = {}
            for col, key in enumerate(["modtype", "moddesc", "modcode", "printer", "autoprint", "restcode"]):
                w = tbl.cellWidget(r, col)
                if isinstance(w, QComboBox):
                    if key in ("modcode", "restcode"):
                        val = w.currentData() or w.currentText()
                    elif key == "moddesc":
                        txt = w.currentText()
                        val = txt.split(" - ", 1)[-1] if " - " in txt else txt
                    else:
                        val = w.currentText()
                elif isinstance(w, QLineEdit):
                    val = w.text()
                else:
                    it = tbl.item(r, col)
                    val = it.text() if it else ""
                rec[key] = (val or "").strip()
            if rec.get("modcode") or rec.get("moddesc") or rec.get("printer"):
                result.append(rec)
        return result

    def reload(self):
        try:
            kot_rows = printersetup.list_by_kot()
            bill_rows = printersetup.list_by_bill()
        except Exception as e:
            QMessageBox.critical(self, "Printing Setup", f"Load error: {e}")
            return
        self._fill_grid(self.tbl_kot, kot_rows)
        self._fill_grid(self.tbl_bill, bill_rows)
        # Add one blank row at end for new entries
        self.tbl_kot.insertRow(self.tbl_kot.rowCount())
        self.tbl_bill.insertRow(self.tbl_bill.rowCount())

    def _save(self):
        kot_rows = self._collect_grid(self.tbl_kot)
        bill_rows = self._collect_grid(self.tbl_bill)
        if not kot_rows and not bill_rows:
            QMessageBox.information(self, "Save", "Koi print setup nahi hai")
            return
        try:
            printersetup.save_all(kot_rows, bill_rows)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        QMessageBox.information(self, "Save",
                                f"KOT: {len(kot_rows)} rows, Bill: {len(bill_rows)} rows saved")
        self.reload()

    def save(self):
        self._save()

    def new(self):
        tbl = self.tbl_kot if self.tbl_kot.hasFocus() else self.tbl_bill
        r = tbl.rowCount()
        tbl.insertRow(r)
        for c in range(len(self.KOT_HEADERS)):
            tbl.setItem(r, c, _ro_item(""))
        self._enable_cell_edit(tbl, r, 0)

    def edit(self):
        tbl = self.tbl_kot if self.tbl_kot.hasFocus() else self.tbl_bill
        r = tbl.currentRow()
        if r >= 0:
            self._enable_cell_edit(tbl, r, 3)

    def delete(self):
        tbl = self.tbl_kot if self.tbl_kot.hasFocus() else self.tbl_bill
        r = tbl.currentRow()
        if r >= 0:
            tbl.removeRow(r)


# ================================================================ Main window
class GeneralSetupWindow(QDialog):
    """VB6 FDGENMAS hybrid: top tab strip + toolbar + tab pages."""

    TABS = [
        ("Tax Master", "tax"),
        ("Tax Structure", "stru"),
        ("Payment Type", "pay"),
        ("Parameter", "param"),
        ("Printing Parameters", "pp"),
        ("Printing Setup", "ps"),
    ]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle(
            "Moon and Mars Resorts { 2026-27 } - [Main Setup > "
            "General Setup]")
        # Screen-fit (VB6 maximizes to desktop; 1440x860 screen se bahar
        # jaata tha — 1280x720 jaisi small screens par dock/status cut)
        try:
            from PyQt6.QtWidgets import QApplication as _QApp
            scr = _QApp.primaryScreen().availableSize()
            self.resize(min(1440, scr.width() - 20),
                        min(860, scr.height() - 60))
        except Exception:
            self.resize(1280, 700)
        # BUG-FIX: _active_key must exist before _build() calls _wire_toolbar
        self._active_key = "tax"
        self._build()
        self._show_tab("tax")

    def _build(self):
        root = QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        root.setSpacing(0)

        # ---- top tab strip ----
        strip = QWidget()
        strip.setObjectName("generalSetupTopTabs")
        strip.setStyleSheet("background: white;")
        sl = QHBoxLayout(strip)
        sl.setContentsMargins(0, 0, 0, 0)
        sl.setSpacing(2)
        self._tab_btns = {}
        for label, key in self.TABS:
            display_label = "Printing\nParameters" if key == "pp" else label
            b = QPushButton(display_label)
            b.setObjectName("vbGenTab")
            b.setFixedSize(155, 45)
            b.setCheckable(True)
            b.setStyleSheet(VB_TAB_STYLES)
            b.clicked.connect(lambda _=False, k=key: self._show_tab(k))
            sl.addWidget(b)
            self._tab_btns[key] = b
        sl.addStretch()
        root.addWidget(strip)
        root.addSpacing(44)

        # ---- body: left menu strip + center pages + right dock ----
        body = QHBoxLayout()
        body.setContentsMargins(0, 0, 0, 0)
        body.setSpacing(0)

        left = self._left_menu()
        body.addWidget(left)

        center = QWidget()
        cl = QVBoxLayout(center)
        cl.setContentsMargins(0, 0, 0, 0)
        cl.setSpacing(0)

        self.toolbar_holder = QWidget()
        tl = QVBoxLayout(self.toolbar_holder)
        tl.setContentsMargins(0, 0, 0, 0)
        cl.addWidget(self.toolbar_holder)

        self.title_strip = _title_strip("Main Setup > General Setup")
        cl.addWidget(self.title_strip)

        self.pages = QScrollArea()
        self.pages.setWidgetResizable(True)
        self.pages.setFrameShape(QFrame.Shape.NoFrame)
        self._pages_container = QWidget()
        self._pages_container.setObjectName("generalSetupPages")
        self._pages_container.setStyleSheet("background:#c0c0c0;")
        self._pages_lay = QVBoxLayout(self._pages_container)
        self._pages_lay.setContentsMargins(0, 0, 0, 0)
        self.pages.setWidget(self._pages_container)
        cl.addWidget(self.pages, 1)

        body.addWidget(center, 1)

        self.dock_holder = QWidget()
        dl = QVBoxLayout(self.dock_holder)
        dl.setContentsMargins(0, 0, 0, 0)
        dl.addWidget(_world_clock_dock(self._reload_current,
                           self._exit))
        body.addWidget(self.dock_holder)
        root.addLayout(body, 1)

        # ---- status bar (VB6 bottom strip) ----
        # BUG-FIX: enviro module has no SITE_CODE attr; use core.db.get_site_code()
        try:
            from HMS_py.core.db import get_site_code as _get_site
            _site = _get_site()
        except Exception:
            _site = "KK"
        status = QLabel(
            f"  SA    Property Site : {_site}"
            "    CAPS   NUM   Hide Left Menu   Hide Right Menu   Full Screen")
        status.setStyleSheet(
            "background:#e8e8e8; color:#333; padding:4px;"
            "border-top:1px solid #aaa; font-size:11px;")
        root.addWidget(status)

        # ---- tab pages ----
        self.tab_tax = TaxMasterTab()
        self.tab_stru = TaxStructureTab()
        self.tab_pay = PaymentTypeTab()
        self.tab_param = ParameterTab()
        self.tab_pp = PrintingParametersTab()
        self.tab_ps = PrintingSetupTab()
        self._page_widgets = {
            "tax": self.tab_tax, "stru": self.tab_stru,
            "pay": self.tab_pay, "param": self.tab_param,
            "pp": self.tab_pp, "ps": self.tab_ps,
        }
        for key, w in self._page_widgets.items():
            self._pages_lay.addWidget(w)
            w.hide()

        # keyboard
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._new)
        QShortcut(QKeySequence("Ctrl+E"), self, activated=self._edit)
        QShortcut(QKeySequence("Ctrl+D"), self, activated=self._delete)
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save)
        QShortcut(QKeySequence("F5"), self, activated=self._reload_current)
        QShortcut(QKeySequence("Escape"), self, activated=self._exit)
        # MS-030 VB6 keys: F4=Find, F6=First, F7=Prev, F8=Next, F9=Last
        QShortcut(QKeySequence("F4"), self, activated=self._find)
        QShortcut(QKeySequence("F6"), self, activated=self._first)
        QShortcut(QKeySequence("F7"), self, activated=self._prev)
        QShortcut(QKeySequence("F8"), self, activated=self._next)
        QShortcut(QKeySequence("F9"), self, activated=self._last)

    def _left_menu(self) -> QWidget:
        """VB6 left module strip (Finance..EXTRAs)."""
        w = QWidget()
        w.setObjectName("generalSetupLeftMenu")
        w.setFixedWidth(122)
        w.setStyleSheet("background: qlineargradient(x1:0,y1:0,x2:1,y2:0,"
                        "stop:0 #0a3a34, stop:1 #0a5c54);")
        lay = QVBoxLayout(w)
        lay.setContentsMargins(0, 10, 0, 10)
        lay.setSpacing(2)
        for name, active in (
            ("Finance", False), ("Main Setup", True), ("Reservation", False),
            ("Front Office", False), ("House Keeping", False),
            ("Inventory", False), ("Point Of Sale", False),
            ("Banquet", False), ("Night Audit", False),
            ("HR/Payroll", False), ("EXTRAs", False),
        ):
            b = QPushButton(name)
            b.setFlat(True)
            st = ("background:#0e7a6f; color:#ffe95c;" if active else
                  "background:transparent; color:white;")
            b.setStyleSheet(st + "font-weight:bold; font-style:italic;"
                            "text-align:left; padding:10px 12px;"
                            "font-size:13px; border:none;")
            lay.addWidget(b)
        lay.addStretch()
        inbox = QLabel("In Box")
        inbox.setAlignment(Qt.AlignmentFlag.AlignCenter)
        inbox.setStyleSheet("background:#5a5a4a; color:white; padding:6px;")
        lay.addWidget(inbox)
        ps = QLabel("Property Status")
        ps.setAlignment(Qt.AlignmentFlag.AlignCenter)
        ps.setStyleSheet("background:#8b0000; color:white; padding:6px;"
                         "font-weight:bold;")
        lay.addWidget(ps)
        return w

    # ---- toolbar (per active tab) ----
    def _wire_toolbar(self):
        # BUG-FIX: safe layout clear — layout() can have None items
        lay = self.toolbar_holder.layout()
        if lay is not None:
            while lay.count():
                it = lay.takeAt(0)
                if it and it.widget():
                    it.widget().deleteLater()
        else:
            from PyQt6.QtWidgets import QVBoxLayout as _QVL
            lay = _QVL(self.toolbar_holder)
            lay.setContentsMargins(0, 0, 0, 0)
        w = self._current()
        counter = getattr(w, "counter", None) or QLabel("")
        bar = _toolbar_row(
            self._new,
            self._edit,
            self._delete,
            self._save,
            self._cancel,
            self._reload_current,
            self._exit,
            counter,
            self._first,
            self._prev,
            self._next,
            self._last,
            self._find)
        self.toolbar_holder.layout().addWidget(bar)

    def _current(self) -> QWidget:
        key = self._active_key
        return self._page_widgets[key]

    def _show_tab(self, key: str):
        self._active_key = key
        for k, b in self._tab_btns.items():
            b.setChecked(k == key)
        for k, w in self._page_widgets.items():
            w.setVisible(k == key)
        label = {k: lbl for lbl, k in self.TABS}[key]
        self.title_strip.setText(f"Main Setup > General Setup > {label}")
        self._wire_toolbar()

    def _reload_current(self):
        w = self._current()
        if hasattr(w, "reload"):
            w.reload()

    # ---- VB6 TopCtrl browse + Find (MS-012 / MS-030 keys) ----
    def _first(self):
        self._nav("first")

    def _prev(self):
        self._nav("prev")

    def _next(self):
        self._nav("next")

    def _last(self):
        self._nav("last")

    def _nav(self, how: str):
        """VB6 Recordset MoveFirst/MovePrevious/MoveNext/MoveLast.

        Page ka apna nav_* ho to wahi (ParameterTab Round Off grid),
        warna page ke QTableWidget par row move + counter update.
        """
        w = self._current()
        fn = getattr(w, {"first": "nav_first", "prev": "nav_prev",
                         "next": "nav_next", "last": "nav_last"}[how], None)
        if callable(fn):
            fn()
            if not getattr(w, "nav_owns_counter", False):
                self._sync_counter(w, getattr(w, "tbl", None))
            return
        tbl = getattr(w, "tbl", None)
        if tbl is None or tbl.rowCount() == 0:
            return                      # VB6: button disabled state
        row = _selected_row(tbl)
        if how == "first":
            row = 0
        elif how == "prev":
            row = row - 1 if row > 0 else 0
        elif how == "next":
            row = row + 1 if row >= 0 else 0
        else:
            row = tbl.rowCount() - 1
        _select_table_row(tbl, row)
        self._sync_counter(w, tbl)

    def _sync_counter(self, w, tbl):
        counter = getattr(w, "counter", None)
        if counter is None or tbl is None:
            return
        n = tbl.rowCount()
        r = max(_selected_row(tbl), 0)
        counter.setText(f"{r + 1}/{n}" if n else "0/0")

    def _find(self):
        """VB6 Find (F4): page ka find_record, warna tbl par text search."""
        w = self._current()
        fn = getattr(w, "find_record", None)
        if callable(fn):
            fn()
            return
        tbl = getattr(w, "tbl", None)
        if tbl is None or tbl.rowCount() == 0:
            return
        text, ok = QInputDialog.getText(self, "Find", "Search:")
        if not ok or not text.strip():
            return
        needle = text.strip().lower()
        start = max(_selected_row(tbl), 0)
        order = list(range(start, tbl.rowCount())) + list(range(0, start))
        for r in order:
            for c in range(tbl.columnCount()):
                it = tbl.item(r, c)
                if it and needle in (it.text() or "").lower():
                    _select_table_row(tbl, r)
                    self._sync_counter(w, tbl)
                    return
        QMessageBox.information(self, "Find", f"'{text}' nahi mila")

    def _new(self):
        w = self._current()
        if hasattr(w, "new"):
            w.new()

    def _edit(self):
        w = self._current()
        if hasattr(w, "edit"):
            w.edit()
        else:
            if getattr(w, "edit_code", None):
                # If tab handles pick-to-edit implicitly, just focus
                if hasattr(w, "ed_name"):
                    w.ed_name.setFocus()
            else:
                from PyQt6.QtWidgets import QMessageBox
                QMessageBox.information(self, "Edit", "Pehle list me se record select karein")

    def _save(self):
        w = self._current()
        if hasattr(w, "save"):
            w.save()

    def _cancel(self):
        w = self._current()
        cancel = getattr(w, "cancel", None)
        if callable(cancel):
            cancel()
            return
        if hasattr(w, "state"):
            w.state = "Idle"
        if hasattr(w, "structure_row"):
            w.structure_row.show()
            w.ed_new_name.hide()
        if hasattr(w, "reload"):
            w.reload()

    def _delete(self):
        w = self._current()
        if hasattr(w, "delete"):
            w.delete()

    def _exit(self):
        self.reject()

    # VB6-style aliases (tests/manual smoke)
    def open_tax_master(self):    self._show_tab("tax")
    def open_tax_structure(self): self._show_tab("stru")
    def open_payment_type(self):  self._show_tab("pay")
    def open_parameter(self):     self._show_tab("param")
    def open_printing_parameters(self): self._show_tab("pp")
    def open_printing_setup(self): self._show_tab("ps")


def open_general_setup(parent=None, user: str = "SA"):
    GeneralSetupWindow(parent, user=user).exec()


def main() -> int:
    app = QApplication(sys.argv)
    w = GeneralSetupWindow()
    w.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
