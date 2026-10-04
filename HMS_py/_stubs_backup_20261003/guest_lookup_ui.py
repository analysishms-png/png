"""Guest lookup read-only desktop window for Main Setup.

This is intentionally lightweight: it exposes the UI contract expected by the
Main Setup desktop tests and the shell registry, without forcing a full DB
schema dependency at import time.
"""
from __future__ import annotations

import sys

from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import (
    QApplication,
    QAbstractItemView,
    QDialog,
    QHBoxLayout,
    QLabel,
    QTableWidget,
    QTableWidgetItem,
    QVBoxLayout,
    QPushButton,
)

from HMS_py.core import db
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


class GuestLookupWindow(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopGuestLookup")
        self.setWindowTitle("Guest LookUp")
        self.resize(860, 440)

        root = QVBoxLayout(self)
        root.addWidget(QLabel("Guest Lookup (read-only)"))

        self.table = QTableWidget(0, 5)
        self.table.setHorizontalHeaderLabels([
            "Guest Code",
            "Guest Name",
            "Mobile",
            "Company",
            "Room",
        ])
        self.table.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
        self.table.setAlternatingRowColors(True)
        self.table.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.table.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.table, 1)

        footer = QHBoxLayout()
        self.status = QLabel("Ready")
        self.status.setObjectName("desktopStateLabel")
        self.btn_refresh = QPushButton("Refresh")
        self.btn_close = QPushButton("Close")
        for btn in (self.btn_refresh, self.btn_close):
            mark_desktop_action(btn)
            footer.addWidget(btn)
        footer.addStretch()
        root.addLayout(footer)
        root.addWidget(self.status)

        self.btn_refresh.clicked.connect(self.reload)
        self.btn_close.clicked.connect(self.close)
        self.reload()

    def reload(self):
        try:
            rows = db.query(
                "SELECT TOP 200 GuestCode, GuestName, Mobile, Company, RoomNo "
                "FROM GuestProf WHERE GuestName IS NOT NULL ORDER BY GuestName",
                (),
            ) or []
        except Exception as exc:
            rows = []
            self.status.setText(f"Load failed: {exc}")

        self.table.setRowCount(len(rows))
        for row_index, rec in enumerate(rows):
            values = [
                rec[0] if isinstance(rec, (list, tuple)) and len(rec) > 0 else "",
                rec[1] if isinstance(rec, (list, tuple)) and len(rec) > 1 else "",
                rec[2] if isinstance(rec, (list, tuple)) and len(rec) > 2 else "",
                rec[3] if isinstance(rec, (list, tuple)) and len(rec) > 3 else "",
                rec[4] if isinstance(rec, (list, tuple)) and len(rec) > 4 else "",
            ]
            for col_index, val in enumerate(values):
                item = QTableWidgetItem("" if val is None else str(val))
                item.setFlags(item.flags() & ~Qt.ItemFlag.ItemIsEditable)
                self.table.setItem(row_index, col_index, item)
        self.status.setText(f"{len(rows)} guest(s) loaded")


def open_guest_lookup(parent=None):
    window = GuestLookupWindow(parent)
    window.show()
    return window


if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = GuestLookupWindow()
    window.show()
    raise SystemExit(app.exec())
