"""Purchase Parameter / Enviro Inventry UI (VB6 frmPurEnviro port).

VB6 SOURCE: HMS_REVERSE_ENGINEERING/HMS/frmPurEnviro.frm
  Caption "Purchase Parameter" (MDI child, WindowState=2 maximized).
DISPATCH: ModuleAdd.bas loc_1E43AE6
  `If (var_188 = "Enviro Inventry") Then Set var_90 = New frmPurEnviro ...
   Show` (menu leaf "Enviro Inventry", group Material Mgmt/Inventory;
  _dispatch_map.json "Enviro Inventry" -> ["frmPurEnviro"]).
TABLES (LIVE verified 2026-10-02): Enviro (single-row settings — 14 cols
  yahan edit hote hain), Godownmast (Purchase Godown / Banquet Kitchen /
  Stock Receive for Godown lookups), SubGroup (Cash Purchase A/c lookup,
  ActiveYN=1), RevMast (FieldType='T' -> Purchase Tax (VAT) lookup).
SAVE: VB6 CmdSave_Click loc_1250190 — BeginTrans -> one
  `Update Enviro Set CashPurchAc=...,PurchaseGodown=...,BanquetKitchen=...,
   AcFieldAlterable=...,RateEditableInPO=...,RateEditableInStockIssue=...,
   BarCodeFeatureInPurchase=...,AutoFillItemInKitchenClosingYN=...,
   ShowAllAcInPurcahseCategoryYN=...,PurchaseTaxVAT=...,
   KitchenStockReport=...,ItemRateInMRBasedOn=...,
   ItemRateInPurchaseBillBasedOn=...,StockRecGodown=...
   WHERE SITECODE='<site>'` -> CommitTrans (error par Rollback).

OVERLAP (repo search `rg -n "Enviro" ui core`):
- ui/enviro_ui.py ('Parameter' leaf, core/enviro.py): generic Enviro grid —
  uske EDITABLE me KitchenStockReport, ItemRateInMRBasedOn,
  ItemRateInPurchaseBillBasedOn, PurchaseTaxVAT, RateEditableInPO/InStockIssue,
  BarCodeFeatureInPurchase RAW-TEXT roop me already editable hain. Ye form
  unhi cols ka VB6-faithful widget (combo + default + master lookup) deta hai.
  CashPurchAc wahan READ-ONLY hai (GL-integrity); yahan editable — VB6
  frmPurEnviro isi ka authority hai.
- core/general_setup.py (ENVIRO_EDITABLE_FIELDS + enviro_update + godown_list):
  BanquetKitchen/PurchaseGodown/StockRecGodown/AcFieldAlterable/
  AutoFillItemInKitchenClosingYN single-field API se bhi update ho sakte hain;
  lookup lists (godown_list) reuse ki gayi hain conceptually (yahan VB6 SQL
  verbatim chahiye thi, isliye ops module me apni hi list functions hain).
- ui/fa_enviro_ui.py (FAEnviro) aur ui/voucher_environment_ui.py
  (Voucher_Type/VoucherCat) alag tables — no overlap.
- ui/shell.py: "Enviro Inventry" abhi `_coming_soon` list me hai
  (shell.py:1621) aur "Purchase Parameter" -> envui.open_enviro
  (shell.py:1704). Task constraint ke karan shell.py EDIT NAHI kiya gaya —
  ye opener aage jaake registry me wire ho sakta hai:
    "Enviro Inventry": (lambda w: pe_ui.open_purchase_enviro(
        w, user=getattr(w, "user", "SA")))

DEVIATIONS / KNOWN GAPS:
- Hidden VB6 Txt (Req. Company Wise(86), Exp && Mfd. Date In M.R.(89),
  Excise Invoice Tax Stru(90)) CmdSave SQL me nahi aate — is port me bhi nahi.
- VB6 text boxes + hidden DataGrid help popup ki jagah editable-less
  QComboBox (code userData me) — same Tag/Name semantics, keyboard search
  Qt built-in.
- VB6 koi success MsgBox nahi dikhata (CommitTrans -> Unload); yahan ek
  confirmation box hai, phir window band.
- Save par VB6 `WHERE SITECODE=` ki jagah repo-convention
  `LogSite_Code = ? OR 'HO'` (live: 1 hi row).
- Lookups/site filter analysis par core/purchase_enviro_ops.py module dekho.

Run: python -m HMS_py.ui.purchase_enviro_ui
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QKeySequence, QShortcut
from PyQt6.QtWidgets import (QComboBox, QFormLayout, QGroupBox, QHBoxLayout,
                             QLabel, QMessageBox, QPushButton, QVBoxLayout,
                             QWidget)

from HMS_py.core import purchase_enviro_ops as ops
from HMS_py.ui.desktop_style import (apply_desktop_surface,
                                     mark_desktop_action)


def _fill_code_combo(combo: QComboBox, items: list[dict], current: str):
    """VB6: box = master Name, .Tag = Code — yahan item text = 'Name (Code)',
    item data = Code (blank option = cleared field)."""
    combo.clear()
    combo.addItem("(none)", "")
    seen = {""}
    for it in items:
        code = it["code"]
        if code in seen:
            continue
        seen.add(code)
        combo.addItem(f"{it['name']} ({code})", code)
    current = (current or "").strip()
    if current and current not in seen:
        combo.addItem(f"{current} (master me nahi mila)", current)
    idx = combo.findData(current)
    combo.setCurrentIndex(idx if idx >= 0 else 0)


def _fill_choice_combo(combo: QComboBox, choices, current: str):
    combo.clear()
    for choice in choices:
        combo.addItem(choice, choice)
    idx = combo.findData(current)
    combo.setCurrentIndex(idx if idx >= 0 else 0)


class PurchaseEnviroForm(QWidget):
    """frmPurEnviro ka port: current Enviro row load -> edit -> Save & Exit."""

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopMasterForm")
        self.user = user or "SA"
        self.setWindowTitle("Purchase Parameter - Enviro Inventry - HMS_py")
        self._combos: dict[str, QComboBox] = {}
        self._build_ui()
        self.reload()

    # ── UI ────────────────────────────────────────────────────────────
    def _build_ui(self):
        root = QVBoxLayout(self)
        root.setContentsMargins(14, 12, 14, 12)
        root.setSpacing(10)

        head = QHBoxLayout()
        title = QLabel("Purchase Parameter (Enviro Inventry)")
        title.setObjectName("desktopStateLabel")
        head.addWidget(title)
        head.addStretch(1)
        self.lblStatus = QLabel("Ready")
        self.lblStatus.setObjectName("desktopStateLabel")
        head.addWidget(self.lblStatus)
        root.addLayout(head)

        def group(caption: str) -> QFormLayout:
            box = QGroupBox(caption)
            lay = QFormLayout(box)
            lay.setLabelAlignment(Qt.AlignmentFlag.AlignRight
                                  | Qt.AlignmentFlag.AlignVCenter)
            lay.setHorizontalSpacing(16)
            root.addWidget(box)
            return lay

        def add(lay: QFormLayout, col: str) -> QComboBox:
            spec = ops.SPEC_BY_COL[col]
            combo = QComboBox()
            combo.setMinimumWidth(300)
            combo.setEditable(False)
            lay.addRow(spec["label"] + ":", combo)
            self._combos[col] = combo
            return combo

        # Lookup fields (VB6 Txt + hidden help grid -> combos)
        f_accounts = group("Purchase Accounts / Godowns")
        for col in ("CashPurchAc", "PurchaseGodown", "BanquetKitchen",
                    "StockRecGodown", "PurchaseTaxVAT"):
            add(f_accounts, col)

        # Yes/No flags (VB6 default text "No"/"Yes" -> Proc_294_19)
        f_flags = group("Purchase / Stock Flags (Yes / No)")
        for col in ("AcFieldAlterable", "RateEditableInPO",
                    "RateEditableInStockIssue", "BarCodeFeatureInPurchase",
                    "AutoFillItemInKitchenClosingYN",
                    "ShowAllAcInPurcahseCategoryYN"):
            add(f_flags, col)

        # Fixed-choice settings (VB6 ListView popup lists)
        f_rates = group("Rate & Report Settings")
        for col in ("KitchenStockReport", "ItemRateInMRBasedOn",
                    "ItemRateInPurchaseBillBasedOn"):
            add(f_rates, col)

        # VB6 buttons: CmdSave "&Save && Exit", CmdExit "&Cancel && Exit"
        bar = QHBoxLayout()
        self.btnSave = QPushButton("Save && Exit")
        self.btnSave.setToolTip("Enviro row update karke band (Ctrl+S) — "
                                "VB6 CmdSave")
        mark_desktop_action(self.btnSave, "primary")
        self.btnSave.setDefault(True)
        self.btnSave.clicked.connect(self._save)
        self.btnCancel = QPushButton("Cancel && Exit")
        self.btnCancel.setToolTip("Kuch bhi save nahi — VB6 CmdExit")
        mark_desktop_action(self.btnCancel)
        self.btnCancel.clicked.connect(self.close)
        self.btnReload = QPushButton("Reload")
        self.btnReload.setToolTip("Enviro row dobara padho (F5)")
        mark_desktop_action(self.btnReload)
        self.btnReload.clicked.connect(self.reload)
        bar.addWidget(self.btnSave)
        bar.addWidget(self.btnCancel)
        bar.addWidget(self.btnReload)
        bar.addStretch(1)
        root.addLayout(bar)

        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save)
        QShortcut(QKeySequence("F5"), self, activated=self.reload)

    # ── load current row (VB6 Form_Load + Proc_294_19) ────────────────
    def reload(self):
        try:
            subgroups = ops.subgroup_list()
            godowns = ops.godown_list()
            taxes = ops.tax_list()
            data = ops.load_settings()
        except Exception as exc:
            QMessageBox.critical(self, "Enviro Inventry", str(exc))
            self.lblStatus.setText("Load failed")
            return
        _fill_code_combo(self._combos["CashPurchAc"], subgroups,
                         data["CashPurchAc"])
        for col in ("PurchaseGodown", "BanquetKitchen", "StockRecGodown"):
            _fill_code_combo(self._combos[col], godowns, data[col])
        _fill_code_combo(self._combos["PurchaseTaxVAT"], taxes,
                         data["PurchaseTaxVAT"])
        for spec in ops.FIELD_SPECS:
            if spec["kind"] == "yn":
                _fill_choice_combo(self._combos[spec["col"]],
                                   ("Yes", "No"), data[spec["col"]])
            elif spec["kind"] == "list":
                _fill_choice_combo(self._combos[spec["col"]],
                                   spec["choices"], data[spec["col"]])
        self.lblStatus.setText(
            f"Loaded — {data['CashPurchAc'] or '(no a/c)'} / "
            f"{data['PurchaseGodown'] or '(no godown)'}")

    # ── save (VB6 CmdSave_Click loc_1250190) ──────────────────────────
    def _collect(self) -> dict:
        values = {}
        for spec in ops.FIELD_SPECS:
            combo = self._combos[spec["col"]]
            data = combo.currentData()
            values[spec["col"]] = "" if data is None else str(data)
        return values

    def _save(self):
        values = self._collect()
        try:
            ops.save_settings(values, user=self.user)
        except ValueError as exc:
            QMessageBox.warning(self, "Purchase Parameter", str(exc))
            return
        except Exception as exc:
            QMessageBox.critical(self, "Purchase Parameter",
                                 f"Save failed: {exc}")
            return
        self.lblStatus.setText("Saved")
        QMessageBox.information(
            self, "Purchase Parameter",
            f"{len(ops.FIELD_SPECS)} setting(s) saved (Enviro row updated)")
        self.close()


def open_purchase_enviro(parent=None, user: str = "SA") -> PurchaseEnviroForm:
    """Shell opener — menu leaf 'Enviro Inventry' (VB6 frmPurEnviro).

    Constructs, shows and returns the widget (MDI child ki tarah
    independent window)."""
    w = PurchaseEnviroForm(parent, user=user)
    w.setWindowFlags(Qt.WindowType.Window)
    w.resize(760, 640)
    w.show()
    return w


def main():  # pragma: no cover
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = open_purchase_enviro()
    w.resize(760, 640)
    sys.exit(app.exec())


if __name__ == "__main__":  # pragma: no cover
    main()
