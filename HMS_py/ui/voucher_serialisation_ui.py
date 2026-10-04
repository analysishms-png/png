"""Voucher Serialisation UI (VB6 FrmSerialiseVr.frm port).

VB6 source: HMS_REVERSE_ENGINEERING/HMS/FrmSerialiseVr.frm
("Voucher Serialisation", maximized MDI child). Dispatch: ModuleAdd.bas
loc_1E44380 — If (var_188 = "Voucher Serialisation") Then Set var_90 =
New FrmSerialiseVr (menu leaf under Financial Setup).

Controls (VB6 -> Qt, captions verbatim):
  TxtVrType DataCombo (Form_Load: select V_Type,Description from
      Voucher_Type where Category='FA' And Site_Code='...'; bound col
      V_TYPE, display Description) -> QComboBox, item data = V_Type.
  lblVNo / LblVPrefix / LblSiteCode (Enabled=False, Form_Load loc_EEB07E-
      loc_EEB0A6; values MemVar_1F9212C / MemVar_1F92070) -> read-only
      QLineEdit (Sr.No. shows current Voucher_Prefix.Start_Srl_No preview).
  LBLStatus -> status QLabel ("Ledger Serialisation" -> per-header
      dd-mm-yyyy -> "Serialization Completed", frm:322/:352/:440).
  Label1 (Caption = "Please make sure that you have A Backup of
      'Database'", frm:171) -> warning QLabel, text verbatim.
  Command1 (Index 1, frm:82) -> "Serialise" button -> core
      serialise() (VB6 Proc_211_4_162D2BC); CmdExit -> close.

Deviation vs VB6: VB6 me is form par koi grid nahi tha (sirf combo +
labels); yahan read-only QTableWidget me LedgerM/Ledger serial records
ka preview (list_serial_records) + Voucher_Prefix Start_Srl_No display
diya hai — add/edit/delete VB6 me bhi nahi tha, to grid bhi read-only.
Validation: empty Vr.Type -> QMessageBox "Vr.Type is a required field."
(VB6 Proc_6_27_EA565C &H10 "Validation Error"); errors -> "Information"
(VB6 err handler MsgBox &H40 "Information").

Shell wiring: ui/shell.py _coming_soon me "Voucher Serialisation" abhi
bhi pending hai (existing-file edit forbidden is task ke liye) — opener
module direct import se usable hai.

Run: QT_QPA_PLATFORM=offscreen python -c "from HMS_py.ui.
voucher_serialisation_ui import open_voucher_serialisation"
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QFont
from PyQt6.QtWidgets import (QAbstractItemView, QComboBox, QGridLayout,
                             QHBoxLayout, QLabel, QLineEdit, QMainWindow,
                             QMessageBox, QPushButton, QTableWidget,
                             QTableWidgetItem, QVBoxLayout, QWidget)

from HMS_py.core import db
from HMS_py.core import voucher_serialisation_ops as ops

BACKUP_WARNING = ("Please make sure that you have A Backup of "
                  "'Database'")


class VoucherSerialisationWindow(QMainWindow):
    """VB6 FrmSerialiseVr — batch voucher serialisation utility."""

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self._user = user
        self.setWindowTitle("Voucher Serialisation")
        self.resize(980, 620)
        self._site = db.get_site_code()
        self._vprefix = db.get_vprefix()
        self._build_ui()
        self._load_types()
        self._refresh_grid()

    # ------------------------------------------------------------ UI build
    def _build_ui(self) -> None:
        central = QWidget()
        self.setCentralWidget(central)
        root = QVBoxLayout(central)

        title = QLabel("Voucher Serialisation")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(title)

        form = QGridLayout()
        self.combo_vtype = QComboBox()
        self.combo_vtype.setToolTip(
            "FA voucher types (VB6 Form_Load: Voucher_Type where "
            "Category='FA')")
        self.combo_vtype.currentIndexChanged.connect(
            lambda _i: self._refresh_grid())
        form.addWidget(QLabel("Vr.Type"), 0, 0)
        form.addWidget(self.combo_vtype, 0, 1, 1, 2)

        self.edt_srno = QLineEdit()
        self.edt_srno.setReadOnly(True)
        self.edt_srno.setToolTip("VB6 lblVNo (disabled) — yahan "
                                 "Start_Srl_No preview")
        self.edt_vprefix = QLineEdit(self._vprefix)
        self.edt_vprefix.setReadOnly(True)
        self.edt_site = QLineEdit(self._site)
        self.edt_site.setReadOnly(True)
        form.addWidget(QLabel("Sr.No."), 1, 0)
        form.addWidget(self.edt_srno, 1, 1)
        form.addWidget(QLabel("VPrefix"), 1, 2)
        form.addWidget(self.edt_vprefix, 1, 3)
        form.addWidget(QLabel("SiteCode"), 1, 4)
        form.addWidget(self.edt_site, 1, 5)
        root.addLayout(form)

        self.lbl_status = QLabel("")
        self.lbl_status.setFont(QFont("Segoe UI", 10, QFont.Weight.Bold))
        self.lbl_status.setStyleSheet("color:#0066cc;")
        root.addWidget(self.lbl_status)

        warn = QLabel(BACKUP_WARNING)
        warn.setAlignment(Qt.AlignmentFlag.AlignCenter)
        warn.setWordWrap(True)
        warn.setFont(QFont("Segoe UI", 12, QFont.Weight.Bold))
        warn.setStyleSheet("color:#cc0000; background:#ffeeee; "
                           "padding:8px; border:1px solid #cc9999;")
        root.addWidget(warn)

        self.lbl_srl = QLabel("Voucher_Prefix Start_Srl_No: -")
        self.lbl_srl.setStyleSheet("color:#555555;")
        root.addWidget(self.lbl_srl)

        self.grid = QTableWidget()
        self.grid.setAlternatingRowColors(True)
        self.grid.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers)
        self.grid.setSelectionBehavior(
            QAbstractItemView.SelectionBehavior.SelectRows)
        self.grid.setHorizontalHeaderLabels(
            ["Sr.No", "DocId", "V_Date", "Narration", "Lines",
             "Amt Dr", "Amt Cr"])
        root.addWidget(self.grid, 1)

        btns = QHBoxLayout()
        btns.addStretch()
        self.btn_serialise = QPushButton("  Serialise  ")
        self.btn_serialise.setProperty("accent", True)
        self.btn_serialise.setStyleSheet(
            "QPushButton{padding:10px;font-size:11pt;}")
        self.btn_serialise.setToolTip(
            "Poora Vr.Type dobara serialise karo (VB6 Command1)")
        self.btn_serialise.clicked.connect(self._on_serialise)
        btns.addWidget(self.btn_serialise)
        self.btn_refresh = QPushButton("Refresh")
        self.btn_refresh.clicked.connect(self._refresh_grid)
        btns.addWidget(self.btn_refresh)
        self.btn_exit = QPushButton("Exit")
        self.btn_exit.clicked.connect(self.close)
        btns.addWidget(self.btn_exit)
        root.addLayout(btns)

    # ------------------------------------------------------------- helpers
    def _current_vtype(self) -> str:
        return self.combo_vtype.currentData() or ""

    def _load_types(self) -> None:
        try:
            types = ops.list_voucher_types(self._site)
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))
            return
        self.combo_vtype.blockSignals(True)
        self.combo_vtype.clear()
        for t in types:
            self.combo_vtype.addItem(
                f"{t['vtype']} - {t['description']}", t["vtype"])
        self.combo_vtype.blockSignals(False)

    def _refresh_grid(self) -> None:
        vtype = self._current_vtype()
        try:
            if not vtype:
                rows, prefix = [], None
            else:
                rows = ops.list_serial_records(
                    vtype, self._vprefix, self._site)
                prefix = ops.list_voucher_prefix(
                    vtype, self._vprefix, self._site)
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))
            return

        self.grid.setRowCount(len(rows))
        for i, r in enumerate(rows):
            vdate = r["v_date"]
            vdate_s = vdate.strftime("%d-%m-%Y") if hasattr(
                vdate, "strftime") else str(vdate or "")
            vals = [str(r["sr_no"] or ""), str(r["docid"] or ""),
                    vdate_s, str(r["narration"] or ""),
                    str(r["lines"]), f"{r['amt_dr']:.2f}",
                    f"{r['amt_cr']:.2f}"]
            for j, v in enumerate(vals):
                self.grid.setItem(i, j, QTableWidgetItem(v))
        self.grid.resizeColumnsToContents()

        start = prefix.get("Start_Srl_No") if prefix else None
        self.lbl_srl.setText(
            f"Voucher_Prefix Start_Srl_No: "
            f"{start if start is not None else '-'}")
        self.edt_srno.setText(str(start) if start is not None else "")

    # ----------------------------------------------------------- serialise
    def _on_serialise(self) -> None:
        vtype = self._current_vtype()
        if not vtype:
            QMessageBox.critical(self, "Validation Error",
                                 ops.REQUIRED_FIELD_MSG)
            self.combo_vtype.setFocus()
            return
        self.combo_vtype.setEnabled(False)
        self.btn_serialise.setEnabled(False)

        def _status(msg: str) -> None:
            self.lbl_status.setText(msg)

        try:
            result = ops.serialise(vtype, self._vprefix, self._site,
                                   status_cb=_status)
        except ValueError as e:
            QMessageBox.critical(self, "Validation Error", str(e))
        except Exception as e:
            QMessageBox.information(self, "Information", str(e))
        else:
            QMessageBox.information(
                self, "Information",
                f"{result['status']}\nVr.Type: {result['vtype']}\n"
                f"Headers: {result['headers']}  Lines: {result['lines']}\n"
                f"Start_Srl_No: {result['start_srl_no']}")
        finally:
            self.combo_vtype.setEnabled(True)
            self.btn_serialise.setEnabled(True)
            self._refresh_grid()


def open_voucher_serialisation(parent=None, user: str = "SA"):
    """VB6 FrmSerialiseVr.Show equivalent — window banao, dikhao, return."""
    w = VoucherSerialisationWindow(parent=parent, user=user)
    w.show()
    return w
