"""Guest Lookup UI (VB6: GuestLookUp - uses GuestProf table)."""
from __future__ import annotations
import sys, os
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from PyQt6.QtWidgets import (QMainWindow, QWidget, QVBoxLayout, QHBoxLayout,
    QTableWidget, QTableWidgetItem, QPushButton, QLineEdit, QLabel,
    QGroupBox, QHeaderView, QMessageBox, QAbstractItemView)
from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QFont
from HMS_py.core import db
from HMS_py.ui.theme import palette
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


class GuestLookupWindow(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopGuestLookup")
        self.setWindowTitle("Guest Lookup")
        self.resize(900, 500)
        self._build_ui()
        self._load_data()

    def _build_ui(self):
        central = QWidget(); self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        title = QLabel("Guest Lookup")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        search_lay = QHBoxLayout()
        self.txt_search = QLineEdit()
        self.txt_search.setPlaceholderText("Search by name, phone, or company...")
        self.txt_search.textChanged.connect(self._filter)
        search_lay.addWidget(QLabel("Search:"))
        search_lay.addWidget(self.txt_search)
        layout.addLayout(search_lay)

        self.table = QTableWidget()
        self.table.setColumnCount(5)
        self.table.setHorizontalHeaderLabels(
            ["Code", "Name", "Phone", "Address", "City"])
        self.table.setAlternatingRowColors(True)
        self.table.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
        self.table.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
        layout.addWidget(self.table)

        btn_lay = QHBoxLayout()
        btn_foreign = QPushButton("Foreigner Details (Form-C)")
        btn_foreign.setToolTip("Selected guest ki foreign-stay details "
                               "(passport/visa, GuestProfFor)")
        btn_foreign.clicked.connect(self._open_foreign)
        btn_exit = QPushButton("Exit")
        mark_desktop_action(btn_exit)
        btn_exit.clicked.connect(self.close)
        btn_exit.setToolTip("Close this window")
        btn_lay.addWidget(btn_foreign)
        btn_lay.addStretch()
        btn_lay.addWidget(btn_exit)
        layout.addLayout(btn_lay)

    def _selected_code(self):
        row = self.table.currentRow()
        if row < 0:
            return None
        it = self.table.item(row, 0)
        return it.text().strip() if it else None

    def _open_foreign(self):
        """Selected guest ki GuestProfFor rows ka dialog (VB6
        GuestProfile Foreigner tab)."""
        from PyQt6.QtWidgets import (QComboBox, QDateEdit, QDialog,
                                     QDialogButtonBox, QDoubleSpinBox,
                                     QFormLayout, QTabWidget)
        from HMS_py.core import guest_foreign as gf
        code = self._selected_code()
        if not code:
            QMessageBox.information(self, "Select",
                                    "Pehle guest row select karo"); return
        dlg = QDialog(self)
        dlg.setWindowTitle(f"Foreigner Details — {code}")
        dlg.resize(760, 560)
        v = QVBoxLayout(dlg)
        self._gf_tabs = QTabWidget()
        v.addWidget(self._gf_tabs, 1)

        def _fill_tab(idx, rec):
            page = QWidget()
            form = QFormLayout(page)
            we = {}
            def add(label, key, widget=None):
                w = widget or QLineEdit()
                w.setText(str(rec.get(key) or ""))
                form.addRow(label, w)
                we[key] = w
            try:
                countries = gf.list_countries()
            except Exception:
                countries = []
            cmb_nat = QComboBox(); cmb_nat.addItem("-", "")
            for c in countries:
                cmb_nat.addItem(c["name"], c["code"])
            if rec.get("nationality"):
                i = next((i for i, c in enumerate(countries)
                          if c["code"] == rec["nationality"]), -1)
                if i >= 0:
                    cmb_nat.setCurrentIndex(i)
            form.addRow("Nationality:", cmb_nat)
            # sno/serialno ko widgets me hi rakho — _vals() sab widgets
            # se values nikalta hai, isliye read-only fields ke roop me:
            w_sno = QLineEdit(str(rec.get("sno") or ""))
            w_sno.setReadOnly(True)
            form.addRow("Stay #:", w_sno)
            we["sno"] = w_sno
            w_srl = QLineEdit(str(rec.get("serialno") or ""))
            w_srl.setReadOnly(True)
            form.addRow("Form-C Serial:", w_srl)
            we["serialno"] = w_srl
            add("Name:", "name")
            add("Address 1:", "add1")
            add("Address 2:", "add2")
            add("Occupation:", "occu")
            add("Arrived From:", "arrfrom")
            add("Destination:", "dest")
            add("Purpose of Visit:", "purvisit")
            add("Mode of Travel:", "modetravel")
            add("Date of Arrival:", "datearr")
            add("Arrival Place:", "arrplace")
            add("Address in India:", "addindia")
            add("Passport No:", "passno")
            add("Passport Issued:", "issdate")
            add("Issue Place:", "issplace")
            add("Age:", "age")
            add("Proposed Stay:", "propstay")
            add("Travel Used:", "modetravelused")
            add("Visa Type:", "visatype")
            add("Visa No:", "visano")
            add("Visa Issued:", "visaisdate")
            add("Visa Issue Place:", "visaisplace")
            add("Visa Valid Till:", "expdate")
            add("Work Permit:", "workpermit")
            add("Passport Valid Till:", "passexpdate")
            add("Visa Issue Auth:", "visaisauth")
            add("Extension:", "extension")
            add("Visa Duration:", "visaduration")
            self._gf_tabs.addTab(page, f"Stay {idx + 1}")
            return we

        try:
            stays = gf.list_foreign_stays(code)
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e)); return
        self._gf_forms = []
        if stays:
            for i, rec in enumerate(stays):
                self._gf_forms.append(_fill_tab(i, rec))
        else:
            self._gf_forms.append(_fill_tab(0, {"serialno": 0}))

        btns = QHBoxLayout()
        btn_add = QPushButton("Add Stay Tab")
        btn_save = QPushButton("Save All")
        btn_save.setProperty("role", "warning")
        btn_close = QPushButton("Close")
        btns.addWidget(btn_add); btns.addStretch()
        btns.addWidget(btn_save); btns.addWidget(btn_close)
        v.addLayout(btns)

        def _vals(widgets):
            out = {}
            for k, w in widgets.items():
                if hasattr(w, "currentData"):
                    out[k] = w.currentData() or ""
                elif hasattr(w, "date"):
                    out[k] = w.date().toPyDate() \
                        if w.date().toPyDate else w.text()
                else:
                    out[k] = w.text().strip()
            return out

        def _save():
            try:
                for i, widgets in enumerate(self._gf_forms):
                    rec = _vals(widgets)
                    rec.pop("sno", None)          # core apna sno khud
                                                  # resolve karta hai
                    rec["serialno"] = (rec.get("serialno") or "").strip()
                    rec["serialno"] = int(rec["serialno"]) \
                        if rec["serialno"].isdigit() else None
                    gf.save_stay(code, 0, rec)
            except Exception as e:
                QMessageBox.critical(dlg, "Error", str(e)); return
            QMessageBox.information(dlg, "Done",
                                    "Foreign-stay details save ho gaye.")
            dlg.accept()

        def _add_tab():
            self._gf_forms.append(_fill_tab(len(self._gf_forms), {}))

        btn_add.clicked.connect(_add_tab)
        btn_save.clicked.connect(_save)
        btn_close.clicked.connect(dlg.reject)
        dlg.exec()

    def _load_data(self):
        try:
            self._all_rows = db.query(
                "SELECT Code, Name, ISNULL(Phone,''), "
                "ISNULL(Add1,''), ISNULL(City,'') FROM GuestProf ORDER BY Name")
            self._populate(self._all_rows)
        except Exception:
            self._all_rows = []

    def _populate(self, rows):
        self.table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            for j in range(5):
                it = QTableWidgetItem(str(r[j] or ""))
                it.setForeground(QColor(palette()["text"]))
                self.table.setItem(i, j, it)

    def _filter(self, text):
        text = text.strip().lower()
        if not text:
            self._populate(self._all_rows); return
        filtered = [r for r in self._all_rows if any(
            text in str(v or "").lower() for v in r)]
        self._populate(filtered)


def open_guest_lookup(parent=None):
    w = GuestLookupWindow(parent); w.show(); return w
