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
from core import db, fo_ops
from core.folio import PAY_TYPES as _PAY_TYPES
from ui.theme import palette
from ui.desktop_style import make_vb6_header


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


class MergeChargeWindow(QMainWindow):
    """Merge Charges (VB6: FrmMergeCharge)."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Merge Room Charges")
        self.resize(640, 460)
        self._build_ui()

    def _build_ui(self):
        central = QWidget()
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        title = QLabel("Merge Room Charges")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        form = QGroupBox("Rooms")
        form_lay = QFormLayout(form)
        self.txt_from_room = QLineEdit()
        self.txt_from_room.setPlaceholderText("Source Room No")
        self.txt_from_room.textChanged.connect(lambda _: self._refresh())
        self.txt_to_room = QLineEdit()
        self.txt_to_room.setPlaceholderText("Target Room No")
        self.txt_to_room.textChanged.connect(lambda _: self._refresh())
        self.lbl_src = QLabel("-")
        self.lbl_tgt = QLabel("-")
        form_lay.addRow("From Room:", self.txt_from_room)
        form_lay.addRow("(source folio)", self.lbl_src)
        form_lay.addRow("To Room:", self.txt_to_room)
        form_lay.addRow("(target folio)", self.lbl_tgt)
        layout.addWidget(form)

        self.lbl_total = QLabel("Source folio charges: -")
        layout.addWidget(self.lbl_total)
        info = QLabel(
            "Source room ke saare charges target room me shift ho "
            "jayenge aur source folio target se link ho jayega."
        )
        info.setWordWrap(True)
        layout.addWidget(info)

        btn_lay = QHBoxLayout()
        self.btn_merge = QPushButton("Merge Charges")
        self.btn_merge.setProperty("role", "danger")
        self.btn_merge.setEnabled(False)
        self.btn_exit = QPushButton("Exit")
        self.btn_merge.clicked.connect(self._merge)
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_merge)
        btn_lay.addWidget(self.btn_exit)
        layout.addLayout(btn_lay)

    def _refresh(self):
        src = self.txt_from_room.text().strip()
        tgt = self.txt_to_room.text().strip()
        self.lbl_src.setText("-")
        self.lbl_tgt.setText("-")
        self.lbl_total.setText("Source folio charges: -")
        self.btn_merge.setEnabled(False)
        if src:
            s = fo_ops.open_folio_by_room(src, cn=None)
            if s:
                self.lbl_src.setText(f"{s['folio']} - {s['name']}")
                try:
                    tot = fo_ops.folio_charge_total(s["docid"])
                    self.lbl_total.setText(f"Source folio charges: {tot:,.2f}")
                except Exception:
                    pass
        if tgt:
            t = fo_ops.open_folio_by_room(tgt, cn=None)
            if t:
                self.lbl_tgt.setText(f"{t['folio']} - {t['name']}")
        if (
            src
            and tgt
            and src != tgt
            and self.lbl_src.text() != "-"
            and self.lbl_tgt.text() != "-"
        ):
            self.btn_merge.setEnabled(True)

    def _merge(self):
        from_room = self.txt_from_room.text().strip()
        to_room = self.txt_to_room.text().strip()
        reply = QMessageBox.question(
            self,
            "Confirm",
            f"Merge charges from {from_room} to {to_room}?\nYeh undo nahi ho sakta!",
        )
        if reply != QMessageBox.StandardButton.Yes:
            return
        try:
            res = fo_ops.merge_charge(from_room, to_room)
            QMessageBox.information(
                self,
                "Done",
                f"{res['rows_moved']} rows merged\n"
                f"Folio {res['folio_from']} -> {res['folio_to']}",
            )
            self.txt_from_room.clear()
            self.txt_to_room.clear()
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))


class ReverseMergeWindow(QMainWindow):
    """Reverse Room Merge (VB6: FrmRevMergeCharge) — merged folio se ek
    child room ke charges wapas uske apne folio par wapas le jao."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Reverse Room Merge")
        self.resize(720, 520)
        self._build_ui()
        self._master = None
        self._children = []

    def _build_ui(self):
        central = QWidget()
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        title = QLabel("Reverse Room Merge")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        form = QGroupBox("Master Room")
        form_lay = QHBoxLayout(form)
        self.txt_master = QLineEdit()
        self.txt_master.setPlaceholderText("Master Room No (jisne merge kiya)")
        self.txt_master.returnPressed.connect(self._load_children)
        self.btn_load = QPushButton("Load")
        self.btn_load.setToolTip("Master folio se linked child rooms load karo")
        self.btn_load.clicked.connect(self._load_children)
        form_lay.addWidget(QLabel("Room:"))
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
        self.table.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.Stretch
        )
        self.table.setAlternatingRowColors(True)
        self.table.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.table.setSelectionMode(QTableWidget.SelectionMode.SingleSelection)
        self.table.itemSelectionChanged.connect(self._on_row_changed)
        layout.addWidget(self.table)

        info = QLabel(
            "Child select karke 'Reverse Merge' dabao — uske saare "
            "charges master folio se wapas uske apne folio par aa "
            "jayenge aur link toot jayega."
        )
        info.setWordWrap(True)
        layout.addWidget(info)

        btn_lay = QHBoxLayout()
        self.btn_reverse = QPushButton("Reverse Merge")
        self.btn_reverse.setProperty("role", "warning")
        self.btn_reverse.setEnabled(False)
        self.btn_exit = QPushButton("Exit")
        self.btn_reverse.clicked.connect(self._reverse)
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_reverse)
        btn_lay.addWidget(self.btn_exit)
        layout.addLayout(btn_lay)

    def _load_children(self):
        q = self.txt_master.text().strip()
        if not q:
            QMessageBox.warning(self, "Input", "Master Room No likho")
            return
        try:
            self._master = fo_ops.open_folio_by_room(q, cn=None)
            self._children = (
                fo_ops.list_merge_children(q, cn=None) if self._master else []
            )
        except Exception as e:
            self._master = None
            self._children = []
            QMessageBox.critical(self, "Error", str(e))
            return
        if not self._master:
            QMessageBox.information(self, "Not found", "Koi in-house guest nahi mila")
            return
        self.lbl_master.setText(
            f"Master folio {self._master['folio']} - {self._master['name']}"
        )
        self._render_children()

    def _render_children(self):
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
        self.btn_reverse.setEnabled(False)

    def _on_row_changed(self):
        row = self.table.currentRow()
        has = bool(self._children and 0 <= row < len(self._children))
        self.btn_reverse.setEnabled(has)

    def _reverse(self):
        row = self.table.currentRow()
        if not (self._children and 0 <= row < len(self._children)):
            return
        ch = self._children[row]
        reply = QMessageBox.question(
            self,
            "Confirm",
            f"{ch['room'] or ch['name']} ke {ch['charges']} charges master "
            f"folio {self._master['folio']} se wapas folio {ch['folio']} "
            "par le jaayein?",
        )
        if reply != QMessageBox.StandardButton.Yes:
            return
        try:
            res = fo_ops.reverse_merge_charge(
                self.txt_master.text().strip(),
                ch["room"] or self._find_room_by_docid(ch["docid"]),
            )
            msg = (
                f"{res['rows_moved']} rows reversed\n"
                f"Folio {res['folio_master']} -> {res['folio_child']}"
            )
            if res["master_cleared"]:
                msg += "\nMaster folio ke merge markers bhi clear ho gaye."
            QMessageBox.information(self, "Done", msg)
            self._load_children()
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))

    def _find_room_by_docid(self, docid: str) -> str:
        for ch in self._children:
            if ch["docid"] == docid and ch["room"]:
                return ch["room"]
        rec = fo_ops.open_folio_by_docid(docid, cn=None)
        if rec:
            occ = db.query(
                "SELECT TOP 1 RTRIM(RoomNo) FROM RoomOcc WHERE DocId = ? "
                "AND ChkOutDate IS NULL",
                (docid,),
            )
            if occ and occ[0][0]:
                return occ[0][0].strip()
        raise ValueError("Child room resolve nahi ho paya")


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
    """FOM Bill Reprint (VB6: frmFomB) — reprint checked-out folio bills."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("FOM Bill Reprint")
        self.resize(900, 560)
        self._build_ui()
        self._load_data()

    def _build_ui(self):
        central = QWidget()
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        layout.addWidget(make_vb6_header("FOM Bill Reprint"))

        # Search controls
        search_lay = QHBoxLayout()
        search_lay.addWidget(QLabel("From Date:"))
        self.dt_from = QDateEdit()
        self.dt_from.setCalendarPopup(True)
        self.dt_from.setDate(QDate.currentDate().addMonths(-1))
        search_lay.addWidget(self.dt_from)
        search_lay.addWidget(QLabel("To Date:"))
        self.dt_to = QDateEdit()
        self.dt_to.setCalendarPopup(True)
        self.dt_to.setDate(QDate.currentDate())
        search_lay.addWidget(self.dt_to)
        search_lay.addWidget(QLabel("Folio No:"))
        self.txt_folio = QLineEdit()
        self.txt_folio.setPlaceholderText("Folio No (optional)")
        self.txt_folio.returnPressed.connect(self._load_data)
        search_lay.addWidget(self.txt_folio)
        search_lay.addWidget(QLabel("Room No:"))
        self.txt_room = QLineEdit()
        self.txt_room.setPlaceholderText("Room No (optional)")
        self.txt_room.returnPressed.connect(self._load_data)
        search_lay.addWidget(self.txt_room)
        self.btn_search = QPushButton("Search")
        self.btn_search.setToolTip("Search checked-out folios for reprint")
        self.btn_search.clicked.connect(self._load_data)
        search_lay.addWidget(self.btn_search)
        search_lay.addStretch(1)
        layout.addLayout(search_lay)

        # Results table
        self.table = QTableWidget()
        self.table.setColumnCount(6)
        self.table.setHorizontalHeaderLabels(
            ["Folio No", "Guest Name", "Room", "Departure Date", "Bill Amount", "DocId"]
        )
        self.table.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.Stretch
        )
        self.table.setAlternatingRowColors(True)
        self.table.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        layout.addWidget(self.table)

        # Buttons
        btn_lay = QHBoxLayout()
        self.btn_reprint = QPushButton("Reprint Selected Bill")
        self.btn_reprint.setToolTip("Reprint the selected checked-out folio bill")
        self.btn_reprint.setProperty("success", True)
        self.btn_reprint.clicked.connect(self._reprint)
        self.btn_exit = QPushButton("Exit")
        self.btn_exit.setToolTip("Close the FOM Bill Reprint window")
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_reprint)
        btn_lay.addWidget(self.btn_exit)
        layout.addLayout(btn_lay)

    def _load_data(self):
        try:
            from HMS_py.core import checkout as co_mod

            rows = co_mod.list_checked_out(top=200)
            # Filter by date range if specified
            from_date = self.dt_from.date().toPyDate()
            to_date = self.dt_to.date().toPyDate()
            folio_filter = self.txt_folio.text().strip()
            room_filter = self.txt_room.text().strip()

            filtered = []
            for r in rows:
                dep = r.get("checkout_date") or r.get("depdate")
                if dep:
                    if hasattr(dep, "date"):
                        dep = dep.date()
                    if dep < from_date or dep > to_date:
                        continue
                if folio_filter and folio_filter not in str(r.get("folio", "")):
                    continue
                if room_filter and room_filter not in str(r.get("roomno", "")):
                    continue
                filtered.append(r)

            self.table.setRowCount(len(filtered))
            for i, r in enumerate(filtered):
                for j, v in enumerate(
                    [
                        r.get("folio", ""),
                        r.get("name", ""),
                        r.get("roomno", ""),
                        str(r.get("checkout_date") or r.get("depdate") or ""),
                        f"{r.get('balance', 0):,.2f}",
                        r.get("docid", ""),
                    ]
                ):
                    it = QTableWidgetItem(str(v))
                    it.setForeground(QColor(palette()["text"]))
                    self.table.setItem(i, j, it)
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Load failed: {e}")

    def _reprint(self):
        row = self.table.currentRow()
        if row < 0:
            QMessageBox.warning(self, "Select", "Pehle bill select karo")
            return
        docid = self.table.item(row, 5).text()
        folio = self.table.item(row, 0).text()
        guest = self.table.item(row, 1).text()
        QMessageBox.information(
            self,
            "Reprint",
            f"FOM Bill Reprint for Folio #{folio} ({guest})\\n"
            f"DocId: {docid}\\n\\n"
            f"VB6 me Crystal Report (BillPrint.rpt) se print hota tha.\\n"
            f"Yahan print preview / PDF generation implement karna hoga.",
        )


def open_fom_bill_reprint(parent=None):
    w = FomBillReprintWindow(parent)
    w.show()
    return w
