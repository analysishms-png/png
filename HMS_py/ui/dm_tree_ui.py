"""DMTree UI (VB6 DMTree.frm port) — Menu/Tree Configuration Editor.

VB6 form: DMTree (Caption="Form1", MDIChild=True)
- FlexGrid displaying menuHelp1 rows
- Inline editing of Param_Str and Flag columns
- Save button updates both menuHelp1 and UserModule1 tables
- VB6 btnsave_Click does transaction with two UPDATE statements per row

EVIDENCE (decompiled DMTree.frm):
- Tables: menuHelp1, UserModule1
- UPDATE menuHelp1 SET Param_Str=..., Flag=... WHERE Code=... AND UserName='SA'
- UPDATE UserModule1 SET Flag=... WHERE Code=...
- Grid columns: Code, Option, MenuName, MenuCaption, Param_Str, Flag
- Inline editing via TextBox overlay on grid cells
"""

from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QKeySequence, QShortcut, QColor
from PyQt6.QtWidgets import (QAbstractItemView, QDialog, QHBoxLayout, QHeaderView,
                             QLabel, QMessageBox, QPushButton, QTableWidget,
                             QTableWidgetItem, QVBoxLayout, QWidget)

from HMS_py.core import db
from HMS_py.core import sys_config as sc
from HMS_py.ui import theme as _theme


def _dark_item(val, readonly=False) -> QTableWidgetItem:
    it = QTableWidgetItem("" if val is None else str(val))
    if readonly:
        it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    else:
        it.setFlags(it.flags() | Qt.ItemFlag.ItemIsEditable)
    it.setForeground(QColor(_theme.palette()["text"]))
    if readonly:
        it.setBackground(QColor(_theme.palette()["glass_tint"]))
    return it


class DMTreeDialog(QDialog):
    """Menu/Tree Configuration Editor (VB6 DMTree.frm port)."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Menu Tree Configuration (DMTree)")
        self.resize(1000, 700)
        self._rows = []  # list of dict from menuHelp1
        self._build_ui()
        self.reload()

    def _build_ui(self):
        p = _theme.palette()
        v = QVBoxLayout(self)
        v.setContentsMargins(12, 10, 12, 10)
        v.setSpacing(8)

        # Title
        title = QLabel("Menu Tree Configuration (menuHelp1 + UserModule1)")
        title.setStyleSheet(f"font-weight: bold; font-size: 14px; color: {p['text']};")
        v.addWidget(title)

        # Toolbar
        bar = QHBoxLayout()
        self.btn_reload = QPushButton("Reload (F5)")
        self.btn_reload.setToolTip("Reload from database")
        self.btn_reload.clicked.connect(self.reload)
        bar.addWidget(self.btn_reload)

        self.btn_save = QPushButton("Save Changes")
        self.btn_save.setDefault(True)
        self.btn_save.setToolTip("Save all changes (Ctrl+S)")
        self.btn_save.clicked.connect(self._save)
        bar.addWidget(self.btn_save)

        bar.addStretch(1)
        self.lbl_status = QLabel("Ready")
        self.lbl_status.setStyleSheet(f"color: {p['text_dim']};")
        bar.addWidget(self.lbl_status)
        v.addLayout(bar)

        # Table
        self.table = QTableWidget()
        self.table.setAlternatingRowColors(True)
        self.table.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.table.setEditTriggers(QAbstractItemView.EditTrigger.DoubleClicked |
                                   QAbstractItemView.EditTrigger.SelectedClicked)
        self.table.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.ResizeToContents)
        self.table.horizontalHeader().setStretchLastSection(True)
        v.addWidget(self.table)

        # Shortcuts
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save)
        QShortcut(QKeySequence("F5"), self, activated=self.reload)

    def reload(self):
        """Load menuHelp1 rows from database."""
        try:
            self._rows = sc.menuhelp1_list(limit=2000)
        except Exception as e:
            QMessageBox.critical(self, "DMTree", f"Failed to load menuHelp1:\n{e}")
            return

        self.table.clear()
        self.table.setRowCount(len(self._rows))
        self.table.setColumnCount(7)
        self.table.setHorizontalHeaderLabels(
            ["Code", "Option", "MenuName", "MenuCaption", "MenuIndex", "Param_Str", "Flag"])

        for r, row in enumerate(self._rows):
            # Code (readonly)
            self.table.setItem(r, 0, _dark_item(row.get("code", 0), readonly=True))
            # Option (readonly)
            self.table.setItem(r, 1, _dark_item(row.get("option", ""), readonly=True))
            # MenuName (readonly)
            self.table.setItem(r, 2, _dark_item(row.get("menu_name", ""), readonly=True))
            # MenuCaption (readonly)
            self.table.setItem(r, 3, _dark_item(row.get("menu_caption", ""), readonly=True))
            # MenuIndex (readonly)
            self.table.setItem(r, 4, _dark_item(row.get("menu_index", 0), readonly=True))
            # Param_Str (editable)
            self.table.setItem(r, 5, _dark_item(row.get("param_str", "")))
            # Flag (editable: E/R/N/V)
            self.table.setItem(r, 6, _dark_item(row.get("flag", "")))

        self.lbl_status.setText(f"Loaded {len(self._rows)} rows from menuHelp1")

    def _save(self):
        """Save changes to both menuHelp1 and UserModule1 (VB6 parity)."""
        changes = []
        for r in range(self.table.rowCount()):
            code_item = self.table.item(r, 0)
            if not code_item:
                continue
            code = int(code_item.text() or 0)
            if code == 0:
                continue

            param_item = self.table.item(r, 5)
            flag_item = self.table.item(r, 6)
            if not param_item or not flag_item:
                continue

            new_param = (param_item.text() or "").strip()
            new_flag = (flag_item.text() or "").strip().upper()

            # Find original row
            orig = None
            for row in self._rows:
                if row.get("code") == code:
                    orig = row
                    break
            if not orig:
                continue

            old_param = (orig.get("param_str") or "").strip()
            old_flag = (orig.get("flag") or "").strip().upper()

            if new_param != old_param or new_flag != old_flag:
                changes.append({
                    "code": code,
                    "comp_code": orig.get("comp_code", ""),
                    "username": orig.get("username", ""),
                    "opt1": orig.get("opt1", 0),
                    "opt2": orig.get("opt2", 0),
                    "opt3": orig.get("opt3", 0),
                    "opt4": orig.get("opt4", 0),
                    "new_param": new_param,
                    "new_flag": new_flag,
                    "old_option": orig.get("option", ""),
                })

        if not changes:
            QMessageBox.information(self, "DMTree", "No changes to save")
            return

        # Validate flags
        valid_flags = {"E", "R", "N", "V", "-", ""}
        for ch in changes:
            if ch["new_flag"] and ch["new_flag"] not in valid_flags:
                QMessageBox.warning(self, "Validation",
                    f"Code {ch['code']}: Invalid Flag '{ch['new_flag']}'. "
                    f"Valid: E, R, N, V")
                return

        # Execute updates in transaction (VB6 parity: BeginTrans -> 2 UPDATEs per row -> CommitTrans)
        cn = db.connect()
        try:
            cn.autocommit = False
            updated = 0
            for ch in changes:
                # UPDATE menuHelp1 SET Param_Str=?, Flag=? WHERE Code=? AND UserName=?
                n1 = db.execute(
                    "UPDATE menuHelp1 SET Param_Str = ?, Flag = ? "
                    "WHERE Code = ? AND UserName = ? AND CompCode = ?",
                    (ch["new_param"], ch["new_flag"], ch["code"],
                     ch["username"], ch["comp_code"]), cn=cn, commit=False)

                # UPDATE UserModule1 SET Flag=? WHERE Code=? (VB6 uses same Code)
                n2 = db.execute(
                    "UPDATE UserModule1 SET Flag = ? WHERE Code = ?",
                    (ch["new_flag"], ch["code"]), cn=cn, commit=False)

                updated += 1

            cn.commit()
            self.lbl_status.setText(f"Saved {updated} row(s) to menuHelp1 + UserModule1")
            QMessageBox.information(self, "DMTree",
                f"Saved {updated} row(s)\n"
                f"Updated menuHelp1.Param_Str, Flag\n"
                f"Updated UserModule1.Flag")
            self.reload()
        except Exception as e:
            try:
                cn.rollback()
            except Exception:
                pass
            QMessageBox.critical(self, "DMTree", f"Save failed:\n{e}")
        finally:
            cn.close()


def open_dm_tree(parent=None):
    """Shell opener for 'Menu Tree Configuration' leaf."""
    w = DMTreeDialog(parent)
    w.setWindowFlags(Qt.WindowType.Window)
    w.show()
    return w


def main():
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = DMTreeDialog()
    w.resize(1000, 700)
    w.show()
    sys.exit(app.exec())


if __name__ == "__main__":
    main()