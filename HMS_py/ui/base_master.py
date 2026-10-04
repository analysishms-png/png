"""Generic master form - TopCtrl state-machine (Idle/Add/Edit) ke saath.

Naya master banane ke liye sirf ek MasterConfig dena hai:
    cfg = MasterConfig(title=..., fields=[Field(...)], api=<core module>,
                       delete_guard=lambda code: ...)
UI + validation + CRUD wiring automatic. PlanMaster iska special-case hai;
Sundry/Narr direct config se bante hain (P2).
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from dataclasses import dataclass, field as dc_field
from datetime import date as _date, datetime as _datetime

from PyQt6.QtCore import QStringListModel, Qt
from PyQt6.QtGui import QColor, QKeySequence, QShortcut
from PyQt6.QtWidgets import (QCompleter, QDialog, QDialogButtonBox,
                             QFormLayout, QFrame, QGridLayout, QHBoxLayout,
                             QLabel, QLineEdit, QMessageBox, QPushButton,
                             QScrollArea, QTableWidget, QTableWidgetItem,
                             QVBoxLayout, QAbstractItemView, QHeaderView,
                             QGroupBox, QWidget)

from HMS_py.ui import theme as _theme
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


@dataclass
class Field:
    name: str            # dict key in core module records
    label: str
    max_len: int = 0
    required: bool = False
    default: str = ""
    placeholder: str = ""
    # VB6 FrmTaxMast ka red side-note: LblLedgerAc index 7/8 = '(Purchase)'
    note: str = ""
    # VB6 control Visible=0 (FrmTaxMast Txt(3) RoundOff - form par dikhta nahi,
    # value phir bhi save hoti hai)
    hidden: bool = False
    # VB6 DataGrid lookup: fn() -> [{'code':..,'name':..}] ; field par Naam
    # dikhta hai, record dict me Code jaata hai (VB6 .Tag pattern)
    lookup: object = None
    # FK value ke saath jo Naam grid/lookup me dikhana hai (join alias)
    display_key: str = ""


@dataclass
class MasterConfig:
    title: str
    columns: list       # grid columns: (header, dict-key)
    fields: list        # editable Field list
    api: object         # core module: list_all/get/exists/insert/update/delete
    pk_key: str = "code"
    delete_guard: object = None   # fn(code) -> error-str | None
    sample_prefix: str = "PYT"
    generated_pk: bool = False
    print_fn: object = None       # fn(form) - optional Print Preview (VB6 TopCtrl Print)
    # --- VB6 FrmTaxMast confirmations / behaviour (off = legacy python UX) ---
    confirm_save: bool = False    # MsgBox "Save Record ?" title "Save Data"
    confirm_cancel: bool = False  # MsgBox "Cancel ?" title "Terminate Process"
    confirm_delete: bool = False  # MsgBox "Delete Record ?" title "Confirmation"
    loop_add: bool = False        # Add-save ke baad wapas Add mode (VB6)
    vb6_status: bool = False      # System/User Defined + Created/Modified strip
    field_validator: object = None  # fn(name, value, edit_pk) -> err-str | None


class LookupEdit(QWidget):
    """VB6 lookup textbox: field par **Naam**, code andar `.Tag` me.

    '...' button ya F4 = VB6 DataGrid picker (DGLedgerAc / DGSundry rows).
    Typing par completer; tab-out par `resolve()` Naam -> Code.
    """

    def __init__(self, rows_fn, parent=None):
        super().__init__(parent)
        self._rows_fn = rows_fn
        self._rows = None            # lazy (first open/focus par load)
        self._code = ""
        self._name = ""
        lay = QHBoxLayout(self)
        lay.setContentsMargins(0, 0, 0, 0)
        lay.setSpacing(4)
        self.ed = QLineEdit()
        lay.addWidget(self.ed, 1)
        self.btn = QPushButton("...")
        self.btn.setFixedWidth(30)
        self.btn.setToolTip("List se choose karein (VB6 lookup grid, F4)")
        self.btn.setFocusPolicy(Qt.FocusPolicy.ClickFocus)
        lay.addWidget(self.btn)
        self.btn.clicked.connect(self._pick)
        self._model = QStringListModel([])
        self._completer = QCompleter(self._model, self.ed)
        self._completer.setCaseSensitivity(Qt.CaseSensitivity.CaseInsensitive)
        self._completer.setFilterMode(Qt.MatchFlag.MatchContains)
        self._completer.setCompletionMode(
            QCompleter.CompletionMode.PopupCompletion)
        self._completer.setMaxVisibleItems(15)
        self.ed.setCompleter(self._completer)
        self._completer.activated.connect(self._on_complete)
        QShortcut(QKeySequence("F4"), self.ed, activated=self._pick)
        QShortcut(QKeySequence("F2"), self.ed, activated=self._pick)

    # ---------------- row source ----------------
    def rows(self) -> list[dict]:
        if self._rows is None:
            try:
                self._rows = list(self._rows_fn() or [])
            except Exception:
                self._rows = []
        return self._rows

    def set_rows(self, rows: list[dict]):
        self._rows = list(rows or [])
        self._model.setStringList([r.get("name", "") for r in self._rows])

    # ---------------- value handling ----------------
    def set_value(self, code: str, name: str = ""):
        self._code = code or ""
        self._name = (name or "").strip()
        # VB6: grid se aaya hua record hamesha Naam dikhata hai
        self.ed.setText(self._name or self._code)

    def clear(self):
        self._code = ""
        self._name = ""
        self.ed.clear()

    def text(self) -> str:
        return self.ed.text()

    def resolve(self) -> str:
        """Tab-out / save par text -> code (VB6 Txt_Validate ka Kaam)."""
        txt = self.ed.text().strip()
        if not txt:
            self._code = ""
            self._name = ""
            return ""
        if self._name and txt == self._name and self._code:
            return self._code
        rows = self.rows()
        for r in rows:                       # 1. code likha hai?
            if str(r.get("code", "")).strip().lower() == txt.lower():
                self._code = str(r.get("code", "")).strip()
                self._name = str(r.get("name", "")).strip()
                return self._code
        for r in rows:                       # 2. Naam likha hai -> code
            if str(r.get("name", "")).strip().lower() == txt.lower():
                self._code = str(r.get("code", "")).strip()
                self._name = str(r.get("name", "")).strip()
                self.ed.setText(self._name)
                return self._code
        # 3. row source me nahi - jo likha wahi code (legacy behaviour)
        self._code = txt
        self._name = txt
        return txt

    # ---------------- pick dialog ----------------
    def _on_complete(self, text):
        self.resolve()

    def _pick(self):
        rows = self.rows()
        if not rows:
            QMessageBox.information(self, self.windowTitle() or "Lookup",
                                    "Records Not Present For Searching.")
            return
        dlg = LookupPickDialog(rows, self._code or self._name, self)
        if dlg.exec() == QDialog.DialogCode.Accepted and dlg.picked:
            self.set_value(dlg.picked.get("code", ""), dlg.picked.get("name", ""))


class LookupPickDialog(QDialog):
    """VB6 DataGrid picker (FrmTaxMast DGHelp/DGLedgerAc/DGSundry)."""

    def __init__(self, rows, selected_code="", parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopMasterForm")
        self.setWindowTitle("Select Record")
        self.picked = None
        self.resize(560, 440)
        v = QVBoxLayout(self)
        self.edFind = QLineEdit()
        self.edFind.setPlaceholderText("Search...")
        self.edFind.setMinimumHeight(30)
        self.edFind.textChanged.connect(self._filter)
        v.addWidget(self.edFind)
        self.tbl = QTableWidget(0, 2)
        self.tbl.setHorizontalHeaderLabels(["Code", "Name"])
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.verticalHeader().setVisible(False)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.cellDoubleClicked.connect(lambda *_: self._accept())
        v.addWidget(self.tbl, 1)
        btns = QDialogButtonBox(QDialogButtonBox.StandardButton.Ok
                                | QDialogButtonBox.StandardButton.Cancel)
        btns.accepted.connect(self._accept)
        btns.rejected.connect(self.reject)
        v.addWidget(btns)
        self._rows = list(rows)
        self._view = list(rows)
        self._fill(self._rows)
        target = next((i for i, r in enumerate(self._rows)
                       if str(r.get("code", "")) == selected_code), -1)
        if target < 0 and self._rows:
            target = 0
        if target >= 0:
            self.tbl.selectRow(target)

    def _fill(self, rows):
        self._view = list(rows)
        self.tbl.setRowCount(len(rows))
        for r, row in enumerate(rows):
            for c, key in enumerate(("code", "name")):
                it = QTableWidgetItem(str(row.get(key, "")))
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                self.tbl.setItem(r, c, it)

    def _filter(self, text: str):
        t = (text or "").strip().lower()
        self._fill([r for r in self._rows
                    if not t
                    or t in str(r.get("name", "")).lower()
                    or t in str(r.get("code", "")).lower()])
        if self._view:
            self.tbl.selectRow(0)

    def _accept(self):
        r = self.tbl.currentRow()
        if 0 <= r < len(self._view):
            self.picked = self._view[r]
        self.accept()


class BaseMasterForm(QDialog):
    def __init__(self, cfg: MasterConfig, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopMasterForm")
        self.cfg = cfg
        self.setWindowTitle(cfg.title)
        self.setMinimumSize(880, 620)
        self.resize(940, 680)
        self.state = "Idle"
        self._can_add = True
        self._can_edit = True
        self._can_delete = True
        self.edit_pk = None
        self._rec_from_ui = None      # fn: ui -> record dict (set by subclass)
        self._rec_to_ui = None        # fn: record dict -> ui

        p = _theme.palette()
        root = QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        root.setSpacing(0)

        # VB6-hybrid chrome: blue gradient header + cream title
        # (VB6 child forms: '<Module> > <Group> > <Screen>' caption strip)
        hdr = QLabel(f"  {cfg.title}")
        hdr.setProperty("vbHeader", True)
        hdr.setFixedHeight(40)
        root.addWidget(hdr)

        body = QFrame()
        body.setProperty("vbCard", True)
        body_lay = QVBoxLayout(body)
        body_lay.setContentsMargins(16, 12, 16, 12)
        body_lay.setSpacing(10)
        root.addWidget(body, 1)

        # --- Table section ---
        tbl_grp = QGroupBox(f"{cfg.title} List")
        tbl_lay = QVBoxLayout(tbl_grp)

        # Search bar
        self._search = QLineEdit()
        self._search.setPlaceholderText("Search...")
        self._search.setMinimumHeight(32)
        self._search.setStyleSheet(
            f"QLineEdit {{ padding: 6px 10px; border: 1px solid {p['border']}; "
            f"border-radius: 6px; font-size: 13px; color: {p['text']}; "
            f"background: {p['glass_tint']}; }}"
            f"QLineEdit:focus {{ border: 2px solid {p['accent']}; }}"
        )
        self._search.textChanged.connect(self._filter_table)
        tbl_lay.addWidget(self._search)

        # --- VB6 TopCtrl browse strip: Find + First/Prev/Next/Last + Browse i/n ---
        nav_row = QHBoxLayout()
        nav_row.setSpacing(6)
        self.btnFind = QPushButton("Find (Ctrl+F)")
        self.btnFind.setToolTip("Code ya naam se record dhoondein (VB6 Find)")
        self.btnFind.setMinimumHeight(28)
        self.btnFirst = QPushButton("|<")
        self.btnFirst.setToolTip("First record")
        self.btnPrev = QPushButton("<")
        self.btnPrev.setToolTip("Previous record")
        self.btnNext = QPushButton(">")
        self.btnNext.setToolTip("Next record")
        self.btnLast = QPushButton(">|")
        self.btnLast.setToolTip("Last record")
        for b in (self.btnFirst, self.btnPrev, self.btnNext, self.btnLast):
            b.setFixedWidth(34)
            b.setMinimumHeight(28)
        self.lblBrowse = QLabel("Browse 0/0")
        self.lblBrowse.setObjectName("desktopBrowseLabel")
        nav_row.addWidget(self.btnFind)
        nav_row.addStretch()
        nav_row.addWidget(self.btnFirst)
        nav_row.addWidget(self.btnPrev)
        nav_row.addWidget(self.btnNext)
        nav_row.addWidget(self.btnLast)
        nav_row.addSpacing(10)
        nav_row.addWidget(self.lblBrowse)
        tbl_lay.addLayout(nav_row)

        self.tbl = QTableWidget(0, len(cfg.columns))
        self.tbl.setHorizontalHeaderLabels([c[0] for c in cfg.columns])
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.verticalHeader().setVisible(False)
        self.tbl.setShowGrid(True)
        self.tbl.setSortingEnabled(True)
        self.tbl.setMinimumHeight(130)
        self.tbl.setMaximumHeight(210)
        hdr = self.tbl.horizontalHeader()
        hdr.setStretchLastSection(True)
        for i in range(len(cfg.columns) - 1):
            hdr.setSectionResizeMode(i, QHeaderView.ResizeMode.ResizeToContents)
        self.tbl.cellDoubleClicked.connect(lambda *_: self._on_edit())
        self.tbl.itemSelectionChanged.connect(self._on_selection_changed)
        tbl_lay.addWidget(self.tbl)
        body_lay.addWidget(tbl_grp)

        # --- Form section (Record Details) ---
        form_grp = QGroupBox("Record Details")
        self.edits = {}
        self._lookups = {}
        self._field_labels = {}
        # VB6 me kuch textbox par Visible=0 hota hai (FrmTaxMast Txt(3)
        # RoundOff) - value save hoti rehti hai, layout me nahi dikhta.
        visible = [f for f in cfg.fields if not f.hidden]
        self._visible_fields = visible
        for f in cfg.fields:
            # hidden field ka editor bhi banao (record_from/to_ui ko chahiye),
            # sirf layout me mat dalo. form_grp child = layout ke bahar -> hamesha hidden.
            if f.hidden:
                self._build_field(f, p, parent=form_grp)

        if len(cfg.fields) > 5:
            # 2-column grid layout for masters with many fields (prevents vertical label crushing)
            grid_lay = QGridLayout(form_grp)
            grid_lay.setContentsMargins(16, 14, 16, 14)
            grid_lay.setVerticalSpacing(10)
            grid_lay.setHorizontalSpacing(18)
            # BUG-FIX: label cols (0, 2) fixed width; field cols (1, 3) stretch to fill
            grid_lay.setColumnMinimumWidth(0, 160)
            grid_lay.setColumnMinimumWidth(2, 160)
            grid_lay.setColumnStretch(1, 1)
            grid_lay.setColumnStretch(3, 1)
            half = (len(visible) + 1) // 2
            for i, f in enumerate(visible):
                row = i % half
                col = 0 if i < half else 2
                e = self._build_field(f, p)
                lbl = self._build_label(f, p, min_w=160)
                grid_lay.addWidget(lbl, row, col, Qt.AlignmentFlag.AlignRight | Qt.AlignmentFlag.AlignVCenter)
                grid_lay.addWidget(e, row, col + 1)
        else:
            form_lay = QFormLayout(form_grp)
            form_lay.setSpacing(10)
            form_lay.setContentsMargins(16, 14, 16, 14)
            for f in visible:
                e = self._build_field(f, p)
                lbl = self._build_label(f, p)
                form_lay.addRow(lbl, e)

        form_scroll = QScrollArea()
        form_scroll.setWidgetResizable(True)
        form_scroll.setFrameShape(QFrame.Shape.NoFrame)
        form_scroll.setWidget(form_grp)
        body_lay.addWidget(form_scroll, stretch=1)

        # --- VB6 audit strip (FrmTaxMast LblSysYN / LblUser / LblLDt) ---
        self.lblSysYN = None
        self.lblUser = None
        self.lblLDt = None
        if cfg.vb6_status:
            st_row = QHBoxLayout()
            st_row.setSpacing(20)
            st_row.setContentsMargins(4, 0, 4, 0)
            self.lblSysYN = QLabel("")
            self.lblUser = QLabel("")
            self.lblLDt = QLabel("")
            for w in (self.lblSysYN, self.lblUser, self.lblLDt):
                w.setMinimumHeight(20)
                w.setStyleSheet(
                    "color:#b00000; font-weight:bold; font-size:12px; "
                    "background:transparent;")
                st_row.addWidget(w)
            st_row.addStretch(1)
            body_lay.addLayout(st_row)
            self._clear_status()

        # --- Tab order ---
        prev_widget = None
        for f in visible:
            w = self.edits[f.name]
            if prev_widget is not None:
                QWidget.setTabOrder(prev_widget, w)
            prev_widget = w

        # --- Button bar ---
        btn_grp = QGroupBox()
        btn_lay = QHBoxLayout(btn_grp)
        btn_lay.setContentsMargins(4, 6, 4, 6)
        btn_lay.setSpacing(10)

        self.btnNew = QPushButton("New (Ctrl+N)")
        self.btnNew.setProperty("accent", True)
        self.btnNew.setMinimumHeight(34)
        self.btnNew.setMinimumWidth(95)
        self.btnNew.setToolTip("Create a new record (Ctrl+N)")

        self.btnEdit = QPushButton("Edit (Ctrl+E)")
        self.btnEdit.setMinimumHeight(34)
        self.btnEdit.setMinimumWidth(95)
        self.btnEdit.setToolTip("Edit selected record (Ctrl+E)")

        self.btnDelete = QPushButton("Delete (Ctrl+D)")
        self.btnDelete.setProperty("role", "danger")
        self.btnDelete.setMinimumHeight(34)
        self.btnDelete.setMinimumWidth(100)
        self.btnDelete.setToolTip("Delete selected record (Ctrl+D)")

        self.btnSave = QPushButton("Save (Ctrl+S)")
        self.btnSave.setProperty("accent", True)
        self.btnSave.setMinimumHeight(34)
        self.btnSave.setMinimumWidth(95)
        self.btnSave.setToolTip("Save changes (Ctrl+S)")

        self.btnCancel = QPushButton("Cancel (Esc)")
        self.btnCancel.setMinimumHeight(34)
        self.btnCancel.setMinimumWidth(95)
        self.btnCancel.setToolTip("Cancel current operation (Esc)")

        # VB6 TopCtrl ka Print button - sirf tab dikhta hai jab config
        # print_fn de (jaise FrmTaxMast ka TaxMast.RPT print).
        self.btnPrint = QPushButton("Print Preview")
        self.btnPrint.setMinimumHeight(34)
        self.btnPrint.setMinimumWidth(105)
        self.btnPrint.setToolTip("Print preview of this master list")
        self.btnPrint.setVisible(bool(cfg.print_fn))

        self.btnExit = QPushButton("Exit")
        self.btnExit.setMinimumHeight(34)
        self.btnExit.setMinimumWidth(75)
        self.btnExit.setToolTip("Close this form")

        for b in (self.btnNew, self.btnEdit, self.btnDelete,
                  self.btnSave, self.btnCancel, self.btnPrint, self.btnExit):
            btn_lay.addWidget(b)
        # Browse/Find strip ko bhi same desktop action paint chahiye
        for b in (self.btnFind, self.btnFirst, self.btnPrev,
                  self.btnNext, self.btnLast):
            mark_desktop_action(b, "default")
        for button, role in (
            (self.btnNew, "primary"),
            (self.btnEdit, "default"),
            (self.btnDelete, "danger"),
            (self.btnSave, "primary"),
            (self.btnCancel, "default"),
            (self.btnPrint, "default"),
            (self.btnExit, "default"),
        ):
            mark_desktop_action(button, role)
        body_lay.addWidget(btn_grp)

        # --- Status bar ---
        self.lblState = QLabel("Ready")
        self.lblState.setObjectName("desktopStateLabel")
        self.lblState.setStyleSheet(
            f"font-size: 11px; color: {p['text_dim']}; padding: 4px 0; "
            f"border-top: 1px solid {p['border']};"
        )
        body_lay.addWidget(self.lblState)

        # --- Signals ---
        self.btnNew.clicked.connect(self._on_new)
        self.btnEdit.clicked.connect(self._on_edit)
        self.btnDelete.clicked.connect(self._on_delete)
        self.btnSave.clicked.connect(self._on_save)
        self.btnCancel.clicked.connect(self._on_cancel)
        self.btnPrint.clicked.connect(self._on_print)
        self.btnExit.clicked.connect(self.reject)
        self.btnFind.clicked.connect(self._on_find)
        self.btnFirst.clicked.connect(lambda: self._nav_edge("first"))
        self.btnPrev.clicked.connect(lambda: self._nav_step(-1))
        self.btnNext.clicked.connect(lambda: self._nav_step(1))
        self.btnLast.clicked.connect(lambda: self._nav_edge("last"))

        # Keyboard shortcuts
        QShortcut(QKeySequence("Ctrl+F"), self, activated=self._on_find)
        QShortcut(QKeySequence("Ctrl+Right"), self,
                  activated=lambda: self._nav_step(1))
        QShortcut(QKeySequence("Ctrl+Left"), self,
                  activated=lambda: self._nav_step(-1))
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._on_new)
        QShortcut(QKeySequence("Ctrl+E"), self, activated=self._on_edit)
        QShortcut(QKeySequence("Ctrl+D"), self, activated=self._on_delete)
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._on_save)
        QShortcut(QKeySequence("Escape"), self, activated=self._on_cancel)
        QShortcut(QKeySequence("F5"), self, activated=lambda: self.reload())

        self.set_state(False)
        self.reload()

    # ---------- field construction (VB6 options: lookup / note / hidden) ----
    def _build_field(self, f, p, parent=None):
        """Ek Field ka editor banao. Return: layout me jo widget jaana hai."""
        le = None
        if f.lookup:
            le = LookupEdit(f.lookup, parent)
            e = le.ed
            self._lookups[f.name] = le
        else:
            e = QLineEdit(parent)
        # Lookup field par NAAM dikhta hai (VB6 Txt(1/4/5/6).MaxLength = 50),
        # code limit core/DB enforce karta hai - maxLength yahan code ki
        # length nahi, display text ki length rokta.
        if f.max_len and not f.lookup:
            e.setMaxLength(f.max_len)
        if f.placeholder:
            e.setPlaceholderText(f.placeholder)
        e.setMinimumHeight(30)
        e.setStyleSheet(
            f"QLineEdit {{ padding: 5px 8px; border: 1px solid {p['border']}; "
            f"border-radius: 6px; font-size: 13px; color: {p['text']}; "
            f"background: {p['glass_tint']}; }}"
            f"QLineEdit:focus {{ border: 2px solid {p['accent']}; }}"
        )
        self.edits[f.name] = e
        if self.cfg.field_validator:
            e.editingFinished.connect(
                lambda name=f.name: self._validate_field(name))
        if parent is not None:
            return e          # hidden field: sirf editor chahiye, note/layout nahi
        host = le if le is not None else e
        if f.note:
            # VB6 LblLedgerAc '(Purchase)' - laal note textbox ke bagal me
            wrap = QWidget()
            wl = QHBoxLayout(wrap)
            wl.setContentsMargins(0, 0, 0, 0)
            wl.setSpacing(6)
            wl.addWidget(host, 1)
            nl = QLabel(f.note)
            nl.setStyleSheet(
                "color:#c0392b; font-weight:bold; font-size:12px; "
                "background:transparent;")
            wl.addWidget(nl, 0)
            host = wrap
        return host

    def _build_label(self, f, p, min_w: int = 0) -> QLabel:
        label_text = f.label
        if f.required:
            label_text += ' <span style="color:#dc2626; font-weight:bold;">*</span>'
        lbl = QLabel(label_text)
        lbl.setMinimumHeight(26)
        if min_w:
            lbl.setMinimumWidth(min_w)
        lbl.setWordWrap(False)
        lbl.setStyleSheet(
            f"font-size: 12px; font-weight: 500; color: {p['text']};")
        self._field_labels[f.name] = lbl
        return lbl

    # ---------- VB6 Txt_Validate duplicate check (field blur par) ----------
    def _validate_field(self, name: str):
        if self.state not in ("Add", "Edit") or not self.cfg.field_validator:
            return
        f = next((x for x in self.cfg.fields if x.name == name), None)
        if f is None:
            return
        err = self.cfg.field_validator(name, self.edits[name].text().strip(),
                                       self.edit_pk)
        if err:
            # VB6: MsgBox 'Duplicate Name' / 'Duplicate Short Name', title
            # "Information"
            QMessageBox.information(self, "Information", err)
            self.edits[name].setFocus()
            self.edits[name].selectAll()

    # ---------- VB6 audit strip (FrmTaxMast LblSysYN/LblUser/LblLDt) -------
    @staticmethod
    def _fmt_dt(v) -> str:
        if isinstance(v, (_datetime, _date)):
            return v.strftime("%d/%m/%Y")
        return str(v or "")

    def _fill_status(self, rec: dict):
        """Proc_15_33 - browse mode me record ke audit caption."""
        if not self.lblSysYN:
            return
        rec = rec or {}
        sysyn = str(rec.get("sysyn", "") or "").strip().upper()
        self.lblSysYN.setText(
            "System Defined" if sysyn == "Y" else "User Defined")
        ae = str(rec.get("u_ae", "") or "").strip().upper()
        user_pre = {"A": "Created By : ", "E": "Modified By : "}.get(
            ae, "User : ")
        dt_pre = {"A": "Created By : ", "E": "Last Update : "}.get(
            ae, "entdt : ")
        self.lblUser.setText(user_pre + str(rec.get("u_name", "") or ""))
        self.lblLDt.setText(dt_pre + self._fmt_dt(rec.get("u_entdt")))

    def _clear_audit(self):
        """VB6 Event_D (Edit): LblUser/LblLDt khali, SysYN record jaisa."""
        if not self.lblSysYN:
            return
        self.lblUser.setText("")
        self.lblLDt.setText("")

    def _clear_status(self):
        """VB6 Event_A (Add): audit khali + 'User Defined'."""
        if not self.lblSysYN:
            return
        self.lblSysYN.setText("User Defined")
        self.lblUser.setText("")
        self.lblLDt.setText("")

    def _filter_table(self, text: str):
        """Filter table rows by search text."""
        text = text.lower()
        for r in range(self.tbl.rowCount()):
            match = False
            for c in range(self.tbl.columnCount()):
                item = self.tbl.item(r, c)
                if item and text in item.text().lower():
                    match = True
                    break
            self.tbl.setRowHidden(r, not match)
        self._update_browse()

    # ---------- browse / find (VB6 TopCtrl: First/Prev/Next/Last + Find) ----
    def _visible_rows(self) -> list:
        return [r for r in range(self.tbl.rowCount())
                if not self.tbl.isRowHidden(r)]

    def _pk_column(self) -> int:
        return next((i for i, (_, k) in enumerate(self.cfg.columns)
                     if k == self.cfg.pk_key), 0)

    def _row_of_pk(self, pk: str):
        col = self._pk_column()
        for r in range(self.tbl.rowCount()):
            it = self.tbl.item(r, col)
            if it and it.text() == pk:
                return r
        return None

    def _update_browse(self):
        """Browse i/n counter (VB6 'Browse 1/31' status)."""
        vis = self._visible_rows()
        if not vis:
            self.lblBrowse.setText("Browse 0/0")
            return
        cur = self.tbl.currentRow()
        idx = vis.index(cur) + 1 if cur in vis else 1
        self.lblBrowse.setText(f"Browse {idx}/{len(vis)}")

    def _select_row(self, row: int):
        if 0 <= row < self.tbl.rowCount():
            self.tbl.selectRow(row)
            it = self.tbl.item(row, 0)
            if it:
                self.tbl.scrollToItem(it)
        self._update_browse()

    def _nav_step(self, delta: int):
        if self.state != "Idle":
            return
        vis = self._visible_rows()
        if not vis:
            return
        cur = self.tbl.currentRow()
        i = vis.index(cur) if cur in vis else 0
        i = max(0, min(len(vis) - 1, i + delta))
        self._select_row(vis[i])

    def _nav_edge(self, which: str):
        if self.state != "Idle":
            return
        vis = self._visible_rows()
        if not vis:
            return
        self._select_row(vis[0] if which == "first" else vis[-1])

    def _on_find(self):
        """VB6 TopCtrl Find (binoculars): code/naam se record dhoond kar
        us par navigate karta hai."""
        if self.state != "Idle":
            return
        if self.tbl.rowCount() == 0:
            # VB6 FrmTaxMast (Ctrl+F): "Records Not Present For Searching."
            QMessageBox.information(self, "Information",
                                    "Records Not Present For Searching.")
            return
        from PyQt6.QtWidgets import QInputDialog
        term, ok = QInputDialog.getText(
            self, "Find", f"{self.cfg.title} - code ya naam likhein:")
        if not ok or not term.strip():
            return
        t = term.strip().lower()
        for r in self._visible_rows():
            for c in range(self.tbl.columnCount()):
                it = self.tbl.item(r, c)
                if it and t in it.text().lower():
                    self._select_row(r)
                    return
        QMessageBox.information(self, "Find", f"'{term}' ke liye record nahi mila")

    def _fill_from_selection(self):
        """Browse mode: selected record ki details Record Details me bhar do
        (VB6 browse behaviour - text boxes read-only but filled)."""
        if self.state != "Idle":
            return
        pk = self._selected_pk()
        if not pk:
            return
        try:
            rec = self.cfg.api.get(pk)
        except Exception:
            rec = None
        if rec:
            self.record_to_ui(rec)

    def _on_selection_changed(self):
        self._update_browse()
        self._fill_from_selection()

    # ---------- helpers to override ----------
    def record_from_ui(self) -> dict:
        if self._rec_from_ui:
            return self._rec_from_ui()
        rec = {}
        for f in self.cfg.fields:
            lu = self._lookups.get(f.name)
            # VB6 .Tag pattern: textbox par Naam, record dict me Code
            rec[f.name] = lu.resolve() if lu else self.edits[f.name].text().strip()
        return rec

    def record_to_ui(self, rec: dict):
        if self._rec_to_ui:
            self._rec_to_ui(rec)
        else:
            for f in self.cfg.fields:
                lu = self._lookups.get(f.name)
                if lu is not None:
                    lu.set_value(str(rec.get(f.name, "")),
                                 str(rec.get(f.display_key, "")) if f.display_key else "")
                else:
                    self.edits[f.name].setText(str(rec.get(f.name, "")))
        self._fill_status(rec)

    def grid_row_values(self, rec: dict) -> tuple:
        return tuple(str(rec.get(k, "")) for _, k in self.cfg.columns)

    # ---------- state machine (TopCtrl pattern) ----------
    def set_state(self, enabled: bool):
        p = _theme.palette()
        for e in self.edits.values():
            e.setEnabled(enabled)
        for lu in self._lookups.values():
            lu.setEnabled(enabled)
            lu.btn.setEnabled(enabled)
        for b, allowed in (
            (self.btnNew, self._can_add),
            (self.btnEdit, self._can_edit),
            (self.btnDelete, self._can_delete),
        ):
            b.setEnabled(allowed and not enabled)
        self.state = ("Add" if self.edit_pk is None else "Edit") if enabled \
            else "Idle"
        can_save = enabled and (
            (self.state == "Add" and self._can_add)
            or (self.state == "Edit" and self._can_edit)
        )
        self.btnSave.setEnabled(can_save)
        self.btnCancel.setEnabled(enabled)
        # VB6 TopCtrl: Add/Edit ke dauran Find + browse navigation disabled
        for b in (self.btnFind, self.btnFirst, self.btnPrev,
                  self.btnNext, self.btnLast):
            b.setEnabled(not enabled)
        state_colors = {
            "Idle": p.get("text_dim", "#64748b"),
            "Add": p.get("success", "#059669"),
            "Edit": p.get("warning", "#d97706"),
        }
        color = state_colors.get(self.state, p["text_dim"])
        self.lblState.setText(f"  State: {self.state}")
        self.lblState.setStyleSheet(
            f"font-size: 11px; color: {color}; padding: 4px 0; "
            f"border-top: 1px solid {p['border']}; font-weight: 600;"
        )

    def set_permissions(self, add: bool = True, edit: bool = True,
                        delete: bool = True):
        self._can_add = bool(add)
        self._can_edit = bool(edit)
        self._can_delete = bool(delete)
        editing = self.state in ("Add", "Edit")
        self.btnNew.setEnabled(self._can_add and not editing)
        self.btnEdit.setEnabled(self._can_edit and not editing)
        self.btnDelete.setEnabled(self._can_delete and not editing)
        self.btnSave.setEnabled(
            editing and ((self.state == "Add" and self._can_add)
                         or (self.state == "Edit" and self._can_edit))
        )
        self.btnCancel.setEnabled(editing)

    def _clear_fields(self):
        for f in self.cfg.fields:
            lu = self._lookups.get(f.name)
            if lu is not None:
                lu.clear()
            else:
                self.edits[f.name].setText(f.default)
        self._clear_status()

    # ---------- data ----------
    def reload(self):
        rows = self.cfg.api.list_all()
        keep_pk = self._selected_pk()
        # BUG-FIX: sorting ON rehti thi aur row-fill ke beech Qt rows ko
        # reorder kar deta tha -> sirf pehla column bhara, baaki columns
        # blank/dispersed (Tax Master list me TaxName/Short/Ledger khali
        # dikhne ka asli wajah yahi tha). Fill ke dauran sort band.
        was_sorted = self.tbl.isSortingEnabled()
        self.tbl.setSortingEnabled(False)
        self.tbl.setRowCount(len(rows))
        p = _theme.palette()
        for r, rec in enumerate(rows):
            for c, val in enumerate(self.grid_row_values(rec)):
                it = QTableWidgetItem(val)
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                it.setForeground(QColor(p["text"]))
                self.tbl.setItem(r, c, it)
        if was_sorted:
            self.tbl.setSortingEnabled(True)
        # search filter dobara apply (rows naye hain)
        if self._search.text():
            self._filter_table(self._search.text())
        # selection restore -> browse counter + details fill
        target = None
        if keep_pk:
            r = self._row_of_pk(keep_pk)
            if r is not None and not self.tbl.isRowHidden(r):
                target = r
        if target is None:
            vis = self._visible_rows()
            target = vis[0] if vis else None
        if target is None:
            self.tbl.clearSelection()
            self._clear_fields()
            if self.lblSysYN:      # 0 rows -> VB6 caption bhi blank
                self.lblSysYN.setText("")
            self._update_browse()
        else:
            self._select_row(target)
            self._fill_from_selection()

    def _selected_pk(self):
        r = self.tbl.currentRow()
        if r < 0:
            return None
        col = next((i for i, (_, k) in enumerate(self.cfg.columns)
                    if k == self.cfg.pk_key), 0)
        item = self.tbl.item(r, col)
        return item.text() if item else None

    # ---------- handlers ----------
    def _on_new(self):
        if not self._can_add:
            return
        self.edit_pk = None
        self._clear_fields()
        self._clear_status()        # VB6 Event_A: audit khali + 'User Defined'
        self.set_state(True)
        if self._visible_fields:
            self.edits[self._visible_fields[0].name].setFocus()

    def _on_edit(self):
        if not self._can_edit:
            return
        if self.tbl.rowCount() == 0:
            # VB6 FrmTaxMast Event_E: "No Record To Edit."
            QMessageBox.information(self, "Information", "No Record To Edit.")
            return
        pk = self._selected_pk()
        if not pk:
            QMessageBox.information(self, "Edit",
                                    "Please select a record to edit")
            return
        rec = self.cfg.api.get(pk)
        if not rec:
            return
        self.edit_pk = pk
        self.record_to_ui(rec)
        self._clear_audit()         # VB6 Event_D: LblUser/LblLDt khali
        pk_edit = self.edits.get(self.cfg.pk_key)
        if pk_edit:
            pk_edit.setEnabled(False)
        self.set_state(True)
        self.state = "Edit"
        self.lblState.setText("  State: Edit")
        if pk_edit:
            pk_edit.setEnabled(False)

    def _on_save(self):
        if (self.state == "Add" and not self._can_add) or (
            self.state == "Edit" and not self._can_edit
        ):
            return
        was_add = self.state == "Add"
        if self.cfg.confirm_save and self.state in ("Add", "Edit"):
            # VB6: MsgBox "Save Record ?", vbYesNo+vbQuestion, "Save Data"
            reply = QMessageBox.question(
                self, "Save Data", "Save Record ?",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
                QMessageBox.StandardButton.Yes)
            if reply != QMessageBox.StandardButton.Yes:
                return
        try:
            rec = self.record_from_ui()
            pk = rec.get(self.cfg.pk_key, "").strip()
            generated_add = self.state == "Add" and self.cfg.generated_pk
            if not pk and not generated_add:
                QMessageBox.warning(self, "Validation",
                                    f"{self.cfg.pk_key.upper()} is required")
                return
            # Validate required fields
            for f in self.cfg.fields:
                if f.required and not rec.get(f.name, "").strip():
                    QMessageBox.warning(self, "Validation",
                                        f"{f.label} is required")
                    self.edits[f.name].setFocus()
                    return
            if self.state == "Add":
                if pk and self.cfg.api.exists(pk):
                    QMessageBox.warning(self, "Validation",
                                        f"{pk} already exists")
                    return
                self.cfg.api.insert(rec)
            else:
                self.cfg.api.update(self.edit_pk, rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Database Error",
                                 f"Unable to save: {e}")
            return
        self.edit_pk = None
        if self.cfg.loop_add and was_add:
            # VB6: Add-save ke baad Add handler dobara chalta hai (Add mode)
            self.reload()
            self._on_new()
            return
        self.set_state(False)
        self.reload()

    def _on_cancel(self):
        if self.cfg.confirm_cancel and self.state in ("Add", "Edit"):
            # VB6: MsgBox "Cancel ?", vbYesNo+vbQuestion, "Terminate Process"
            reply = QMessageBox.question(
                self, "Terminate Process", "Cancel ?",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
                QMessageBox.StandardButton.Yes)
            if reply != QMessageBox.StandardButton.Yes:
                return
        self.edit_pk = None
        self._clear_fields()
        self.set_state(False)
        # browse par wapas selected record ki details dikhao (VB6 cancel)
        self._fill_from_selection()

    def _on_print(self):
        if self.cfg.print_fn:
            self.cfg.print_fn(self)

    def _on_delete(self):
        if not self._can_delete:
            return
        pk = self._selected_pk()
        if not pk:
            QMessageBox.information(self, "Delete",
                                    "Please select a record to delete")
            return
        if self.cfg.delete_guard:
            err = self.cfg.delete_guard(pk)
            if err:
                QMessageBox.warning(self, "Delete", err)
                return
        if self.cfg.confirm_delete:
            # VB6: MsgBox "Delete Record ?", vbYesNo+vbQuestion, "Confirmation"
            msg, title = "Delete Record ?", "Confirmation"
        else:
            msg = (f"Are you sure you want to delete '{pk}'?\n\n"
                   "This action cannot be undone.")
            title = "Confirm Delete"
        reply = QMessageBox.question(
            self, title, msg,
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
            QMessageBox.StandardButton.Yes if self.cfg.confirm_delete
            else QMessageBox.StandardButton.No
        )
        if reply == QMessageBox.StandardButton.Yes:
            try:
                self.cfg.api.delete(pk)
                self.reload()
            except Exception as e:
                QMessageBox.critical(self, "Delete Error",
                                     f"Unable to delete: {e}")


def make_delete_guard(sample_prefix: str = "PYT"):
    """Safety: production records protected, sirf test-prefix deletable."""
    def guard(pk: str):
        if not pk.upper().startswith(sample_prefix.upper()):
            return (f"Safety: only {sample_prefix}* test-records can be deleted "
                    "(production data is protected)")
        return None
    return guard
