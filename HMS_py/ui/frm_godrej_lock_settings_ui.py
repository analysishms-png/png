"""frmGodrejLockSettings UI (VB6 frmGodrejLockSettings.frm port) — Godrej Electronic Lock Configuration.

VB6 form: frmGodrejLockSettings (Caption="Godrej Lock Settings")
- Configuration for Godrej electronic door locks
- Fields: Lift Information (checkbox), PowerSwitch Content (checkbox), Data (textbox)
- Frame3: Guest Name, PWET, PWLC, PN (textboxes with sample data)
- Frame4: Data textbox with label
- CmdSaveExit button

Note: VB6 shows sample data in textboxes (likely defaults or last saved values).
"""

from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt, QDate
from PyQt6.QtGui import QKeySequence, QShortcut
from PyQt6.QtWidgets import (
    QCheckBox,
    QDialog,
    QFormLayout,
    QGroupBox,
    QHBoxLayout,
    QLabel,
    QLineEdit,
    QMessageBox,
    QPushButton,
    QVBoxLayout,
    QWidget,
)

from HMS_py.core import db
from HMS_py.ui import theme as _theme


class FrmGodrejLockSettingsDialog(QDialog):
    """Godrej Electronic Lock Configuration (VB6 frmGodrejLockSettings.frm port)."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Godrej Lock Settings")
        self.resize(800, 600)
        self.setFixedSize(800, 600)  # VB6 had fixed size feel
        self._build_ui()
        self.load_settings()

    def _build_ui(self):
        """Build the UI components matching VB6 layout."""
        p = _theme.palette()
        v = QVBoxLayout(self)
        v.setContentsMargins(12, 10, 12, 10)
        v.setSpacing(8)

        # Title would normally be here, but VB6 form didn't have prominent title

        # Main content - two frames like VB6
        content = QHBoxLayout()

        # Left side - Frame4 equivalent (Data)
        left_group = QGroupBox("Data")
        left_group.setStyleSheet(f"QGroupBox {{ font-weight: bold; color: {p['text']}; border: 1px solid {p['border_strong']}; border-radius: {p['radius']}px; margin-top: 1ex; }} "
                                f"QGroupBox::title {{ subcontrol-origin: margin; left: 10px; padding: 0 5px 0 5px; }}")
        left_layout = QVBoxLayout(left_group)
        self.txt_data = QLineEdit()
        self.txt_data.setPlaceholderText("Enter data...")
        left_layout.addWidget(QLabel("Data:"))
        left_layout.addWidget(self.txt_data)
        content.addWidget(left_group)

        # Right side - Frame3 equivalent (Guest Info, etc.)
        right_group = QGroupBox("Card Information")
        right_group.setStyleSheet(f"QGroupBox {{ font-weight: bold; color: {p['text']}; border: 1px solid {p['border_strong']}; border-radius: {p['radius']}px; margin-top: 1ex; }} "
                                 f"QGroupBox::title {{ subcontrol-origin: margin; left: 10px; padding: 0 5px 0 5px; }}")
        right_layout = QFormLayout(right_group)
        right_layout.setLabelAlignment(Qt.AlignmentFlag.AlignLeft)
        right_layout.setFormAlignment(Qt.AlignmentFlag.AlignTop | Qt.AlignmentFlag.AlignLeft)

        self.txt_guest_name = QLineEdit()
        self.txt_guest_name.setPlaceholderText("Enter guest name...")
        self.txt_pwet = QLineEdit()
        self.txt_pwet.setPlaceholderText("PWET value...")
        self.txt_pwlc = QLineEdit()
        self.txt_pwlc.setPlaceholderText("PWLC value...")
        self.txt_pn = QLineEdit()
        self.txt_pn.setPlaceholderText("PN value...")

        right_layout.addRow("Guest Name:", self.txt_guest_name)
        right_layout.addRow("PWET:", self.txt_pwet)
        right_layout.addRow("PWLC:", self.txt_pwlc)
        right_layout.addRow("PN:", self.txt_pn)
        content.addWidget(right_group)

        v.addLayout(content)

        # Checkboxes section (like VB6 Frame2 area)
        checks_group = QGroupBox("Options")
        checks_group.setStyleSheet(f"QGroupBox {{ font-weight: bold; color: {p['text']}; border: 1px solid {p['border_strong']}; border-radius: {p['radius']}px; margin-top: 1ex; }} "
                                  f"QGroupBox::title {{ subcontrol-origin: margin; left: 10px; padding: 0 5px 0 5px; }}")
        checks_layout = QVBoxLayout(checks_group)
        self.ckb_lift = QCheckBox("Lift Information")
        self.ckb_ps = QCheckBox("PowerSwitch Content")
        self.ckb_data = QCheckBox("Data")
        checks_layout.addWidget(self.ckb_lift)
        checks_layout.addWidget(self.ckb_ps)
        checks_layout.addWidget(self.ckb_data)
        v.addWidget(checks_group)

        # Buttons
        button_layout = QHBoxLayout()
        button_layout.addStretch(1)
        self.btn_save_exit = QPushButton("Save && Exit")
        self.btn_save_exit.setDefault(True)
        self.btn_save_exit.setToolTip("Save settings and exit (Ctrl+S)")
        self.btn_save_exit.clicked.connect(self._save_and_exit)
        button_layout.addWidget(self.btn_save_exit)
        self.btn_exit = QPushButton("Exit")
        self.btn_exit.setToolTip("Exit without saving (Esc)")
        self.btn_exit.clicked.connect(self.reject)
        button_layout.addWidget(self.btn_exit)
        v.addLayout(button_layout)

        # Shortcuts
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save_and_exit)
        QShortcut(QKeySequence("Escape"), self, activated=self.reject)

    def load_settings(self):
        """Load saved settings from database or use defaults."""
        try:
            # Try to load from GodrejLockSettings table
            settings = db.query_one("SELECT * FROM GodrejLockSettings WHERE ID = 1")
            if settings:
                self.txt_data.setText(settings.get("Data", ""))
                self.txt_guest_name.setText(settings.get("GuestName", ""))
                self.txt_pwet.setText(settings.get("PWET", "1003131200"))
                self.txt_pwlc.setText(settings.get("PWLC", ""))
                self.txt_pn.setText(settings.get("PN", ""))
                self.ckb_lift.setChecked(bool(settings.get("LiftInfo", 0)))
                self.ckb_ps.setChecked(bool(settings.get("PowerSwitch", 0)))
                self.ckb_data.setChecked(bool(settings.get("DataFlag", 0)))
                self.lbl_status.setText("Loaded saved settings")
                return
        except Exception:
            pass  # Table doesn't exist or error, use defaults/VB6 values

        # Set VB6-like default values (from the form design)
        self.txt_data.setText("")
        self.txt_guest_name.setText("abcdefgh")  # From VB6
        self.txt_pwet.setText("1003131200")      # From VB6
        self.txt_pwlc.setText("")                # Empty in VB6
        self.txt_pn.setText("")                  # Empty in VB6
        self.ckb_lift.setChecked(False)
        self.ckb_ps.setChecked(False)
        self.ckb_data.setChecked(False)
        self.lbl_status.setText("Using default values")

    def _save_and_exit(self):
        """Save settings and exit."""
        try:
            cn = db.connect()
            # Try to update existing record, otherwise insert
            existing = db.query_one("SELECT ID FROM GodrejLockSettings WHERE ID = 1", cn=cn)
            if existing:
                db.execute("""
                    UPDATE GodrejLockSettings SET
                        Data = ?, GuestName = ?, PWET = ?, PWLC = ?, PN = ?,
                        LiftInfo = ?, PowerSwitch = ?, DataFlag = ?, UpdatedDate = GETDATE()
                    WHERE ID = 1
                """, (
                    self.txt_data.text(),
                    self.txt_guest_name.text(),
                    self.txt_pwet.text(),
                    self.txt_pwlc.text(),
                    self.txt_pn.text(),
                    1 if self.ckb_lift.isChecked() else 0,
                    1 if self.ckb_ps.isChecked() else 0,
                    1 if self.ckb_data.isChecked() else 0
                ), cn=cn, commit=True)
            else:
                db.execute("""
                    INSERT INTO GodrejLockSettings 
                    (ID, Data, GuestName, PWET, PWLC, PN, LiftInfo, PowerSwitch, DataFlag, CreatedDate, UpdatedDate)
                    VALUES (1, ?, ?, ?, ?, ?, ?, ?, ?, GETDATE(), GETDATE())
                """, (
                    self.txt_data.text(),
                    self.txt_guest_name.text(),
                    self.txt_pwet.text(),
                    self.txt_pwlc.text(),
                    self.txt_pn.text(),
                    1 if self.ckb_lift.isChecked() else 0,
                    1 if self.ckb_ps.isChecked() else 0,
                    1 if self.ckb_data.isChecked() else 0
                ), cn=cn, commit=True)
            cn.close()
            QMessageBox.information(self, "Godrej Lock Settings", "Settings saved successfully.")
            self.accept()
        except Exception as e:
            QMessageBox.critical(self, "Godrej Lock Settings", f"Failed to save settings: {e}")


def open_frm_godrej_lock_settings(parent=None):
    """Shell opener for 'Godrej Lock Settings' leaf."""
    w = FrmGodrejLockSettingsDialog(parent)
    w.setWindowFlags(Qt.WindowType.Window)
    w.show()
    return w


def main():
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = FrmGodrejLockSettingsDialog()
    w.resize(800, 600)
    w.show()
    sys.exit(app.exec())


if __name__ == "__main__":
    main()