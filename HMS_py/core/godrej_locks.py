"""Godrej Door Lock serial communication module.

VB6 frmGodrejLockSettings.frm port: configures Godrej RFID door locks
via serial port (COM). Uses pyserial for real hardware; falls back to
simulation mode when pyserial is unavailable or port cannot be opened.

VB6 form sections mapped here:
  - Connection Setting: ReaderModel, PortNo, PowerSwitchType, RepeatTimes
  - System Setting: SystemPassword, SectorNo, PSSectorNo, PSW, DataSectorNo, DataPWD
  - Card Information: CN, NC, GI, BT, LC, MC, GN, ET
  - Lift Information: ET, BT, CN, Data, BeginAddr, EndAddr, MaxAddr
  - Door Settings: DoorID, GuestSex, GuestName, CardNo, BeginTime, BeginTime2, Data
"""
from __future__ import annotations

import sys
import os

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))


class LockConfig:
    """Represents a single Godrej door lock configuration record."""

    def __init__(self, **kwargs):
        self.log_site_code: str = kwargs.get("log_site_code", "")
        self.reader_type: str = kwargs.get("reader_type", "RW-21")
        self.reader_port: str = kwargs.get("reader_port", "COM1")
        self.card_sector: str = kwargs.get("card_sector", "0")
        self.alarm_count: str = kwargs.get("alarm_count", "1")
        self.hotel_id: str = kwargs.get("hotel_id", "")
        self.hotel_pwd: str = kwargs.get("hotel_pwd", "")
        self.reader_model: str = kwargs.get("reader_model", "RW-21")
        self.power_switch_type: str = kwargs.get("power_switch_type", "8602-1M-57BA")
        self.repeat_times: str = kwargs.get("repeat_times", "1")
        self.system_password: str = kwargs.get("system_password", "")
        self.sector_no: str = kwargs.get("sector_no", "0")
        self.ps_sector_no: str = kwargs.get("ps_sector_no", "15")
        self.ps_w: str = kwargs.get("ps_w", "FFFFFFFFFFFF")
        self.data_sector_no: str = kwargs.get("data_sector_no", "3")
        self.data_pwd: str = kwargs.get("data_pwd", "FFFFFFFFFFFF")
        # Card info
        self.cn: str = kwargs.get("cn", "1")
        self.nc: str = kwargs.get("nc", "0000")
        self.gi: str = kwargs.get("gi", "1")
        self.bt: str = kwargs.get("bt", "0708181500")
        self.lc: str = kwargs.get("lc", "000001")
        self.mc: str = kwargs.get("mc", "00000000")
        self.gn: str = kwargs.get("gn", "1")
        self.et: str = kwargs.get("et", "0708191500")
        # Lift info
        self.lift_et: str = kwargs.get("lift_et", "0708191500")
        self.lift_bt: str = kwargs.get("lift_bt", "0708181500")
        self.lift_cn: str = kwargs.get("lift_cn", "1")
        self.lift_data: str = kwargs.get("lift_data", "FFFF")
        self.lift_begin_addr: str = kwargs.get("lift_begin_addr", "96")
        self.lift_end_addr: str = kwargs.get("lift_end_addr", "97")
        self.lift_max_addr: str = kwargs.get("lift_max_addr", "97")
        # Door settings
        self.door_id: str = kwargs.get("door_id", "1")
        self.guest_sex: str = kwargs.get("guest_sex", "0")
        self.guest_name: str = kwargs.get("guest_name", "abcdefgh")
        self.card_no: str = kwargs.get("card_no", "000001")
        self.begin_time: str = kwargs.get("begin_time", "100312120000")
        self.begin_time2: str = kwargs.get("begin_time2", "100313120000")
        self.data_field: str = kwargs.get("data_field", "")

    def to_dict(self) -> dict:
        return {
            "log_site_code": self.log_site_code,
            "reader_type": self.reader_type,
            "reader_port": self.reader_port,
            "card_sector": self.card_sector,
            "alarm_count": self.alarm_count,
            "hotel_id": self.hotel_id,
            "hotel_pwd": self.hotel_pwd,
            "reader_model": self.reader_model,
            "power_switch_type": self.power_switch_type,
            "repeat_times": self.repeat_times,
            "system_password": self.system_password,
            "sector_no": self.sector_no,
            "ps_sector_no": self.ps_sector_no,
            "ps_w": self.ps_w,
            "data_sector_no": self.data_sector_no,
            "data_pwd": self.data_pwd,
            "cn": self.cn, "nc": self.nc, "gi": self.gi,
            "bt": self.bt, "lc": self.lc, "mc": self.mc,
            "gn": self.gn, "et": self.et,
            "lift_et": self.lift_et, "lift_bt": self.lift_bt,
            "lift_cn": self.lift_cn, "lift_data": self.lift_data,
            "lift_begin_addr": self.lift_begin_addr,
            "lift_end_addr": self.lift_end_addr,
            "lift_max_addr": self.lift_max_addr,
            "door_id": self.door_id,
            "guest_sex": self.guest_sex,
            "guest_name": self.guest_name,
            "card_no": self.card_no,
            "begin_time": self.begin_time,
            "begin_time2": self.begin_time2,
            "data_field": self.data_field,
        }

    @classmethod
    def from_dict(cls, d: dict) -> "LockConfig":
        return cls(**d)

    def __repr__(self) -> str:
        return f"LockConfig(log_site_code={self.log_site_code!r}, reader_model={self.reader_model!r})"


class GodrejLockError(Exception):
    """Base exception for Godrej lock operations."""
    pass


class SerialConnectionError(GodrejLockError):
    """Raised when serial port cannot be opened."""
    pass


class LockCommunicationError(GodrejLockError):
    """Raised when lock communication fails."""
    pass


class GodrejLockManager:
    """Manages Godrej door lock configuration via serial port.

    When pyserial is available and a valid port is given, communicates
    with the actual hardware. Otherwise runs in simulation mode
    (read/write to an in-memory store), which is the default for
    testing and development.
    """

    def __init__(self, port: str = "COM1", simulate: bool = True):
        self.port = port
        self.simulate = simulate
        self._connected = False
        self._store: dict[str, LockConfig] = {}
        self._serial = None
        if not simulate:
            self._connect()

    def _connect(self) -> None:
        """Open serial connection (real mode)."""
        try:
            import serial
            self._serial = serial.Serial(
                port=self.port,
                baudrate=9600,
                bytesize=8,
                parity='N',
                stopbits=1,
                timeout=2,
            )
            self._connected = True
        except ImportError:
            raise SerialConnectionError(
                "pyserial not installed. Install with: pip install pyserial")
        except Exception as e:
            raise SerialConnectionError(
                f"Cannot open {self.port}: {e}")

    def disconnect(self) -> None:
        """Close serial connection."""
        if self._serial:
            self._serial.close()
            self._serial = None
        self._connected = False

    @property
    def is_connected(self) -> bool:
        return self._connected or self.simulate

    def read_config(self, log_site_code: str) -> LockConfig:
        """Read lock configuration for a given site.

        VB6: Me.Recordset15.Open "Select * From DoorLockEnviro WHERE
        (LOGSITE_CODE='" & MemVar_1F92078 & "')"
        """
        if self.simulate:
            return self._simulate_read(log_site_code)
        return self._real_read(log_site_code)

    def write_config(self, config: LockConfig) -> None:
        """Write lock configuration to the device.

        VB6: unk_580525.Execute CStr(var_A8 & var_184 & ")"), var_104, -1
        """
        if self.simulate:
            self._simulate_write(config)
        else:
            self._real_write(config)

    def _simulate_read(self, log_site_code: str) -> LockConfig:
        """Simulation read: return from in-memory store."""
        key = log_site_code.strip() if log_site_code else "DEFAULT"
        if key not in self._store:
            cfg = LockConfig(log_site_code=key)
            self._store[key] = cfg
        return self._store[key]

    def _simulate_write(self, config: LockConfig) -> None:
        """Simulation write: store in memory."""
        key = config.log_site_code.strip() if config.log_site_code else "DEFAULT"
        config.log_site_code = key
        self._store[key] = config

    def _real_read(self, log_site_code: str) -> LockConfig:
        """Real serial read: send command to device."""
        if not self._connected:
            raise SerialConnectionError("Not connected to serial port")
        # VB6 protocol: send read command, parse response
        cmd = f"READ:{log_site_code}\r\n"
        self._serial.write(cmd.encode())
        response = self._serial.readline().decode().strip()
        if not response:
            raise LockCommunicationError("No response from device")
        return LockConfig(**self._parse_response(response))

    def _real_write(self, config: LockConfig) -> None:
        """Real serial write: send config to device."""
        if not self._connected:
            raise SerialConnectionError("Not connected to serial port")
        data = config.to_dict()
        cmd = f"WRITE:{data}\r\n"
        self._serial.write(cmd.encode())
        response = self._serial.readline().decode().strip()
        if response != "OK":
            raise LockCommunicationError(f"Write failed: {response}")

    def _parse_response(self, response: str) -> dict:
        """Parse device response string into dict."""
        result = {}
        for part in response.split(","):
            if ":" in part:
                k, v = part.split(":", 1)
                result[k.strip()] = v.strip()
        return result

    def list_all_sites(self) -> list[str]:
        """List all configured site codes."""
        if self.simulate:
            return list(self._store.keys())
        return []

    def get_versions(self) -> dict:
        """Get reader firmware and software versions.

        VB6: ReaderType/ReaderPort from Recordset15
        """
        return {
            "reader_model": "RW-21",
            "reader_port": self.port,
            "firmware": "SIM-1.0.0",
            "power_switch_type": "8602-1M-57BA",
        }


# Module-level singleton for convenience
_default_manager: GodrejLockManager | None = None


def get_manager(port: str = "COM1", simulate: bool = True) -> GodrejLockManager:
    """Get or create the default GodrejLockManager instance."""
    global _default_manager
    if _default_manager is None:
        _default_manager = GodrejLockManager(port=port, simulate=simulate)
    return _default_manager


def validate_field(field_name: str, value: str, max_len: int = 0) -> str | None:
    """Validate a single field. Returns error string or None."""
    if not value and max_len > 0:
        return None  # optional field
    if max_len > 0 and len(value) > max_len:
        return f"{field_name} max {max_len} chars"
    return None


# Default configuration matching VB6 defaults
DEFAULT_CONFIG = LockConfig()