"""Registration Entry UI (VB6: RegistrationEntry - quick FO registration)."""
from __future__ import annotations
import sys, os
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from PyQt6.QtWidgets import (QDialog, QWidget, QVBoxLayout, QHBoxLayout,
    QTableWidget, QTableWidgetItem, QPushButton, QLineEdit, QLabel,
    QGroupBox, QFormLayout, QComboBox, QMessageBox, QDateEdit, QHeaderView)
from PyQt6.QtCore import Qt, QDate
from PyQt6.QtGui import QColor, QFont
from core import db
from ui.theme import palette, status_colors


class RegistrationEntryWindow(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Registration Entry")
        self.setMinimumSize(900, 600)
        self.resize(900, 600)
        self._build_ui()
        self._load_data()

    def _build_ui(self):
        root = QVBoxLayout(self)
        root.setContentsMargins(20, 16, 20, 16)
        root.setSpacing(12)

        # Header
        title = QLabel("Registration Entry")
        title.setStyleSheet("font-size: 16px; font-weight: 700; padding: 4px 0;")
        title.setAlignment(Qt.AlignmentFlag.AlignLeft)
        root.addWidget(title)

        # Form section
        form = QGroupBox("Guest Registration")
        fl = QFormLayout(form)
        fl.setSpacing(10)
        fl.setContentsMargins(16, 12, 16, 12)

        self.txt_name = QLineEdit()
        self.txt_name.setPlaceholderText("Enter guest full name")
        self.txt_company = QLineEdit()
        self.txt_company.setPlaceholderText("Company or individual")
        self.txt_phone = QLineEdit()
        self.txt_phone.setPlaceholderText("Contact number")
        self.txt_room = QLineEdit()
        self.txt_room.setPlaceholderText("Room number")
        self.txt_docid = QLineEdit()
        self.txt_docid.setPlaceholderText("Auto-generated if empty")
        self.dt_arr = QDateEdit()
        self.dt_arr.setCalendarPopup(True)
        self.dt_arr.setDate(QDate.currentDate())
        self.dt_dep = QDateEdit()
        self.dt_dep.setCalendarPopup(True)
        self.dt_dep.setDate(QDate.currentDate().addDays(1))
        self.cmb_status = QComboBox()
        self.cmb_status.addItems(["I", "R", "O"])
        self.txt_adults = QLineEdit("1")
        self.txt_children = QLineEdit("0")

        fl.addRow("Guest Name *:", self.txt_name)
        fl.addRow("Company:", self.txt_company)
        fl.addRow("Phone:", self.txt_phone)
        fl.addRow("Room No:", self.txt_room)
        fl.addRow("DocId:", self.txt_docid)
        fl.addRow("Arrival:", self.dt_arr)
        fl.addRow("Departure:", self.dt_dep)
        fl.addRow("Status:", self.cmb_status)
        fl.addRow("Adults:", self.txt_adults)
        fl.addRow("Children:", self.txt_children)
        root.addWidget(form)

        # Button bar
        btn_lay = QHBoxLayout()
        btn_lay.setSpacing(8)
        btn_lay.addStretch()
        self.btn_save = QPushButton("Save Registration")
        self.btn_save.setProperty("success", True)
        self.btn_save.setMinimumHeight(36)
        self.btn_exit = QPushButton("Exit")
        self.btn_exit.setMinimumHeight(36)
        self.btn_save.clicked.connect(self._save)
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_save)
        btn_lay.addWidget(self.btn_exit)
        root.addLayout(btn_lay)

        # Table
        self.table = QTableWidget()
        self.table.setColumnCount(7)
        self.table.setHorizontalHeaderLabels(
            ["DocId", "Room", "Name", "Company", "Arrival", "Departure", "Status"])
        self.table.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
        self.table.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.table.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        root.addWidget(self.table)

    def _load_data(self):
        try:
            rows = db.query(
                "SELECT TOP 100 G.DocId, G.RoomNo, ISNULL(G.GuestName,''), "
                "ISNULL(G.Company,''), G.Arrival, G.Departure, G.Status "
                "FROM GuestFolio G ORDER BY G.DocId DESC")
            self.table.setRowCount(len(rows))
            p = palette()
            for i, r in enumerate(rows):
                for j, v in enumerate(r):
                    it = QTableWidgetItem(str(v or ""))
                    it.setForeground(QColor(p["text"]))
                    self.table.setItem(i, j, it)
        except Exception:
            pass

    def _save(self):
        name = self.txt_name.text().strip()
        if not name:
            QMessageBox.warning(self, "Input", "Guest name is required")
            return
        try:
            db.execute(
                "INSERT INTO GuestFolio (DocId, RoomNo, GuestName, Company, "
                "Phone, Arrival, Departure, Status, Adults, Children, UserId, VDate) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, GETDATE())",
                (self.txt_docid.text().strip() or "NEW", self.txt_room.text().strip(),
                 name, self.txt_company.text().strip(), self.txt_phone.text().strip(),
                 self.dt_arr.date().toPyDate(), self.dt_dep.date().toPyDate(),
                 self.cmb_status.currentText(),
                 int(self.txt_adults.text() or 1), int(self.txt_children.text() or 0),
                 "PYADMIN"))
            QMessageBox.information(self, "Saved", "Registration saved successfully")
            self._load_data()
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))


def open_registration_entry(parent=None):
    w = RegistrationEntryWindow(parent)
    w.show()
    return w
