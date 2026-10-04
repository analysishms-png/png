"""Changes Department / Restaurant Change (VB6 FrmChangeDepart + FrmChangeRest).

Dono VB6 forms same chhote selectors hain: ek Department combo, OK button.
OK par VB6 `Select RestType,BackColor From Depart Where Code=...` chalata
tha aur caller ke globals me current department/restaurant set karke form
unload karta tha.

VB6 refs:
  FrmChangeDepart.frm  Form_Load loc_F2AB4E / CmdOK_Click loc_F60CEE
  FrmChangeRest.frm    Form_Load loc_FEFE31 (PointOfSale) + loc_FEFF0F
                       (DirectSale) / CmdOK_Click loc_1055299
  Menu leaf: "Changes Department" (registry tuple -> pehle _coming_soon)
             "Restaurant Change " (trailing space, VB6 caption bhi aisa)

Run: python -m HMS_py.ui.depart_change_ui
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtWidgets import (QApplication, QComboBox, QDialog, QFormLayout,
                             QHBoxLayout, QLabel, QMessageBox, QPushButton,
                             QVBoxLayout)

from HMS_py.core import depart_change as _dc
from HMS_py.ui import theme as _theme


class DepartChangeDialog(QDialog):
    """VB6 FrmChangeDepart / FrmChangeRest ka common body.

    mode='depart' -> FrmChangeDepart (House Keeping outlets)
    mode='rest'   -> FrmChangeRest   (sale-point ke outlets)
    """

    def __init__(self, mode: str = "depart", parent=None):
        super().__init__(parent)
        if mode not in ("depart", "rest"):
            raise ValueError(f"mode 'depart' ya 'rest' ho sakta hai: {mode}")
        self.mode = mode
        self.parent_window = parent
        self.selected: dict | None = None
        self.setWindowTitle(
            "Department Change Master" if mode == "depart"
            else "Restaurant Change Master")
        self.resize(460, 200)
        self._build_ui()
        self._load()

    # ------------------------------------------------------------------ ui
    def _build_ui(self):
        lay = QVBoxLayout(self)
        form = QFormLayout()
        self.cmb = QComboBox()
        self.cmb.setMinimumWidth(300)
        self.cmb.currentIndexChanged.connect(self._preview)
        form.addRow(QLabel("Name:"), self.cmb)
        lay.addLayout(form)

        pal = _theme.palette()
        self.lbl_info = QLabel("—")
        self.lbl_info.setWordWrap(True)
        self.lbl_info.setStyleSheet(
            f"color:{pal['text']}; background:#2b2b2b; padding:6px;")
        lay.addWidget(self.lbl_info)

        row = QHBoxLayout()
        row.addStretch()
        btn_ok = QPushButton("&OK")
        btn_ok.setDefault(True)
        btn_ok.clicked.connect(self._ok)
        btn_cancel = QPushButton("Cancel")
        btn_cancel.clicked.connect(self.reject)
        row.addWidget(btn_ok)
        row.addWidget(btn_cancel)
        lay.addLayout(row)

    def _load(self):
        """VB6 Form_Load - mode ke hisaab se alag Depart list."""
        try:
            if self.mode == "depart":
                rows = _dc.housekeeping_departments()
            else:
                rows = _dc.outlet_departments(point_of_sale=True)
        except Exception as exc:  # DB down -> blank combo, click par message
            rows = []
            self.lbl_info.setText(f"Depart load nahi hua: {exc}")
        self.cmb.clear()
        for rec in rows:
            # VB6 DataCombo: display NAME, BoundText CODE
            self.cmb.addItem(f"{rec['name']}  [{rec['code']}]", rec["code"])
        self._preview()

    def _preview(self, *_):
        """VB6 CmdOK_Click ka RestType/BackColor lookup - select par hi dikhao."""
        code = self.cmb.currentData()
        if not code:
            self.lbl_info.setText("—")
            return
        try:
            lu = _dc.depart_lookups(code)
        except Exception as exc:
            self.lbl_info.setText(f"lookup fail: {exc}")
            return
        self.lbl_info.setText(
            f"Code: {code}   |   RestType: {lu['resttype'] or '-'}   |   "
            f"BackColor: {lu['backcolor']}")

    # --------------------------------------------------------------- action
    def _ok(self):
        code = self.cmb.currentData()
        # VB6 loc_F60CB2/loc_F25B76: agar text khali ho to OK no-op.
        if not code:
            QMessageBox.information(self, self.windowTitle(),
                                    "Pehle Name (department) select karo")
            return
        name = self.cmb.currentText().rsplit("  [", 1)[0].strip()
        try:
            lu = _dc.depart_lookups(code)
        except Exception as exc:
            QMessageBox.critical(self, self.windowTitle(), f"DB error: {exc}")
            return
        self.selected = {"code": code, "name": name,
                         "resttype": lu["resttype"],
                         "backcolor": lu["backcolor"]}
        # VB6 Form_Load/Unload ke beech ka global hand-off: caller window par
        # current department/restaurant stamp karo (agar wo rakhta hai).
        w = self.parent_window
        if w is not None:
            if self.mode == "depart":
                setattr(w, "current_depart", code)
            else:
                setattr(w, "current_rest", code)
        self.accept()


def open_changes_department(parent=None):
    """Menu leaf 'Changes Department' -> VB6 FrmChangeDepart."""
    dlg = DepartChangeDialog("depart", parent)
    dlg.exec()
    return dlg.selected


def open_restaurant_change(parent=None):
    """Menu leaf 'Restaurant Change ' -> VB6 FrmChangeRest."""
    dlg = DepartChangeDialog("rest", parent)
    dlg.exec()
    return dlg.selected


def main() -> int:
    app = QApplication(sys.argv)
    dlg = DepartChangeDialog("depart")
    dlg.show()
    return app.exec()


if __name__ == "__main__":
    os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
    sys.exit(main())
