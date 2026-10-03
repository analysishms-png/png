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

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QKeySequence, QShortcut
from PyQt6.QtWidgets import (QDialog, QFormLayout, QFrame, QGridLayout,
                             QHBoxLayout, QLabel, QLineEdit, QMessageBox,
                             QPushButton, QScrollArea, QTableWidget,
                             QTableWidgetItem, QVBoxLayout,
                             QAbstractItemView, QHeaderView, QGroupBox,
                             QWidget)

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
        self._field_labels = {}

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
            half = (len(cfg.fields) + 1) // 2
            for i, f in enumerate(cfg.fields):
                row = i % half
                col = 0 if i < half else 2
                e = QLineEdit()
                if f.max_len:
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
                label_text = f.label
                if f.required:
                    label_text += ' <span style="color:#dc2626; font-weight:bold;">*</span>'
                lbl = QLabel(label_text)
                lbl.setMinimumHeight(26)
                # BUG-FIX: set min width and proper text interaction on labels
                lbl.setMinimumWidth(160)
                lbl.setWordWrap(False)
                lbl.setStyleSheet(f"font-size: 12px; font-weight: 500; color: {p['text']};")
                self._field_labels[f.name] = lbl
                self.edits[f.name] = e
                grid_lay.addWidget(lbl, row, col, Qt.AlignmentFlag.AlignRight | Qt.AlignmentFlag.AlignVCenter)
                grid_lay.addWidget(e, row, col + 1)
        else:
            form_lay = QFormLayout(form_grp)
            form_lay.setSpacing(10)
            form_lay.setContentsMargins(16, 14, 16, 14)
            for f in cfg.fields:
                e = QLineEdit()
                if f.max_len:
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
                label_text = f.label
                if f.required:
                    label_text += ' <span style="color:#dc2626; font-weight:bold;">*</span>'
                lbl = QLabel(label_text)
                lbl.setMinimumHeight(26)
                lbl.setStyleSheet(f"font-size: 12px; font-weight: 500; color: {p['text']};")
                self._field_labels[f.name] = lbl
                self.edits[f.name] = e
                form_lay.addRow(lbl, e)

        form_scroll = QScrollArea()
        form_scroll.setWidgetResizable(True)
        form_scroll.setFrameShape(QFrame.Shape.NoFrame)
        form_scroll.setWidget(form_grp)
        body_lay.addWidget(form_scroll, stretch=1)

        # --- Tab order ---
        prev_widget = None
        for f in cfg.fields:
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
            rec[f.name] = self.edits[f.name].text().strip()
        return rec

    def record_to_ui(self, rec: dict):
        if self._rec_to_ui:
            self._rec_to_ui(rec)
            return
        for f in self.cfg.fields:
            self.edits[f.name].setText(str(rec.get(f.name, "")))

    def grid_row_values(self, rec: dict) -> tuple:
        return tuple(str(rec.get(k, "")) for _, k in self.cfg.columns)

    # ---------- state machine (TopCtrl pattern) ----------
    def set_state(self, enabled: bool):
        p = _theme.palette()
        for e in self.edits.values():
            e.setEnabled(enabled)
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
            self.edits[f.name].setText(f.default)

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
        self.set_state(True)
        next(iter(self.edits.values())).setFocus()

    def _on_edit(self):
        if not self._can_edit:
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
        self.set_state(False)
        self.reload()

    def _on_cancel(self):
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
        reply = QMessageBox.question(
            self, "Confirm Delete",
            f"Are you sure you want to delete '{pk}'?\n\n"
            "This action cannot be undone.",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
            QMessageBox.StandardButton.No
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
