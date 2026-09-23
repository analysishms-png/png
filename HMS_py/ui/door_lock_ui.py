"""Door Lock Settings UI - Godrej RFID Door Lock Configuration.

Ported from VB6 frmGodrejLockSettings.frm.
Provides add/edit/delete/refresh functionality for configuring
Godrej door locks connected via serial port.

Uses QDialog pattern with theme-aware styling.
Serial communication via pyserial (simulate mode by default).
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtWidgets import (QDialog, QVBoxLayout, QHBoxLayout,
    QLabel, QLineEdit, QComboBox, QPushButton, QTableWidget,
    QTableWidgetItem, QGroupBox, QCheckBox, QStatusBar,
    QFormLayout, QAbstractItemView, QHeaderView, QWidget,
    QMessageBox, QFrame, QSpinBox, QTextEdit)
from PyQt6.QtCore import Qt, QSize
from PyQt6.QtGui import QFont, QColor

from HMS_py.ui import theme as _theme
from HMS_py.ui.design import (WindowSize, Size, Spacing, Font,
                               Layout, make_button_bar, styled_button,
                               make_line_edit, make_combo_box)
from HMS_py.core.godrej_locks import (LockConfig, GodrejLockManager,
    GodrejLockError, SerialConnectionError, LockCommunicationError,
    validate_field)


def _p() -> dict:
    return _theme.palette()


class DoorLockForm(QDialog):
    """Godrej Door Lock Settings dialog (VB6 frmGodrejLockSettings).

    Sections:
      - Connection Setting: Reader Model, Port No, PowerSwitch Type, Repeat Times
      - System Setting: System Password, Sector Nos, PWDs
      - Card Information: CN, NC, GI, BT, LC, MC, GN, ET
      - Lift Information: ET, BT, CN, Data, BeginAddr, EndAddr, MaxAddr
      - Door Settings: DoorID, GuestSex, GuestName, CardNo, BeginTime, Data

    Buttons: Read, Write, Save & Exit, Exit
    """

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Godrej Lock Settings")
        self.resize(1050, 780)
        self.setMinimumSize(900, 650)
        self.setModal(True)

        self._manager: GodrejLockManager | None = None
        self._current_site: str = "DEFAULT"
        self._simulate = True
        self._setup_ui()
        self._connect_manager()
        self._refresh()

    def _setup_ui(self) -> None:
        p = _p()
        root = QVBoxLayout(self)
        root.setContentsMargins(12, 10, 12, 10)
        root.setSpacing(8)

        # Header
        header = QFrame()
        hdr_lay = QHBoxLayout(header)
        hdr_lay.setContentsMargins(8, 4, 8, 4)
        title = QLabel("Godrej Door Lock Settings")
        title.setFont(QFont("Segoe UI", 16, QFont.Weight.Bold))
        title.setStyleSheet(f"color: {p['text']}; background: transparent;")
        hdr_lay.addWidget(title)
        hdr_lay.addStretch()
        self.lbl_status = QLabel("Ready")
        self.lbl_status.setStyleSheet(
            f"color: {p['text_dim']}; font-size: 11px; background: transparent;")
        hdr_lay.addWidget(self.lbl_status)
        root.addWidget(header)

        # Top: Connection + System settings side by side
        top_lay = QHBoxLayout()
        top_lay.setSpacing(12)

        # --- Connection Setting group ---
        conn_grp = QGroupBox("Connection Setting")
        conn_lay = QFormLayout(conn_grp)
        conn_lay.setSpacing(6)
        conn_lay.setContentsMargins(12, 14, 12, 12)

        self.cmb_reader_model = make_combo_box(
            ["RW-21", "RW-22", "8602-1M-57BA"], placeholder="Reader Model",
            tooltip="Reader Model (VB6 cmbDM)")
        self.cmb_reader_model.currentTextChanged.connect(self._on_change)
        self.cmb_port = make_combo_box(
            ["COM1", "COM2", "COM3", "COM4", "COM5"], placeholder="Port No",
            tooltip="Serial Port (VB6 cmbDP)")
        self.cmb_port.currentTextChanged.connect(self._on_change)
        self.cmb_power_switch = make_combo_box(
            ["8602-1M-57BA", "PS-100", "PS-200"], placeholder="PowerSwitch Type",
            tooltip="PowerSwitch Type (VB6 cmbPM)")
        self.cmb_power_switch.currentTextChanged.connect(self._on_change)
        self.txt_repeat_times = make_line_edit("1", tooltip="Repeat Times (VB6 txtRepeatTimes)")
        self.txt_repeat_times.setMaxLength(6)
        self.txt_repeat_times.textChanged.connect(self._on_change)

        conn_lay.addRow(QLabel("Reader Model:"), self.cmb_reader_model)
        conn_lay.addRow(QLabel("Port No:"), self.cmb_port)
        conn_lay.addRow(QLabel("PowerSwitch Type:"), self.cmb_power_switch)
        conn_lay.addRow(QLabel("Repeat Times:"), self.txt_repeat_times)
        top_lay.addWidget(conn_grp, stretch=1)

        # --- System Setting group ---
        sys_grp = QGroupBox("System Setting")
        sys_lay = QFormLayout(sys_grp)
        sys_lay.setSpacing(6)
        sys_lay.setContentsMargins(12, 14, 12, 12)

        self.txt_system_pwd = make_line_edit(tooltip="System Password (VB6 txtSystemPassword)")
        self.txt_system_pwd.setEchoMode(QLineEdit.EchoMode.Password)
        self.txt_sector_no = make_line_edit("0", tooltip="Sector No (VB6 txtSectorNo)")
        self.txt_sector_no.setMaxLength(2)
        self.txt_ps_sector = make_line_edit("15", tooltip="PowerSwitch Sector No (VB6 txtPSSectorNo)")
        self.txt_ps_sector.setMaxLength(3)
        self.txt_ps_w = make_line_edit("FFFFFFFFFFFF", tooltip="PowerSwitch PWD (VB6 txtPSW)")
        self.txt_ps_w.setEchoMode(QLineEdit.EchoMode.Password)
        self.txt_data_sector = make_line_edit("3", tooltip="Data Sector No (VB6 txtDataSectorNo)")
        self.txt_data_sector.setMaxLength(3)
        self.txt_data_pwd = make_line_edit("FFFFFFFFFFFF", tooltip="Data PWD (VB6 txtDataPWD)")
        self.txt_data_pwd.setEchoMode(QLineEdit.EchoMode.Password)

        sys_lay.addRow(QLabel("System Password:"), self.txt_system_pwd)
        sys_lay.addRow(QLabel("Sector No:"), self.txt_sector_no)
        sys_lay.addRow(QLabel("PS Sector No:"), self.txt_ps_sector)
        sys_lay.addRow(QLabel("PS PWD:"), self.txt_ps_w)
        sys_lay.addRow(QLabel("Data Sector No:"), self.txt_data_sector)
        sys_lay.addRow(QLabel("Data PWD:"), self.txt_data_pwd)
        top_lay.addWidget(sys_grp, stretch=1)

        root.addLayout(top_lay, stretch=1)

        # Middle: Card + Lift side by side
        mid_lay = QHBoxLayout()
        mid_lay.setSpacing(12)

        # --- Card Information ---
        card_grp = QGroupBox("Card Information")
        card_lay = QFormLayout(card_grp)
        card_lay.setSpacing(6)
        card_lay.setContentsMargins(12, 14, 12, 12)

        self.txt_cn = make_line_edit("1", tooltip="Card No (VB6 txtCN)")
        self.txt_cn.setMaxLength(4)
        self.txt_nc = make_line_edit("0000", tooltip="Card Number (VB6 txtNC)")
        self.txt_nc.setMaxLength(4)
        self.txt_gi = make_line_edit("1", tooltip="Guest ID (VB6 txtGI)")
        self.txt_gi.setMaxLength(2)
        self.txt_bt = make_line_edit("0708181500", tooltip="Begin Time (VB6 txtBT)")
        self.txt_bt.setMaxLength(10)
        self.txt_lc = make_line_edit("000001", tooltip="Lock Code (VB6 txtLC)")
        self.txt_lc.setMaxLength(6)
        self.txt_mc = make_line_edit("00000000", tooltip="MAC Code (VB6 txtMC)")
        self.txt_mc.setMaxLength(8)
        self.txt_gn = make_line_edit("1", tooltip="Guest Name (VB6 txtGN)")
        self.txt_gn.setMaxLength(2)
        self.txt_et = make_line_edit("0708191500", tooltip="End Time (VB6 txtET)")
        self.txt_et.setMaxLength(10)

        card_lay.addRow(QLabel("CN:"), self.txt_cn)
        card_lay.addRow(QLabel("NC:"), self.txt_nc)
        card_lay.addRow(QLabel("GI:"), self.txt_gi)
        card_lay.addRow(QLabel("BT:"), self.txt_bt)
        card_lay.addRow(QLabel("LC:"), self.txt_lc)
        card_lay.addRow(QLabel("MC:"), self.txt_mc)
        card_lay.addRow(QLabel("GN:"), self.txt_gn)
        card_lay.addRow(QLabel("ET:"), self.txt_et)
        mid_lay.addWidget(card_grp, stretch=1)

        # --- Lift Information ---
        lift_grp = QGroupBox("Lift Information")
        lift_lay = QFormLayout(lift_grp)
        lift_lay.setSpacing(6)
        lift_lay.setContentsMargins(12, 14, 12, 12)

        self.txt_lift_et = make_line_edit("0708191500", tooltip="End Time (VB6 Text1)")
        self.txt_lift_et.setMaxLength(10)
        self.txt_lift_bt = make_line_edit("0708181500", tooltip="Begin Time (VB6 Text2)")
        self.txt_lift_bt.setMaxLength(10)
        self.txt_lift_cn = make_line_edit("1", tooltip="CN (VB6 Text3)")
        self.txt_lift_cn.setMaxLength(8)
        self.txt_lift_data = make_line_edit("FFFF", tooltip="Data (VB6 Text4)")
        self.txt_lift_data.setMaxLength(4)
        self.txt_lift_begin = make_line_edit("96", tooltip="BeginAddr (VB6 Text5)")
        self.txt_lift_begin.setMaxLength(8)
        self.txt_lift_end = make_line_edit("97", tooltip="EndAddr (VB6 Text6)")
        self.txt_lift_end.setMaxLength(4)
        self.txt_lift_max = make_line_edit("97", tooltip="MaxAddr (VB6 Text7)")
        self.txt_lift_max.setMaxLength(4)

        lift_lay.addRow(QLabel("ET:"), self.txt_lift_et)
        lift_lay.addRow(QLabel("BT:"), self.txt_lift_bt)
        lift_lay.addRow(QLabel("CN:"), self.txt_lift_cn)
        lift_lay.addRow(QLabel("Data:"), self.txt_lift_data)
        lift_lay.addRow(QLabel("BeginAddr:"), self.txt_lift_begin)
        lift_lay.addRow(QLabel("EndAddr:"), self.txt_lift_end)
        lift_lay.addRow(QLabel("MaxAddr:"), self.txt_lift_max)
        mid_lay.addWidget(lift_grp, stretch=1)

        root.addLayout(mid_lay, stretch=1)

        # Bottom: Door Settings + Data
        bot_lay = QHBoxLayout()
        bot_lay.setSpacing(12)

        # --- Door Settings ---
        door_grp = QGroupBox("Door Settings")
        door_lay = QFormLayout(door_grp)
        door_lay.setSpacing(6)
        door_lay.setContentsMargins(12, 14, 12, 12)

        self.txt_door_id = make_line_edit("1", tooltip="DoorID (VB6 txtPWCN)")
        self.txt_door_id.setMaxLength(2)
        self.txt_guest_sex = make_line_edit("0", tooltip="GuestSex (VB6 txtGuestSex)")
        self.txt_guest_sex.setMaxLength(1)
        self.txt_guest_name = make_line_edit("abcdefgh", tooltip="GuestName (VB6 txtGuestName)")
        self.txt_card_no = make_line_edit("000001", tooltip="CardNo (VB6 txtPWLC)")
        self.txt_card_no.setMaxLength(6)
        self.txt_begin_time = make_line_edit("100312120000", tooltip="BeginTime (VB6 txtPWBT)")
        self.txt_begin_time.setMaxLength(12)
        self.txt_begin_time2 = make_line_edit("100313120000", tooltip="BeginTime2 (VB6 txtPWET)")
        self.txt_begin_time2.setMaxLength(12)

        door_lay.addRow(QLabel("DoorID:"), self.txt_door_id)
        door_lay.addRow(QLabel("GuestSex:"), self.txt_guest_sex)
        door_lay.addRow(QLabel("GuestName:"), self.txt_guest_name)
        door_lay.addRow(QLabel("CardNo:"), self.txt_card_no)
        door_lay.addRow(QLabel("BeginTime:"), self.txt_begin_time)
        door_lay.addRow(QLabel("BeginTime2:"), self.txt_begin_time2)
        bot_lay.addWidget(door_grp, stretch=1)

        # --- Data ---
        data_grp = QGroupBox("Data")
        data_lay = QVBoxLayout(data_grp)
        data_lay.setContentsMargins(12, 14, 12, 12)
        self.txt_data = QTextEdit()
        self.txt_data.setMaximumHeight(120)
        self.txt_data.setPlaceholderText("Data content...")
        data_lay.addWidget(self.txt_data)
        bot_lay.addWidget(data_grp, stretch=1)

        root.addLayout(bot_lay, stretch=1)

        # Checkboxes
        chk_lay = QHBoxLayout()
        self.chk_lift = QCheckBox("Lift Information")
        self.chk_ps = QCheckBox("PowerSwitch Content")
        self.chk_data = QCheckBox("Data")
        self.chk_lift.setChecked(True)
        self.chk_data.setChecked(True)
        chk_lay.addWidget(self.chk_lift)
        chk_lay.addWidget(self.chk_ps)
        chk_lay.addWidget(self.chk_data)
        chk_lay.addStretch()
        root.addLayout(chk_lay)

        # Button bar
        btn_lay = QHBoxLayout()
        btn_lay.setSpacing(8)

        self.btn_read = styled_button("Read", role="primary",
            tooltip="Read config from device")
        self.btn_write = styled_button("Write", role="success",
            tooltip="Write config to device")
        self.btn_save_exit = styled_button("Save && Exit", role="primary",
            tooltip="Save and close")
        self.btn_exit = styled_button("Exit", role="danger",
            tooltip="Close without saving")

        btn_lay.addWidget(self.btn_read)
        btn_lay.addWidget(self.btn_write)
        btn_lay.addStretch()
        btn_lay.addWidget(self.btn_save_exit)
        btn_lay.addWidget(self.btn_exit)
        root.addLayout(btn_lay)

        # Status bar
        self.status_bar = QStatusBar()
        self.status_bar.setStyleSheet(
            f"QStatusBar {{ background: {p['glass_tint']}; color: {p['text_dim']}; "
            f"border-top: 1px solid {p['border']}; font-size: 11px; padding: 4px 12px; }}")
        root.addWidget(self.status_bar)

        # Signals
        self.btn_read.clicked.connect(self._on_read)
        self.btn_write.clicked.connect(self._on_write)
        self.btn_save_exit.clicked.connect(self._on_save_exit)
        self.btn_exit.clicked.connect(self.reject)

    def _connect_manager(self) -> None:
        """Initialize the serial manager (simulate mode by default)."""
        self._simulate = True
        self._manager = GodrejLockManager(port=self.cmb_port.currentText(),
                                          simulate=self._simulate)

    def _refresh(self) -> None:
        """Load config from manager into UI fields."""
        site = self.cmb_port.currentText()
        try:
            config = self._manager.read_config(site)
            self._load_config(config)
            self._current_site = site
            self._set_status(f"Loaded config for {site}", "success")
        except Exception as e:
            self._set_status(f"Read error: {e}", "danger")

    def _load_config(self, config: LockConfig) -> None:
        """Populate all UI fields from a LockConfig object."""
        self.cmb_reader_model.setCurrentText(config.reader_model or "RW-21")
        self.cmb_port.setCurrentText(config.reader_port or "COM1")
        self.cmb_power_switch.setCurrentText(config.power_switch_type or "8602-1M-57BA")
        self.txt_repeat_times.setText(str(config.repeat_times or "1"))
        self.txt_system_pwd.setText(config.system_password or "")
        self.txt_sector_no.setText(str(config.sector_no or "0"))
        self.txt_ps_sector.setText(str(config.ps_sector_no or "15"))
        self.txt_ps_w.setText(config.ps_w or "FFFFFFFFFFFF")
        self.txt_data_sector.setText(str(config.data_sector_no or "3"))
        self.txt_data_pwd.setText(config.data_pwd or "FFFFFFFFFFFF")
        self.txt_cn.setText(str(config.cn or "1"))
        self.txt_nc.setText(str(config.nc or "0000"))
        self.txt_gi.setText(str(config.gi or "1"))
        self.txt_bt.setText(str(config.bt or "0708181500"))
        self.txt_lc.setText(str(config.lc or "000001"))
        self.txt_mc.setText(str(config.mc or "00000000"))
        self.txt_gn.setText(str(config.gn or "1"))
        self.txt_et.setText(str(config.et or "0708191500"))
        self.txt_lift_et.setText(str(config.lift_et or "0708191500"))
        self.txt_lift_bt.setText(str(config.lift_bt or "0708181500"))
        self.txt_lift_cn.setText(str(config.lift_cn or "1"))
        self.txt_lift_data.setText(str(config.lift_data or "FFFF"))
        self.txt_lift_begin.setText(str(config.lift_begin_addr or "96"))
        self.txt_lift_end.setText(str(config.lift_end_addr or "97"))
        self.txt_lift_max.setText(str(config.lift_max_addr or "97"))
        self.txt_door_id.setText(str(config.door_id or "1"))
        self.txt_guest_sex.setText(str(config.guest_sex or "0"))
        self.txt_guest_name.setText(config.guest_name or "abcdefgh")
        self.txt_card_no.setText(str(config.card_no or "000001"))
        self.txt_begin_time.setText(str(config.begin_time or "100312120000"))
        self.txt_begin_time2.setText(str(config.begin_time2 or "100313120000"))
        self.txt_data.setPlainText(config.data_field or "")

    def _get_config(self) -> LockConfig:
        """Extract LockConfig from all UI fields."""
        return LockConfig(
            reader_model=self.cmb_reader_model.currentText(),
            reader_port=self.cmb_port.currentText(),
            power_switch_type=self.cmb_power_switch.currentText(),
            repeat_times=self.txt_repeat_times.text().strip() or "1",
            system_password=self.txt_system_pwd.text().strip(),
            sector_no=self.txt_sector_no.text().strip() or "0",
            ps_sector_no=self.txt_ps_sector.text().strip() or "15",
            ps_w=self.txt_ps_w.text().strip() or "FFFFFFFFFFFF",
            data_sector_no=self.txt_data_sector.text().strip() or "3",
            data_pwd=self.txt_data_pwd.text().strip() or "FFFFFFFFFFFF",
            cn=self.txt_cn.text().strip() or "1",
            nc=self.txt_nc.text().strip() or "0000",
            gi=self.txt_gi.text().strip() or "1",
            bt=self.txt_bt.text().strip() or "0708181500",
            lc=self.txt_lc.text().strip() or "000001",
            mc=self.txt_mc.text().strip() or "00000000",
            gn=self.txt_gn.text().strip() or "1",
            et=self.txt_et.text().strip() or "0708191500",
            lift_et=self.txt_lift_et.text().strip() or "0708191500",
            lift_bt=self.txt_lift_bt.text().strip() or "0708181500",
            lift_cn=self.txt_lift_cn.text().strip() or "1",
            lift_data=self.txt_lift_data.text().strip() or "FFFF",
            lift_begin_addr=self.txt_lift_begin.text().strip() or "96",
            lift_end_addr=self.txt_lift_end.text().strip() or "97",
            lift_max_addr=self.txt_lift_max.text().strip() or "97",
            door_id=self.txt_door_id.text().strip() or "1",
            guest_sex=self.txt_guest_sex.text().strip() or "0",
            guest_name=self.txt_guest_name.text().strip() or "abcdefgh",
            card_no=self.txt_card_no.text().strip() or "000001",
            begin_time=self.txt_begin_time.text().strip() or "100312120000",
            begin_time2=self.txt_begin_time2.text().strip() or "100313120000",
            data_field=self.txt_data.toPlainText().strip(),
        )

    def _validate(self) -> list[str]:
        """Validate all fields. Returns list of error strings."""
        errors = []
        cfg = self._get_config()
        # Check max lengths from VB6 form
        checks = [
            ("Sector No", cfg.sector_no, 2),
            ("PS Sector No", cfg.ps_sector_no, 3),
            ("Data Sector No", cfg.data_sector_no, 3),
            ("CN", cfg.cn, 4),
            ("NC", cfg.nc, 4),
            ("GI", cfg.gi, 2),
            ("BT", cfg.bt, 10),
            ("LC", cfg.lc, 6),
            ("MC", cfg.mc, 8),
            ("GN", cfg.gn, 2),
            ("ET", cfg.et, 10),
            ("DoorID", cfg.door_id, 2),
            ("GuestSex", cfg.guest_sex, 1),
            ("CardNo", cfg.card_no, 6),
            ("BeginTime", cfg.begin_time, 12),
            ("BeginTime2", cfg.begin_time2, 12),
            ("RepeatTimes", cfg.repeat_times, 6),
            ("CN(lift)", cfg.lift_cn, 8),
            ("BeginAddr", cfg.lift_begin_addr, 8),
            ("EndAddr", cfg.lift_end_addr, 4),
            ("MaxAddr", cfg.lift_max_addr, 4),
        ]
        for name, val, maxlen in checks:
            err = validate_field(name, val, maxlen)
            if err:
                errors.append(err)
        return errors

    def _set_status(self, msg: str, level: str = "info") -> None:
        color_map = {"success": "#059669", "danger": "#dc2626",
                      "warning": "#d97706", "info": "#0284c7"}
        color = color_map.get(level, "#64748b")
        self.lbl_status.setStyleSheet(
            f"color: {color}; font-weight: bold; font-size: 11px; "
            f"background: transparent;")
        self.lbl_status.setText(msg)
        self.status_bar.showMessage(msg)

    # ---- Button handlers ----

    def _on_read(self) -> None:
        """Read config from device (VB6 comRead click)."""
        try:
            self._refresh()
            self._set_status("Read complete", "success")
        except SerialConnectionError as e:
            self._set_status(f"Connection error: {e}", "danger")
            QMessageBox.warning(self, "Read Error", str(e))
        except LockCommunicationError as e:
            self._set_status(f"Communication error: {e}", "danger")
            QMessageBox.warning(self, "Read Error", str(e))
        except Exception as e:
            self._set_status(f"Error: {e}", "danger")
            QMessageBox.critical(self, "Read Error", str(e))

    def _on_write(self) -> None:
        """Write config to device (VB6 comWrite click)."""
        errors = self._validate()
        if errors:
            QMessageBox.warning(self, "Validation",
                                "Please fix errors:\n" + "\n".join(errors))
            return
        try:
            config = self._get_config()
            self._manager.write_config(config)
            self._set_status("Write complete", "success")
        except SerialConnectionError as e:
            self._set_status(f"Connection error: {e}", "danger")
            QMessageBox.warning(self, "Write Error", str(e))
        except LockCommunicationError as e:
            self._set_status(f"Communication error: {e}", "danger")
            QMessageBox.warning(self, "Write Error", str(e))
        except Exception as e:
            self._set_status(f"Error: {e}", "danger")
            QMessageBox.critical(self, "Write Error", str(e))

    def _on_save_exit(self) -> None:
        """Save and close (VB6 CmdSaveExit click)."""
        errors = self._validate()
        if errors:
            QMessageBox.warning(self, "Validation",
                                "Please fix errors:\n" + "\n".join(errors))
            return
        try:
            config = self._get_config()
            self._manager.write_config(config)
            self.accept()
        except Exception as e:
            self._set_status(f"Save error: {e}", "danger")
            QMessageBox.critical(self, "Save Error", str(e))

    def _on_change(self) -> None:
        """Handle any field change - mark as modified."""
        self._set_status("Modified - save required", "warning")


# ---- Standalone opener for shell registry ----

def open_door_lock(parent=None) -> None:
    """Open the Godrej Lock Settings dialog."""
    dlg = DoorLockForm(parent=parent)
    if dlg.exec() == QDialog.DialogCode.Accepted:
        pass


def open_door_lock_with_site(parent, site: str) -> None:
    """Open dialog pre-loaded with a specific site code."""
    dlg = DoorLockForm(parent=parent)
    dlg.cmb_port.setCurrentText(site)
    dlg._refresh()
    dlg.exec()


if __name__ == "__main__":
    app = None
    try:
        from PyQt6.QtWidgets import QApplication
        app = QApplication.instance() or QApplication(sys.argv)
        from HMS_py.ui.theme import apply_theme
        apply_theme(app)
    except Exception:
        pass
    dlg = DoorLockForm()
    dlg.show()
    if app:
        sys.exit(app.exec())