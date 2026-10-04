"""frmLockGodrejSettings UI (VB6 frmLockGodrejSettings.frm port) — Godrej Locks Operation.

VB6 form: frmLockGodrejSettings (Caption="Godrej Locks")
- Operations for Godrej electronic locks: Read, Write, Save & Exit
- Textboxes for various lock parameters: ET, GN, MC, LC, BT, GI, NC, CN
- RepeatTimes textbox (disabled by default)
- Frame1: Card Information groupbox with ET, GN, MC, LC, BT, GI, NC, CN fields
- Buttons: comSave (Save & Exit), comWrite (Write), comRead (Read), comExit (Exit)
- Note: comWrite and comRead are initially invisible (Visible=0)
"""

from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt, QDate
from PyQt6.QtGui import QKeySequence, QShortcut
from PyQt6.QtWidgets import (
    QDialog,
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


class FrmLockGodrejSettingsDialog(QDialog):
    """Godrej Locks Operation (VB6 frmLockGodrejSettings.frm port)."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Godrej Locks")
        self.resize(1050, 750)  # Sized to fit all controls
        self.setFixedSize(1050, 750)
        self._build_ui()
        self.load_defaults()

    def _build_ui(self):
        """Build the UI components matching VB6 layout."""
        p = _theme.palette()
        v = QVBoxLayout(self)
        v.setContentsMargins(12, 10, 12, 10)
        v.setSpacing(8)

        # Card Information GroupBox (Frame1 equivalent)
        card_group = QGroupBox("Card Information")
        card_group.setStyleSheet(f"QGroupBox {{ font-weight: bold; color: {p['text']}; border: 1px solid {p['border_strong']}; border-radius: {p['radius']}px; margin-top: 1ex; }} "
                                f"QGroupBox::title {{ subcontrol-origin: margin; left: 10px; padding: 0 5px 0 5px; }}")
        card_layout = QVBoxLayout(card_group)

        # Create a grid-like layout for the 8 textboxes (2 rows of 4)
        grid_layout = QHBoxLayout()

        # Left column (ET, GN, MC, LC)
        left_col = QVBoxLayout()
        self.txt_et = QLineEdit()
        self.txt_et.setPlaceholderText("ET (10 digits)...")
        self.txt_et.setMaxLength(10)
        self.txt_gn = QLineEdit()
        self.txt_gn.setPlaceholderText("GN...")
        self.txt_gn.setMaxLength(10)
        self.txt_mc = QLineEdit()
        self.txt_mc.setPlaceholderText("MC (8 digits)...")
        self.txt_mc.setMaxLength(8)
        self.txt_lc = QLineEdit()
        self.txt_lc.setPlaceholderText("LC (6 digits)...")
        self.txt_lc.setMaxLength(6)
        left_col.addWidget(QLabel("ET:"))
        left_col.addWidget(self.txt_et)
        left_col.addWidget(QLabel("GN:"))
        left_col.addWidget(self.txt_gn)
        left_col.addWidget(QLabel("MC:"))
        left_col.addWidget(self.txt_mc)
        left_col.addWidget(QLabel("LC:"))
        left_col.addWidget(self.txt_lc)
        grid_layout.addLayout(left_col)

        # Right column (BT, GI, NC, CN)
        right_col = QVBoxLayout()
        self.txt_bt = QLineEdit()
        self.txt_bt.setPlaceholderText("BT (10 digits)...")
        self.txt_bt.setMaxLength(10)
        self.txt_gi = QLineEdit()
        self.txt_gi.setPlaceholderText("GI...")
        self.txt_gi.setMaxLength(10)
        self.txt_nc = QLineEdit()
        self.txt_nc.setPlaceholderText("NC (4 digits)...")
        self.txt_nc.setMaxLength(4)
        self.txt_cn = QLineEdit()
        self.txt_cn.setPlaceholderText("CN...")
        self.txt_cn.setMaxLength(10)
        right_col.addWidget(QLabel("BT:"))
        right_col.addWidget(self.txt_bt)
        right_col.addWidget(QLabel("GI:"))
        right_col.addWidget(self.txt_gi)
        right_col.addWidget(QLabel("NC:"))
        right_col.addWidget(self.txt_nc)
        right_col.addWidget(QLabel("CN:"))
        right_col.addWidget(self.txt_cn)
        grid_layout.addLayout(right_col)

        card_layout.addLayout(grid_layout)
        v.addWidget(card_group)

        # RepeatTimes (disabled by default like VB6)
        repeat_group = QGroupBox("Repeat Times")
        repeat_group.setStyleSheet(f"QGroupBox {{ font-weight: bold; color: {p['text']}; border: 1px solid {p['border_strong']}; border-radius: {p['radius']}px; margin-top: 1ex; }} "
                                  f"QGroupBox::title {{ subcontrol-origin: margin; left: 10px; padding: 0 5px 0 5px; }}")
        repeat_layout = QHBoxLayout(repeat_group)
        self.txt_repeat_times = QLineEdit()
        self.txt_repeat_times.setText("1")
        self.txt_repeat_times.setMaxLength(6)
        self.txt_repeat_times.setEnabled(False)  # Disabled like VB6
        repeat_layout.addWidget(QLabel("Repeat Times:"))
        repeat_layout.addWidget(self.txt_repeat_times)
        repeat_layout.addStretch(1)
        v.addWidget(repeat_group)

        # Buttons
        button_layout = QHBoxLayout()
        button_layout.addStretch(1)
        self.btn_save_exit = QPushButton("Save && Exit")
        self.btn_save_exit.setDefault(True)
        self.btn_save_exit.setToolTip("Save settings and exit")
        self.btn_save_exit.clicked.connect(self._save_and_exit)
        button_layout.addWidget(self.btn_save_exit)

        self.btn_write = QPushButton("Write")
        self.btn_write.setToolTip("Write data to lock")
        self.btn_write.setVisible(False)  # Invisible by default like VB6
        self.btn_write.clicked.connect(self._write_to_lock)
        button_layout.addWidget(self.btn_write)

        self.btn_read = QPushButton("Read")
        self.btn_read.setToolTip("Read data from lock")
        self.btn_read.setVisible(False)  # Invisible by default like VB6
        self.btn_read.clicked.connect(self._read_from_lock)
        button_layout.addWidget(self.btn_read)

        self.btn_exit = QPushButton("Exit")
        self.btn_exit.setToolTip("Exit without saving")
        self.btn_exit.clicked.connect(self.reject)
        button_layout.addWidget(self.btn_exit)
        v.addLayout(button_layout)

        # Status label
        self.lbl_status = QLabel("Ready")
        self.lbl_status.setStyleSheet(f"color: {p['text_dim']};")
        v.addWidget(self.lbl_status)

    def load_defaults(self):
        """Load default values matching VB6 form design."""
        # Set VB6 default values from the form design
        self.txt_et.setText("0708191500")   # From VB6
        self.txt_gn.setText("1")            # From VB6
        self.txt_mc.setText("00000000")     # From VB6
        self.txt_lc.setText("000001")       # From VB6
        self.txt_bt.setText("0708181500")   # From VB6
        self.txt_gi.setText("1")            # From VB6
        self.txt_nc.setText("0000")         # From VB6
        self.txt_cn.setText("1")            # From VB6
        self.txt_repeat_times.setText("1")  # From VB6

        self.lbl_status.setText("Loaded VB6 default values")

    def _save_and_exit(self):
        """Save current settings and exit."""
        try:
            cn = db.connect()
            # Save to a GodrejLockOperations table or similar
            existing = db.query_one("SELECT ID FROM GodrejLockOperations WHERE ID = 1", cn=cn)
            if existing:
                db.execute("""
                    UPDATE GodrejLockOperations SET
                        ET = ?, GN = ?, MC = ?, LC = ?, BT = ?, GI = ?, NC = ?, CN = ?,
                        RepeatTimes = ?, UpdatedDate = GETDATE()
                    WHERE ID = 1
                """, (
                    self.txt_et.text(),
                    self.txt_gn.text(),
                    self.txt_mc.text(),
                    self.txt_lc.text(),
                    self.txt_bt.text(),
                    self.txt_gi.text(),
                    self.txt_nc.text(),
                    self.txt_cn.text(),
                    int(self.txt_repeat_times.text() or "1")
                ), cn=cn, commit=True)
            else:
                db.execute("""
                    INSERT INTO GodrejLockOperations 
                    (ID, ET, GN, MC, LC, BT, GI, NC, CN, RepeatTimes, CreatedDate, UpdatedDate)
                    VALUES (1, ?, ?, ?, ?, ?, ?, ?, ?, ?, GETDATE(), GETDATE())
                """, (
                    self.txt_et.text(),
                    self.txt_gn.text(),
                    self.txt_mc.text(),
                    self.txt_lc.text(),
                    self.txt_bt.text(),
                    self.txt_gi.text(),
                    self.txt_nc.text(),
                    self.txt_cn.text(),
                    int(self.txt_repeat_times.text() or "1")
                ), cn=cn, commit=True)
            cn.close()
            QMessageBox.information(self, "Godrej Locks", "Settings saved successfully.")
            self.accept()
        except Exception as e:
            QMessageBox.critical(self, "Godrej Locks", f"Failed to save settings: {e}")

    def _write_to_lock(self):
        """Simulate writing data to lock."""
        self.lbl_status.setText("Writing data to lock...")
        QMessageBox.information(self, "Godrej Locks", f"Writing data to lock with RepeatTimes={self.txt_repeat_times.text()}")
        self.lbl_status.setText("Write operation completed")

    def _read_from_lock(self):
        """Simulate reading data from lock."""
        self.lbl_status.setText("Reading data from lock...")
        # Simulate reading some values
        self.txt_et.setText("0708191500")
        self.txt_gn.setText("1")
        self.txt_mc.setText("00000000")
        self.txt_lc.setText("000001")
        self.txt_bt.setText("0708181500")
        self.txt_gi.setText("1")
        self.txt_nc.setText("0000")
        self.txt_cn.setText("1")
        QMessageBox.information(self, "Godrej Locks", "Data read from lock successfully")
        self.lbl_status.setText("Read operation completed")


def open_frm_lock_godrej_settings(parent=None):
    """Shell opener for 'Godrej Locks' leaf."""
    w = FrmLockGodrejSettingsDialog(parent)
    w.setWindowFlags(Qt.WindowType.Window)
    w.show()
    return w


def main():
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = FrmLockGodrejSettingsDialog()
    w.resize(1050, 750)
    w.show()
    sys.exit(app.exec())


if __name__ == "__main__":
    main()