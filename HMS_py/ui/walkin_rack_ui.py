"""PARTIAL bucket UI ports — Wave 7 (rack/room-lookup/walk-in batch).

VB6 originals (../FODER/*.frm) -> windows here:
  fdRoomDisplay     -> RoomViewWindow        ('Room View')
  FdLookUpRoomNo    -> DisplayRackWindow     ('Display Rack')
  fdRoomOcc         -> RoomOccLookupWindow   ('Reservation Look Up Room Wise')
  fdWalkInEntry     -> WalkInEntryWindow     ('Walk In / Check In Entry')

Core ops:
  HMS_py.core.roomstatus — room_rack (Occupied/Blocked/Dirty/Vacant rules)
  HMS_py.core.checkin    — create_checkin (GuestFolio+RoomOcc+FolioLog,
                           adult/children/chkintime — FO-7), get
  HMS_py.core.checkout   — list_active_folios

VB6 evidence (frm line refs):
  fdRoomDisplay.frm:110 — 'select * from roommast where logsite_code=...'
    (rack visual; :253 PicPath select per room — photo theme, text grid
    port me enough).
  FdLookUpRoomNo.frm:477 — 'SELECT Count(*) FROM RoomOcc WHERE ... and
    Type Not IN ('O','C') AND (CHKINDATE<...)'; :510 'SELECT Count(*) FROM
    RoomMast where type='RO' and inclcount='Y''; :574 'SELECT * FROM
    ROOMCAT' (category-wise free/occupied counts).
  fdWalkInEntry.frm:5663/6775 — 33-col 'Insert Into RoomOcc ...' + :5954/
    7001 40-col 'Insert Into GuestFolio ...' (+ GuestFolioProfDetail)
    == checkin.create_checkin port (P4-c MISSING-LOGIC fix).
"""
from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt, QDate
from PyQt6.QtGui import QColor
from PyQt6.QtWidgets import (QApplication, QComboBox, QDateEdit, QFormLayout,
                             QGridLayout, QHBoxLayout, QLabel, QLineEdit,
                             QMainWindow, QMessageBox, QPushButton,
                             QTableWidget, QTableWidgetItem, QVBoxLayout,
                             QWidget)

from HMS_py.core import checkin, checkout, roomstatus
from HMS_py.ui.theme import palette


def _cell(val, editable: bool = False) -> QTableWidgetItem:
    if val is None:
        val = ""
    it = QTableWidgetItem(str(val))
    it.setFlags(it.flags() | (Qt.ItemFlag.ItemIsEditable if editable
                              else Qt.ItemFlag.ItemIsSelectable))
    return it


def _fill_grid(grid: QTableWidget, headers: list[str], rows: list[list]):
    grid.clear()
    grid.setColumnCount(len(headers))
    grid.setHorizontalHeaderLabels(headers)
    grid.setRowCount(0)
    for r in rows:
        row = grid.rowCount()
        grid.insertRow(row)
        for c, v in enumerate(r):
            grid.setItem(row, c, _cell(v))
    grid.resizeColumnsToContents()


def _title(text: str) -> QLabel:
    lbl = QLabel(text)
    lbl.setStyleSheet("font-size:14pt; font-weight:bold; color:#1a3c6e;")
    return lbl


def _msgbox_err(w, e: Exception):
    QMessageBox.critical(w, "Error", f"{type(e).__name__}: {e}")


def _d(v):
    if isinstance(v, datetime.datetime):
        return v.date()
    return v


def _status_color(status: str) -> QColor:
    m = {"Occupied": QColor(210, 235, 210), "Dirty": QColor(250, 230, 200),
         "Maintenance": QColor(250, 210, 210),
         "Out of Order": QColor(240, 200, 200)}
    return m.get(status, QColor(255, 255, 255))


class _StatusBar:
    def _say(self, msg: str):
        self.statusBar().showMessage(msg, 8000)


# ────────────────────────────────────────────────────────────────
# 1. Room View (fdRoomDisplay -> roomstatus.room_rack, tile grid)
# ────────────────────────────────────────────────────────────────
class RoomViewWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Room View")
        self.resize(1000, 600)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        top = QHBoxLayout()
        top.addWidget(_title("Room View"))
        top.addStretch(1)
        b = QPushButton("Refresh")
        b.clicked.connect(self._fill)
        top.addWidget(b)
        lay.addLayout(top)
        self.info = QLabel("")
        lay.addWidget(self.info)
        self.tilebox = QWidget()
        self.tiles = QGridLayout(self.tilebox)
        self.tiles.setSpacing(6)
        lay.addWidget(self.tilebox, 1)
        lay.addStretch(1)

    def _fill(self):
        try:
            rooms = roomstatus.room_rack()
        except Exception as e:
            _msgbox_err(self, e)
            return
        # clear tiles
        while self.tiles.count():
            it = self.tiles.takeAt(0)
            if it.widget():
                it.widget().deleteLater()
        counts: dict[str, int] = {}
        col = row = 0
        per_row = 8
        for r in rooms:
            counts[r["status"]] = counts.get(r["status"], 0) + 1
            tile = QLabel(
                f"{r['roomno']}\n{r['status']}\n"
                f"{(r['guest'] or '—')[:14]}")
            tile.setAlignment(Qt.AlignmentFlag.AlignCenter)
            tile.setFixedSize(104, 64)
            tile.setAutoFillBackground(True)
            pal = tile.palette()
            pal.setColor(tile.backgroundRole(), _status_color(r["status"]))
            tile.setPalette(pal)
            tile.setToolTip(
                f"{r['roomno']} [{r['type']}/{r['cat']}] {r['status']} "
                f"folio={r['folio'] or '-'} dep={_d(r['dep']) or '-'}")
            self.tiles.addWidget(tile, row, col)
            col += 1
            if col >= per_row:
                col = 0
                row += 1
        self.info.setText(
            "   ".join(f"{k}: {v}" for k, v in sorted(counts.items()))
            + f"   |   total {len(rooms)}")
        self._say(f"{len(rooms)} room(s) rendered")


# ────────────────────────────────────────────────────────────────
# 2. Display Rack (FdLookUpRoomNo — category-wise free/occ counts)
# ────────────────────────────────────────────────────────────────
class DisplayRackWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Display Rack")
        self.resize(860, 480)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Display Rack"))
        self.grid = QTableWidget()
        self.grid.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        lay.addWidget(self.grid)
        self.lbl_tot = QLabel("")
        lay.addWidget(self.lbl_tot)
        bar = QHBoxLayout()
        b = QPushButton("Refresh")
        b.clicked.connect(self._fill)
        bar.addWidget(b)
        bar.addStretch(1)
        lay.addLayout(bar)

    def _fill(self):
        from HMS_py.core import db
        try:
            site = roomstatus.SITE_CODE
            # VB6 frm:510 — total rooms (type='RO', inclcount='Y')
            tot = db.query(
                "SELECT RTRIM(RoomCat), COUNT(*) FROM RoomMast WHERE "
                "Type = 'RO' AND (LogSite_Code = ? OR LogSite_Code = 'HO') "
                "GROUP BY RTRIM(RoomCat) ORDER BY 1", (site,))
            # open occupancy per room -> per category
            occ = db.query(
                "SELECT RTRIM(m.RoomCat), COUNT(*) FROM RoomOcc ro INNER "
                "JOIN RoomMast m ON m.Code = ro.RoomNo AND "
                "(m.LogSite_Code = ? OR m.LogSite_Code = 'HO') "
                "WHERE ro.ChkOutDate IS NULL AND ro.Site_Code = ? "
                "GROUP BY RTRIM(m.RoomCat) ORDER BY 1",
                (site, site))
            occ_map = {r[0]: r[1] for r in occ}
            rows = []
            tot_rooms = tot_free = 0
            for cat, n in tot:
                o = occ_map.get(cat, 0)
                rows.append([cat, n, o, n - o,
                             f"{(o / n * 100) if n else 0:.0f}%"])
                tot_rooms += n
                tot_free += (n - o)
            _fill_grid(self.grid,
                       ["Category", "Rooms", "Occupied", "Free", "Occ%"],
                       rows)
            self.lbl_tot.setText(f"Total {tot_rooms} rooms, free {tot_free}")
            self._say(f"{len(rows)} category(ies)")
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 3. Reservation Look Up Room Wise (fdRoomOcc — occupancy by room)
# ────────────────────────────────────────────────────────────────
class RoomOccLookupWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Reservation Look Up Room Wise")
        self.resize(1000, 560)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Reservation Look Up Room Wise"))
        top = QHBoxLayout()
        top.addWidget(QLabel("Room"))
        self.txt_room = QLineEdit()
        self.txt_room.setPlaceholderText("room no (blank = sab)")
        self.txt_room.returnPressed.connect(self._fill)
        top.addWidget(self.txt_room)
        b = QPushButton("Search")
        b.clicked.connect(self._fill)
        top.addWidget(b)
        top.addStretch(1)
        lay.addLayout(top)
        self.grid = QTableWidget()
        self.grid.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        lay.addWidget(self.grid)
        self._say("ready")

    def _fill(self):
        from HMS_py.core import db
        try:
            room = self.txt_room.text().strip()
            sql = ("SELECT RTRIM(ro.RoomNo), ro.FolioNo, RTRIM(gf.Name), "
                   "CONVERT(date, ro.ChkInDate), CONVERT(date, ro.DepDate), "
                   "ro.Adult, ro.Children, ro.ChkOutDate "
                   "FROM RoomOcc ro LEFT JOIN GuestFolio gf ON "
                   "gf.DocId = ro.DocId WHERE ro.Site_Code = ? AND "
                   "ro.Vprefix = ?")
            params = [roomstatus.SITE_CODE, "2026"]
            if room:
                sql += " AND ro.RoomNo LIKE ?"
                params.append(f"%{room}%")
            sql += " ORDER BY ro.RoomNo, ro.SNo"
            rows = db.query(sql, tuple(params))
            _fill_grid(self.grid,
                       ["Room", "Folio", "Guest", "Check-In", "Departure",
                        "Adult", "Children", "ChkOutDate"],
                       [[r[0], r[1], (r[2] or "").strip(), _d(r[3]),
                         _d(r[4]), r[5] or 0, r[6] or 0,
                         "OPEN" if r[7] is None else _d(r[7])]
                        for r in rows])
            nopen = sum(1 for r in rows if r[7] is None)
            self._say(f"{len(rows)} row(s); {nopen} open")
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 4. Walk In / Check In Entry (fdWalkInEntry -> checkin.create_checkin)
# ────────────────────────────────────────────────────────────────
class WalkInEntryWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Walk In / Check In Entry")
        self.resize(760, 520)
        self._build()
        self._load_rooms()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Walk In / Check In Entry"))
        form = QFormLayout()
        self.txt_name = QLineEdit()
        form.addRow("Guest Name*", self.txt_name)
        self.txt_city = QLineEdit()
        form.addRow("City", self.txt_city)
        today = datetime.date.today()
        self.dt_arr = QDateEdit(QDate(today.year, today.month, today.day))
        self.dt_arr.setCalendarPopup(True)
        form.addRow("Arrival", self.dt_arr)
        dep = today + datetime.timedelta(days=1)
        self.dt_dep = QDateEdit(QDate(dep.year, dep.month, dep.day))
        self.dt_dep.setCalendarPopup(True)
        form.addRow("Departure", self.dt_dep)
        self.cmb_room = QComboBox()
        form.addRow("Room (vacant)", self.cmb_room)
        self.spin_adult = QComboBox()
        self.spin_adult.addItems(["1", "2", "3", "4"])
        form.addRow("Adults", self.spin_adult)
        self.spin_child = QComboBox()
        self.spin_child.addItems(["0", "1", "2", "3"])
        form.addRow("Children", self.spin_child)
        lay.addLayout(form)
        bar = QHBoxLayout()
        for cap, fn in (("Check In", self._checkin), ("Reload Rooms",
                                                      self._load_rooms),
                        ("Exit", self.close)):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            bar.addWidget(b)
        bar.addStretch(1)
        lay.addLayout(bar)
        self.lbl_done = QLabel("")
        lay.addWidget(self.lbl_done)

    def _load_rooms(self):
        try:
            self.cmb_room.clear()
            self.cmb_room.addItem("(auto-pick pehla free)", "")
            for r in roomstatus.room_rack():
                if r["status"] == "Vacant":
                    self.cmb_room.addItem(f"{r['roomno']} [{r['cat']}]",
                                          r["roomno"])
            self._say(f"{self.cmb_room.count() - 1} vacant room(s)")
        except Exception as e:
            _msgbox_err(self, e)

    def _checkin(self):
        name = self.txt_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Check In", "Guest Name zaroori hai.")
            return
        arr = self.dt_arr.date()
        dep = self.dt_dep.date()
        arr_d = datetime.date(arr.year(), arr.month(), arr.day())
        dep_d = datetime.date(dep.year(), dep.month(), dep.day())
        room = self.cmb_room.currentData() or ""
        if QMessageBox.question(
                self, "Check In",
                f"{name} ko room {room or '(auto)'} me check-in karna hai "
                f"({arr_d} -> {dep_d})?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            fno = checkin.create_checkin(
                guestprof="", name=name, arr_date=arr_d, dep_date=dep_d,
                city=self.txt_city.text().strip(), roomno=room,
                user=self.user, adult=int(self.spin_adult.currentText()),
                children=int(self.spin_child.currentText()))
            rec = checkin.get(fno) or {}
            self.lbl_done.setText(
                f"Checked-in: folio #{fno}, room "
                f"{(rec.get('roomno') or '?')} "
                f"(GuestFolio+RoomOcc+FolioLog 'A')")
            self._say(f"folio #{fno} created")
            self._load_rooms()
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# Openers (shell registry pattern)
# ────────────────────────────────────────────────────────────────
def open_room_view(parent=None):
    return RoomViewWindow(parent)


def open_display_rack(parent=None):
    return DisplayRackWindow(parent)


def open_roomocc_lookup(parent=None):
    return RoomOccLookupWindow(parent)


def open_walkin_entry(parent=None, user: str = "PYADMIN"):
    return WalkInEntryWindow(parent, user=user)


if __name__ == "__main__":
    app = QApplication(sys.argv)
    app.setPalette(palette())
    for fn in (open_room_view, open_display_rack, open_roomocc_lookup,
               open_walkin_entry):
        w = fn()
        w.show()
        app.processEvents()
        w.close()
    print("walkin_rack_ui smoke OK")
