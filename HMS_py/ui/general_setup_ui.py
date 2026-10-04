"""General Setup UI (VB6: Main Setup -> General Setup + FO misc masters).

Forms ported (DB-verified tables):
  - RoomFeature: Room amenity/feature tags
  - GodownMast:  Inventory locations (shown in Utility section too)
  - Voucher_Type: Browse-only (config table - no user edits)
  - Enviro: BUG-006 FIX — Full EDIT dialog for Parameter settings.
    VB6 frmEnviro.frm is a full edit form (TopCtrl1_UnknownEvent_16 does
    UPDATE Enviro SET ...). Previous code was READ-ONLY — now editable.

Tables NOT ported (don't exist in this DB):
  - Revenue Group Setting - use _coming_soon
  - Revenue Wise Budget Entry - use _coming_soon

Run: python -m HMS_py.ui.general_setup_ui
"""
from __future__ import annotations
import os, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QShortcut, QKeySequence
from PyQt6.QtWidgets import (QApplication, QDialog, QHBoxLayout, QLabel,
                             QMainWindow, QMessageBox, QPushButton,
                             QTableWidget, QTableWidgetItem, QVBoxLayout,
                             QWidget)
from HMS_py.core.general_setup import RoomFeatAPI, GodownAPI, VouchCatAPI, voucher_type_list, printing_settings_snapshot
from HMS_py.core import db
from HMS_py.ui.base_master import BaseMasterForm, Field, MasterConfig, make_delete_guard
from HMS_py.ui import theme as _theme
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


# ── Room Feature Master ───────────────────────────────────────
def roomfeat_config() -> MasterConfig:
    return MasterConfig(
        title="Room Features Master - HMS_py",
        columns=[("Code","code"),("Name","name")],
        fields=[
            Field("code","Feature Code", max_len=6, required=True),
            Field("name","Feature Name", max_len=30, required=True),
        ],
        api=RoomFeatAPI,
        delete_guard=make_delete_guard("PYT"),
    )


# ── Godown / Location Master ──────────────────────────────────
def godown_config() -> MasterConfig:
    return MasterConfig(
        title="Godown / Location Master (Inventory) - HMS_py",
        columns=[("Code","code"),("Name","name"),("Short","short"),
                 ("Dept","dept"),("Sys","sysyn")],
        fields=[
            Field("code","Godown Code", max_len=6, required=True),
            Field("name","Godown Name", max_len=30, required=True),
            Field("short","Short Name", max_len=6),
            Field("dept","Department Code", max_len=6),
            Field("sysyn","System Y/N", max_len=1, default="N"),
        ],
        api=GodownAPI,
        delete_guard=make_delete_guard("PYT"),
    )


# ── Voucher Type Browser (read-only) ─────────────────────────
def _vcell(val) -> QTableWidgetItem:
    it = QTableWidgetItem("" if val is None else str(val))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    it.setForeground(QColor(_theme.palette()["text"]))
    return it


class VoucherTypeBrowser(QDialog):
    """Read-only Voucher_Type config browser
    (VB6: General Setup -> Voucher Environment)."""
    COLS = ["V_Type","Category","Description","Method","StartNo","ShortName"]

    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopVoucherTypeBrowser")
        self.setWindowTitle("Voucher Type Browser (Read-Only) - HMS_py")
        self.resize(860, 480)
        root = QVBoxLayout(self)
        root.addWidget(QLabel(
            "Voucher Type configuration (read-only — VB6 se set hoti hai)"))
        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels(self.COLS)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.tbl)
        btns = QHBoxLayout()
        btnR = QPushButton("Refresh (F5)")
        mark_desktop_action(btnR)
        btnR.setToolTip("Reload voucher types from database")
        btnC = QPushButton("Close")
        mark_desktop_action(btnC)
        btnC.setToolTip("Close this window")
        btnR.clicked.connect(self.reload)
        btnC.clicked.connect(self.reject)
        btns.addStretch(); btns.addWidget(btnR); btns.addWidget(btnC)
        root.addLayout(btns)
        QShortcut(QKeySequence("F5"), self, activated=self.reload)
        self.reload()

    def reload(self):
        rows = voucher_type_list()
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            for c, k in enumerate(["vtype","category","desc",
                                   "method","startno","short"]):
                self.tbl.setItem(r, c, _vcell(rec.get(k, "")))
        if rows: self.tbl.selectRow(0)


# ── Enviro / System Settings EDITOR ──────────────────────────
class EnviroViewer(QDialog):
    """BUG-006 FIX: Full parameter edit dialog.

    VB6 frmEnviro.frm is a FULL edit form (TopCtrl1_UnknownEvent_16 does
    UPDATE Enviro SET ... WHERE SITECODE=...). Previous Python EnviroViewer
    was READ-ONLY — now has Save button that calls enviro.update_settings().

    Only EDITABLE (white-listed) settings from core/enviro.py are shown
    as editable rows. Finance/HR AC-code columns remain read-only (shown
    greyed out in the lower table as in VB6 — those are changed via
    FA Environment / HR setup forms).
    """

    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopEnvironmentViewer")
        self.setWindowTitle("Parameter Settings (Enviro) - HMS_py")
        self.resize(860, 660)
        self._pending: dict = {}

        root = QVBoxLayout(self)

        # Header
        hdr = QLabel(
            "System Parameter Settings  |  "
            "Sirf white-listed operational settings edit ho sakte hain.\n"
            "Finance A/C columns (Advance A/C, Cash A/C aadi) read-only hain "
            "— FA Environment se change karo.")
        hdr.setWordWrap(True)
        hdr.setStyleSheet("color: #445566; font-size: 11px;")
        root.addWidget(hdr)

        # ── Editable settings table ──────────────────────────
        from HMS_py.core.enviro import EDITABLE
        self.edit_keys = list(EDITABLE.keys())

        root.addWidget(QLabel("Editable Settings:"))
        self.tblEdit = QTableWidget(len(self.edit_keys), 3)
        self.tblEdit.setHorizontalHeaderLabels(["Setting", "Type", "Value"])
        self.tblEdit.horizontalHeader().setStretchLastSection(True)
        self.tblEdit.setAlternatingRowColors(True)
        root.addWidget(self.tblEdit)

        # ── All settings read-only table (full view) ─────────
        root.addWidget(QLabel(
            "All Settings (full row — for reference, read-only):"))
        self.tblAll = QTableWidget(0, 2)
        self.tblAll.setHorizontalHeaderLabels(["Setting", "Value"])
        self.tblAll.setAlternatingRowColors(True)
        self.tblAll.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tblAll.horizontalHeader().setStretchLastSection(True)
        self.tblAll.setMaximumHeight(150)
        root.addWidget(self.tblAll)

        # ── Buttons ──────────────────────────────────────────
        btns = QHBoxLayout()
        self.btnSave = QPushButton("&Save Changes")
        self.btnSave.setToolTip(
            "VB6 frmEnviro Cmd_Click: UPDATE Enviro SET ... WHERE SITECODE=...")
        mark_desktop_action(self.btnSave, "primary")
        btnR = QPushButton("&Refresh")
        mark_desktop_action(btnR)
        btnC = QPushButton("&Close")
        mark_desktop_action(btnC)
        btns.addWidget(self.btnSave)
        btns.addStretch()
        btns.addWidget(btnR)
        btns.addWidget(btnC)
        root.addLayout(btns)

        self.btnSave.clicked.connect(self._on_save)
        btnR.clicked.connect(self.reload)
        btnC.clicked.connect(self.reject)
        QShortcut(QKeySequence("F5"), self, activated=self.reload)

        self.reload()

    def reload(self):
        from HMS_py.core import enviro as _env
        from HMS_py.core.enviro import EDITABLE
        try:
            full = _env.get()
        except Exception as e:
            QMessageBox.warning(self, "Enviro", f"Load error: {e}")
            return

        # ── Populate editable table ──────────────────────────
        self.tblEdit.setRowCount(len(self.edit_keys))
        for r, key in enumerate(self.edit_keys):
            val = full.get(key, "")
            val_str = "" if val is None else str(val)
            typ = EDITABLE.get(key, "str")

            it_key = QTableWidgetItem(key)
            it_key.setFlags(it_key.flags() & ~Qt.ItemFlag.ItemIsEditable)
            it_key.setForeground(QColor("#2255aa"))
            it_type = QTableWidgetItem(typ)
            it_type.setFlags(it_type.flags() & ~Qt.ItemFlag.ItemIsEditable)
            it_type.setForeground(QColor("#887766"))
            it_val = QTableWidgetItem(val_str)

            self.tblEdit.setItem(r, 0, it_key)
            self.tblEdit.setItem(r, 1, it_type)
            self.tblEdit.setItem(r, 2, it_val)

        self.tblEdit.resizeColumnToContents(0)
        self.tblEdit.resizeColumnToContents(1)

        # ── Populate full read-only table ────────────────────
        pairs = sorted(full.items())
        self.tblAll.setRowCount(len(pairs))
        for r, (k, v) in enumerate(pairs):
            self.tblAll.setItem(r, 0, _vcell(k))
            self.tblAll.setItem(r, 1, _vcell(v))

    def _on_save(self):
        """BUG-006 FIX: Collect changed cells and call enviro.update_settings().

        VB6 TopCtrl1_UnknownEvent_16 equivalent:
          UPDATE Enviro SET col1=?, col2=? ... WHERE LOGSITE_CODE=?
        """
        from HMS_py.core import enviro as _env
        try:
            full = _env.get()
        except Exception as e:
            QMessageBox.critical(self, "Save", f"Load error: {e}")
            return

        changes = {}
        for r, key in enumerate(self.edit_keys):
            it = self.tblEdit.item(r, 2)
            if it is None:
                continue
            new_val = it.text()
            old_val = full.get(key, "")
            old_str = "" if old_val is None else str(old_val)
            if new_val != old_str:
                changes[key] = new_val

        if not changes:
            QMessageBox.information(self, "Save", "Koi changes nahi hain")
            return

        try:
            _env.update_settings(changes)
            QMessageBox.information(
                self, "Save",
                f"{len(changes)} setting(s) save ho gayi:\n"
                + "\n".join(f"  {k} = {v!r}" for k, v in changes.items()))
            self.reload()
        except ValueError as e:
            QMessageBox.warning(self, "Save — Validation Error", str(e))
        except Exception as e:
            QMessageBox.critical(self, "Save — DB Error", str(e))


# ── GuestParam viewer ─────────────────────────────────────────
class GuestParamViewer(QDialog):
    """GuestParam table viewer (VB6: Guest Parameters Setting)."""

    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopGuestParameters")
        self.setWindowTitle("Guest Parameters (Read-Only) - HMS_py")
        self.resize(720, 400)
        root = QVBoxLayout(self)
        root.addWidget(QLabel("Guest Parameters (read-only viewer)"))
        self.tbl = QTableWidget(0, 2)
        self.tbl.setHorizontalHeaderLabels(["Parameter", "Value"])
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.tbl)
        btns = QHBoxLayout()
        btnC = QPushButton("Close"); mark_desktop_action(btnC); btnC.clicked.connect(self.reject)
        btnC.setToolTip("Close this window")
        btns.addStretch(); btns.addWidget(btnC)
        root.addLayout(btns)
        self.reload()

    def reload(self):
        cn = db.connect()
        try:
            cur = cn.cursor()
            cur.execute("SELECT TOP 1 * FROM GuestParam")
            if cur.description:
                cols = [d[0] for d in cur.description]
                row = cur.fetchone()
                data = list(zip(cols, row)) if row else []
                self.tbl.setRowCount(len(data))
                for r, (k, v) in enumerate(data):
                    self.tbl.setItem(r, 0, _vcell(k))
                    self.tbl.setItem(r, 1, _vcell(v))
        except Exception as e:
            QMessageBox.warning(self, "GuestParam", f"Load error: {e}")
        finally:
            cn.close()


# ── Printing Settings/Parameters viewer ────────────────────────
class PrintingSettingsViewer(QDialog):
    """VB6-style printing/report/temp configuration viewer."""

    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopPrintingSettings")
        self.setWindowTitle("Printing Setup / Parameters - HMS_py")
        self.resize(820, 520)
        root = QVBoxLayout(self)
        root.addWidget(QLabel(
            "Reports path, temporary folder, printer, and key Enviro print flags"))
        self.tbl = QTableWidget(0, 2)
        self.tbl.setHorizontalHeaderLabels(["Setting", "Value"])
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.tbl)
        btns = QHBoxLayout()
        btnR = QPushButton("Refresh")
        mark_desktop_action(btnR)
        btnR.setToolTip("Reload printing settings from database")
        btnC = QPushButton("Close")
        mark_desktop_action(btnC)
        btnC.setToolTip("Close this window")
        btnR.clicked.connect(self.reload)
        btnC.clicked.connect(self.reject)
        btns.addStretch(); btns.addWidget(btnR); btns.addWidget(btnC)
        root.addLayout(btns)
        self.reload()

    def reload(self):
        try:
            data = printing_settings_snapshot()
            rows = [
                ("Reports Path", data.get("reports")),
                ("Temp Folder", data.get("temp")),
                ("Printer", data.get("printer")),
                ("Site", data.get("site")),
                ("Company", data.get("company")),
            ]
            for key, value in sorted(data.get("enviro", {}).items()):
                rows.append((key, value))
            self.tbl.setRowCount(len(rows))
            for r, (k, v) in enumerate(rows):
                self.tbl.setItem(r, 0, _vcell(k))
                self.tbl.setItem(r, 1, _vcell(v))
        except Exception as e:
            QMessageBox.warning(self, "Printing Settings", f"Load error: {e}")


# ── Coming Soon placeholders for PARTIAL items ─────────────────
class _ComingSoonDialog(QDialog):
    """Placeholder dialog for VB6 items not yet ported to Python."""

    def __init__(self, title: str, item_name: str, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopComingSoon")
        self.setWindowTitle(f"{title} - Coming Soon - HMS_py")
        self.resize(500, 200)
        root = QVBoxLayout(self)
        root.addWidget(QLabel(f"<b>{item_name}</b> not yet ported to Python"))
        root.addWidget(QLabel("This VB6 feature is marked as Coming Soon."))
        btn = QPushButton("Close"); mark_desktop_action(btn); btn.clicked.connect(self.reject)
        root.addStretch(); root.addWidget(btn, 0, Qt.AlignmentFlag.AlignRight)


def _make_coming_soon(title: str, item_name: str):
    """Factory for coming-soon placeholders."""
    def open(parent=None):
        _ComingSoonDialog(title, item_name, parent).exec()
    return open


# ── Open helpers ──────────────────────────────────────────────
def _open(cfg_fn, parent=None):
    BaseMasterForm(cfg_fn(), parent).exec()

def open_roomfeature(parent=None):     _open(roomfeat_config, parent)
def open_godown(parent=None):          _open(godown_config, parent)
def open_vouchertype(parent=None):
    from HMS_py.ui.voucher_environment_ui import open_voucher_environment
    return open_voucher_environment(parent)

def open_enviro(parent=None):          EnviroViewer(parent).exec()
def open_guestparam(parent=None):      GuestParamViewer(parent).exec()
def open_printing(parent=None):        PrintingSettingsViewer(parent).exec()
def open_vouchcat(parent=None):
    from HMS_py.ui.voucher_environment_ui import open_voucher_category
    return open_voucher_category(parent)


# ── Voucher Category Master ────────────────────────────────────
def vouchcat_config() -> MasterConfig:
    return MasterConfig(
        title="Voucher Category Master - HMS_py",
        columns=[("Code","code"),("Name","name"),("Nature","natur"),
                 ("CashBank","cashbank"),("Type","type")],
        fields=[
            Field("code","Voucher Code", max_len=6, required=True),
            Field("name","Voucher Name", max_len=30, required=True),
            Field("natur","Nature", max_len=10),
            Field("cashbank","Cash/Bank Y/N", max_len=1, default="N"),
            Field("type","Type", max_len=10),
            Field("cform","C-Form Y/N", max_len=1, default="N"),
            Field("tender","Tender Y/N", max_len=1, default="N"),
            Field("posdaybook","POS Day Book Y/N", max_len=1, default="N"),
            Field("guestac","Guest A/C Y/N", max_len=1, default="N"),
            Field("acpost","A/C Post Y/N", max_len=1, default="N"),
            Field("roundoff","Round Off", default="0"),
            Field("inwords","In Words Y/N", max_len=1, default="N"),
            Field("inwords2","In Words2 Y/N", max_len=1, default="N"),
        ],
        api=VouchCatAPI,
        delete_guard=make_delete_guard("PYT"),
    )


# ── Coming Soon placeholders for General Setup PARTIAL items ────────
def open_taxstructure(parent=None):
    """Tax Structure - PARTIAL (not yet ported)"""
    _make_coming_soon("Tax Structure", "Tax Structure")(parent)

def open_revenuegroupparent(parent=None):
    """Revenue Group Setting - PARTIAL (not yet ported)"""
    _make_coming_soon("Revenue Group Setting", "Revenue Group Setting")(parent)

def open_printingparameters(parent=None):
    """Printing Parameters - PARTIAL (not yet ported)"""
    _make_coming_soon("Printing Parameters", "Printing Parameters")(parent)

def open_printing_setup(parent=None):
    """Printing Setup - PARTIAL (not yet ported)"""
    _make_coming_soon("Printing Setup", "Printing Setup")(parent)

def open_revenuewisebudget(parent=None):
    """Revenue Wise Budget Entry - PARTIAL (not yet ported)"""
    _make_coming_soon("Revenue Wise Budget Entry", "Revenue Wise Budget Entry")(parent)


# ── Standalone launcher ───────────────────────────────────────
class GeneralSetupLauncher(QMainWindow):
    def __init__(self):
        super().__init__()
        apply_desktop_surface(self, "desktopGeneralSetupLauncher")
        self.setWindowTitle("HMS_py - General Setup Masters")
        self.resize(360, 320)
        c = QWidget(); lay = QVBoxLayout(c)
        for lbl, fn in (
            ("Room Features Master",          open_roomfeature),
            ("Godown / Location Master",       open_godown),
            ("Voucher Type Browser",           open_vouchertype),
            ("Voucher Category Master",        open_vouchcat),
            ("System Environment (Enviro)",    open_enviro),
            ("Guest Parameters",               open_guestparam),
            ("Printing Setup / Parameters",    open_printing),
            ("Tax Structure",                  open_taxstructure),
            ("Revenue Group Setting",          open_revenuegroupparent),
            ("Printing Parameters",            open_printingparameters),
            ("Printing Setup",                 open_printing_setup),
            ("Revenue Wise Budget Entry",      open_revenuewisebudget),
        ):
            b = QPushButton(lbl); mark_desktop_action(b); b.clicked.connect(fn); b.setToolTip(f"Open {lbl}"); lay.addWidget(b)
        self.setCentralWidget(c)


def main() -> int:
    app = QApplication(sys.argv)
    w = GeneralSetupLauncher(); w.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())