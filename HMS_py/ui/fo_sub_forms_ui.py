"""Front Office Sub-Forms UI (VB6: FdLookUpRoomNo, FrmMergeCharge, FdReSetlement port)."""
from __future__ import annotations
import sys, os
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from PyQt6.QtWidgets import (QMainWindow, QWidget, QVBoxLayout, QHBoxLayout,
    QTableWidget, QTableWidgetItem, QPushButton, QLineEdit, QLabel,
    QMessageBox, QGroupBox, QFormLayout, QHeaderView)
from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QFont
from core import db
from ui.theme import palette


class RoomLookupWindow(QMainWindow):
    """Room Number Lookup (VB6: FdLookUpRoomNo)."""
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Room Number Lookup")
        self.resize(600, 400)
        self._build_ui()
        self._load_data()

    def _build_ui(self):
        central = QWidget(); self.setCentralWidget(central)
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
        self.table.setHorizontalHeaderLabels(["Room No", "Category", "Status", "Guest Name"])
        self.table.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
        layout.addWidget(self.table)

        btn_exit = QPushButton("Exit"); btn_exit.clicked.connect(self.close)
        layout.addWidget(btn_exit)

    def _load_data(self):
        try:
            rows = db.query(
                "SELECT R.RoomNo, RC.Name, R.Status, "
                "ISNULL(G.GuestName, '') as GuestName "
                "FROM RoomMast R "
                "LEFT JOIN RoomCat RC ON R.RoomCat = RC.Code "
                "LEFT JOIN RoomOcc G ON R.RoomNo = G.RoomNo AND G.Status = 'I' "
                "ORDER BY R.RoomNo")
            self._all_rows = rows
            self._populate(rows)
        except Exception as e:
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
            self._populate(self._all_rows); return
        filtered = [r for r in self._all_rows if text in str(r[0] or "").lower()
                     or text in str(r[1] or "").lower() or text in str(r[3] or "").lower()]
        self._populate(filtered)


class MergeChargeWindow(QMainWindow):
    """Merge Charges (VB6: FrmMergeCharge)."""
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Merge Room Charges")
        self.resize(600, 400)
        self._build_ui()

    def _build_ui(self):
        central = QWidget(); self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        title = QLabel("Merge Room Charges")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        form = QGroupBox("Merge Details")
        form_lay = QFormLayout(form)
        self.txt_from_room = QLineEdit(); self.txt_from_room.setPlaceholderText("Source Room No")
        self.txt_to_room = QLineEdit(); self.txt_to_room.setPlaceholderText("Target Room No")
        form_lay.addRow("From Room:", self.txt_from_room)
        form_lay.addRow("To Room:", self.txt_to_room)
        layout.addWidget(form)

        info = QLabel("Source room ke saare charges target room me shift ho jayenge.")
        info.setWordWrap(True); layout.addWidget(info)

        btn_lay = QHBoxLayout()
        self.btn_merge = QPushButton("Merge Charges")
        self.btn_merge.setProperty("role", "danger")
        self.btn_exit = QPushButton("Exit")
        self.btn_merge.clicked.connect(self._merge)
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_merge); btn_lay.addWidget(self.btn_exit)
        layout.addLayout(btn_lay)

    def _merge(self):
        from_room = self.txt_from_room.text().strip()
        to_room = self.txt_to_room.text().strip()
        if not from_room or not to_room:
            QMessageBox.warning(self, "Input", "Dono room numbers zaroori hain"); return
        reply = QMessageBox.question(self, "Confirm",
            f"Merge charges from {from_room} to {to_room}?\nYeh undo nahi ho sakta!")
        if reply != QMessageBox.StandardButton.Yes: return
        try:
            affected = db.execute(
                "UPDATE GuestFolio SET RoomNo = ? WHERE RoomNo = ? AND Status = 'I'",
                (to_room, from_room))
            QMessageBox.information(self, "Done", f"{affected} charges merged!")
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))


class ReSettlementWindow(QMainWindow):
    """Re-Settlement (VB6: FdReSetlement)."""
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Bill Re-Settlement")
        self.resize(600, 400)
        self._build_ui()

    def _build_ui(self):
        central = QWidget(); self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        title = QLabel("Bill Re-Settlement")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        form = QGroupBox("Settlement Details")
        form_lay = QFormLayout(form)
        self.txt_docid = QLineEdit(); self.txt_docid.setPlaceholderText("GuestFolio DocId")
        self.txt_room = QLineEdit(); self.txt_room.setPlaceholderText("Room No")
        form_lay.addRow("DocId:", self.txt_docid)
        form_lay.addRow("Room No:", self.txt_room)
        layout.addWidget(form)

        info = QLabel("Folio ke payments ko re-settle karega (original payment reverse + new allocation).")
        info.setWordWrap(True); layout.addWidget(info)

        btn_lay = QHBoxLayout()
        self.btn_settle = QPushButton("Re-Settle")
        self.btn_settle.setProperty("role", "warning")
        self.btn_exit = QPushButton("Exit")
        self.btn_settle.clicked.connect(self._settle)
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_settle); btn_lay.addWidget(self.btn_exit)
        layout.addLayout(btn_lay)

    def _settle(self):
        docid = self.txt_docid.text().strip()
        if not docid:
            QMessageBox.warning(self, "Input", "DocId zaroori hai"); return
        QMessageBox.information(self, "Info",
            "Re-Settlement: Original payment ko reverse karo,\n"
            "fir naye tarike se allocate karo.\n\n"
            "VB6 me yeh multi-step wizard tha.")


def open_room_lookup(parent=None):
    w = RoomLookupWindow(parent); w.show(); return w

def open_merge_charge(parent=None):
    w = MergeChargeWindow(parent); w.show(); return w

def open_re_settlement(parent=None):
    w = ReSettlementWindow(parent); w.show(); return w
