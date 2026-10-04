"""CommonDialog (VB6: CommonDialog.bas) port - open/save file picker.

VB6 source: HMS_REVERSE_ENGINEERING/HMS/CommonDialog.bas (66 lines,
2 obfuscated procs + 1 helper).  Ye module Win32 `comdlg32.dll`
`GetOpenFileNameA` ko OPENFILENAME struct se call karta hai.

VB6 -> Python mapping (loc refs dekh kar):
  Proc_349_2_FF6350   OPENFILENAME build
      - owner  : Me.Global.Forms(0).hWnd
      - filter : Replace(arg_18, "|", Chr(0)) & Chr(0)   (VB6 '|' -> NUL)
      - file   : Space(&H104)      -> VB6_MAX_PATH = 260 buffer
      - dir    : arg_10            -> initial_dir
      - file   : arg_14 (mode 1)   -> initial_file (Save As par prefill)
      - mode 0 : title "Open",     flags &H201004
      - mode 1 : title "Save As",  flags &H200807
  Proc_349_0_F00984   GetOpenFileName -> pehli NUL-terminated string
                      `Left$(buf, InStr(1, buf, Chr$(0)) - 1)`
  Proc_349_1_EFD0EC   wahi, par initial-dir ke saath (arg_10)

Python me ye sab Qt `QFileDialog` par map hota hai (NUL/struct ka kaam
driver karta hai).  VB6 constants yahan asli values ke roop me rakhe
hain taaki flag-parity test ho sake.

Run: python -m pytest tests/unit/test_bas_module_ports.py -q
"""
from __future__ import annotations

# VB6: var_D8(36)/var_D8(28) = Space(&H104), var_D8(32)/(40) = &H105
VB6_MAX_PATH = 0x104          # 260 - VB6 file buffer
VB6_MAX_TITLE = 0x105         # 261 - VB6 title/custom-buffer size

# VB6 mode argument (Proc_349_2: If var_134 = 0 ... Else If = 1)
MODE_OPEN = 0
MODE_SAVE = 1

# VB6 raw flags (decompiled byte-poke values) - parity ke liye preserve.
OPEN_FLAGS_VB6 = 0x201004     # loc_FF62F4  var_D8(52) = &H201004
SAVE_FLAGS_VB6 = 0x200807     # loc_FF633A  var_D8(52) = &H200807

# VB6 default filter string used by the callers
DEFAULT_FILTER = "All Files|*.*"

# VB6 temp/junk marker jo buffer ke end me hota tha
_NUL = "\x00"


def build_filter(filter_spec: str = DEFAULT_FILTER) -> str:
    """VB6 `Replace(arg_18, "|", Chr(0)) & Chr(0)` -> Qt filter string.

    VB6 filter format  : "Text Files|*.txt|All Files|*.*"
    Qt filter format   : "Text Files (*.txt);;All Files (*.*)"
    """
    parts = [p for p in str(filter_spec or "").split("|")]
    if len(parts) < 2:
        return f"All Files ({DEFAULT_FILTER.split('|')[1]})"
    pairs = []
    for i in range(0, len(parts) - 1, 2):
        label, pattern = parts[i].strip(), parts[i + 1].strip()
        if not pattern:
            continue
        pairs.append(f"{label} ({pattern})")
    if not pairs:
        pairs = ["All Files (*.*)"]
    return ";;".join(pairs)


def split_selection(buf: str) -> str | list[str] | None:
    """VB6 `Left$(buf, InStr(1, buf, Chr$(0), 0) - 1)` parity.

    * khali/None -> None (VB6: GetOpenFileName fail = `If CBool(...)`
      false branch - kuch nahi hota)
    * single path -> str (pehli NUL tak ka hissa, VB6 ki tarah)
    * multi-select (dir + NUL + file1 + NUL + file2 ...) -> list[str]
      (Win32 OFN_ALLOWMULTISELECT ka format)
    """
    if buf is None:
        return None
    raw = str(buf)
    if not raw.strip(_NUL):
        return None
    if _NUL not in raw:
        return raw
    parts = [p for p in raw.split(_NUL) if p.strip()]
    if not parts:
        return None
    if len(parts) == 1:
        return parts[0]
    # dir + files -> poora path banao (Win32 multi-select convention)
    directory = parts[0]
    return [directory.rstrip("\\/") + "\\" + p for p in parts[1:]]


def truncate_path(buf: str) -> str:
    """VB6 `Left$(var_B8, InStr(...) - 1)` ka single-string variant."""
    res = split_selection(buf)
    if res is None:
        return ""
    if isinstance(res, list):
        return res[0]
    return res


def _pick(mode: int, *, title: str = "", filter_spec: str = DEFAULT_FILTER,
          initial_file: str = "", initial_dir: str = "",
          parent=None, multi: bool = False) -> str | list[str] | None:
    """QFileDialog wrapper (lazy Qt import - core Qt-free rehta hai)."""
    try:
        from PyQt6.QtWidgets import QFileDialog
    except Exception:  # pragma: no cover - headless env without Qt
        return None

    options = QFileDialog.Option.ReadOnly
    if not multi:
        options |= QFileDialog.Option.DontUseNativeDialog
    if mode == MODE_SAVE:
        title = title or "Save As"
        sel, _filter = QFileDialog.getSaveFileName(
            parent, title or "Save As",
            initial_file or (initial_dir or ""),
            build_filter(filter_spec), options=options)
        return sel or None
    title = title or "Open"
    if multi:
        names, _filter = QFileDialog.getOpenFileNames(
            parent, title, initial_file or (initial_dir or ""),
            build_filter(filter_spec), options=options)
        return list(names) if names else None
    sel, _filter = QFileDialog.getOpenFileName(
        parent, title, initial_file or (initial_dir or ""),
        build_filter(filter_spec), options=options)
    return sel or None


def get_open_file_name(parent=None, filter_spec: str = DEFAULT_FILTER,
                       title: str = "", initial_dir: str = "",
                       multi: bool = False) -> str | list[str] | None:
    """VB6 Proc_349_0_F00984 / Proc_349_1_EFD0EC (mode=0, 'Open')."""
    return _pick(MODE_OPEN, title=title, filter_spec=filter_spec,
                 initial_dir=initial_dir, parent=parent, multi=multi)


def get_save_file_name(parent=None, filter_spec: str = DEFAULT_FILTER,
                       title: str = "", initial_file: str = "",
                       initial_dir: str = "") -> str | None:
    """VB6 Proc_349_2 mode=1 branch - title 'Save As', prefill arg_14."""
    res = _pick(MODE_SAVE, title=title, filter_spec=filter_spec,
                initial_file=initial_file, initial_dir=initial_dir,
                parent=parent)
    return res if isinstance(res, str) else None
