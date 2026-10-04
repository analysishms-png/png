"""Picture (VB6: Picture.bas) port - image <-> DB chunk + temp-file roundtrip.

VB6 source: HMS_REVERSE_ENGINEERING/HMS/Picture.bas (136 lines, 6
obfuscated procs).  Ye module ADO recordset ke `AppendChunk`/`GetChunk`
se image column me photo daalta/nikalta hai, beech me Windows
`GetTempPath` ka temp file use karke.

VB6 -> Python mapping (loc refs):
  Proc_142_2_E8BD90  GetTempPath(&HFF, buf) -> get_temp_path()
                     VB6 temp file naam: "0X2341KLZX.jpg" (loc_F96B68)
  Proc_142_0_F96C2C  SavePicture -> Open <temp> For Binary -> Get ->
                     Me.Fields.AppendChunk -> Me.Update -> Kill <temp>
                     -> save_image_to_record()
  Proc_142_1_F33768  GetChunk -> Put <temp> -> LoadPicture -> Kill
                     -> load_image_from_record()
  Proc_142_3_E97580  SavePicture <control> -> <path> (Kill path agar
                     apna temp tha)
                     -> save_picture_to_file()
  Proc_142_4_EF1B44  GetWindowLong(hwnd, -20 /*GWL_EXSTYLE*/) |=
                     &H80000 /*WS_EX_LAYERED*, SetLayeredWindowAttributes
                     -> set_window_opacity() (Qt equivalent)
  Proc_142_5_E8C258  upar wala wrapper Form.hWnd par -> apply_opacity()

Live DB image columns (Moondata2627):
  ProfileImages.GuestImage / IdImage / SignImage (image, 0 rows)
  VenueCapacity.PicPath (image, 32 rows)
  Enviro.HotelLogo, CompanyProfile.Hotel (image)
  ChannelEnviro.AuthCode (varbinary)

Run: python -m pytest tests/unit/test_bas_module_ports.py -q
"""
from __future__ import annotations

import os
import tempfile

from HMS_py.core import db

# VB6 loc_F96B68 / loc_F3369B - fixed temp file name
VB6_TEMP_IMAGE_NAME = "0X2341KLZX.jpg"

# VB6 loc_F96B5C / loc_F33691 - fallback dir when GetTempPath fails
VB6_TEMP_FALLBACK_DIR = "C:\\"

WS_EX_LAYERED = 0x80000        # VB6 loc_EF1A9F  &H80000
GWL_EXSTYLE = -20              # VB6 loc_EF1A88  GetWindowLong(arg, -20)
LWA_ALPHA = 0x00000002         # VB6 loc_EF1AF3  IIf(arg_18, 3, 1) -> 2


def get_temp_path() -> str:
    """VB6 Proc_142_2_E8BD90 - GetTempPath(&HFF, buf), fail par 'C:\\\\'."""
    try:
        p = tempfile.gettempdir()
    except Exception:  # pragma: no cover - GetTempPath fail branch
        return VB6_TEMP_FALLBACK_DIR
    return p or VB6_TEMP_FALLBACK_DIR


def temp_image_path(name: str = VB6_TEMP_IMAGE_NAME) -> str:
    """VB6 `var_90 & "0X2341KLZX.jpg"` - temp dir + fixed filename."""
    return os.path.join(get_temp_path(), name)


def image_to_bytes(image) -> bytes:
    """AppendChunk ko dene ke liye normalize karo.

    Accepts: bytes / bytearray / memoryview / str (file path) /
    file-like (.read()).  VB6 yahan `Get var_96, , var_A0` karta tha
    (binary file read).
    """
    if image is None:
        return b""
    if isinstance(image, (bytes, bytearray, memoryview)):
        return bytes(image)
    if isinstance(image, str):
        with open(image, "rb") as fh:
            return fh.read()
    if hasattr(image, "read"):
        data = image.read()
        return data if isinstance(data, bytes) else str(data).encode("latin-1")
    raise TypeError(f"image ko bytes/path/file-like hona chahiye: {type(image)}")


def save_picture_to_file(image, path: str) -> str:
    """VB6 Proc_142_3_E97580 - SavePicture -> disk file."""
    data = image_to_bytes(image)
    target = path or temp_image_path()
    os.makedirs(os.path.dirname(target) or ".", exist_ok=True)
    with open(target, "wb") as fh:
        fh.write(data)
    return target


def save_image_to_record(table: str, key_col: str, key, column: str,
                         image, cn=None, commit: bool = True) -> int:
    """VB6 Proc_142_0_F96C2C - AppendChunk + Update.

    `UPDATE [table] SET [column] = ? WHERE [key_col] = ?`
    Rows affected return karta hai (VB6 bhi Update ke baad RecordCount
    par hi success maanta tha).
    """
    if not str(table or "").strip() or not str(column or "").strip():
        raise ValueError("table aur column zaroori hain")
    if not str(key_col or "").strip():
        raise ValueError("key column zaroori hai")
    data = image_to_bytes(image)
    if not data:
        raise ValueError("image data khali hai")
    sql = (f"UPDATE [{str(table).strip()}] "
           f"SET [{str(column).strip()}] = ? "
           f"WHERE [{str(key_col).strip()}] = ?")
    return db.execute(sql, (data, key), cn=cn, commit=commit)


def load_image_from_record(table: str, key_col: str, key, column: str,
                           cn=None) -> bytes:
    """VB6 Proc_142_1_F33768 - GetChunk (SQL Server: direct SELECT)."""
    if not str(table or "").strip() or not str(column or "").strip():
        raise ValueError("table aur column zaroori hain")
    sql = (f"SELECT [{str(column).strip()}] FROM [{str(table).strip()}] "
           f"WHERE [{str(key_col).strip()}] = ?")
    rows = db.query(sql, (key,), cn=cn)
    if not rows:
        return b""
    val = rows[0][0]
    if val is None:
        return b""
    if isinstance(val, (bytes, bytearray, memoryview)):
        return bytes(val)
    return str(val).encode("latin-1", "replace")


def load_pixmap(data: bytes, path: str = ""):
    """VB6 `Me.Global.LoadPicture(tempfile)` -> QIcon/QPixmap (lazy Qt)."""
    if not data:
        return None
    tmp = path or temp_image_path()
    try:
        from PyQt6.QtGui import QPixmap
        if not path:
            with open(tmp, "wb") as fh:
                fh.write(data)
        pm = QPixmap(tmp)
        return pm if not pm.isNull() else None
    except Exception:  # pragma: no cover - no Qt / corrupt image
        return None
    finally:
        if not path:
            try:
                os.remove(tmp)   # VB6 `Kill var_94`
            except OSError:
                pass


def set_window_opacity(widget, alpha: float) -> bool:
    """VB6 Proc_142_4_EF1B44 / Proc_142_5_E8C258 - layered window.

    VB6 SetWindowLong(GWL_EXSTYLE) |= WS_EX_LAYERED +80000, phir
    SetLayeredWindowAttributes(..., LWA_ALPHA).  Qt me isi ka
    equivalent `setWindowOpacity` hai (layered style driver khud
    maintain karta hai).
    """
    try:
        a = max(0.0, min(1.0, float(alpha)))
        widget.setWindowOpacity(a)
        return True
    except Exception:
        return False


def is_layered_capable() -> bool:
    """VB6 loc_EF1A9F - &H80000 (WS_EX_LAYERED) Windows-only constant."""
    return os.name == "nt"
