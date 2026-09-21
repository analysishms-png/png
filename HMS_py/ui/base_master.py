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
from PyQt6.QtGui import QColor
from PyQt6.QtWidgets import (QDialog, QFormLayout, QHBoxLayout, QLabel,
                             QLineEdit, QMessageBox, QPushButton,
                             QTableWidget, QTableWidgetItem, QVBoxLayout)

from HMS_py.ui import theme as _theme


@dataclass
class Field:
    name: str            # dict key in core module records
    label: str
    max_len: int = 0
    required: bool = False
    default: str = ""


@dataclass
class MasterConfig:
    title: str
    columns: list       # grid columns: (header, dict-key)
    fields: list        # editable Field list
    api: object         # core module: list_all/get/exists/insert/update/delete
    pk_key: str = "code"
    delete_guard: object = None   # fn(code) -> error-str | None
    sample_prefix: str = "PYT"


class BaseMasterForm(QDialog):
    def __init__(self, cfg: MasterConfig, parent=None):
        super().__init__(parent)
        self.cfg = cfg
        self.setWindowTitle(cfg.title)
        self.resize(680, 480)
        self.state = "Idle"
        self.edit_pk = None
        self._rec_from_ui = None      # fn: ui -> record dict (set by subclass)
        self._rec_to_ui = None        # fn: record dict -> ui

        root = QVBoxLayout(self)
        self.tbl = QTableWidget(0, len(cfg.columns))
        self.tbl.setHorizontalHeaderLabels([c[0] for c in cfg.columns])
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.cellDoubleClicked.connect(lambda *_: self._on_edit())
        root.addWidget(self.tbl)

        from PyQt6.QtWidgets import QWidget
        fwrap = QWidget()
        self.form = QFormLayout(fwrap)
        self.edits = {}
        for f in cfg.fields:
            e = QLineEdit()
            if f.max_len:
                e.setMaxLength(f.max_len)
            self.form.addRow(f.label, e)
            self.edits[f.name] = e
        root.addWidget(fwrap)

        btns = QHBoxLayout()
        btns.setSpacing(6)
        self.btnNew = QPushButton("New")
        self.btnEdit = QPushButton("Edit")
        self.btnDelete = QPushButton("Delete")
        self.btnDelete.setProperty("role", "danger")
        self.btnSave = QPushButton("Save")
        self.btnSave.setProperty("accent", True)
        self.btnCancel = QPushButton("Cancel")
        self.btnExit = QPushButton("Exit")
        for b in (self.btnNew, self.btnEdit, self.btnDelete, self.btnSave,
                  self.btnCancel, self.btnExit):
            b.setMinimumHeight(32)
            btns.addWidget(b)
        btns.addStretch()
        root.addLayout(btns)

        self.lblState = QLabel("State: Idle")
        self.lblState.setStyleSheet("font-size: 11px; color: #64748b; padding: 2px 0;")
        root.addWidget(self.lblState)

        self.btnNew.clicked.connect(self._on_new)
        self.btnEdit.clicked.connect(self._on_edit)
        self.btnDelete.clicked.connect(self._on_delete)
        self.btnSave.clicked.connect(self._on_save)
        self.btnCancel.clicked.connect(self._on_cancel)
        self.btnExit.clicked.connect(self.reject)

        # Keyboard (TopCtrl/&-accelerator pattern): Ctrl+N=New,
        # Ctrl+E=Edit, Ctrl+D=Delete, Ctrl+S=Save, F5=Reload, Esc=Cancel
        from PyQt6.QtGui import QShortcut, QKeySequence
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._on_new)
        QShortcut(QKeySequence("Ctrl+E"), self, activated=self._on_edit)
        QShortcut(QKeySequence("Ctrl+D"), self, activated=self._on_delete)
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._on_save)
        QShortcut(QKeySequence("Ctrl+G"), self, activated=self._on_cancel)
        QShortcut(QKeySequence("F5"), self,
                  activated=lambda: self.reload())

        self.set_state(False)
        self.reload()

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
        for e in self.edits.values():
            e.setEnabled(enabled)
        for b in (self.btnNew, self.btnEdit, self.btnDelete):
            b.setEnabled(not enabled)
        for b in (self.btnSave, self.btnCancel):
            b.setEnabled(enabled)
        self.state = ("Add" if self.edit_pk is None else "Edit") if enabled \
            else "Idle"
        self.lblState.setText(f"State: {self.state}")

    def _clear_fields(self):
        for f in self.cfg.fields:
            self.edits[f.name].setText(f.default)

    # ---------- data ----------
    def reload(self):
        rows = self.cfg.api.list_all()
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            for c, val in enumerate(self.grid_row_values(rec)):
                it = QTableWidgetItem(val)
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                # Dark-mode fix (P3-b se proven): palette white text na de
                it.setForeground(QColor(_theme.palette()["text"]))
                self.tbl.setItem(r, c, it)

    def _selected_pk(self):
        r = self.tbl.currentRow()
        if r < 0:
            return None
        col = next((i for i, (_, k) in enumerate(self.cfg.columns)
                    if k == self.cfg.pk_key), 0)
        return self.tbl.item(r, col).text()

    # ---------- handlers ----------
    def _on_new(self):
        self.edit_pk = None
        self._clear_fields()
        self.set_state(True)
        next(iter(self.edits.values())).setFocus()

    def _on_edit(self):
        pk = self._selected_pk()
        if not pk:
            QMessageBox.information(self, "Edit", "Pehle row select karo")
            return
        rec = self.cfg.api.get(pk)
        if not rec:
            return
        self.edit_pk = pk
        self.record_to_ui(rec)
        pk_edit = self.edits.get(self.cfg.pk_key)
        if pk_edit:
            pk_edit.setEnabled(False)   # PK edit nahi hota
        self.set_state(True)
        self.state = "Edit"
        self.lblState.setText("State: Edit")
        if pk_edit:
            pk_edit.setEnabled(False)

    def _on_save(self):
        try:
            rec = self.record_from_ui()
            pk = rec.get(self.cfg.pk_key, "").strip()
            if not pk:
                QMessageBox.warning(self, "Save",
                                    f"{self.cfg.pk_key.upper()} zaroori hai")
                return
            if self.state == "Add":
                if self.cfg.api.exists(pk):
                    QMessageBox.warning(self, "Save",
                                        f"{pk} pehle se maujood hai")
                    return
                self.cfg.api.insert(rec)
            else:
                self.cfg.api.update(self.edit_pk, rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_pk = None
        self.set_state(False)
        self.reload()

    def _on_cancel(self):
        self.edit_pk = None
        self._clear_fields()
        self.set_state(False)

    def _on_delete(self):
        pk = self._selected_pk()
        if not pk:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        if self.cfg.delete_guard:
            err = self.cfg.delete_guard(pk)
            if err:
                QMessageBox.warning(self, "Delete", err)
                return
        if QMessageBox.question(self, "Delete", f"{pk} delete karein?") == \
                QMessageBox.StandardButton.Yes:
            self.cfg.api.delete(pk)
            self.reload()


def make_delete_guard(sample_prefix: str = "PYT"):
    """Safety: production records protected, sirf test-prefix deletable."""
    def guard(pk: str):
        if not pk.upper().startswith(sample_prefix.upper()):
            return (f"Safety: sirf {sample_prefix}* test-records delete ho "
                    "sakte hain (production data protected)")
        return None
    return guard
