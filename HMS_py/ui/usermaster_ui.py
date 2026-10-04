"""User Master UI (VB6: Utility -> User Master / Permissions).

VB6 pattern: TopCtrl state-machine (Idle/Add/Edit).
Special: Password field (EchoMode.Password), Change Password button.
Safety: SA user delete nahi hota, sirf PYT* users delete allowed.
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtWidgets import (QApplication, QDialog, QFormLayout, QHBoxLayout,
                             QLabel, QLineEdit, QMessageBox, QPushButton,
                             QTableWidget, QTableWidgetItem, QVBoxLayout,
                             QWidget)
from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor

from HMS_py.core import usermaster
from HMS_py.ui import theme as _theme
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action
from HMS_py.ui.glass import SwatchButton


def _ole_to_hex(value: int) -> str:
    """MS-016: VB6 CLng(color) (OLE/BGR int) -> #rrggbb.

    VB6 RGB(r,g,b) = r + g*256 + b*65536 - isliye low byte = red.
    Example: 255 (live row 'ANUJ', VB6 RGB(255,0,0)) -> "#ff0000".
    """
    v = int(value or 0) & 0xFFFFFF
    return "#%02x%02x%02x" % (v & 0xFF, (v >> 8) & 0xFF, (v >> 16) & 0xFF)


def _hex_to_ole(color_hex: str) -> int:
    """MS-016: #rrggbb -> VB6 CLng(color) int (store VB6 jaisa hi int)."""
    c = QColor(color_hex)
    return c.red() + (c.green() << 8) + (c.blue() << 16)


class UserMasterForm(QDialog):
    """VB6 UserMast form ka port - CRUD + password change."""

    def __init__(self, parent=None, current_user: str = "SA"):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopUserMaster")
        self.current_user = current_user
        self.setWindowTitle("User Master - HMS_py")
        self.resize(700, 520)
        self.state = "Idle"
        self.edit_pk = None

        root = QVBoxLayout(self)

        # Grid
        self.tbl = QTableWidget(0, 5)
        self.tbl.setHorizontalHeaderLabels(
            ["Username", "Full Name", "Short Name", "Active", "Last Edit"])
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.cellDoubleClicked.connect(lambda *_: self._on_edit())
        root.addWidget(self.tbl)

        # Form fields
        form = QFormLayout()
        self.edUser = QLineEdit()
        self.edUser.setMaxLength(usermaster.LIMITS["username"])
        self.edUser.setPlaceholderText("Max 10 chars, UPPERCASE stored")
        self.edLabel = QLineEdit()
        self.edLabel.setMaxLength(usermaster.LIMITS["label"])
        self.edLabel.setPlaceholderText("Full display name")
        self.edShort = QLineEdit()
        self.edShort.setMaxLength(usermaster.LIMITS["short"])
        self.edPass = QLineEdit()
        self.edPass.setEchoMode(QLineEdit.EchoMode.Password)
        self.edPass.setPlaceholderText(
            "New password (Edit: blank = keep current)")
        self.edActive = QLineEdit("Y")
        self.edActive.setMaxLength(1)
        self.edActive.setPlaceholderText("Y or N")
        # BUG-004 FIX: AllowDtChng field added (VB6 TXT(1))
        self.edAllowDtChng = QLineEdit("N")
        self.edAllowDtChng.setMaxLength(1)
        self.edAllowDtChng.setPlaceholderText("Y or N — Allow Date Change")
        # MS-016: live UserMast columns GodCode/FloorCode/BackColor.
        # VB6 UserMast.frm mein sirf BackColor ka control hai
        # (Label1(13) "Color Selection" + Label1(14) swatch + CommonDialog
        # CDLG.ShowColor); GodCode/FloorCode ka form par koi control ya
        # lookup grid nahi (DGGod/DGFloor jaisa kuch nahi) - isliye wo
        # plain line edits hain, koi picker nahi.
        self.edGodCode = QLineEdit()
        self.edGodCode.setMaxLength(usermaster.LIMITS["godcode"])
        self.edGodCode.setPlaceholderText(
            "Godown code (GodownMast.Code) — optional")
        self.edFloorCode = QLineEdit()
        self.edFloorCode.setMaxLength(usermaster.LIMITS["floorcode"])
        self.edFloorCode.setPlaceholderText("Floor code — optional")
        self.edBackColor = QLineEdit("0")
        self.edBackColor.setMaxLength(10)
        self.edBackColor.setPlaceholderText("VB6 color int (0..16777215)")
        self.swBackColor = SwatchButton(_ole_to_hex(0), self._on_color_picked)
        color_row = QHBoxLayout()
        color_row.setContentsMargins(0, 0, 0, 0)
        color_row.addWidget(self.edBackColor)
        color_row.addWidget(self.swBackColor)
        color_wrap = QWidget()
        color_wrap.setLayout(color_row)
        form.addRow("Username *", self.edUser)
        form.addRow("Full Name (LABEL)", self.edLabel)
        form.addRow("Short Name", self.edShort)
        form.addRow("Password", self.edPass)
        form.addRow("Active (Y/N)", self.edActive)
        form.addRow("Allow Date Change (Y/N)", self.edAllowDtChng)
        form.addRow("God Code (GodownMast)", self.edGodCode)
        form.addRow("Floor Code", self.edFloorCode)
        form.addRow("Color Selection (BackColor)", color_wrap)
        root.addLayout(form)

        # Buttons
        btns = QHBoxLayout()
        self.btnNew = QPushButton("&New")
        self.btnNew.setToolTip("Add new user (Ctrl+N)")
        self.btnEdit = QPushButton("&Edit")
        self.btnEdit.setToolTip("Edit selected user (Ctrl+E)")
        self.btnDelete = QPushButton("&Delete")
        self.btnDelete.setToolTip("Delete selected user (PYT* only)")
        self.btnSave = QPushButton("&Save")
        self.btnSave.setToolTip("Save changes (Ctrl+S)")
        self.btnCancel = QPushButton("&Cancel")
        self.btnCancel.setToolTip("Cancel current operation (Esc)")
        self.btnChgPwd = QPushButton("Change &Password")
        self.btnChgPwd.setToolTip("Change password for selected user")
        self.btnExit = QPushButton("E&xit")
        self.btnExit.setToolTip("Close this window")
        for b in (self.btnNew, self.btnEdit, self.btnDelete, self.btnSave,
                  self.btnCancel, self.btnChgPwd, self.btnExit):
            mark_desktop_action(b)
            btns.addWidget(b)
        root.addLayout(btns)

        self.lblState = QLabel("State: Idle")
        self.lblState.setObjectName("desktopStateLabel")
        root.addWidget(self.lblState)

        self.btnNew.clicked.connect(self._on_new)
        self.btnEdit.clicked.connect(self._on_edit)
        self.btnDelete.clicked.connect(self._on_delete)
        self.btnSave.clicked.connect(self._on_save)
        self.btnCancel.clicked.connect(self._on_cancel)
        self.btnChgPwd.clicked.connect(self._on_change_pwd)
        self.btnExit.clicked.connect(self.reject)
        # MS-016: type karne par swatch turant update (VB6 swatch hi value)
        self.edBackColor.textChanged.connect(self._on_backcolor_text)

        from PyQt6.QtGui import QShortcut, QKeySequence
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._on_new)
        QShortcut(QKeySequence("Ctrl+E"), self, activated=self._on_edit)
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._on_save)
        QShortcut(QKeySequence("Escape"), self, activated=self._on_cancel)
        QShortcut(QKeySequence("F5"), self, activated=self.reload)

        self._set_state(False)
        self.reload()

    # ---- state machine ----
    def _set_state(self, enabled: bool):
        for e in (self.edUser, self.edLabel, self.edShort,
                  self.edPass, self.edActive, self.edAllowDtChng,
                  self.edGodCode, self.edFloorCode, self.edBackColor):
            e.setEnabled(enabled)
        # MS-016: VB6 Label1(14) swatch sirf Browse mode ke bahar clickable
        # (Label1_Click root frm :917 `If CStr() <> "Browse"`)
        self.swBackColor.setEnabled(enabled)
        for b in (self.btnNew, self.btnEdit, self.btnDelete, self.btnChgPwd):
            b.setEnabled(not enabled)
        for b in (self.btnSave, self.btnCancel):
            b.setEnabled(enabled)
        self.state = ("Add" if enabled and self.edit_pk is None
                      else ("Edit" if enabled else "Idle"))
        self.lblState.setText(f"State: {self.state}")

    def _clear(self):
        for e in (self.edUser, self.edLabel, self.edShort, self.edPass,
                  self.edGodCode, self.edFloorCode):
            e.clear()
        self.edActive.setText("Y")
        self.edAllowDtChng.setText("N")
        # MS-016: naye user ka BackColor 0 (DB default ((0))); VB6 mein
        # swatch designer value &H8080FF& rakhta par MoveRec pehle loaded
        # record ka color copy kar deta tha (non-deterministic) - isliye
        # DB default 0 rakha.
        self.edBackColor.setText("0")
        self.swBackColor.set_color(_ole_to_hex(0))

    # ---- MS-016: BackColor (VB6 CommonDialog CDLG) ----
    def _on_color_picked(self, color_hex: str) -> None:
        """VB6 Label1_Click: CDLG.Color -> CLng -> swatch; store int."""
        self.edBackColor.setText(str(_hex_to_ole(color_hex)))

    def _on_backcolor_text(self, text: str) -> None:
        """Type ki hui int par swatch turant dikhao (VB6 wahi swatch tha)."""
        try:
            self.swBackColor.set_color(_ole_to_hex(int(text.strip() or 0)))
        except ValueError:
            pass

    # ---- data ----
    def reload(self):
        rows = usermaster.list_all()
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            vals = [rec["username"], rec["label"], rec.get("short", ""),
                    rec["active"], "-"]
            for c, v in enumerate(vals):
                it = QTableWidgetItem(str(v or ""))
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                it.setForeground(QColor(_theme.palette()["text"]))
                self.tbl.setItem(r, c, it)
        if rows:
            self.tbl.selectRow(0)

    def _selected_user(self) -> str | None:
        r = self.tbl.currentRow()
        if r < 0:
            return None
        return self.tbl.item(r, 0).text()

    # ---- handlers ----
    def _on_new(self):
        self.edit_pk = None
        self._clear()
        self._set_state(True)
        self.edUser.setFocus()

    def _on_edit(self):
        uname = self._selected_user()
        if not uname:
            QMessageBox.information(self, "Edit", "Pehle row select karo")
            return
        rec = usermaster.get(uname)
        if not rec:
            return
        self.edit_pk = uname
        self.edUser.setText(rec["username"])
        self.edUser.setEnabled(False)   # PK change nahi hoti
        self.edLabel.setText(rec["label"])
        self.edShort.setText(rec["short"])
        self.edPass.clear()
        self.edPass.setPlaceholderText("Blank rakho = password nahi badlega")
        self.edActive.setText(rec["active"])
        self.edAllowDtChng.setText(rec.get("allowdtchng", "N"))
        # MS-016: GodCode/FloorCode/BackColor load (VB6 MoveRec:
        # Fields.Item("BackColor") -> Label1.BackColor)
        self.edGodCode.setText(rec.get("godcode", ""))
        self.edFloorCode.setText(rec.get("floorcode", ""))
        self.edBackColor.setText(str(rec.get("backcolor", 0)))
        self._set_state(True)
        self.state = "Edit"
        self.lblState.setText("State: Edit")
        self.edUser.setEnabled(False)

    def _on_save(self):
        uname = self.edUser.text().strip().upper()
        if not uname:
            QMessageBox.warning(self, "Save", "Username zaroori hai")
            return
        rec = {
            "username": uname,
            "label": self.edLabel.text().strip(),
            "short": self.edShort.text().strip(),
            "active": (self.edActive.text().strip().upper() or "Y"),
            "allowdtchng": (self.edAllowDtChng.text().strip().upper() or "N"),
            # MS-016
            "godcode": self.edGodCode.text().strip(),
            "floorcode": self.edFloorCode.text().strip(),
            "backcolor": (self.edBackColor.text().strip() or "0"),
        }
        pwd = self.edPass.text()  # blank = keep (edit mode)
        try:
            if self.state == "Add":
                if usermaster.exists(uname):
                    QMessageBox.warning(self, "Save",
                                        f"User '{uname}' pehle se hai")
                    return
                usermaster.insert(rec, plain_password=pwd)
            else:
                # Edit: password sirf tab update jab user ne kuch type kiya
                usermaster.update(
                    self.edit_pk, rec,
                    plain_password=pwd if pwd else None)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        self.edit_pk = None
        self._set_state(False)
        self.reload()

    def _on_cancel(self):
        self.edit_pk = None
        self._clear()
        self._set_state(False)

    def _on_delete(self):
        uname = self._selected_user()
        if not uname:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        # BUG-005 FIX: VB6 only protects SA user; any other user can be deleted.
        # Previous Python code incorrectly blocked all non-PYT* users.
        if uname.upper() == "SA":
            QMessageBox.warning(self, "Delete",
                                "SA user delete nahi ho sakta (system user)")
            return
        if uname.upper() == self.current_user.upper():
            QMessageBox.warning(self, "Delete",
                                "Aap khud ko delete nahi kar sakte")
            return
        if QMessageBox.question(
                self, "Delete",
                f"User '{uname}' delete karein?\n\n"
                "Yeh user1, user2, menuhelp1 aur userMAST se bhi delete ho "
                "jaayega.",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
                QMessageBox.StandardButton.No) == \
                QMessageBox.StandardButton.Yes:
            try:
                usermaster.delete(uname)
            except Exception as e:
                QMessageBox.critical(self, "Delete", f"DB error: {e}")
                return
            self.reload()

    def _on_change_pwd(self):
        """VB6 password-change dialog (Idle mode - grid se user select)."""
        uname = self._selected_user()
        if not uname:
            QMessageBox.information(self, "Change Password",
                                    "Pehle grid mein user select karo")
            return
        dlg = QDialog(self)
        apply_desktop_surface(dlg, "desktopChangePassword")
        dlg.setWindowTitle(f"Change Password - {uname}")
        dlg.setModal(True)
        form = QFormLayout()
        ed_new = QLineEdit()
        ed_new.setEchoMode(QLineEdit.EchoMode.Password)
        ed_new.setPlaceholderText("Naya password")
        ed_conf = QLineEdit()
        ed_conf.setEchoMode(QLineEdit.EchoMode.Password)
        ed_conf.setPlaceholderText("Confirm password")
        form.addRow("New Password", ed_new)
        form.addRow("Confirm", ed_conf)
        lay = QVBoxLayout(dlg)
        lay.addLayout(form)
        brow = QHBoxLayout()
        ok = QPushButton("Change")
        cancel = QPushButton("Cancel")
        mark_desktop_action(ok, "primary")
        mark_desktop_action(cancel)
        brow.addStretch()
        brow.addWidget(ok)
        brow.addWidget(cancel)
        lay.addLayout(brow)
        ok.clicked.connect(dlg.accept)
        cancel.clicked.connect(dlg.reject)
        ok.setDefault(True)
        if dlg.exec() != QDialog.DialogCode.Accepted:
            return
        new_pwd = ed_new.text()
        if new_pwd != ed_conf.text():
            QMessageBox.warning(self, "Change Password",
                                "Passwords match nahi karte")
            return
        try:
            usermaster.set_password(uname, new_pwd)
        except Exception as e:
            QMessageBox.critical(self, "Change Password", f"DB error: {e}")
            return
        QMessageBox.information(self, "Change Password",
                                f"'{uname}' ka password change ho gaya")


def open_usermaster(parent=None, current_user: str = "SA"):
    UserMasterForm(parent, current_user=current_user).exec()


def main() -> int:
    app = QApplication(sys.argv)
    f = UserMasterForm()
    f.show()
    shot = os.environ.get("HMS_POC_SHOT")
    if shot:
        from PyQt6.QtTest import QTest
        QTest.qWait(600)
        f.grab().save(shot)
        print("screenshot:", shot)
        return 0
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
