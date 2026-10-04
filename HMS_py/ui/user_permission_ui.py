"""User Permission UI (VB6: UserPermission.frm - Utility -> User Permission).

VB6 form: TreeView with modules, checkboxes for Opt1-7 (View, Add, Edit, Delete, Print, Report, Admin).
Module list from USER_MODULE table, permissions from MENUHELP table.
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import (QApplication, QCheckBox, QDialog, QGroupBox,
                              QHBoxLayout, QLabel, QMessageBox, QPushButton,
                              QTreeWidget, QTreeWidgetItem, QVBoxLayout, QWidget,
                                    QComboBox)

from HMS_py.core import menu_help, usermaster
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


class UserPermissionDialog(QDialog):
    """User Permission matrix: modules (TreeView) + Opt1-7 checkboxes."""

    OPT_LABELS = [
        ("Opt1", "View"),
        ("Opt2", "Add"),
        ("Opt3", "Edit"),
        ("Opt4", "Delete"),
        ("Opt5", "Print"),
        ("Opt6", "Report"),
        ("Opt7", "Admin"),
    ]

    def __init__(self, parent=None, current_user: str = "SA"):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopUserPermission")
        self.current_user = current_user
        self.setWindowTitle("User Permission - HMS_py")
        self.resize(900, 600)
        self._build()
        self.reload()

    def _build(self):
        root = QVBoxLayout(self)
        root.setContentsMargins(12, 10, 12, 10)
        root.setSpacing(8)

        # User selector
        top = QHBoxLayout()
        top.addWidget(QLabel("User:"))
        self.cmb_user = QComboBox()
        self.cmb_user.setMinimumWidth(200)
        top.addWidget(self.cmb_user)
        top.addStretch()
        root.addLayout(top)

        # Module tree + permission checkboxes
        main = QHBoxLayout()

        # Left: Module tree
        left = QWidget()
        llay = QVBoxLayout(left)
        llay.setContentsMargins(0, 0, 0, 0)
        llay.addWidget(QLabel("Modules"))
        self.tree = QTreeWidget()
        self.tree.setHeaderLabels(["Module", "Code"])
        self.tree.setColumnHidden(1, True)
        self.tree.setSelectionMode(QTreeWidget.SelectionMode.SingleSelection)
        self.tree.itemSelectionChanged.connect(self._on_module_selected)
        llay.addWidget(self.tree)
        main.addWidget(left, 1)

        # Right: Permission checkboxes
        right = QGroupBox("Permissions")
        rlay = QVBoxLayout(right)
        self.chk_opts = {}
        for opt, label in self.OPT_LABELS:
            cb = QCheckBox(label)
            cb.setEnabled(False)
            cb.setToolTip(f"{opt} - {label}")
            self.chk_opts[opt] = cb
            rlay.addWidget(cb)
        rlay.addStretch()

        # Save button
        btn_row = QHBoxLayout()
        btn_row.addStretch()
        self.btn_save = QPushButton("Save Permissions")
        self.btn_save.setEnabled(False)
        self.btn_save.clicked.connect(self._save)
        mark_desktop_action(self.btn_save, "primary")
        btn_row.addWidget(self.btn_save)
        rlay.addLayout(btn_row)

        main.addWidget(right)
        root.addLayout(main, 1)

        # Bottom buttons
        btns = QHBoxLayout()
        btns.addStretch()
        self.btn_refresh = QPushButton("Refresh")
        self.btn_refresh.clicked.connect(self.reload)
        self.btn_close = QPushButton("Close")
        self.btn_close.clicked.connect(self.reject)
        for b in (self.btn_refresh, self.btn_close):
            mark_desktop_action(b)
            btns.addWidget(b)
        root.addLayout(btns)

        self._populate_users()
        self._populate_tree()

    def _populate_users(self):
        self.cmb_user.clear()
        try:
            users = usermaster.list_all()
            for u in users:
                self.cmb_user.addItem(u["username"], u["username"])
        except Exception as e:
            QMessageBox.warning(self, "Users", f"Load error: {e}")
        self.cmb_user.currentIndexChanged.connect(self._on_user_changed)

    def _populate_tree(self):
        """Load modules from USER_MODULE."""
        self.tree.clear()
        try:
            modules = menu_help.list_modules()
            for m in modules:
                item = QTreeWidgetItem([m["name"], m["code"]])
                self.tree.addTopLevelItem(item)
        except Exception as e:
            QMessageBox.warning(self, "Modules", f"Load error: {e}")
        if self.tree.topLevelItemCount():
            self.tree.setCurrentItem(self.tree.topLevelItem(0))

    def _on_user_changed(self):
        self.btn_save.setEnabled(False)
        for cb in self.chk_opts.values():
            cb.setEnabled(False)
            cb.setChecked(False)
        self._load_permissions()

    def _on_module_selected(self):
        self._load_permissions()

    def _load_permissions(self):
        user = self.cmb_user.currentData()
        item = self.tree.currentItem()
        if not user or not item:
            for cb in self.chk_opts.values():
                cb.setEnabled(False)
                cb.setChecked(False)
            self.btn_save.setEnabled(False)
            return

        module = item.text(1)  # column 1 = code
        try:
            perms = menu_help.get_permissions(user, module)
        except Exception as e:
            QMessageBox.warning(self, "Permissions", f"Load error: {e}")
            return

        for opt, label in self.OPT_LABELS:
            cb = self.chk_opts[opt]
            cb.setEnabled(True)
            cb.setChecked(perms.get(opt, "N") == "Y")

        self.btn_save.setEnabled(True)

    def _save(self):
        user = self.cmb_user.currentData()
        item = self.tree.currentItem()
        if not user or not item:
            QMessageBox.warning(self, "Save", "Select user and module")
            return

        module = item.text(1)
        perms = {opt: "Y" if cb.isChecked() else "N"
                 for opt, cb in self.chk_opts.items()}

        try:
            menu_help.set_permissions(user, module, perms)
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return

        QMessageBox.information(self, "Save",
                                f"Permissions saved for {user} / {module}")

    def reload(self):
        self._populate_users()
        self._populate_tree()
        self._on_user_changed()


def open_user_permission(parent=None, current_user: str = "SA"):
    dialog = UserPermissionDialog(parent, current_user=current_user)
    dialog.exec()


def main() -> int:
    app = QApplication(sys.argv)
    dlg = UserPermissionDialog()
    dlg.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())