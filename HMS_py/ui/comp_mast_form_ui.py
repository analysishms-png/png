"""Company Master detail form (VB6 CompMast.frm) — MS-001..004 + MS-027.

VB6 CompMast ka full detail form:
  - 42 Txt controls (Txt(0..36) + txtCurrBal) -> core.comp_master FIELDS
    map (43 business+audit columns; VB6 8 columns sirf padhta tha,
    save nahi karta tha — register MS-027).
  - Lookups (MS-003): DGUnderAc (AcGroup), DGCity (City), DgUser
    (Employee), DGAcName (SubGroup search) — double-click selection.
  - VB6 save-validation (MS-002/004): required fields, e-mail format +
    LCase, GSTIN 15-digit, duplicate NameHelp, numeric coercion —
    message text CompMast.frm:3021 se same.
  - Add/Edit/Save/Cancel/Delete state machine (TopCtrl1 port).
  - Txt_KeyUp conditional enable: BlackListed=Yes -> Reason/By on;
    CompanyType=Travel Agency -> Commission on (else Discount on).
  - F_AO opening-balance grid (VB6 FGrid) display + OpBal/CurBal labels.
    NOTE: VB6 FGrid se naye F_AO voucher write karna abhi port nahi
    (ledger numbering + SUBGROUPCURRBAL reverse logic deep hai) —
    grid read-only hai, vouchers banane ke liye FA tool use karo.

Run: python -m HMS_py.ui.comp_mast_form_ui
Offscreen screenshot: HMS_POC_SHOT=<path> env var.
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import (QApplication, QComboBox, QDialog,
                             QDoubleSpinBox, QGridLayout, QGroupBox,
                             QHBoxLayout, QHeaderView, QLabel, QLineEdit,
                             QMessageBox, QPushButton, QSpinBox,
                             QTableWidget, QTableWidgetItem, QTabWidget,
                             QVBoxLayout, QWidget)

from HMS_py.core import comp_master as cm
from HMS_py.ui.desktop_style import (apply_desktop_surface,
                                     apply_vb6_child_chrome,
                                     mark_desktop_action)


class _AllEdit(QLineEdit):
    """VB6 Txt_GotFocus: focus par select-all (MS-002)."""

    def focusInEvent(self, e):
        super().focusInEvent(e)
        self.selectAll()


def _set_combo(cmb: QComboBox, text: str) -> None:
    text = (text or "").strip()
    if not text:
        cmb.setCurrentIndex(-1)
        return
    i = cmb.findText(text)
    if i < 0:
        cmb.addItem(text)
        i = cmb.count() - 1
    cmb.setCurrentIndex(i)


def _cell(val) -> QTableWidgetItem:
    it = QTableWidgetItem("" if val is None else str(val))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    return it


class CompanySearchDialog(QDialog):
    """DGAcName + grid-search (CompMast.frm:2901 list query) port."""

    COLS = [("Code", "subcode"), ("Name", "name"),
            ("Under Group", "undergroup"), ("City", "city"),
            ("Type", "companytype"), ("Active", "active")]

    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopMasterForm")
        self.setWindowTitle("Company Master - Search")
        self.resize(760, 460)
        self.selected_subcode = None

        root = QVBoxLayout(self)
        root.setContentsMargins(14, 12, 14, 12)
        root.setSpacing(10)

        top = QHBoxLayout()
        top.addWidget(QLabel("Search:"))
        self.txt_filter = QLineEdit()
        self.txt_filter.setPlaceholderText("Name / Code / Type se filter...")
        self.txt_filter.setMinimumHeight(30)
        top.addWidget(self.txt_filter, 1)
        root.addLayout(top)

        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels([c[0] for c in self.COLS])
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.setSelectionMode(QTableWidget.SelectionMode.SingleSelection)
        self.tbl.verticalHeader().setVisible(False)
        self.tbl.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.ResizeToContents)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.itemDoubleClicked.connect(self._pick)
        root.addWidget(self.tbl, 1)

        btns = QHBoxLayout()
        btns.addStretch()
        b_sel = QPushButton("  Select  ")
        b_sel.setProperty("accent", True)
        b_sel.clicked.connect(self._pick)
        b_close = QPushButton("  Close  ")
        b_close.clicked.connect(self.reject)
        btns.addWidget(b_sel)
        btns.addWidget(b_close)
        root.addLayout(btns)

        try:
            self._rows = cm.list_companies_full()
        except Exception as e:
            self._rows = []
            QMessageBox.critical(self, "Company Master", str(e))
        self.txt_filter.textChanged.connect(self._fill)
        self._fill()

    def _fill(self, *_):
        q = self.txt_filter.text().strip().lower()
        rows = [r for r in self._rows if not q
                or q in r["name"].lower() or q in r["subcode"].lower()
                or q in r["companytype"].lower()]
        self.tbl.setRowCount(len(rows))
        for i, rec in enumerate(rows):
            for j, (_, key) in enumerate(self.COLS):
                self.tbl.setItem(i, j, _cell(rec.get(key, "")))
        if rows:
            self.tbl.selectRow(0)

    def _pick(self, *_):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Company Master",
                                    "Pehle ek company select karo")
            return
        self.selected_subcode = self.tbl.item(r, 0).text()
        self.accept()


class CompMastForm(QDialog):
    """VB6 CompMast detail form — Add/Edit/Save/Cancel state machine."""

    def __init__(self, parent=None, user="SA"):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopMasterForm")
        self.setWindowTitle("Company Master - HMS_py (VB6 CompMast)")
        self.resize(1040, 740)
        self._user = user
        self._mode = "View"          # View | Add | Edit
        self._rec: dict | None = None
        self._subcode = ""
        self._orig_name = ""
        self._loading = False
        self.f: dict = {}
        self.lbl: dict = {}
        self.btn: dict = {}
        self.pick_btn: dict = {}
        self.codes = {"groupcode": "", "citycode": "", "blacklistedby": ""}
        self._build()
        self._update_ui()

    # ── build ──────────────────────────────────────────────────────
    def _build(self):
        root = QVBoxLayout(self)
        root.setContentsMargins(14, 10, 14, 12)
        root.setSpacing(8)

        bar = QHBoxLayout()
        self.lbl_mode = QLabel("VIEW")
        self.lbl_mode.setStyleSheet(
            "font-weight: bold; padding: 3px 10px; border-radius: 6px;")
        bar.addWidget(self.lbl_mode)
        bar.addStretch()
        self.lbl_audit = QLabel("")
        self.lbl_audit.setStyleSheet("color: #64748b;")
        bar.addWidget(self.lbl_audit)
        root.addLayout(bar)

        sbar = QHBoxLayout()
        b_search = QPushButton("  Search A/C ...  ")
        b_search.setToolTip("DGAcName / VB6 list-grid search (F4)")
        b_search.clicked.connect(self._search)
        sbar.addWidget(b_search)
        b_new = QPushButton("  New Company  ")
        b_new.clicked.connect(self._start_add)
        sbar.addWidget(b_new)
        sbar.addStretch()
        lbl_hint = QLabel("Lookup: ... button dabao (Group / City / User)")
        lbl_hint.setStyleSheet("color: #94a3b8;")
        sbar.addWidget(lbl_hint)
        root.addLayout(sbar)

        tabs = QTabWidget()
        tabs.setDocumentMode(True)
        tabs.addTab(self._tab_company(), "Company")
        tabs.addTab(self._tab_address(), "Address / Contact")
        tabs.addTab(self._tab_tax(), "Tax / Registration")
        tabs.addTab(self._tab_finance(), "Finance / Terms")
        tabs.addTab(self._tab_opening(), "Opening Balance")
        root.addWidget(tabs, 1)

        bb = QHBoxLayout()
        bb.addStretch()
        for key, label, role in (
                ("add", "  Add  ", None), ("edit", "  Edit  ", None),
                ("delete", "  Delete  ", "danger"),
                ("save", "  Save  ", "primary"),
                ("cancel", "  Cancel  ", None), ("close", "  Close  ", None)):
            b = QPushButton(label)
            mark_desktop_action(b, role or "default")
            b.clicked.connect(lambda _=False, k=key: self._on_button(k))
            self.btn[key] = b
            bb.addWidget(b)
        root.addLayout(bb)

        apply_vb6_child_chrome(self, "Masters > Company > Company Master")

    def _row(self, grid: QGridLayout, row: int, col: int, text: str,
             widget, pick: QPushButton | None = None) -> QLabel:
        lbl = QLabel(text + ":")
        grid.addWidget(lbl, row, col)
        if pick is None:
            grid.addWidget(widget, row, col + 1)
        else:
            wrap = QWidget()
            lay = QHBoxLayout(wrap)
            lay.setContentsMargins(0, 0, 0, 0)
            lay.setSpacing(4)
            lay.addWidget(widget, 1)
            lay.addWidget(pick)
            grid.addWidget(wrap, row, col + 1)
        grid.setColumnStretch(col + 1, 1)
        return lbl

    def _edit(self, key: str, placeholder: str = "") -> _AllEdit:
        ed = _AllEdit()
        lim = cm.LIMITS.get(key)
        if lim:
            ed.setMaxLength(lim)
        if placeholder:
            ed.setPlaceholderText(placeholder)
        self.f[key] = ed
        return ed

    def _pick_btn(self, key: str, slot) -> QPushButton:
        b = QPushButton("...")
        b.setFixedWidth(30)
        b.setToolTip(f"{key} lookup")
        b.clicked.connect(slot)
        self.pick_btn[key] = b
        return b

    def _combo(self, key: str, items) -> QComboBox:
        cmb = QComboBox()
        cmb.addItems(list(items))
        self.f[key] = cmb
        return cmb

    def _num(self, key: str, maximum: float = 1e9) -> QDoubleSpinBox:
        sp = QDoubleSpinBox()
        sp.setRange(0.0, maximum)
        sp.setDecimals(2)
        sp.setGroupSeparatorShown(True)
        self.f[key] = sp
        return sp

    def _grp(self, title: str) -> tuple[QGroupBox, QGridLayout]:
        g = QGroupBox(title)
        grid = QGridLayout(g)
        grid.setVerticalSpacing(8)
        return g, grid

    def _tab_company(self) -> QWidget:
        w = QWidget()
        lay = QVBoxLayout(w)
        g1, grid = self._grp("Identity")
        self.ed_code = _AllEdit()
        self.ed_code.setReadOnly(True)
        self.ed_code.setPlaceholderText("(auto: site + 6 digit)")
        self._row(grid, 0, 0, "A/C Code", self.ed_code)
        self._row(grid, 0, 2, "A/C Name *", self._edit("name"),
                  self._pick_btn("name", self._search))
        self._row(grid, 1, 0, "Under Group *", self._edit("groupcode"),
                  self._pick_btn("groupcode", self._pick_group))
        self._row(grid, 1, 2, "Contact Prefix",
                  self._combo("conprefix", cm.PREFIXES))
        self._row(grid, 2, 0, "Contact Person", self._edit("conperson"))
        self._row(grid, 2, 2, "Company Type *",
                  self._combo("companytype", cm.COMP_TYPES))
        lay.addWidget(g1)

        g2, grid = self._grp("Status")
        self._row(grid, 0, 0, "Active *", self._combo("active",
                                                      ("Yes", "No")))
        self._row(grid, 0, 2, "Allow Credit",
                  self._combo("allowcredit", ("Yes", "No")))
        self._row(grid, 1, 0, "Map Code", self._edit("mapcode"))
        self._row(grid, 1, 2, "Web Password", self._edit("webpassword"))
        lay.addWidget(g2)

        g3, grid = self._grp("Legal / Display")
        self._row(grid, 0, 0, "Legal Name", self._edit("legalname"))
        self._row(grid, 0, 2, "Trade Name", self._edit("tradename"))
        self._row(grid, 1, 0, "Remark", self._edit("remark"))
        lay.addWidget(g3)
        lay.addStretch(1)

        self.f["companytype"].currentTextChanged.connect(
            self._on_companytype)
        return w

    def _tab_address(self) -> QWidget:
        w = QWidget()
        lay = QVBoxLayout(w)
        g1, grid = self._grp("Address")
        self._row(grid, 0, 0, "Address 1", self._edit("add1"))
        self._row(grid, 0, 2, "Address 2", self._edit("add2"))
        self._row(grid, 1, 0, "Address 3", self._edit("add3"))
        self._row(grid, 1, 2, "City", self._edit("citycode"),
                  self._pick_btn("citycode", self._pick_city))
        self._row(grid, 2, 0, "PIN", self._edit("pin"))
        lay.addWidget(g1)

        g2, grid = self._grp("Contact")
        self._row(grid, 0, 0, "Phone", self._edit("phone"))
        self._row(grid, 0, 2, "Mobile", self._edit("mobile"))
        self._row(grid, 1, 0, "FAX", self._edit("fax"))
        self._row(grid, 1, 2, "E-Mail", self._edit("email",
                                                    "name@domain.com"))
        lay.addWidget(g2)
        lay.addStretch(1)
        return w

    def _tab_tax(self) -> QWidget:
        w = QWidget()
        lay = QVBoxLayout(w)
        g1, grid = self._grp("Tax / Registration")
        self._row(grid, 0, 0, "PAN No", self._edit("panno"))
        self._row(grid, 0, 2, "GSTIN", self._edit("gstin", "15 characters"))
        self._row(grid, 1, 0, "CST No", self._edit("cstno"))
        self._row(grid, 1, 2, "LST No", self._edit("lstno"))
        lay.addWidget(g1)

        g2, grid = self._grp("Black Listing (VB6 Txt(18)/(26)/(27))")
        self._row(grid, 0, 0, "Black Listed",
                  self._combo("blacklisted", ("Yes", "No")))
        self._row(grid, 0, 2, "Reason for Black List",
                  self._edit("reasonblacklist"))
        self._row(grid, 1, 0, "Black Listed By",
                  self._edit("blacklistedby"),
                  self._pick_btn("blacklistedby", self._pick_user))
        lay.addWidget(g2)
        lay.addStretch(1)
        self.f["blacklisted"].currentTextChanged.connect(
            self._on_blacklisted)
        return w

    def _tab_finance(self) -> QWidget:
        w = QWidget()
        lay = QVBoxLayout(w)
        g1, grid = self._grp("Credit Terms")
        self._row(grid, 0, 0, "Credit Days", self._num_days())
        self._row(grid, 0, 2, "Credit Limit", self._num("creditlimit"))
        self._row(grid, 1, 0, "Interest %", self._num("interest"))
        lay.addWidget(g1)

        g2, grid = self._grp("Commission / Discount (VB6 conditional)")
        self.lbl["commission"] = self._row(
            grid, 0, 0, "Commission", self._num("commission"))
        self.lbl["discount"] = self._row(
            grid, 0, 2, "Discount %", self._num("discount"))
        self.lbl["discounttype"] = self._row(
            grid, 1, 0, "Discount Type",
            self._combo("discounttype", cm.DISCOUNT_TYPES))
        note = QLabel("Travel Agency -> Commission on; Corporate/Mesh -> "
                      "Discount % + Discount Type on (VB6 Txt_KeyUp).")
        note.setStyleSheet("color: #94a3b8;")
        grid.addWidget(note, 1, 2, 1, 2)
        lay.addWidget(g2)
        lay.addStretch(1)
        return w

    def _num_days(self) -> QSpinBox:
        sp = QSpinBox()
        sp.setRange(0, 100000)
        self.f["creditdays"] = sp
        return sp

    def _tab_opening(self) -> QWidget:
        w = QWidget()
        lay = QVBoxLayout(w)
        top = QHBoxLayout()
        self.lbl["opbal"] = QLabel("Opening Balance: 0.00")
        self.lbl["opbal"].setStyleSheet("font-weight: bold;")
        top.addWidget(self.lbl["opbal"])
        top.addSpacing(24)
        self.lbl["curbal"] = QLabel("Current Balance: 0.00")
        self.lbl["curbal"].setStyleSheet("font-weight: bold;")
        top.addWidget(self.lbl["curbal"])
        top.addStretch()
        lay.addLayout(top)

        self.tbl_ob = QTableWidget(0, 6)
        self.tbl_ob.setHorizontalHeaderLabels(
            ["S.No", "Ref. Date", "Narration", "Amount", "Cr/Dr",
             "Voucher No"])
        self.tbl_ob.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl_ob.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.tbl_ob.verticalHeader().setVisible(False)
        self.tbl_ob.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.ResizeToContents)
        self.tbl_ob.horizontalHeader().setStretchLastSection(True)
        lay.addWidget(self.tbl_ob, 1)

        note = QLabel(
            "VB6 FGrid = F_AO opening vouchers. Yahan display-only hai "
            "(naye voucher write port nahi kiye) — amount/direction "
            "SubGroup + Ledger se compute hota hai.")
        note.setWordWrap(True)
        note.setStyleSheet("color: #94a3b8;")
        lay.addWidget(note)
        return w

    # ── lookups (MS-003) ───────────────────────────────────────────
    def _pick_list(self, title: str, rows: list[dict]) -> dict | None:
        dlg = QDialog(self)
        apply_desktop_surface(dlg, "desktopMasterForm")
        dlg.setWindowTitle(title)
        dlg.resize(480, 440)
        root = QVBoxLayout(dlg)
        root.setContentsMargins(12, 10, 12, 10)
        root.setSpacing(8)
        flt = QLineEdit()
        flt.setPlaceholderText("Filter...")
        root.addWidget(flt)
        tbl = QTableWidget(0, 2)
        tbl.setHorizontalHeaderLabels(["Code", "Name"])
        tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        tbl.verticalHeader().setVisible(False)
        tbl.horizontalHeader().setStretchLastSection(True)
        tbl.itemDoubleClicked.connect(lambda *_: dlg.accept())
        root.addWidget(tbl, 1)
        bb = QHBoxLayout()
        bb.addStretch()
        ok = QPushButton("  Select  ")
        ok.setProperty("accent", True)
        ok.clicked.connect(lambda: dlg.accept())
        no = QPushButton("  Close  ")
        no.clicked.connect(dlg.reject)
        bb.addWidget(ok)
        bb.addWidget(no)
        root.addLayout(bb)

        def fill(*_):
            q = flt.text().strip().lower()
            shown = [r for r in rows if not q
                     or q in r["name"].lower() or q in r["code"].lower()]
            tbl.setRowCount(len(shown))
            for i, r in enumerate(shown):
                tbl.setItem(i, 0, _cell(r["code"]))
                tbl.setItem(i, 1, _cell(r["name"]))
            if shown:
                tbl.selectRow(0)

        flt.textChanged.connect(fill)
        fill()
        selected: dict | None = None
        if dlg.exec() == QDialog.DialogCode.Accepted and tbl.currentRow() >= 0:
            selected = {"code": tbl.item(tbl.currentRow(), 0).text(),
                        "name": tbl.item(tbl.currentRow(), 1).text()}
        return selected

    def _pick_group(self):
        try:
            rows = cm.list_groups()
        except Exception as e:
            QMessageBox.critical(self, "Under Group", str(e))
            return
        sel = self._pick_list("Under Group (DGUnderAc)", rows)
        if sel:
            self.codes["groupcode"] = sel["code"]
            self.f["groupcode"].setText(sel["name"])

    def _pick_city(self):
        try:
            rows = cm.list_cities()
        except Exception as e:
            QMessageBox.critical(self, "City", str(e))
            return
        sel = self._pick_list("City (DGCity)", rows)
        if sel:
            self.codes["citycode"] = sel["code"]
            self.f["citycode"].setText(sel["name"])

    def _pick_user(self):
        try:
            rows = cm.list_users()
        except Exception as e:
            QMessageBox.critical(self, "Employee", str(e))
            return
        sel = self._pick_list("Employee (DgUser)", rows)
        if sel:
            self.codes["blacklistedby"] = sel["code"]
            self.f["blacklistedby"].setText(sel["name"])

    def _search(self):
        if self._mode in ("Add", "Edit"):
            QMessageBox.information(self, "Company Master",
                                    "Pehle Cancel karo, phir search karo.")
            return
        dlg = CompanySearchDialog(self)
        if dlg.exec() == QDialog.DialogCode.Accepted and dlg.selected_subcode:
            self.load(dlg.selected_subcode)

    # ── state machine (MS-004) ─────────────────────────────────────
    def _on_button(self, key: str):
        if key == "add":
            self._start_add()
        elif key == "edit":
            if self._rec:
                self._mode = "Edit"
                self._update_ui()
                self.f["name"].setFocus()
        elif key == "delete":
            self._delete()
        elif key == "save":
            self._save()
        elif key == "cancel":
            self._cancel()
        elif key == "close":
            self.close()

    def _start_add(self):
        prev = self._rec
        self._subcode = ""
        self._orig_name = ""
        self._clear_form()
        self._rec = prev          # Cancel par wapas is record par jaaye
        self._mode = "Add"
        self._update_ui()
        self.f["name"].setFocus()

    def _cancel(self):
        if self._mode == "Edit" and self._rec:
            self._fill(self._rec)
        elif self._mode == "Add":
            if self._rec:
                self._fill(self._rec)
            else:
                self._clear_form()
        self._mode = "View"
        self._update_ui()

    def _save(self):
        rec = self._gather()
        try:
            code = cm.save_company(rec, user=self._user)
        except ValueError as e:
            QMessageBox.warning(self, "Validation Error", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))
            return
        loaded = cm.get_company(code)
        if loaded:
            self._fill(loaded)
        self._mode = "View"
        self._update_ui()
        QMessageBox.information(
            self, "Company Master", f"Company {code} save ho gaya.")

    def _delete(self):
        if not self._rec:
            return
        reply = QMessageBox.question(
            self, "Confirm",
            f"Company {self._rec['name']} ({self._subcode}) delete karein?\n"
            "Ledger transactions hone par delete block hoga.")
        if reply != QMessageBox.StandardButton.Yes:
            return
        try:
            cm.delete_company(self._subcode)
        except ValueError as e:
            QMessageBox.warning(self, "Company Master", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))
            return
        self._rec = None
        self._subcode = ""
        self._orig_name = ""
        self._clear_form()
        self._mode = "View"
        self._update_ui()
        QMessageBox.information(self, "Company Master", "Delete ho gaya.")

    # ── fill / gather ──────────────────────────────────────────────
    def load(self, subcode: str):
        try:
            rec = cm.get_company(subcode)
        except Exception as e:
            QMessageBox.critical(self, "Company Master", str(e))
            return
        if not rec:
            QMessageBox.information(self, "Company Master",
                                    f"Company {subcode} nahi mili")
            return
        self._fill(rec)
        self._mode = "View"
        self._update_ui()

    def _clear_form(self):
        empty = {"subcode": "", "name": "", "groupcode": "", "groupname": "",
                 "citycode": "", "cityname": "", "blacklistedby": "",
                 "blacklistedbyname": "", "active": ""}
        for key in cm.FIELDS:
            empty.setdefault(key, "" if key not in cm.NUM_FIELDS
                             and key not in cm.INT_FIELDS else 0)
        empty["blacklisted"] = "No"
        empty["allowcredit"] = "Yes"
        empty["companytype"] = ""
        empty["discounttype"] = ""
        empty["conprefix"] = ""
        self._fill_rec(empty, ob_lines=[], opening={"amount": 0.0,
                                                    "type": ""},
                       current=0.0, current_type="", audit=None)

    def _fill(self, rec: dict):
        ob_lines = []
        try:
            ob_lines = cm.list_opening_lines(rec.get("subcode", ""))
        except Exception:
            ob_lines = []
        self._fill_rec(rec, ob_lines, rec.get("opening") or {},
                       rec.get("current", 0.0), rec.get("current_type", ""),
                       rec.get("audit"))

    def _fill_rec(self, rec: dict, ob_lines: list, opening: dict,
                  current: float, current_type: str, audit):
        self._loading = True
        try:
            self._rec = rec if rec.get("subcode") else None
            self._subcode = rec.get("subcode", "")
            self._orig_name = rec.get("orig_name", rec.get("name", ""))
            self.ed_code.setText(self._subcode)
            for key in cm.FIELDS:
                w = self.f.get(key)
                if w is None:
                    continue
                val = rec.get(key, "")
                if isinstance(w, QComboBox):
                    _set_combo(w, str(val))
                elif isinstance(w, QSpinBox):
                    try:
                        w.setValue(int(float(val or 0)))
                    except (TypeError, ValueError):
                        w.setValue(0)
                elif isinstance(w, QDoubleSpinBox):
                    try:
                        w.setValue(float(val or 0))
                    except (TypeError, ValueError):
                        w.setValue(0.0)
                else:
                    w.setText(str(val if val is not None else ""))
            # lookup display + code pairs
            self.f["groupcode"].setText(rec.get("groupname", ""))
            self.codes["groupcode"] = rec.get("groupcode", "")
            self.f["citycode"].setText(rec.get("cityname", ""))
            self.codes["citycode"] = rec.get("citycode", "")
            self.f["blacklistedby"].setText(
                rec.get("blacklistedbyname", ""))
            self.codes["blacklistedby"] = rec.get("blacklistedby", "")
            _set_combo(self.f["active"], rec.get("active", ""))
            # opening balance tab
            op = opening or {}
            self.lbl["opbal"].setText(
                f"Opening Balance: {float(op.get('amount') or 0):,.2f} "
                f"{op.get('type', '')}".rstrip())
            cur_type = current_type or ""
            self.lbl["curbal"].setText(
                f"Current Balance: {abs(float(current or 0)):,.2f} "
                f"{cur_type}".rstrip())
            self.tbl_ob.setRowCount(len(ob_lines))
            for i, ln in enumerate(ob_lines):
                date = ln["date"]
                vals = [ln["sno"], str(date)[:10] if date else "",
                        ln["narration"], f"{ln['amount']:,.2f}",
                        ln["crdr"], ln["vno"]]
                for j, v in enumerate(vals):
                    self.tbl_ob.setItem(i, j, _cell(v))
            if audit:
                self.lbl_audit.setText(
                    f"{audit.get('label', '')}: {audit.get('name', '')}"
                    f"  ({audit.get('date', '')})")
            else:
                self.lbl_audit.setText("")
        finally:
            self._loading = False

    def _gather(self) -> dict:
        rec: dict = {"subcode": self._subcode,
                     "orig_name": self._orig_name}
        for key in cm.FIELDS:
            w = self.f[key]
            if isinstance(w, QComboBox):
                rec[key] = w.currentText()
            elif isinstance(w, (QDoubleSpinBox, QSpinBox)):
                rec[key] = w.value()
            else:
                rec[key] = w.text()
        rec["active"] = self.f["active"].currentText()
        # lookup resolve (VB6 Txt_Validate: naam se code, warna clear)
        if not self.f["groupcode"].text().strip():
            self.codes["groupcode"] = ""
        if not self.codes["groupcode"] and rec.get("groupcode"):
            for g in cm.list_groups():
                if g["name"].lower() == rec["groupcode"].lower():
                    self.codes["groupcode"] = g["code"]
                    break
        rec["groupcode"] = self.codes["groupcode"]
        rec["groupname"] = self.f["groupcode"].text()
        if self.f["citycode"].text().strip():
            if not self.codes["citycode"]:
                for c in cm.list_cities():
                    if c["name"].lower() == \
                            self.f["citycode"].text().strip().lower():
                        self.codes["citycode"] = c["code"]
                        break
                else:
                    self.f["citycode"].clear()
                    self.codes["citycode"] = ""
        else:
            self.codes["citycode"] = ""
        rec["citycode"] = self.codes["citycode"]
        if self.f["blacklistedby"].text().strip():
            if not self.codes["blacklistedby"]:
                txt = self.f["blacklistedby"].text().strip().lower()
                for u in cm.list_users():
                    if u["name"].lower() == txt or u["code"].lower() == txt:
                        self.codes["blacklistedby"] = u["code"]
                        break
                else:
                    self.f["blacklistedby"].clear()
                    self.codes["blacklistedby"] = ""
        else:
            self.codes["blacklistedby"] = ""
        rec["blacklistedby"] = self.codes["blacklistedby"]
        return rec

    # ── conditional enable (VB6 Txt_KeyUp) ─────────────────────────
    def _on_companytype(self):
        if self._loading:
            return
        if self._mode in ("Add", "Edit"):
            ctype = self.f["companytype"].currentText()
            if ctype == "Travel Agency":
                self.f["discount"].setValue(0.0)
                _set_combo(self.f["discounttype"], "")
            else:
                self.f["commission"].setValue(0.0)
        self._sync()

    def _on_blacklisted(self):
        if self._loading:
            return
        if self._mode in ("Add", "Edit") and \
                self.f["blacklisted"].currentText() != "Yes":
            self.f["reasonblacklist"].clear()
            self.f["blacklistedby"].clear()
            self.codes["blacklistedby"] = ""
        self._sync()

    def _sync(self):
        editable = self._mode in ("Add", "Edit")
        ctype = self.f["companytype"].currentText()
        commission_on = ctype == "Travel Agency"
        discount_on = ctype in ("Corporate", "Mesh")
        black_on = self.f["blacklisted"].currentText() == "Yes"

        for key, w in self.f.items():
            if not isinstance(w, (QLineEdit, QComboBox, QDoubleSpinBox,
                                  QSpinBox)):
                continue
            if isinstance(w, QLineEdit):
                w.setReadOnly(not editable)
            else:
                w.setEnabled(editable)
        for key, b in self.pick_btn.items():
            b.setEnabled(editable)

        # conditional overrides (VB6: disabled + hidden)
        self.f["commission"].setEnabled(editable and commission_on)
        self.lbl["commission"].setVisible(commission_on)
        self.f["commission"].setVisible(commission_on)
        self.f["discount"].setEnabled(editable and discount_on)
        self.f["discounttype"].setEnabled(editable and discount_on)
        self.f["reasonblacklist"].setEnabled(editable and black_on)
        self.f["blacklistedby"].setEnabled(editable and black_on)
        self.pick_btn["blacklistedby"].setEnabled(editable and black_on)
        self.ed_code.setReadOnly(True)

    def _update_ui(self):
        has_rec = self._rec is not None
        editing = self._mode in ("Add", "Edit")
        mode_colors = {"View": "#e2e8f0", "Add": "#dcfce7",
                       "Edit": "#fef9c3"}
        self.lbl_mode.setText(self._mode.upper())
        self.lbl_mode.setStyleSheet(
            "font-weight: bold; padding: 3px 10px; border-radius: 6px; "
            f"background: {mode_colors.get(self._mode, '#e2e8f0')};")
        self.btn["add"].setEnabled(not editing)
        self.btn["edit"].setEnabled(not editing and has_rec)
        self.btn["delete"].setEnabled(not editing and has_rec)
        self.btn["save"].setEnabled(editing)
        self.btn["cancel"].setEnabled(editing)
        self._sync()


def open_comp_mast_form(parent=None, user="SA"):
    """MS-001 opener: Company Master detail form (non-modal)."""
    dlg = CompMastForm(parent, user=user)
    dlg.show()
    return dlg


def main() -> int:
    app = QApplication(sys.argv)
    open_comp_mast_form(user="SA")
    return app.exec()


if __name__ == "__main__":
    shot = os.environ.get("HMS_POC_SHOT")
    if shot:
        os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
        app = QApplication(sys.argv)
        form = CompMastForm()
        form.resize(1040, 740)
        form.show()
        app.processEvents()
        form.grab().save(shot)
        print("saved", shot)
        sys.exit(0)
    sys.exit(main())
