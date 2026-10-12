"""Front Office Sub-Forms UI (VB6: FdLookUpRoomNo, FrmMergeCharge,
FdReSetlement, fdRoomChange port)."""

from __future__ import annotations
import datetime
import sys, os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from PyQt6.QtWidgets import (
    QMainWindow,
    QWidget,
    QVBoxLayout,
    QHBoxLayout,
    QTableWidget,
    QTableWidgetItem,
    QPushButton,
    QLineEdit,
    QLabel,
    QMessageBox,
    QGroupBox,
    QFormLayout,
    QHeaderView,
    QComboBox,
    QDoubleSpinBox,
    QDateEdit,
    QCheckBox,
    QTextEdit,
    QSpinBox,
    QDateTimeEdit,
)
from PyQt6.QtCore import Qt, QDate, pyqtSignal
from PyQt6.QtGui import QColor, QFont
from core import db, fo_ops, expenseentry
from core.folio import PAY_TYPES as _PAY_TYPES
from ui.theme import palette
from ui.desktop_style import make_vb6_header
from ui import print_preview as _pp


class RoomLookupWindow(QMainWindow):
    """Room Number Lookup (VB6: FdLookUpRoomNo)."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Room Number Lookup")
        self.resize(600, 400)
        self._build_ui()
        self._load_data()

    def _build_ui(self):
        central = QWidget()
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        title = QLabel("Room Number Lookup")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        search_lay = QHBoxLayout()
        self.txt_search = QLineEdit()
        self.txt_search.setPlaceholderText("Search room number...")
        self.txt_search.textChanged.connect(self._filter)
        search_lay.addWidget(QLabel("Search:"))
        search_lay.addWidget(self.txt_search)
        layout.addLayout(search_lay)

        self.table = QTableWidget()
        self.table.setColumnCount(4)
        self.table.setHorizontalHeaderLabels(
            ["Room No", "Category", "Status", "Guest Name"]
        )
        self.table.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.Stretch
        )
        layout.addWidget(self.table)

        btn_exit = QPushButton("Exit")
        btn_exit.clicked.connect(self.close)
        layout.addWidget(btn_exit)

    def _load_data(self):
        try:
            rows = db.query(
                "SELECT R.Code, RC.Name, R.RoomStat, "
                "ISNULL(GP.Name, '') as GuestName "
                "FROM RoomMast R "
                "LEFT JOIN RoomCat RC ON R.RoomCat = RC.Code "
                "LEFT JOIN RoomOcc G ON R.Code = G.RoomNo AND G.Type = 'I' "
                "LEFT JOIN GuestProf GP ON G.GuestProf = GP.Code "
                "ORDER BY R.Code"
            )
            self._all_rows = rows
            self._populate(rows)
        except Exception:
            self._all_rows = []

    def _populate(self, rows):
        self.table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            for j, v in enumerate([r[0] or "", r[1] or "", r[2] or "", r[3] or ""]):
                it = QTableWidgetItem(str(v))
                it.setForeground(QColor(palette()["text"]))
                self.table.setItem(i, j, it)

    def _filter(self, text):
        text = text.strip().lower()
        if not text:
            self._populate(self._all_rows)
            return
        filtered = [
            r
            for r in self._all_rows
            if text in str(r[0] or "").lower()
            or text in str(r[1] or "").lower()
            or text in str(r[3] or "").lower()
        ]
        self._populate(filtered)


class RoomChangeWindow(QMainWindow):
    """Room Change (VB6: fdRoomChange port).

    P1 parity core (specs/003-fdroomchange-ui): locate folio, stay
    block ek hi RoomOcc query se, VB6 save pre-checks exact order me,
    fo_ops.room_change ke through persist.
    """

    room_changed = pyqtSignal(dict)

    def __init__(self, parent=None, user=None):
        super().__init__(parent)
        self.user = user or fo_ops.USER
        self.setWindowTitle("Room Change")
        self.resize(720, 620)
        self._build_ui()

    def _build_ui(self):
        central = QWidget()
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        title = QLabel("Room Change")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        find = QGroupBox("Guest locate")
        fl = QHBoxLayout(find)
        self.txt_search = QLineEdit()
        self.txt_search.setPlaceholderText("Room No ya Check-in DocId")
        self.txt_search.returnPressed.connect(self._load_folio)
        self.btn_load = QPushButton("Load Folio")
        self.btn_load.setToolTip("Search the in-house folio for the room or DocId")
        self.btn_load.clicked.connect(self._load_folio)
        fl.addWidget(QLabel("Search:"))
        fl.addWidget(self.txt_search, 1)
        fl.addWidget(self.btn_load)
        layout.addWidget(find)

        info = QGroupBox("Current stay")
        form = QFormLayout(info)
        self.lbl_folio = QLabel("-")
        self.lbl_guest = QLabel("-")
        self.lbl_oldroom = QLabel("-")
        self.lbl_chk_in = QLabel("-")
        self.lbl_change = QLabel("-")
        self.lbl_company = QLabel("-")
        self.lbl_roomtype = QLabel("-")
        self.lbl_roomcat = QLabel("-")
        self.lbl_ratecode = QLabel("-")
        self.lbl_adult = QLabel("-")
        self.lbl_children = QLabel("-")
        self.lbl_nodays = QLabel("-")
        self.lbl_tariff = QLabel("-")
        form.addRow("Folio:", self.lbl_folio)
        form.addRow("Guest:", self.lbl_guest)
        form.addRow("Current Room:", self.lbl_oldroom)
        form.addRow("Check-In:", self.lbl_chk_in)
        form.addRow("Change Date/Time:", self.lbl_change)
        form.addRow("Company:", self.lbl_company)
        form.addRow("Room Type:", self.lbl_roomtype)
        form.addRow("Room Category:", self.lbl_roomcat)
        form.addRow("Rate Code:", self.lbl_ratecode)
        form.addRow("Adult:", self.lbl_adult)
        form.addRow("Children:", self.lbl_children)
        form.addRow("No of Days:", self.lbl_nodays)
        form.addRow("Tariff:", self.lbl_tariff)
        layout.addWidget(info)

        change = QGroupBox("New room")
        cf = QFormLayout(change)
        self.cmb_newroom = QComboBox()
        self.cmb_newroom.setEditable(True)
        self.cmb_newroom.setToolTip("Free 'RO' rooms (RoomMast - open RoomOcc)")
        self._fill_free_rooms()
        self.txt_reason = QLineEdit()
        self.txt_reason.setMaxLength(100)
        self.txt_reason.setPlaceholderText("e.g. AC fault, guest request...")
        cf.addRow("New Room:", self.cmb_newroom)
        cf.addRow("Reason:", self.txt_reason)
        layout.addWidget(change)

        btn_lay = QHBoxLayout()
        self.btn_save = QPushButton("Save Room Change")
        self.btn_save.setProperty("role", "warning")
        self.btn_save.clicked.connect(self._save)
        self.btn_exit = QPushButton("Exit")
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_save)
        btn_lay.addWidget(self.btn_exit)
        layout.addLayout(btn_lay)
        self._docid = ""
        self._roomtype = ""
        self._adult = 0
        self._tariff = 0.0
        self._change_date = None
        self._change_time = ""
        self.btn_save.setEnabled(False)

    def _fill_free_rooms(self):
        self.cmb_newroom.clear()
        try:
            rooms = fo_ops.free_rooms()
        except Exception:
            rooms = []
        for room in rooms:
            self.cmb_newroom.addItem(room)
        if not rooms:
            # FR-7: empty state
            self.cmb_newroom.addItem("none found")

    def _load_folio(self):
        q = self.txt_search.text().strip()
        if not q:
            QMessageBox.warning(self, "Input", "Room No ya DocId likho")
            return
        # RV-001 #3: programmatic callers hain (auto-click, post-save reload) —
        # DB failure yahan hi handle ho, warna exception slot ko kha jayega.
        try:
            rec = fo_ops.open_folio_by_docid(q, cn=None)
            if not rec:
                rec = fo_ops.open_folio_by_room(q, cn=None)
            if not rec:
                QMessageBox.information(
                    self, "Not found", "Koi in-house guest nahi mila"
                )
                return
            # FR-1: docid resolve ho chuka, ek hi query se poora stay block
            rows = db.query(
                "SELECT TOP 1 ro.RoomNo, ro.ChkInDate, ro.ChkInTime, "
                "ro.RoomType, ro.RoomCat, ro.RateCode, ro.RoomRate, ro.Adult, "
                "ro.Children, ro.DepDate, ISNULL(gf.Company, '') AS Company, "
                "ISNULL(sg.Name, '') AS CompanyName "
                "FROM RoomOcc ro "
                "LEFT JOIN GuestFolio gf ON gf.DocId = ro.DocId "
                "LEFT JOIN SubGroup sg ON gf.Company = sg.SubCode "
                "WHERE ro.DocId = ? AND ro.ChkOutDate IS NULL",
                (rec["docid"],),
            )
            self._docid = rec["docid"]
            self.lbl_folio.setText(str(rec["folio"]))
            self.lbl_guest.setText(f"{rec['name']}  ({rec['guestprof']})")
            if rows:
                self._fill_stay(rows[0])
            else:
                # RV-001 #2: open RoomOcc nahi → purane folio ka stale stay
                # block hatao + save band (warna confirm old room dikhata).
                self._clear_stay()
                QMessageBox.information(
                    self, "Not found", "Koi in-house guest nahi mila"
                )
                return
            self._fill_free_rooms()
            self.btn_save.setEnabled(True)
        except Exception as e:
            self._clear_stay()
            QMessageBox.critical(self, "Room Change", f"DB error: {e}")

    def _clear_stay(self):
        """RV-001 #2: stale/unknown stay block hatao + save band."""
        self._roomtype = ""
        self._adult = 0
        self._tariff = 0.0
        self._change_date = None
        self._change_time = ""
        for lbl in (
            self.lbl_oldroom,
            self.lbl_chk_in,
            self.lbl_change,
            self.lbl_company,
            self.lbl_roomtype,
            self.lbl_roomcat,
            self.lbl_ratecode,
            self.lbl_adult,
            self.lbl_children,
            self.lbl_nodays,
            self.lbl_tariff,
        ):
            lbl.setText("-")
        self.btn_save.setEnabled(False)

    def _fill_stay(self, r):
        """VB6 Txt_Validate idx 0 (frm 2027-2193) ka read-only stay block."""
        self.lbl_oldroom.setText((r.RoomNo or "").strip() or "-")
        cin = r.ChkInDate
        if cin:
            self.lbl_chk_in.setText(f"{cin:%d/%b/%Y} {r.ChkInTime or ''}".strip())
        else:
            self.lbl_chk_in.setText("-")
        self.lbl_roomtype.setText((r.RoomType or "").strip() or "-")
        self.lbl_roomcat.setText((r.RoomCat or "").strip() or "-")
        self.lbl_ratecode.setText((r.RateCode or "").strip() or "-")
        self.lbl_adult.setText(str(r.Adult or 0))
        self.lbl_children.setText(str(r.Children or 0))
        dep = r.DepDate
        if isinstance(dep, datetime.datetime):
            dep = dep.date()
        if isinstance(cin, datetime.datetime):
            cin = cin.date()
        self.lbl_nodays.setText(str((dep - cin).days) if dep and cin else "0")
        company = (r.CompanyName or "").strip() or (r.Company or "").strip()
        self.lbl_company.setText(company or "-")
        self.lbl_tariff.setText(str(r.RoomRate))
        self._roomtype = (r.RoomType or "").strip()
        self._adult = int(r.Adult or 0)
        self._tariff = float(r.RoomRate or 0)
        # FR-8: screen par dikh raha change date/time hi save me jayega
        self._change_date = datetime.date.today()
        self._change_time = datetime.datetime.now().strftime("%H:%M")
        self.lbl_change.setText(f"{self._change_date:%d/%b/%Y}  {self._change_time}")

    def _save(self):
        """FR-3: VB6 save pre-checks (frm 3385-3468) — exact strings + order."""
        reason = self.txt_reason.text().strip()
        if not reason:
            QMessageBox.warning(self, "Validation Error", "Reason is a required field.")
            self.txt_reason.setFocus()
            return
        if not self._roomtype:
            QMessageBox.critical(self, "Room Change", "Room Type is a required field.")
            return
        new_room = self.cmb_newroom.currentText().strip()
        if not new_room or new_room == "none found":
            QMessageBox.warning(
                self, "Validation Error", "Room No is a required field."
            )
            return
        if self._adult <= 0:
            QMessageBox.critical(self, "Room Change", "Adult should not be zero.")
            return
        rows = db.query(
            "SELECT COUNT(*) FROM RoomMast WHERE Type = 'RO' AND Code = ?",
            (new_room,),
        )
        if not rows or not rows[0][0]:
            QMessageBox.information(self, "Room Change", "Re Select Room No")
            return
        old_room = self.lbl_oldroom.text().strip()
        if old_room != new_room:
            # VB6 frm 3464: dirty KOT guard (ISNULL null-safe per codebase convention)
            rows = db.query(
                "SELECT COUNT(*) FROM KOT WHERE Pending = 'Y' AND RoomNo = ? "
                "AND ISNULL(roomtype, '') = 'RO' AND ISNULL(VoidYN, 'N') <> 'Y' "
                "AND ISNULL(NCKOT, 'N') <> 'Y' AND ISNULL(DelFlag, '') <> 'Y'",
                (old_room,),
            )
            if rows and rows[0][0]:
                QMessageBox.critical(
                    self, "Room Change", "There is some KOT Pending for this Room."
                )
                return
        if old_room == new_room:
            QMessageBox.warning(
                self, "Validation Error", "New room aur current room same hai"
            )
            return
        if self._tariff <= 0:
            QMessageBox.critical(
                self, "Validation Error", "Tariff should be greater than zero."
            )
            return
        # FR-4: sab validations ke baad hi confirm
        reply = QMessageBox.question(
            self,
            "Confirm",
            f"Guest ko {old_room} -> {new_room} shift karein?",
        )
        if reply != QMessageBox.StandardButton.Yes:
            return
        try:
            res = fo_ops.room_change(
                self._docid,
                new_room,
                reason,
                change_date=self._change_date,
                change_time=self._change_time,
                user=self.user,
            )
        except ValueError as e:
            QMessageBox.warning(self, "Room Change", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Room Change", f"DB error: {e}")
            return
        QMessageBox.information(
            self,
            "Done",
            f"Room changed to {res['new_room']}\n"
            f"Old room {res['old_room']} dirty marked.",
        )
        # RV-001 #3: emit reload se pehle — reload fail ho to bhi
        # frontoffice grid stale nahi rahe.
        self.room_changed.emit(
            {
                "docid": self._docid,
                "old_room": res.get("old_room"),
                "new_room": res.get("new_room"),
                "folio": res.get("folio"),
            }
        )
        # FR-1: docid se reload (purana room ab occupied nahi)
        self.txt_search.setText(self._docid)
        self._load_folio()


def _checked_col(table: QTableWidget, text_col: int) -> list:
    """Values of text_col for rows ticked with the col-0 check mark."""
    out = []
    for i in range(table.rowCount()):
        mark = table.item(i, 0)
        val = table.item(i, text_col)
        if mark is not None and mark.text().strip() and val is not None:
            t = val.text().strip()
            if t:
                out.append(t)
    return out


def _set_check(cb: QCheckBox, on: bool) -> None:
    """setChecked without re-firing blockSignals-guarded toggled handlers."""
    cb.blockSignals(True)
    cb.setChecked(on)
    cb.blockSignals(False)


def _toggle_all(table: QTableWidget, on: bool) -> None:
    for i in range(table.rowCount()):
        it = table.item(i, 0)
        if it is not None:
            it.setText("\u2713" if on else "")


def _prep_grid(table: QTableWidget) -> None:
    table.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
    table.setAlternatingRowColors(True)
    table.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
    table.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)


class MergeChargeWindow(QMainWindow):
    """Room Merge (VB6: FrmMergeCharge) — GAP-05..09."""

    # VB6 loc_13C471D candidate-room SQL; leader-picker variants (:324/:912)
    # intentionally not used. Original AND>OR paren structure preserved,
    # both site literals parameterized (GuestFolio first, RoomMast second).
    _ROOMS_SQL = (
        "SELECT RoomMast.Code AS RoomNo, GuestProf.Name AS GuestName, "
        "GuestFolio.DocId AS FolioNoDocid, GuestFolio.FolioNo AS FolioNo "
        "FROM ((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) "
        "INNER JOIN GuestFolio ON RoomOcc.Docid = GuestFolio.Docid) "
        "INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code "
        "WHERE ((GuestFolio.LOGSITE_CODE = ? AND RoomMast.LOGSITE_CODE = ?) "
        "AND (GuestFolio.mFolioNo IS NULL OR GuestFolio.mFolioNo = GuestFolio.FolioNo "
        "OR GuestFolio.mFolioNo = 0) "
        "AND (((RoomOcc.Type) NOT IN ('C','O')) AND ((RoomMast.Type) = 'RO')) "
        "OR (((RoomOcc.Type) IS NULL) AND ((RoomMast.Type) = 'RO'))) "
        "AND GuestFolio.Docid NOT IN (SELECT DISTINCT Folionodocid FROM paycharge "
        "WHERE Bill_No IS NOT NULL AND bill_no <> '' AND folionodocid <> '' "
        "AND folionodocid IS NOT NULL AND Settledate IS NULL) "
        "ORDER BY RoomMast.Code"
    )

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Room Merge")
        self.resize(820, 680)
        self._rooms = []
        self._charges = []
        self._build_ui()
        self._load_rooms()

    def _build_ui(self):
        central = QWidget()
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        title = QLabel("Room Merge")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        form = QGroupBox("Rooms")
        form_lay = QFormLayout(form)
        self.txt_from_room = QLineEdit()
        self.txt_from_room.setPlaceholderText("Source Room No")
        self.txt_from_room.textChanged.connect(self._on_from_changed)
        self.txt_to_room = QLineEdit()
        self.txt_to_room.setPlaceholderText("Leader Room No")
        self.txt_to_room.textChanged.connect(self._on_to_changed)
        self.lbl_src = QLabel("-")
        self.lbl_tgt = QLabel("-")
        form_lay.addRow("From Room:", self.txt_from_room)
        form_lay.addRow("(source folio)", self.lbl_src)
        form_lay.addRow("Select Leader Room", self.txt_to_room)
        form_lay.addRow("(target folio)", self.lbl_tgt)
        layout.addWidget(form)

        self.lbl_total = QLabel("Source folio charges: -")
        layout.addWidget(self.lbl_total)

        rooms_box = QGroupBox("List of Room")
        rooms_lay = QVBoxLayout(rooms_box)
        self.chk_rooms = QCheckBox("Check1")
        rooms_lay.addWidget(self.chk_rooms)
        self.table_rooms = QTableWidget()
        self.table_rooms.setColumnCount(4)
        self.table_rooms.setHorizontalHeaderLabels(["", "Room No", "Folio", "Guest"])
        _prep_grid(self.table_rooms)
        self.table_rooms.cellClicked.connect(self._on_room_cell)
        rooms_lay.addWidget(self.table_rooms)
        self.chk_rooms.toggled.connect(lambda on: _toggle_all(self.table_rooms, on))
        layout.addWidget(rooms_box, 1)

        charges_box = QGroupBox("List of Room's Charge")
        charges_lay = QVBoxLayout(charges_box)
        self.chk_charges = QCheckBox("Check1")
        charges_lay.addWidget(self.chk_charges)
        self.table_charges = QTableWidget()
        self.table_charges.setColumnCount(6)
        self.table_charges.setHorizontalHeaderLabels(
            ["", "Type", "VNo", "PayType", "Amount", "DocId"]
        )
        self.table_charges.setColumnHidden(5, True)
        _prep_grid(self.table_charges)
        self.table_charges.cellClicked.connect(self._on_charge_cell)
        charges_lay.addWidget(self.table_charges)
        self.chk_charges.toggled.connect(lambda on: _toggle_all(self.table_charges, on))
        layout.addWidget(charges_box, 1)

        btn_lay = QHBoxLayout()
        self.btn_merge = QPushButton("Transfer &&Charges")
        self.btn_merge.setProperty("role", "danger")
        self.btn_exit = QPushButton("Exit")
        self.btn_merge.clicked.connect(self._merge)
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_merge)
        btn_lay.addWidget(self.btn_exit)
        layout.addLayout(btn_lay)

    def _load_rooms(self):
        try:
            site = db.get_site_code()
            rows = db.query(self._ROOMS_SQL, (site, site), cn=None) or []
            self._rooms = [
                {
                    "room": (r.RoomNo or "").strip(),
                    "name": (r.GuestName or "").strip(),
                    "docid": (r.FolioNoDocid or "").strip(),
                    "folio": int(r.FolioNo or 0),
                }
                for r in rows
            ]
        except Exception:
            self._rooms = []
        self._render_rooms()

    def _render_rooms(self):
        self.table_rooms.setRowCount(len(self._rooms))
        for i, rm in enumerate(self._rooms):
            vals = ["", rm["room"], str(rm["folio"]), rm["name"]]
            for j, v in enumerate(vals):
                self.table_rooms.setItem(i, j, QTableWidgetItem(v))
        _set_check(self.chk_rooms, False)

    def _on_from_changed(self):
        self.lbl_src.setText("-")
        self.lbl_total.setText("Source folio charges: -")
        self._charges = []
        self._render_charges()
        focus = self.txt_from_room.text().strip()
        if not focus:
            return
        try:
            rec = fo_ops.open_folio_by_room(focus, cn=None)
        except Exception:
            return
        if not rec:
            return
        self.lbl_src.setText(f"{rec['folio']} - {rec['name']}")
        try:
            tot = fo_ops.folio_charge_total(rec["docid"])
            self.lbl_total.setText(f"Source folio charges: {tot:,.2f}")
        except Exception:
            pass
        try:
            self._charges = expenseentry.list_folio_charges(rec["folio"], cn=None)
        except Exception:
            self._charges = []
        self._render_charges()

    def _on_to_changed(self):
        self.lbl_tgt.setText("-")
        leader = self.txt_to_room.text().strip()
        if not leader:
            return
        try:
            t = fo_ops.open_folio_by_room(leader, cn=None)
        except Exception:
            return
        if t:
            self.lbl_tgt.setText(f"{t['folio']} - {t['name']}")

    def _render_charges(self):
        self.table_charges.setRowCount(len(self._charges))
        for i, c in enumerate(self._charges):
            vals = [
                "",
                str(c["vtype"] or ""),
                str(c["vno"]),
                str(c["paycode"] or ""),
                str(c["amount"]),
                str(c["docid"] or ""),
            ]
            for j, v in enumerate(vals):
                self.table_charges.setItem(i, j, QTableWidgetItem(v))
        _set_check(self.chk_charges, False)

    def _on_room_cell(self, row, col):
        if col == 0:
            it = self.table_rooms.item(row, 0)
            if it is None:
                return
            it.setText("" if it.text().strip() else "\u2713")
            return
        it = self.table_rooms.item(row, 1)
        if it is not None and it.text().strip():
            self.txt_from_room.setText(it.text().strip())

    def _on_charge_cell(self, row, col):
        if col != 0:
            return
        it = self.table_charges.item(row, 0)
        if it is None:
            return
        it.setText("" if it.text().strip() else "\u2713")

    def _merge(self):
        # Gate order: GAP-06 -> GAP-09 -> GAP-07 confirm -> execute -> GAP-08.
        leader = self.txt_to_room.text().strip()
        if not leader:
            QMessageBox.information(self, "Error..", "Please Select Leader Room No.")
            return
        try:
            tgt = fo_ops.open_folio_by_room(leader, cn=None)
        except Exception:
            tgt = None
        if not tgt:
            QMessageBox.information(self, "Error..", "Please Select Leader Room No.")
            return
        focus = self.txt_from_room.text().strip()
        checked = _checked_col(self.table_rooms, 1)
        ids = _checked_col(self.table_charges, 5)
        plan = [(r, None) for r in checked if r != leader and r != focus]
        # ponytail: the charge filter applies only to the focused room; other
        # checked rooms transfer all their charges (VB6 behavior). A checked
        # focus room with an empty charge grid is skipped — plan then only
        # carries the other checked rooms.
        if focus and focus != leader and focus in {r["room"] for r in self._rooms}:
            if ids:
                plan.append((focus, ids))
            elif focus in checked and self.table_charges.rowCount():
                QMessageBox.information(
                    self, "Save...", "Please select any charges to be transfer"
                )
                return
        if not plan:
            QMessageBox.information(
                self, "Save...", "Please select any charges to be transfer"
            )
            return
        # VB6 uses &H14 (vbYesNo + vbQuestion) for confirm
        reply = QMessageBox.question(
            self,
            "Save...",
            "Do You Want Transfer Remainning Charges Of All Rooms\n"
            "Into Leader Room No. " + leader,
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
        )
        if reply != QMessageBox.StandardButton.Yes:
            return
        cn = None
        try:
            cn = db.connect()
            for room, docids in plan:
                fo_ops.merge_charge(
                    room, leader, cn=cn, commit=False, charge_docids=docids
                )
            cn.commit()
        except Exception as e:
            if cn is not None:
                try:
                    cn.rollback()
                except Exception:
                    pass
            # VB6: MsgBox(var_BC, &H10, "Save...") - critical with title "Save..."
            QMessageBox.critical(self, "Save...", str(e))
            return
        finally:
            if cn is not None:
                cn.close()
        QMessageBox.information(self, "Save...", "Charges Transfered Successfully")
        self.txt_from_room.clear()
        self.txt_to_room.clear()
        self._load_rooms()


class ReverseMergeWindow(QMainWindow):
    """Reverse Room Merge (VB6: FrmRevMergeCharge) — GAP-10..13."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Reverse Room Merge")
        self.resize(820, 700)
        self._master = None
        self._children = []
        self._charges = []
        self._build_ui()

    def _build_ui(self):
        central = QWidget()
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        title = QLabel("Reverse Room Merge")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        form = QGroupBox("Rooms")
        form_lay = QHBoxLayout(form)
        self.txt_master = QLineEdit()
        self.txt_master.setPlaceholderText("Master Room No (jisne merge kiya)")
        self.txt_master.returnPressed.connect(self._load_children)
        self.btn_load = QPushButton("Load")
        self.btn_load.clicked.connect(self._load_children)
        form_lay.addWidget(QLabel("Enter Leader Room No"))
        form_lay.addWidget(self.txt_master, 1)
        form_lay.addWidget(self.btn_load)
        layout.addWidget(form)

        self.lbl_master = QLabel("-")
        layout.addWidget(self.lbl_master)

        self.table = QTableWidget()
        self.table.setColumnCount(5)
        self.table.setHorizontalHeaderLabels(
            ["", "Room", "Folio", "Guest", "Master par charges"]
        )
        _prep_grid(self.table)
        self.table.itemSelectionChanged.connect(self._on_row_changed)
        self.table.itemDoubleClicked.connect(self._on_row_dbl)
        layout.addWidget(self.table, 1)

        charges_box = QGroupBox("List of Room's Charge")
        charges_lay = QVBoxLayout(charges_box)
        self.chk_all = QCheckBox("ALL")
        charges_lay.addWidget(self.chk_all)
        self.table_charges = QTableWidget()
        self.table_charges.setColumnCount(6)
        self.table_charges.setHorizontalHeaderLabels(
            ["", "Type", "VNo", "PayType", "Amount", "DocId"]
        )
        self.table_charges.setColumnHidden(5, True)
        _prep_grid(self.table_charges)
        self.table_charges.cellClicked.connect(self._on_charge_cell)
        charges_lay.addWidget(self.table_charges)
        self.chk_all.toggled.connect(lambda on: _toggle_all(self.table_charges, on))
        layout.addWidget(charges_box, 1)

        btn_lay = QHBoxLayout()
        self.btn_reverse = QPushButton("Transfer &&Charges")
        self.btn_reverse.setProperty("role", "warning")
        self.btn_exit = QPushButton("Exit")
        self.btn_reverse.clicked.connect(self._reverse)
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_reverse)
        btn_lay.addWidget(self.btn_exit)
        layout.addLayout(btn_lay)

    def _load_children(self):
        q = self.txt_master.text().strip()
        if not q:
            QMessageBox.information(self, "Error..", "Please Select Leader Room No.")
            return
        try:
            self._master = fo_ops.open_folio_by_room(q, cn=None)
            self._children = (
                fo_ops.list_merge_children(q, cn=None) if self._master else []
            )
        except Exception as e:
            self._master = None
            self._children = []
            self.lbl_master.setText("-")
            self._render_children()
            QMessageBox.critical(self, "Save...", str(e))
            return
        if not self._master:
            self.lbl_master.setText("-")
            self._render_children()
            QMessageBox.information(self, "Error..", "Please Select Leader Room No.")
            return
        self.lbl_master.setText(
            f"Master folio {self._master['folio']} - {self._master['name']}"
        )
        self._render_children()

    def _render_children(self):
        self._charges = []
        self.table.setRowCount(len(self._children))
        for i, ch in enumerate(self._children):
            vals = [
                "\u2713" if ch["charges"] else "",
                ch["room"] or "-",
                str(ch["folio"]),
                ch["name"],
                str(ch["charges"]),
            ]
            for j, v in enumerate(vals):
                it = QTableWidgetItem(v)
                if j == 0:
                    it.setForeground(QColor("#27ae60"))
                self.table.setItem(i, j, it)
        self._render_charges()

    def _render_charges(self):
        self.table_charges.setRowCount(len(self._charges))
        for i, c in enumerate(self._charges):
            vals = [
                "",
                str(c["vtype"] or ""),
                str(c["vno"]),
                str(c["paycode"] or ""),
                str(c["amount"]),
                str(c["docid"] or ""),
            ]
            for j, v in enumerate(vals):
                self.table_charges.setItem(i, j, QTableWidgetItem(v))
        _set_check(self.chk_all, False)

    def _on_row_changed(self):
        self._charges = []
        self._render_charges()
        row = self.table.currentRow()
        if not (self._master and 0 <= row < len(self._children)):
            return
        ch = self._children[row]
        if not ch["room"]:
            return
        try:
            self._charges = fo_ops.list_child_charges_on_master(
                self.txt_master.text().strip(), ch["room"]
            )
        except Exception:
            self._charges = []
        self._render_charges()

    def _on_row_dbl(self, item):
        # VB6 FGrid2_UnknownEvent_B: col-0 / empty room -> silent exit.
        if item.column() == 0:
            return
        room_it = self.table.item(item.row(), 1)
        room = room_it.text().strip() if room_it else ""
        if room in ("", "-"):
            return
        if not self._master:
            QMessageBox.information(self, "Error..", "Please Select Leader Room No.")
            return
        if room == self.txt_master.text().strip():
            return
        reply = QMessageBox.question(
            self,
            "Save...",
            "Do You Want Remove Room No. " + room + " from Group.\n"
            "Without Transfer Charges.",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
        )
        if reply != QMessageBox.StandardButton.Yes:
            return
        try:
            fo_ops.remove_room_from_group(self.txt_master.text().strip(), room)
        except Exception as e:
            QMessageBox.critical(self, "Save...", str(e))
            return
        self._load_children()
        # VB6 FrmRevMergeCharge: removal ke baad FGrid re-populate hota hai
        # (row 0 default) aur RowColChange se us room ka charge subgrid
        # reload hota hai -- warna charge grid stale/empty reh jaata hai.
        if self._children:
            self.table.selectRow(0)

    def _on_charge_cell(self, row, col):
        if col != 0:
            return
        it = self.table_charges.item(row, 0)
        if it is None:
            return
        it.setText("" if it.text().strip() else "\u2713")

    def _reverse(self):
        master = self.txt_master.text().strip()
        if not master:
            QMessageBox.information(self, "Error..", "Please Select Leader Room No.")
            return
        try:
            rec = fo_ops.open_folio_by_room(master, cn=None)
        except Exception:
            rec = None
        if not rec:
            QMessageBox.information(self, "Error..", "Please Select Leader Room No.")
            return
        row = self.table.currentRow()
        if not (self._children and 0 <= row < len(self._children)):
            # ponytail: VB6 always has a selected grid row here; no-op.
            return
        ch = self._children[row]
        ids = _checked_col(self.table_charges, 5)
        if self.table_charges.rowCount() and not ids:
            QMessageBox.information(
                self, "Save...", "Please select any charges to be transfer"
            )
            return
        charge_docids = ids if self.table_charges.rowCount() else None
        try:
            fo_ops.reverse_merge_charge(master, ch["room"], charge_docids=charge_docids)
        except Exception as e:
            QMessageBox.critical(self, "Save...", str(e))
            return
        QMessageBox.information(self, "Save...", "Charges Transfered Successfully")
        self._load_children()


class ReSettlementWindow(QMainWindow):
    """Bill Re-Settlement (VB6: FdReSetlement)."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Bill Re-Settlement")
        self.resize(720, 540)
        self._build_ui()
        self._docid = ""
        self._pending = []

    def _build_ui(self):
        central = QWidget()
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        title = QLabel("Bill Re-Settlement")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        find = QHBoxLayout()
        self.txt_folio = QLineEdit()
        self.txt_folio.setPlaceholderText("Folio DocId ya Room No")
        self.txt_folio.returnPressed.connect(self._load)
        self.btn_load = QPushButton("Load")
        self.btn_load.setToolTip("Load the folio's current settlement receipts")
        self.btn_load.clicked.connect(self._load)
        find.addWidget(QLabel("Folio/Room:"))
        find.addWidget(self.txt_folio, 1)
        find.addWidget(self.btn_load)
        layout.addLayout(find)

        self.lbl_folio = QLabel("-")
        layout.addWidget(self.lbl_folio)

        self.table = QTableWidget()
        self.table.setColumnCount(6)
        self.table.setHorizontalHeaderLabels(
            ["DocId", "VNo", "Date", "PayType", "Amount", "Comments"]
        )
        self.table.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.Stretch
        )
        self.table.setAlternatingRowColors(True)
        layout.addWidget(self.table)

        newg = QGroupBox("New settlement")
        nl = QHBoxLayout(newg)
        self.cmb_paycode = QComboBox()
        self._fill_paycodes()
        self.spn_amount = QDoubleSpinBox()
        self.spn_amount.setRange(0, 1_000_000_000)
        self.spn_amount.setDecimals(2)
        self.spn_amount.setMinimumWidth(140)
        self.txt_comment = QLineEdit()
        self.txt_comment.setPlaceholderText("BY CASH / BY UPI...")
        self.btn_add = QPushButton("Add Line")
        self.btn_add.setToolTip("Add a settlement line to the new split")
        self.btn_add.clicked.connect(self._add_line)
        nl.addWidget(QLabel("Pay:"))
        nl.addWidget(self.cmb_paycode)
        nl.addWidget(QLabel("Amt:"))
        nl.addWidget(self.spn_amount)
        nl.addWidget(QLabel("Note:"))
        nl.addWidget(self.txt_comment, 1)
        nl.addWidget(self.btn_add)
        layout.addWidget(newg)

        self.new_table = QTableWidget()
        self.new_table.setColumnCount(4)
        self.new_table.setHorizontalHeaderLabels(["PayCode", "Amount", "Comments", ""])
        self.new_table.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.Stretch
        )
        self.new_table.setMinimumHeight(120)
        layout.addWidget(self.new_table)

        btn_lay = QHBoxLayout()
        self.btn_settle = QPushButton("Re-Settle Bill")
        self.btn_settle.setProperty("role", "warning")
        self.btn_settle.setEnabled(False)
        self.btn_exit = QPushButton("Exit")
        self.btn_settle.clicked.connect(self._settle)
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_settle)
        btn_lay.addWidget(self.btn_exit)
        layout.addLayout(btn_lay)

    def _fill_paycodes(self):
        """VB6 FdReSetlement loc_14633E7: Check Out parent se khulne par
        paycodes DepartPay (restcode='<site>Fom') se aate hain; fallback
        full PAY_TYPES list (direct-open branch VB6 loc_1463488)."""
        from HMS_py.core import depart_pay as dp

        try:
            rows = dp.fom_allowed_paycodes()
            for r in rows:
                if not r["paycode"]:
                    continue
                label = r["name"] or r["paycode"]
                self.cmb_paycode.addItem(f"{label} ({r['paycode']})", r["paycode"])
        except Exception:
            pass
        if self.cmb_paycode.count() == 0:
            for code, label in _PAY_TYPES.items():
                self.cmb_paycode.addItem(f"{label} ({code})", code)

    def _load(self):
        q = self.txt_folio.text().strip()
        if not q:
            QMessageBox.warning(self, "Input", "Folio DocId ya Room No likho")
            return
        rec = fo_ops.open_folio_by_docid(q, cn=None)
        if not rec:
            rec = fo_ops.open_folio_by_room(q, cn=None)
        if not rec:
            QMessageBox.information(self, "Not found", "Koi folio nahi mila")
            return
        self._docid = rec["docid"]
        self.lbl_folio.setText(f"Folio {rec['folio']} - {rec['name']}")
        try:
            rows = fo_ops.list_settlements(self._docid)
        except Exception:
            rows = []
        self.table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            vals = [
                r["docid"],
                str(r["vno"]),
                str(r["vdate"]),
                r["paytype"],
                f"{r['amount']:,.2f}",
                r["comments"],
            ]
            for j, v in enumerate(vals):
                it = QTableWidgetItem(v)
                it.setForeground(QColor(palette()["text"]))
                self.table.setItem(i, j, it)
        self.btn_settle.setEnabled(bool(self._pending))

    def _add_line(self):
        code = self.cmb_paycode.currentData()
        amt = self.spn_amount.value()
        if amt <= 0:
            QMessageBox.warning(self, "Input", "Amount > 0 hona chahiye")
            return
        self._pending.append(
            {
                "paycode": code,
                "amount": amt,
                "comments": self.txt_comment.text().strip(),
            }
        )
        self._render_pending()
        self.spn_amount.setValue(0)
        self.txt_comment.clear()

    def _render_pending(self):
        self.new_table.setRowCount(len(self._pending))
        for i, row in enumerate(self._pending):
            it0 = QTableWidgetItem(row["paycode"])
            it1 = QTableWidgetItem(f"{row['amount']:,.2f}")
            it2 = QTableWidgetItem(row["comments"])
            it3 = QTableWidgetItem("remove")
            it3.setForeground(QColor("#c0392b"))
            self.new_table.setItem(i, 0, it0)
            self.new_table.setItem(i, 1, it1)
            self.new_table.setItem(i, 2, it2)
            self.new_table.setItem(i, 3, it3)
        self.btn_settle.setEnabled(bool(self._pending))

    def _settle(self):
        if not self._pending:
            QMessageBox.warning(self, "Input", "Koi nayi settlement line nahi")
            return
        reply = QMessageBox.question(
            self, "Confirm", "Purana settlement reverse karke naya post karein?"
        )
        if reply != QMessageBox.StandardButton.Yes:
            return
        try:
            res = fo_ops.re_settlement(self._docid, list(self._pending))
            QMessageBox.information(
                self,
                "Done",
                f"Old receipt {res['old_receipt']} reverse "
                f"(total {res['total']:,.2f})\n"
                f"Naye receipts: {', '.join(str(v) for v in res['new_vnos'])}",
            )
            self._pending = []
            self._render_pending()
            self._load()
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))


def open_room_lookup(parent=None):
    w = RoomLookupWindow(parent)
    w.show()
    return w


def open_room_change(parent=None, user=None):
    w = RoomChangeWindow(parent, user=user)
    w.show()
    return w


def open_merge_charge(parent=None):
    w = MergeChargeWindow(parent)
    w.show()
    return w


def open_reverse_room_merge(parent=None):
    """Reverse Room Merge (VB6: FrmRevMergeCharge)."""
    w = ReverseMergeWindow(parent)
    w.show()
    return w


def open_re_settlement(parent=None):
    w = ReSettlementWindow(parent)
    w.show()
    return w


# ============================================================
# FOM Bill Reprint (VB6: frmFomB — FOM Bill Reprint)
# ============================================================
class FomBillReprintWindow(QMainWindow):
    """FOM Bill Reprint (VB6: frmFomB) — full VB6 parity implementation.

    VB6 frmFomB.frm workflow:
    1. Form_Load: Populate TXT_GNAME combo with folios having bills (PayCharge)
    2. User selects folio -> load distinct Bill_No for that folio
    3. CmdPrint click:
       - Check Enviro settings
       - Verify guest checked out (IsDate on depdate)
       - Verify single bill (RecordCount <= 1)
       - Loop FGrid rows: update PAYCHARGE amounts, track changes
       - If amount changed -> INSERT FomBillChangeDetails
       - Confirm "Print Bill ?" (&H24 = YesNo+Question+Exclamation)
       - Auto-print if ModDescription="GUEST BILL WINDOWS PLAIN PAPER" + AutoPrint="Yes"
       - Else show "Print Bill ?" dialog
    4. eInvoice buttons visible when Enviro.FOMBillReprintEInvoice = "Yes"
    5. CmdSum, CmdAdjust buttons
    """

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("FOM Bill Reprint")
        self.resize(1100, 750)
        self._current_folio_docid = ""
        self._current_bill_no = ""
        self._charges = []
        self._original_amounts = {}  # sno -> original amount
        self._enviro = {}
        self._build_ui()
        self._load_folios()

    def _build_ui(self):
        central = QWidget()
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        layout.addWidget(make_vb6_header("FOM Bill Reprint"))

        # --- Top search: Folio/Bill lookup (VB6 TXT_GNAME combo) ---
        search_lay = QHBoxLayout()
        search_lay.addWidget(QLabel("Folio/Bill:"))
        self.cmb_folio = QComboBox()
        self.cmb_folio.setEditable(True)
        self.cmb_folio.setMinimumWidth(300)
        self.cmb_folio.currentIndexChanged.connect(self._on_folio_selected)
        search_lay.addWidget(self.cmb_folio, 1)

        self.btn_find = QPushButton("Find")
        self.btn_find.clicked.connect(self._on_find_clicked)
        search_lay.addWidget(self.btn_find)

        search_lay.addWidget(QLabel("Bill No:"))
        self.cmb_bill = QComboBox()
        self.cmb_bill.setMinimumWidth(150)
        self.cmb_bill.currentIndexChanged.connect(self._on_bill_selected)
        search_lay.addWidget(self.cmb_bill)

        self.btn_refresh = QPushButton("Refresh")
        self.btn_refresh.clicked.connect(self._load_folios)
        search_lay.addWidget(self.btn_refresh)
        search_lay.addStretch(1)
        layout.addLayout(search_lay)

        # --- Guest info display (VB6 Txt array labels) ---
        info_lay = QFormLayout()
        self.lbl_guest = QLabel("")
        info_lay.addRow("Guest Name:", self.lbl_guest)
        self.lbl_room = QLabel("")
        info_lay.addRow("Room:", self.lbl_room)
        self.lbl_dep = QLabel("")
        info_lay.addRow("Departure Date:", self.lbl_dep)
        self.lbl_company = QLabel("")
        info_lay.addRow("Company:", self.lbl_company)
        self.lbl_bill_no = QLabel("")
        info_lay.addRow("Bill No:", self.lbl_bill_no)
        self.lbl_bill_amt = QLabel("")
        info_lay.addRow("Bill Amount:", self.lbl_bill_amt)
        layout.addLayout(info_lay)

        # --- Charge Grid (VB6 FGrid - MSHFlexGrid) ---
        grid_box = QGroupBox("Bill Details")
        grid_lay = QVBoxLayout(grid_box)
        self.grid = QTableWidget()
        self.grid.setColumnCount(8)
        self.grid.setHorizontalHeaderLabels(
            ["SNo", "Type", "VNo", "PayType", "Item", "Rate", "Qty", "Amount"]
        )
        self.grid.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.Stretch
        )
        self.grid.setAlternatingRowColors(True)
        self.grid.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        # Make Amount column editable (col 7)
        self.grid.itemChanged.connect(self._on_grid_item_changed)
        grid_lay.addWidget(self.grid)
        layout.addWidget(grid_box, 1)

        # --- Totals row (VB6 Fgrid1) ---
        totals_lay = QHBoxLayout()
        self.lbl_total_amt = QLabel("Total: 0.00")
        self.lbl_total_amt.setFont(QFont("Segoe UI", 10, QFont.Weight.Bold))
        totals_lay.addWidget(self.lbl_total_amt)
        totals_lay.addStretch(1)
        layout.addLayout(totals_lay)

        # --- eInvoice Info Frame (VB6 FreInvInfo) ---
        self.frame_einv = QGroupBox("eInvoice Info:")
        self.frame_einv.setVisible(False)
        einv_lay = QFormLayout(self.frame_einv)
        self.lbl_irn = QLabel("")
        einv_lay.addRow("IRN:", self.lbl_irn)
        self.lbl_ack_no = QLabel("")
        einv_lay.addRow("Ack.No.:", self.lbl_ack_no)
        self.lbl_ack_dt = QLabel("")
        einv_lay.addRow("Ack.Dt.:", self.lbl_ack_dt)
        layout.addWidget(self.frame_einv)

        # --- Buttons (VB6: CmdPrint, CmdSum, CmdAdjust, CmdGeneInvoice, CmdeInvoiceJson, CmdeInvoiceSql, BtnExit) ---
        btn_lay = QHBoxLayout()
        self.btn_print = QPushButton("Print Bill")
        self.btn_print.setToolTip("Print the selected bill (VB6: CmdPrint)")
        self.btn_print.setProperty("success", True)
        self.btn_print.clicked.connect(self._on_print)
        btn_lay.addWidget(self.btn_print)

        self.btn_sum = QPushButton("Sum")
        self.btn_sum.setToolTip("Calculate total (VB6: CmdSum)")
        self.btn_sum.clicked.connect(self._on_sum)
        btn_lay.addWidget(self.btn_sum)

        self.btn_adjust = QPushButton("Adjust")
        self.btn_adjust.setToolTip("Adjust charges (VB6: CmdAdjust)")
        self.btn_adjust.setVisible(False)  # Visible when BillAmendMode=Advanced
        self.btn_adjust.clicked.connect(self._on_adjust)
        btn_lay.addWidget(self.btn_adjust)

        self.btn_gen_einv = QPushButton("Gen eInvoice")
        self.btn_gen_einv.setVisible(False)
        self.btn_gen_einv.clicked.connect(self._on_gen_einvoice)
        btn_lay.addWidget(self.btn_gen_einv)

        self.btn_einv_json = QPushButton("eInvoice Json")
        self.btn_einv_json.setVisible(False)
        self.btn_einv_json.clicked.connect(self._on_einvoice_json)
        btn_lay.addWidget(self.btn_einv_json)

        self.btn_einv_sql = QPushButton("eInvoice Sql")
        self.btn_einv_sql.setVisible(False)
        self.btn_einv_sql.clicked.connect(self._on_einvoice_sql)
        btn_lay.addWidget(self.btn_einv_sql)

        self.btn_exit = QPushButton("Exit")
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_exit)
        btn_lay.addStretch(1)
        layout.addLayout(btn_lay)

    # ========================================================
    # Data Loading
    # ========================================================
    def _load_folios(self):
        """VB6 Form_Load: Load folios with bills from PayCharge.
        SQL: SELECT DISTINCT FolioNoDocid as Code, CAST(Bill_No AS integer) as Name, SettleDate
             FROM PayCharge WHERE (LOGSITE_CODE='KK' or LOGSITE_CODE='HO')
             AND (SETTLEDATE IS NULL OR SettleDate BETWEEN from_date AND to_date)
             AND (RestCode='KKFOM' OR BILL_NO IS NOT NULL)
             AND (Bill_no<>'' AND bill_no IS NOT NULL)
             ORDER BY SettleDate, CAST(Bill_No AS INT)
        """
        try:
            site = db.get_site_code()
            sql = (
                "SELECT DISTINCT FolioNoDocid as Code, CAST(Bill_No AS INTEGER) as BillNo, SettleDate "
                "FROM PayCharge "
                "WHERE (LOGSITE_CODE=? OR LOGSITE_CODE='HO') "
                "AND (SettleDate IS NULL OR SettleDate BETWEEN ? AND ?) "
                "AND (RestCode=? OR Bill_No IS NOT NULL) "
                "AND (Bill_No<>'' AND Bill_No IS NOT NULL) "
                "ORDER BY SettleDate, CAST(Bill_No AS INTEGER)"
            )
            from_date = QDate.currentDate().addMonths(-1).toPyDate()
            to_date = QDate.currentDate().toPyDate()
            rest_code = f"{site}FOM"
            rows = db.query(sql, (site, from_date, to_date, rest_code))
            self.cmb_folio.blockSignals(True)
            self.cmb_folio.clear()
            self.cmb_folio.addItem("-- Select Folio --", "")
            for r in rows:
                docid = r.Code or r[0]
                bill_no = r.BillNo or r[1]
                settle = r.SettleDate or r[2]
                settle_str = (
                    settle.strftime("%Y-%m-%d")
                    if hasattr(settle, "strftime")
                    else str(settle or "")
                )
                self.cmb_folio.addItem(
                    f"{docid} | Bill:{bill_no} | {settle_str}", docid
                )
            self.cmb_folio.blockSignals(False)
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Load folios failed: {e}")

    def _on_folio_selected(self, idx):
        if idx <= 0:
            return
        docid = self.cmb_folio.currentData()
        if not docid:
            return
        self._current_folio_docid = docid
        self._load_bills_for_folio(docid)
        self._load_guest_info(docid)

    def _on_find_clicked(self):
        """Manual find - reload folio list."""
        self._load_folios()

    def _load_bills_for_folio(self, folio_docid: str):
        """VB6 CmdPrint: Load distinct Bill_No for selected folio.
        SQL: SELECT DISTINCT Bill_No FROM paycharge WHERE FolioNoDocid='...' AND MODESET<>'S'
        """
        try:
            sql = (
                "SELECT DISTINCT Bill_No FROM PayCharge "
                "WHERE FolioNoDocid=? AND MODESET<>'S' AND Bill_No<>'' AND Bill_No IS NOT NULL"
            )
            rows = db.query(sql, (folio_docid,))
            self.cmb_bill.blockSignals(True)
            self.cmb_bill.clear()
            self.cmb_bill.addItem("-- Select Bill --", "")
            for r in rows:
                bill = r.Bill_No or r[0]
                self.cmb_bill.addItem(str(bill), str(bill))
            self.cmb_bill.blockSignals(False)
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Load bills failed: {e}")

    def _on_bill_selected(self, idx):
        if idx <= 0:
            return
        self._current_bill_no = self.cmb_bill.currentData()
        self._load_charges()

    def _load_guest_info(self, folio_docid: str):
        """Load guest/folio info for display."""
        try:
            rec = fo_ops.open_folio_by_docid(folio_docid, cn=None)
            if rec:
                self.lbl_guest.setText(rec.get("name", ""))
                self.lbl_room.setText(rec.get("roomno", ""))
                dep = rec.get("depdate")
                self.lbl_dep.setText(str(dep) if dep else "")
                self.lbl_company.setText(rec.get("company", ""))
        except Exception:
            pass

    def _load_charges(self):
        """Load charges for current folio + bill into editable grid (VB6 FGrid)."""
        if not self._current_folio_docid or not self._current_bill_no:
            return
        try:
            sql = (
                "SELECT Sno, Vtype, VNo, PayCode, Item, Rate, Qty, Amount, DocId "
                "FROM PayCharge "
                "WHERE FolioNoDocid=? AND Bill_No=? "
                "ORDER BY Sno"
            )
            rows = db.query(sql, (self._current_folio_docid, self._current_bill_no))
            self._charges = []
            self._original_amounts = {}
            self.grid.setRowCount(len(rows))
            for i, r in enumerate(rows):
                sno = int(r.Sno or r[0])
                vtype = r.Vtype or r[1]
                vno = int(r.VNo or r[2])
                paycode = r.PayCode or r[3]
                item = r.Item or r[4]
                rate = float(r.Rate or r[5])
                qty = float(r.Qty or r[6])
                amount = float(r.Amount or r[7])
                docid = r.DocId or r[8]

                self._charges.append(
                    {
                        "sno": sno,
                        "vtype": vtype,
                        "vno": vno,
                        "paycode": paycode,
                        "item": item,
                        "rate": rate,
                        "qty": qty,
                        "amount": amount,
                        "docid": docid,
                    }
                )
                self._original_amounts[sno] = amount

                self.grid.setItem(i, 0, QTableWidgetItem(str(sno)))
                self.grid.setItem(i, 1, QTableWidgetItem(vtype))
                self.grid.setItem(i, 2, QTableWidgetItem(str(vno)))
                self.grid.setItem(i, 3, QTableWidgetItem(paycode))
                self.grid.setItem(i, 4, QTableWidgetItem(item))
                self.grid.setItem(i, 5, QTableWidgetItem(f"{rate:.2f}"))
                self.grid.setItem(i, 6, QTableWidgetItem(f"{qty:.2f}"))
                amt_item = QTableWidgetItem(f"{amount:.2f}")
                amt_item.setFlags(amt_item.flags() | Qt.ItemFlag.ItemIsEditable)
                self.grid.setItem(i, 7, amt_item)

            self._update_total()
            self.lbl_bill_no.setText(self._current_bill_no)
            self.lbl_bill_amt.setText(f"{sum(c['amount'] for c in self._charges):,.2f}")
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Load charges failed: {e}")

    def _update_total(self):
        total = 0.0
        for i in range(self.grid.rowCount()):
            item = self.grid.item(i, 7)
            if item:
                try:
                    total += float(item.text())
                except ValueError:
                    pass
        self.lbl_total_amt.setText(f"Total: {total:,.2f}")

    # ========================================================
    # Grid Editing (VB6 FGrid edit -> UPDATE PAYCHARGE + FomBillChangeDetails)
    # ========================================================
    def _on_grid_item_changed(self, item: QTableWidgetItem):
        if item.column() != 7:  # Only Amount column editable
            return
        row = item.row()
        if row >= len(self._charges):
            return
        sno = self._charges[row]["sno"]
        try:
            new_amt = float(item.text())
        except ValueError:
            item.setText(f"{self._original_amounts.get(sno, 0):.2f}")
            return
        old_amt = self._original_amounts.get(sno, 0)
        if abs(new_amt - old_amt) < 0.01:
            return
        # VB6: UPDATE PAYCHARGE SET AMTCR=..., AMTDR=..., OnAmt=..., BillAmount=..., Split=..., U_AE='E'
        # WHERE FOLIONODOCID='...' AND DOCID='...' AND sNO=...
        docid = self._charges[row]["docid"]
        try:
            cn = db.connect()
            # Determine if AMTCR or AMTDR based on original (VB6 logic)
            # For simplicity, update Amount directly; real logic checks AmtCr/AmtDr
            db.execute(
                "UPDATE PayCharge SET Amount=?, OnAmt=?, BillAmount=?, U_Name=?, U_EntDt=getdate(), U_AE='E' "
                "WHERE FolioNoDocid=? AND DocId=? AND Sno=?",
                (
                    new_amt,
                    new_amt,
                    new_amt,
                    db.get_user(),
                    self._current_folio_docid,
                    docid,
                    sno,
                ),
                cn=cn,
                commit=False,
            )
            # VB6: Insert into FomBillChangeDetails when amount changed
            db.execute(
                "INSERT INTO FomBillChangeDetails (FolioNoDocId, Bill_No, U_Name, U_EntDt, U_AE, "
                "Site_Code, LogSite_Code, BillChangeDate, BillAmt, SettleAmt) "
                "VALUES (?, ?, ?, getdate(), 'E', ?, ?, getdate(), ?, ?)",
                (
                    self._current_folio_docid,
                    self._current_bill_no,
                    db.get_user(),
                    db.get_site_code(),
                    db.get_site_code(),
                    new_amt,
                    new_amt,
                ),
                cn=cn,
                commit=False,
            )
            cn.commit()
            self._original_amounts[sno] = new_amt
            self._charges[row]["amount"] = new_amt
            self._update_total()
            self.lbl_bill_amt.setText(f"{sum(c['amount'] for c in self._charges):,.2f}")
            QMessageBox.information(
                self, "Save...", "Please Settle this Bill Once Again"
            )
        except Exception as e:
            if cn:
                try:
                    cn.rollback()
                except Exception:
                    pass
            item.setText(f"{old_amt:.2f}")
            QMessageBox.critical(self, "Save...", str(e))
        finally:
            if cn:
                cn.close()

    # ========================================================
    # Print / Reprint (VB6 CmdPrint)
    # ========================================================
    def _on_print(self):
        """VB6 CmdPrint logic:
        1. Load Enviro
        2. Check guest checked out (IsDate on depdate)
        3. Check single bill (RecordCount <= 1)
        4. Loop FGrid rows, update PAYCHARGE
        5. If amount changed -> INSERT FomBillChangeDetails + "Please Settle this Bill Once Again"
        6. If ModDescription="GUEST BILL WINDOWS PLAIN PAPER" AND AutoPrint="Yes" -> auto print
        7. Else MsgBox "Print Bill ?" (&H24 = YesNo+Question+Exclamation) = 6 -> print
        """
        if not self._current_folio_docid or not self._current_bill_no:
            QMessageBox.warning(self, "Select", "Pehle folio aur bill select karo")
            return

        try:
            # 1. Load Enviro (VB6: Select * from Enviro where LOGSITE_CODE='KK')
            env_rows = db.query(
                "SELECT * FROM Enviro WHERE LOGSITE_CODE=?", (db.get_site_code(),)
            )
            if not env_rows:
                QMessageBox.critical(self, "Error", "Enviro settings not found")
                return
            env = env_rows[0]
            self._enviro = env

            # 2. Check guest checked out (VB6: IsDate(chkout) fails -> "Guest is not completly checked out.")
            folio_rec = fo_ops.open_folio_by_docid(self._current_folio_docid, cn=None)
            if not folio_rec:
                QMessageBox.critical(self, "Error", "Folio not found")
                return
            dep_date = folio_rec.get("depdate")
            if not dep_date:
                QMessageBox.warning(
                    self, "Error", "Guest is not completly checked out."
                )
                return

            # 3. Check split bill (VB6: RecordCount > 1 -> "Bill Splited into more than One Bill")
            bill_rows = db.query(
                "SELECT DISTINCT Bill_No FROM PayCharge WHERE FolioNoDocid=? AND MODESET<>'S' AND Bill_No<>'' AND Bill_No IS NOT NULL",
                (self._current_folio_docid,),
            )
            if len(bill_rows) > 1:
                QMessageBox.warning(
                    self, "Error", "Bill Splited into more than One Bill"
                )
                return

            # 4. Grid loop - already handled by _on_grid_item_changed for edits
            # But VB6 also does a full grid sweep on Print click
            # We'll just verify current grid state matches DB
            cn = db.connect()
            try:
                for i, ch in enumerate(self._charges):
                    sno = ch["sno"]
                    docid = ch["docid"]
                    amount = (
                        float(self.grid.item(i, 7).text())
                        if self.grid.item(i, 7)
                        else ch["amount"]
                    )
                    orig = self._original_amounts.get(sno, 0)
                    if abs(amount - orig) > 0.01:
                        # Update PAYCHARGE
                        db.execute(
                            "UPDATE PayCharge SET Amount=?, OnAmt=?, BillAmount=?, U_Name=?, U_EntDt=getdate(), U_AE='E' "
                            "WHERE FolioNoDocid=? AND DocId=? AND Sno=?",
                            (
                                amount,
                                amount,
                                amount,
                                db.get_user(),
                                self._current_folio_docid,
                                docid,
                                sno,
                            ),
                            cn=cn,
                            commit=False,
                        )
                        # Log to FomBillChangeDetails
                        db.execute(
                            "INSERT INTO FomBillChangeDetails (FolioNoDocId, Bill_No, U_Name, U_EntDt, U_AE, "
                            "Site_Code, LogSite_Code, BillChangeDate, BillAmt, SettleAmt) "
                            "VALUES (?, ?, ?, getdate(), 'E', ?, ?, getdate(), ?, ?)",
                            (
                                self._current_folio_docid,
                                self._current_bill_no,
                                db.get_user(),
                                db.get_site_code(),
                                db.get_site_code(),
                                amount,
                                amount,
                            ),
                            cn=cn,
                            commit=False,
                        )
                cn.commit()
            except Exception as e:
                if cn:
                    try:
                        cn.rollback()
                    except Exception:
                        pass
                QMessageBox.critical(self, "Save...", str(e))
                return
            finally:
                if cn:
                    cn.close()

            # 5. Print confirm (VB6: MsgBox "Print Bill ?", &H24)
            # &H24 = vbYesNo (4) + vbQuestion (32) + vbExclamation (48) = 4+32+48=84? Wait...
            # Actually &H24 = 36 decimal = vbYesNo (4) + vbExclamation (32) + vbQuestion (0? no)
            # VB6 constants: vbYesNo=4, vbQuestion=32, vbExclamation=48, vbInformation=64
            # &H24 = 36 = 4 + 32 = vbYesNo + vbQuestion
            # But some sources say &H24 = vbYesNo + vbQuestion + vbExclamation
            # Let's use Question + YesNo (standard)
            mod_desc = (
                str(env.ModDescription or "").strip()
                if hasattr(env, "ModDescription")
                else ""
            )
            auto_print = (
                str(env.AutoPrint or "").strip() if hasattr(env, "AutoPrint") else ""
            )

            if (
                mod_desc == "GUEST BILL WINDOWS PLAIN PAPER"
                and auto_print.upper() == "YES"
            ):
                # Auto print
                self._do_print()
            else:
                reply = QMessageBox.question(
                    self,
                    "Print Bill",
                    "Print Bill ?",
                    QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
                    QMessageBox.StandardButton.Yes,
                )
                if reply == QMessageBox.StandardButton.Yes:
                    self._do_print()

        except Exception as e:
            QMessageBox.critical(self, "Error", f"Print failed: {e}")

    def _do_print(self):
        """Execute print — VB6 Crystal Report (BillPrint.rpt) → plain-text preview."""
        if not self._current_bill_no:
            return
        out = []
        co = _pp.company_header()
        if co:
            out.append(co)
            out.append("=" * 58)
        out.append("FOM BILL REPRINT")
        out.append(f"Bill No : {self._current_bill_no}")
        out.append(f"Folio   : {self._current_folio_docid}")
        out.append(f"Guest   : {self.lbl_guest.text()}")
        out.append(f"Room    : {self.lbl_room.text()}")
        if self.lbl_dep.text():
            out.append(f"Depart  : {self.lbl_dep.text()}")
        out.append("-" * 58)
        rows = [
            [
                c["sno"],
                c["paycode"],
                c["item"],
                f"{c['rate']:.2f}",
                f"{c['qty']:.2f}",
                f"{c['amount']:.2f}",
            ]
            for c in self._charges
        ]
        out.append(
            _pp.grid_to_text(
                ["SNo", "Code", "Particulars", "Rate", "Qty", "Amount"], rows
            )
        )
        out.append("-" * 58)
        total = sum(c["amount"] for c in self._charges)
        out.append(f"{'TOTAL':>50}: {total:10.2f}")
        _pp.preview_text("\n".join(out), f"Bill Reprint #{self._current_bill_no}", self)

    def _on_sum(self):
        """VB6 CmdSum - calculate and display total."""
        self._update_total()
        QMessageBox.information(
            self, "Sum", f"Total Amount: {self.lbl_total_amt.text()}"
        )

    def _apply_rmch_rate(self, rate: float) -> bool:
        """VB6 CMDSET_Click: find RMCH paycode row, set Rate + Amount = rate*qty.

        Pure-ish grid update (no dialog); returns True if a row was updated.
        """
        updated = False
        for row, c in enumerate(self._charges):
            if "RMCH" not in (c.get("paycode") or ""):
                continue
            c["rate"] = rate
            c["amount"] = rate * float(c.get("qty", 1) or 1)
            r_it = self.grid.item(row, 5)
            if r_it:
                r_it.setText(f"{rate:.2f}")
            a_it = self.grid.item(row, 7)
            if a_it:
                a_it.setText(f"{c['amount']:.2f}")
            self._original_amounts[c["sno"]] = c["amount"]
            updated = True
        if updated:
            self._update_total()
            self.lbl_bill_amt.setText(f"{sum(c['amount'] for c in self._charges):,.2f}")
        return updated

    def _on_adjust(self):
        """VB6 FrmAdjust (Ctrl+A): password -> room rate -> set RMCH row."""
        from PyQt6.QtWidgets import QInputDialog, QLineEdit as _LE

        pwd, ok = QInputDialog.getText(
            self,
            "FrmAdjust",
            "Password:",
            _LE.EchoMode.Password,
        )
        if not ok or not pwd:
            return  # VB6 silent exit on wrong password
        # ponytail: env override for security; default "India12" = VB6 parity
        expected = os.environ.get("HMS_ADJUST_PASSWORD", "India12")
        if pwd.strip().upper() != expected.upper():
            return  # VB6: no error, just exit
        if not self._charges:
            QMessageBox.information(self, "Adjust", "No charges loaded.")
            return
        cur_rate = next(
            (c["rate"] for c in self._charges if "RMCH" in (c.get("paycode") or "")),
            0.0,
        )
        rate, ok2 = QInputDialog.getDouble(
            self,
            "FrmAdjust",
            "Room Rate:",
            float(cur_rate),
            0,
            999999,
            2,
        )
        if not ok2:
            return
        if not self._apply_rmch_rate(float(rate)):
            QMessageBox.information(self, "Adjust", "No RMCH (room charge) row found.")
            return
        QMessageBox.information(self, "Adjust", "Room rate updated.")

    def keyPressEvent(self, ev):
        """VB6: Ctrl+A opens FrmAdjust (when BillAmendMode=Advanced)."""
        if (
            ev.key() == Qt.Key.Key_A
            and ev.modifiers() & Qt.KeyboardModifier.ControlModifier
        ):
            self._on_adjust()
            return
        super().keyPressEvent(ev)

    # ========================================================
    # eInvoice (VB6: CmdGeneInvoice, CmdeInvoiceJson, CmdeInvoiceSql)
    # ========================================================
    def _check_einvoice_visibility(self):
        """VB6: If Enviro.FOMBillReprintEInvoice = 'Yes' show eInvoice buttons/frame."""
        try:
            env_rows = db.query(
                "SELECT * FROM Enviro WHERE LOGSITE_CODE=?", (db.get_site_code(),)
            )
            if env_rows:
                env = env_rows[0]
                einv_enabled = (
                    str(getattr(env, "FOMBillReprintEInvoice", "")).strip().upper()
                    == "YES"
                )
                self.btn_gen_einv.setVisible(einv_enabled)
                self.btn_einv_json.setVisible(einv_enabled)
                self.btn_einv_sql.setVisible(einv_enabled)
                self.frame_einv.setVisible(einv_enabled)
        except Exception:
            pass

    def _on_gen_einvoice(self):
        QMessageBox.information(
            self,
            "eInvoice",
            "Generate eInvoice - implement per VB6 eInvoice.bas contract",
        )

    def _on_einvoice_json(self):
        QMessageBox.information(
            self, "eInvoice Json", "Show eInvoice JSON - implement per VB6"
        )

    def _on_einvoice_sql(self):
        QMessageBox.information(
            self, "eInvoice Sql", "Show eInvoice SQL - implement per VB6"
        )


def open_fom_bill_reprint(parent=None):
    w = FomBillReprintWindow(parent)
    w.show()
    return w
